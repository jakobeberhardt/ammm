'''
AMMM Lab Heuristics
GRASP solver
Copyright 2018 Luis Velasco.

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

import random
import time
from HeuristicsProject.solver import _Solver
from HeuristicsProject.solvers.localSearch import LocalSearch
from pprint import pprint


# Inherits from the parent abstract solver.
class Solver_GRASP(_Solver):

    def _selectAssignmentCandidate(self, candidateList, alpha):

        # sort candidate assignments by highestLoad in ascending order
        # TODO: Pass rating
        sortedCandidateList = sorted(candidateList, key=lambda x: x.getAssignmentRating(), reverse=True)
        
        # compute boundary highest load as a function of the minimum and maximum highest loads and the alpha parameter
        minRating = sortedCandidateList[-1].getAssignmentRating()
        maxRating = sortedCandidateList[0].getAssignmentRating()

        boundaryScore = maxRating - (maxRating - minRating) * alpha
        
        # find elements that fall into the RCL
        maxIndex = 0
        for candidate in sortedCandidateList:
            if candidate.getAssignmentRating()  >= boundaryScore:
                maxIndex += 1

        # create RCL and pick an element randomly
        rcl = sortedCandidateList[0:maxIndex]          # pick first maxIndex elements starting from element 0
        if not rcl:
            return None
        return random.choice(rcl)          # pick a candidate from rcl at random

    def _selectOrderCandidate(self, candidateList, alpha):

        # sort candidate assignments by highestLoad in ascending order
        # TODO: Pass rating
        sortedCandidateList = sorted(candidateList, key=lambda x: x.getAddedValue(), reverse=True)

        # compute boundary highest load as a function of the minimum and maximum highest loads and the alpha parameter
        lowestRatedOrder = sortedCandidateList[-1]
        highestRatedOrder = sortedCandidateList[0]
        minRating = lowestRatedOrder.getAddedValue()
        maxRating = highestRatedOrder.getAddedValue()

        boundaryScore = maxRating - (maxRating - minRating) * alpha

        # find elements that fall into the RCL
        maxIndex = 0
        for candidate in sortedCandidateList:
            if candidate.getAddedValue() >= boundaryScore:
                maxIndex += 1

        # create RCL and pick an element randomly
        rcl = sortedCandidateList[0:maxIndex]  # pick first maxIndex elements starting from element 0
        if not rcl:
            return None
        return random.choice(rcl)  # pick a candidate from rcl at random
    
    def _greedyRandomizedConstruction(self, alpha):
        # get an empty solution for the problem
        solution = self.instance.createSolution()

        # get orders and sort them by their total required resources in descending order
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
                continue
            # select assignment (random)
            candidate = self._selectAssignmentCandidate(candidateList, alpha)
            if not candidate:
                continue
            solution.assign(orderId, candidate.start)
        return solution
    
    def stopCriteria(self):
        self.elapsedEvalTime = time.time() - self.startTime
        return time.time() - self.startTime > self.config.maxExecTime

    def solve(self, **kwargs):
        self.startTimeMeasure()
        incumbent = self.instance.createSolution()
        incumbent.makeInfeasible()
        highestProfit = 0
        self.writeLogLine(highestProfit, 0)

        iteration = 0
        while not self.stopCriteria():

            iteration += 1
            
            # force first iteration as a Greedy execution (alpha == 0)
            alpha = 0 if iteration == 1 else self.config.alpha

            solution = self._greedyRandomizedConstruction(alpha)
            if self.config.localSearch:
                localSearch = LocalSearch(self.config, None)
                # TODO Make local search time configurable
                endTime = (self.startTime + self.config.maxExecTime) / 6
                solution = localSearch.solve(solution=solution, startTime=self.startTime, endTime=endTime)

            solutionProfit = solution.getFitness()
            if solutionProfit > highestProfit:
                incumbent = solution
                highestProfit = solutionProfit
                self.writeLogLine(highestProfit, iteration)

        self.writeLogLine(highestProfit, iteration)
        self.numSolutionsConstructed = iteration
        self.printPerformance()
        return incumbent

