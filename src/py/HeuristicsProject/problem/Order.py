"""
AMMM Lab Heuristics
Representation of a CPU
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


class Order(object):
    def __init__(self, order_id, profit, length, min_deliver, max_deliver, surface):
        self.order_id = order_id
        self.profit = profit
        self.length = length
        self.min_deliver = min_deliver
        self.max_deliver = max_deliver
        self.surface = surface

    def getId(self):
        return self.order_id
    def getProfit(self):
        return self.profit

    def getAddedValue(self):
        #return ((self.profit * max((self.max_deliver - self.min_deliver), 1)) / (self.length * self.surface))
        return self.length

    def getLength(self):
        return self.length
    def getMin_deliver(self):
        return self.min_deliver
    def getMax_deliver(self):
        return self.max_deliver
    def getSurface(self):
        return self.surface

    def __str__(self):
        return "OrderId: %d (surface: %d) (profit: %d) (length: %d) (min_deliver: %d) (max_deliver: %d)" % (self.order_id, self.surface, self.profit, self.length, self.min_deliver, self.max_deliver)
