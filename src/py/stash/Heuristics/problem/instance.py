"""
AMMM Lab Heuristics
Representation of a problem instance
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


from HeuristicsProject.problem.Order import Order
from HeuristicsProject.problem.solution import Solution


class Instance(object):
    def __init__(self, config, inputData):
        self.config = config
        self.inputData = inputData
        n = inputData.n
        self.t = inputData.t
        profit = inputData.profit
        length = inputData.length
        min_deliver = inputData.min_deliver
        max_deliver = inputData.max_deliver
        surface = inputData.surface
        self.surface_capacity = inputData.surface_capacity
        self.orders = [Order] * n

        for oId in range(0, n):
            self.orders[oId] = Order(
                oId,
                profit[oId],
                length[oId],
                min_deliver[oId],
                max_deliver[oId],
                surface[oId]
            )

    def getNumOrders(self):
        return len(self.orders)

    def getNumSlots(self):
        return self.t

    def createSolution(self):
        solution = Solution(self.tasks, self.cpus, self.rc)
        solution.setVerbose(self.config.verbose)
        return solution

    def checkInstance(self):
        totalCapacityCPUs = 0.0
        maxCPUCapacity = 0.0
        for cpu in self.cpus:
            capacity = cpu.getTotalCapacity()
            totalCapacityCPUs += capacity
            maxCPUCapacity = max(maxCPUCapacity, capacity)

        totalResourcesTasks = 0.0
        for task in self.tasks:
            resources = task.getTotalResources()
            totalResourcesTasks += resources
            if resources > maxCPUCapacity: return False

        return totalCapacityCPUs >= totalResourcesTasks
