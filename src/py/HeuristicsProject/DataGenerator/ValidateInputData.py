"""
AMMM Lab Heuristics
Instance file validator v2.0
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

from AMMMGlobals import AMMMException


# Validate instance attributes read from a DAT file.
# It validates the structure of the parameters read from the DAT file.
# It does not validate that the instance is feasible or not.
# Use Problem.checkInstance() function to validate the feasibility of the instance.
class ValidateInputData(object):
    @staticmethod
    def validate(data):

        # Validate that all input parameters were found
        for paramName in ['n', 't', 'profit', 'length', 'min_deliver', 'max_deliver', 'surface', 'surface_capacity']:
            if paramName not in data.__dict__:
                raise AMMMException('Parameter/Set(%s) not contained in Input Data' % str(paramName))

        # Validate n - number of order_request
        n = data.n
        if not isinstance(n, int) or (n <= 0):
            raise AMMMException('n(%s) has to be a positive integer value.' % str(n))

        # Validate time slot number
        t = data.t
        if not isinstance(t, int) or (t <= 0):
            raise AMMMException('t(%s) has to be a positive integer value.' % str(t))

        # Validate profit - the profit of each order
        data.profit = list(data.profit)
        profit = data.profit
        if len(profit) != n:
            raise AMMMException('Size of profit(%d) does not match with value of n(%d).' % (len(profit), n))

        for value in profit:
            if not isinstance(value, (int, float)) or (value < 0):
                raise AMMMException('Invalid parameter value(%s) in profit. Should be a float greater or equal than zero.' % str(
                    value))

        # Validate length - the length of each order
        data.length = list(data.length)
        length = data.length
        if len(length) != n:
            raise AMMMException('Size of length(%d) does not match with value of n(%d).' % (len(length), n))

        for value in length:
            if not isinstance(value, int) or (value < 0):
                raise AMMMException(
                    'Invalid parameter value(%s) in length. Should be an integer greater or equal than zero.' % str(
                        value))

        # Validate min_deliver - the min_deliver of each order
        data.min_deliver = list(data.min_deliver)
        min_deliver = data.min_deliver
        if len(min_deliver) != n:
            raise AMMMException('Size of min_deliver(%d) does not match with value of n(%d).' % (len(min_deliver), n))

        for value in min_deliver:
            if not isinstance(value, int) or (value <= 0):
                raise AMMMException(
                    'Invalid parameter value(%s) in min_deliver. Should be a integer greater than zero.' % str(
                        value))

        # Validate max_deliver - the max_deliver of each order
        data.max_deliver = list(data.max_deliver)
        max_deliver = data.max_deliver
        if len(max_deliver) != n:
            raise AMMMException('Size of max_deliver(%d) does not match with value of n(%d).' % (len(max_deliver), n))

        for value in max_deliver:
            if not isinstance(value, int) or (value <= 0):
                raise AMMMException(
                    'Invalid parameter value(%s) in min_deliver. Should be a integer greater than zero.' % str(
                        value))

        # Validate surface - the surface of each order
        data.surface = list(data.surface)
        surface = data.surface
        if len(surface) != n:
            raise AMMMException('Size of profit(%d) does not match with value of n(%d).' % (len(surface), n))

        for value in surface:
            if not isinstance(value, (int, float)) or (value < 0):
                raise AMMMException(
                    'Invalid parameter value(%s) in profit. Should be a float greater or equal than zero.' % str(
                        value))

        # Validate surface_capacity
        n = data.n
        if not isinstance(n, int) or (n <= 0):
            raise AMMMException('n(%s) has to be a positive integer value.' % str(n))
