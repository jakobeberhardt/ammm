"""
AMMM Lab Heuristics
Representation of a solution instance
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
from HeuristicsProject.solution import _Solution


# This class stores the load of the highest loaded CPU
# when a task is assigned to a CPU.
class Assignment(object):
    def __init__(self, orderId, start, totalProfit):
        self.orderId = orderId
        self.start = start
        self.totalProfit = totalProfit

    def __str__(self):
        return "<orderId_%d, start_%d>: totalProfit: %d" % (self.orderId, self.start, self.totalProfit)


# Solution includes functions to manage the solution, to perform feasibility
# checks and to dump the solution into a string or file.
class Solution(_Solution):
    def __init__(self, orders, t, surface_capacity):
        self.orders = orders
        self.t = t
        self.surface_capacity = surface_capacity
        self.timeSlots = {}  # hash table: tuple of orderId -> timeslots[]
        self. schedule = [[0] * t for i in range(len(orders))]

        super().__init__()

    def isFeasableToAssignOrderToStartAtTimeslot(self, order, timeslot):
        print("Checking feasability")
        for j in range(order.length):
            for i in range(len(self.orders)):
                sum += self.orders[i].surface*self.schedule[i][timeslot + j]
            if self.surface_capacity < (order.surface + sum): return False
        print(order.order_id)
        return True

    def isInSolution(self, order):
        return 1 in order.sum()
    def updateFitness(self):
        self.fitness = 0
        for i in range(len(self.orders)):
            if self.isInSolution(self.orders[i]):
                self.fitness += self.orders[i].profit
        return self.fitness

    def isFeasibleToUnassignOrder(self, orderId):
        return self.isInSolution(self.schedule[orderId])

    def getCPUIdAssignedToTaskId(self, taskId):
        if taskId not in self.taskIdToCPUId: return None
        return self.taskIdToCPUId[taskId]

    def assign(self, orderId, startTimeSlot):
        if not self.isFeasableToAssignOrderToStartAtTimeslot(orderId, startTimeSlot): return False

        for j in range(self.orders[orderId].length):
            self.schedule[orderId][startTimeSlot + j] = 1

        self.updateFitness()
        return True

    def unassign(self, orderId):
        if not self.isFeasibleToUnassignOrder(orderId): return False

        for j in range(0,self.t):
            self.schedule[orderId][j] = 0

        self.updateFitness()
        return True

    def findFeasibleAssignments(self, orderId):
        feasibleAssignments = []
        order = self.orders[orderId]
        for j in range(order.min_deliver - order.length, order.max_deliver - order.length):
            feasible = self.assign(orderId, j)
            if not feasible: continue
            assignment = Assignment(orderId, j, self.fitness)
            feasibleAssignments.append(assignment)

            self.unassign(taskId, cpuId)

        return feasibleAssignments

    def findBestFeasibleAssignment(self, orderId):
        bestAssignment = Assignment(orderId, 0, 0)
        for timeslots in self.cpus:
            cpuId = cpu.getId()
            feasible = self.assign(taskId, cpuId)
            if not feasible: continue

            curHighestLoad = self.fitness
            if bestAssignment.highestLoad > curHighestLoad:
                bestAssignment.cpuId = cpuId
                bestAssignment.highestLoad = curHighestLoad

            self.unassign(taskId, cpuId)

        return bestAssignment

    def __str__(self):
        strSolution = 'ProfitTotal = %10.8f;\n' % self.fitness
        if self.fitness == float('inf'): return strSolution

        # Xtc: decision variable containing the assignment of tasks to CPUs
        # pre-fill with no assignments (all-zeros)
        xtc = []
        for t in range(0, len(self.tasks)):  # t = 0..(nTasks-1)
            xtcEntry = [0] * len(self.cpus)  # results in a vector of 0's with nCPUs elements
            xtc.append(xtcEntry)

        # iterate over hash table taskIdToCPUId and fill in xtc
        for taskId, cpuId in self.taskIdToCPUId.items():
            xtc[taskId][cpuId] = 1

        strSolution += 'xtc = [\n'
        for xtcEntry in xtc:
            strSolution += '\t[ '
            for xtcValue in xtcEntry:
                strSolution += str(xtcValue) + ' '
            strSolution += ']\n'
        strSolution += '];\n'

        return strSolution

    def saveToFile(self, filePath):
        f = open(filePath, 'w')
        f.write(self.__str__())
        f.close()
