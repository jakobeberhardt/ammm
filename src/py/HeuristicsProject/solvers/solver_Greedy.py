'''
AMMM Lab Heuristics
Greedy solver
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
'''

import random, time

from HeuristicsProject.solver import _Solver
from HeuristicsProject.solvers.localSearch import LocalSearch


# Inherits from the parent abstract solver.
class Solver_Greedy(_Solver):

    def _selectCandidate(self, candidateList, solution):
        if self.config.solver == 'Greedy':

            # sort candidate assignments by highestLoad in ascending order
            sortedCandidateList = sorted(candidateList, key=lambda x: solution.getRating(x.orderId, x.start), reverse=True)
            # choose assignment with minimum highest load
            return sortedCandidateList[0]
        return random.choice(candidateList)

    def construction(self):
        # get an empty solution for the problem
        solution = self.instance.createSolution()

        # get orders and sort them by their added value resources in descending order
        orders = self.instance.getOrders()
        sortedOrders = sorted(orders, key=lambda o: o.getAddedValue(), reverse=True)
        # sortedOrders = sorted(orders, key=lambda o: solution.getRating(o.order_id), reverse=False)

        # for each order taken in sorted order
        for order in sortedOrders:
            orderId = order.getId()

            # compute feasible assignments
            candidateList = solution.findFeasibleAssignments(orderId)
            # no candidate assignments => no feasible assignment found
            if not candidateList:
                #solution.makeInfeasible()
                continue

            # select assignment
            candidate = self._selectCandidate(candidateList, solution)
            # assign the current order to the time slot
            solution.assign(orderId, candidate.start)

        return solution

    def solve(self, **kwargs):
        self.startTimeMeasure()

        solver = kwargs.get('solver', None)
        if solver is not None:
            self.config.solver = solver
        localSearch = kwargs.get('localSearch', None)
        if localSearch is not None:
            self.config.localSearch = localSearch

        # self.writeLogLine(float('inf'), 0)

        solution = self.construction()
        if self.config.localSearch:
            localSearch = LocalSearch(self.config, None)
            endTime= self.startTime + self.config.maxExecTime
            solution = localSearch.solve(solution=solution, startTime=self.startTime, endTime=endTime)

        self.elapsedEvalTime = time.time() - self.startTime
        self.writeLogLine(solution.getFitness(), 1)
        self.numSolutionsConstructed = 1
        self.printPerformance()

        return solution


