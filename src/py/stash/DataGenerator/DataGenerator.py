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
        surface = self.config.surface_capacity

        if not os.path.isdir(instancesDirectory):
            raise AMMMException('Directory(%s) does not exist' % instancesDirectory)

        for i in range(numInstances):
            instancePath = os.path.join(instancesDirectory, '%s_%d.%s' % (fileNamePrefix, i, fileNameExtension))
            fInstance = open(instancePath, 'w')

            lengths = []
            profits = []
            surfaces = []
            min_deliveries = []
            max_deliveries =[]
            for c in range(n):
                lengths[c] = random.randint(1, t)
                profits[c] = random.randint(1, 10)
                surfaces[c] = random.randint(1, surface)

                max_deliveries[c] = random.randint(lengths[c], t)
                min_deliveries[c] = random.randint(1, max_deliveries[c]) 

            fInstance.write('n=%d;\n' % n)
            fInstance.write('t=%d;\n' % t)
            fInstance.write('profit=%d;\n' % profits)
            fInstance.write('length=%d;\n' % lengths)
            fInstance.write('min_deliver=%d;\n' % min_deliveries)
            fInstance.write('max_deliver=%d;\n' % max_deliveries)
            fInstance.write('surface=%d;\n' % surface)

            fInstance.close()
