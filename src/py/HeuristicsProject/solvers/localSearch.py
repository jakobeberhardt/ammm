"""
AMMM Lab Heuristics
Local Search algorithm
Copyright 2020 Luis Velasco.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
"""

import copy
import time
from solver import _Solver
from AMMMGlobals import AMMMException


# A change in a solution in the form: move taskId from curCPUId to newCPUId.
# This class is used to perform sets of modifications.
# A new solution can be created based on an existing solution and a list of
# changes using the createNeighborSolution(solution, moves) function.
class Move(object):
    def __init__(self, oldOrderId, newOrderId, newTimeslot):
        self.oldOrderId = oldOrderId
        self.newOrderId = newOrderId
        self.newTimeslot = newTimeslot

    def __str__(self):
        return "Move: Replace Order %d by %d" % (self.oldOrder, self.newOrder)


# Implementation of a local search using two neighborhoods and two different policies.
class LocalSearch(_Solver):
    def __init__(self, config, instance):
        self.enabled = config.localSearch
        self.nhStrategy = config.neighborhoodStrategy
        self.policy = config.policy
        self.maxExecTime = config.maxExecTime
        super().__init__(config, instance)

    def createNeighborSolution(self, solution, moves):
        # unassign the tasks specified in changes
        # and reassign them to the new CPUs

        newSolution = copy.deepcopy(solution)

        for move in moves:
            newSolution.unassign(move.oldOrderId)

        for move in moves:
            feasible = newSolution.assign(move.newOrderId, move.newTimeslot)
            if not feasible: return None

        return newSolution

    def evaluateNeighbor(self, solution, moves):
        oldProfit = solution.fitness
        profit = oldProfit

        for move in moves:
            maxProfit = oldProfit

            if not solution.assign(move.newOrderId, move.newTimeslot):
                continue

            # calculate the profit
            profit = solution.fitness
            if profit > maxProfit:
                maxProfit = profit

            solution.unassign(move.newOrderId)
        return profit

    # def getAssignmentsSortedByProfit(self, solution):
        # order = solution.tasks
        # cpus = solution.cpus

        # # create vector of assignments <task, cpu>
        # assignments = []
        # for task in tasks:
        #     taskId = task.getId()
        #     cpuId = solution.getCPUIdAssignedToTaskId(taskId)
        #     cpu = cpus[cpuId]
        #     highestLoad = solution.loadPerCPUId[cpuId]
        #     assignment = (task, cpu, highestLoad)
        #     assignments.append(assignment)

        # # For best improvement policy it does not make sense to sort the tasks since all of them must be explored.
        # # However, for first improvement, we can start by the tasks assigned to the more loaded CPUs.
        # if self.policy == 'BestImprovement': return assignments

        # # Sort assignments by the load of the assigned CPU in descending order.
        # sorted_assignments = sorted(assignments, key=lambda x: x[2], reverse=True)
        # return sorted_assignments

    def exploreReassignment(self, solution):
        # reassign one order to a different time slot

        # try to remove orders with high space requirements to allow scheduling of other profitable orders
        oldOrders = sorted(solution.getAttendedOrders(), key=lambda o: o.getReassignmentRating(), reverse=True)
        oldOrderId = oldOrders[0].order_id

        curProfit = solution.getFitness()
        bestNeighbor = solution

        # get unattended orders sorted by profit (high to low)
        sortedUnattendedOrders = sorted(solution.getUnattendedOrders(), key=lambda o: o.profit, reverse=True)
        # SortedByProfit

        oldStart = solution.startsAt(oldOrderId)
        solution.unassign(oldOrderId)

        for newOrderId in map(lambda o: o.order_id, sortedUnattendedOrders):
            assignments = solution.findFeasibleAssignments(newOrderId)
            if not assignments:
                continue

            moves = [Move(oldOrderId, newOrderId, assignments[0].start)]
            neighborHighestProfit = self.evaluateNeighbor(solution, moves)

            if curProfit < neighborHighestProfit:
                neighbor = self.createNeighborSolution(solution, moves)
                if neighbor is None: continue
                if self.policy == 'FirstImprovement':
                    return neighbor
                else:
                    bestNeighbor = neighbor
                    curHighestProfit = neighborHighestProfit

        # re assign the old order if no better order was found
        solution.assign(oldOrderId, oldStart)

        return bestNeighbor

    def exploreNeighborhood(self, solution):
        # if self.nhStrategy == 'TaskExchange': return self.exploreExchange(solution)
        if self.nhStrategy == 'Reassignment': return self.exploreReassignment(solution)
        else: raise AMMMException('Unsupported NeighborhoodStrategy(%s)' % self.nhStrategy)

    def solve(self, **kwargs):
        initialSolution = kwargs.get('solution', None)
        if initialSolution is None:
            raise AMMMException('[local search] No solution could be retrieved')

        if not initialSolution.isFeasible(): return initialSolution
        self.startTime = kwargs.get('startTime', None)
        endTime = kwargs.get('endTime', None)

        incumbent = initialSolution
        incumbentFitness = incumbent.getFitness()
        iterations = 0

        # keep iterating while improvements are found
        while time.time() < endTime:
            iterations += 1
            neighbor = self.exploreNeighborhood(incumbent)
            if neighbor is None: break
            neighborFitness = neighbor.getFitness()
            if incumbentFitness > neighborFitness: break
            incumbent = neighbor
            incumbentFitness = neighborFitness

        return incumbent
