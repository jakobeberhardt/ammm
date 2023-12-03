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
from pprint import pprint

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
        self.schedule = [[0] * t for i in range(len(orders))]

        super().__init__()

    def isFeasableToAssignOrderToStartAtTimeslot(self, orderId, timeslot):
        order = self.orders[orderId]
        for j in range(order.length):
            sum = 0
            for i in range(len(self.orders)):
                sum += self.orders[i].surface*self.schedule[i][timeslot + j]
            if self.surface_capacity < (order.surface + sum): return False
        return True

    def isInSolution(self, orderId):
        return sum(self.schedule[orderId]) > 0

    def getAssignedOrders(self):
        assignedOrders = []
        for i in range(1, len(self.orders)):
            if(self.isInSolution(self.orders[i])): assignedOrders += self.orders[i]

        return assignedOrders


    def updateFitness(self):
        self.fitness = 0.0
        for i in range(len(self.orders)):
            if self.isInSolution(i):
                self.fitness += self.orders[i].profit
        return self.fitness

    def isFeasibleToUnassignOrder(self, orderId):
        return self.isInSolution(orderId)

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

    def startsAt(self, orderId):
        return self.schedule[orderId].index(1)

    #def getRating(self, orderId, timeslot):
        # rate the solution with the given new assignment according to some metric
        #for

    def findFeasibleAssignments(self, orderId):
        feasibleAssignments = []
        order = self.orders[orderId]
        min_start = max((order.min_deliver - order.length), 0)
        for j in range(min_start, order.max_deliver - order.length +1):
            feasible = self.assign(orderId, j)
            if not feasible: continue
            assignment = Assignment(orderId, j, self.fitness)
            feasibleAssignments.append(assignment)

            self.unassign(orderId)

        return feasibleAssignments

    def getAttendedOrders(self):
        attended = []
        for order in self.orders:
            if self.isInSolution(order.order_id):
                attended.append(order)
        return attended

    def getUnattendedOrders(self):
        unattended = []
        for order in self.orders:
            if not self.isInSolution(order.order_id):
                unattended.append(order)
        return unattended


    def __str__(self):
        strSolution = 'ProfitTotal = %10.8f;\n' % self.fitness

        return strSolution

    def saveToFile(self, filePath):
        f = open(filePath, 'w')
        f.write(self.__str__())
        f.close()
