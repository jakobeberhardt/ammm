'''
AMMM P3 Instance Generator v2.0
Instance Generator class.
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

import os, random
from AMMMGlobals import AMMMException

class InstanceGenerator(object):
    # Generate instances based on read configuration.

    def __init__(self, config):
        self.config = config

    def generate(self):

        instancesDirectory = self.config.instancesDirectory
        fileNamePrefix = self.config.fileNamePrefix
        fileNameExtension = self.config.fileNameExtension
        numInstances = self.config.numInstances

        n = self.config.n
        t = self.config.t
        surface = self.config.surface

        if not os.path.isdir(instancesDirectory):
            raise AMMMException('Directory(%s) does not exist' % instancesDirectory)

        for i in range(numInstances):
            instancePath = os.path.join(instancesDirectory, '%s_%d.%s' % (fileNamePrefix, i, fileNameExtension))
            fInstance = open(instancePath, 'w')

            lengths = [0] * n
            profits = [0] * n
            surfaces = [0] * n
            min_deliveries = [0] * n
            max_deliveries =[0] * n
            for c in range(n):
                lengths[c] = random.randint(1, t)
                profits[c] = random.randint(1, 10)
                surfaces[c] = random.randint(1, surface)

                max_deliveries[c] = random.randint(lengths[c], t)
                min_deliveries[c] = random.randint(1, max_deliveries[c]) 

            fInstance.write('n=%s;\n' % n)
            fInstance.write('t=%s;\n' % t)
            fInstance.write('profit=%s;\n' % str(profits).replace(',', ' '))
            fInstance.write('length=%s;\n' % str(lengths).replace(',', ' '))
            fInstance.write('min_deliver=%s;\n' % str(min_deliveries).replace(',', ' '))
            fInstance.write('max_deliver=%s;\n' % str(max_deliveries).replace(',', ' '))
            fInstance.write('surface=%s;\n' % str(surfaces).replace(',', ' '))
            fInstance.write('surface_capacity=%s;\n' % surface)

            fInstance.close()
