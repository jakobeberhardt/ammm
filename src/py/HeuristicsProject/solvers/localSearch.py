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

    def createNeighborSolution(self, solution, move):

        newSolution = copy.deepcopy(solution)

        newSolution.unassign(move.oldOrderId)

        feasible = newSolution.assign(move.newOrderId, move.newTimeslot)
        if not feasible: return None

        return newSolution

    def evaluateNeighbor(self, solution, move):
        oldProfit = solution.fitness
        profit = oldProfit

        maxProfit = oldProfit

        if not solution.assign(move.newOrderId, move.newTimeslot):
            return 0

        # calculate the profit
        profit = solution.fitness
        if profit > maxProfit:
            maxProfit = profit

        solution.unassign(move.newOrderId)
        return profit

    def exploreReassignment(self, solution, iterations):
        # reassign one order to a different time slot

        # try to remove orders with high space requirements to allow scheduling of other profitable orders
        oldOrders = sorted(solution.getAttendedOrders(), key=lambda o: o.getReassignmentRating(), reverse=True)
        oldOrderId = oldOrders[iterations % len(oldOrders)].order_id

        curProfit = solution.getFitness()
        bestNeighbor = None

        # get unattended orders sorted by profit (high to low)
        sortedUnattendedOrders = sorted(solution.getUnattendedOrders(), key=lambda o: o.profit, reverse=True)
        # SortedByProfit

        oldStart = solution.startsAt(oldOrderId)
        solution.unassign(oldOrderId)

        for newOrderId in map(lambda o: o.order_id, sortedUnattendedOrders):
            assignments = solution.findFeasibleAssignments(newOrderId)
            if not assignments:
                continue

            move = Move(oldOrderId, newOrderId, assignments[0].start)
            neighborHighestProfit = self.evaluateNeighbor(solution, move)

            if curProfit < neighborHighestProfit:
                neighbor = self.createNeighborSolution(solution, move)
                if neighbor is None: continue
                if self.policy == 'FirstImprovement':
                    return neighbor
                else:
                    bestNeighbor = neighbor
                    curHighestProfit = neighborHighestProfit

        # re assign the old order if no better order was found
        solution.assign(oldOrderId, oldStart)

        return bestNeighbor

    def exploreNeighborhood(self, solution, iterations):
        if self.nhStrategy == 'Reassignment': return self.exploreReassignment(solution, iterations)
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
            neighbor = self.exploreNeighborhood(incumbent, iterations)
            if neighbor is None:
                iterations += 1
                continue
            neighborFitness = neighbor.getFitness()
            if incumbentFitness > neighborFitness: break
            incumbent = neighbor
            incumbentFitness = neighborFitness
            iterations = 0

        return incumbent
