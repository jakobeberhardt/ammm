'''
AMMM P2 Instance Generator v2.0
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

        numCPUs = self.config.numCPUs
        minCapacityPerCPU = self.config.minCapacityPerCPU
        maxCapacityPerCPU = self.config.maxCapacityPerCPU

        numTasks = self.config.numTasks
        minResourcesPerTask = self.config.minResourcesPerTask
        maxResourcesPerTask = self.config.maxResourcesPerTask

        if not os.path.isdir(instancesDirectory):
            raise AMMMException('Directory(%s) does not exist' % instancesDirectory)

        for i in range(numInstances):
            instancePath = os.path.join(instancesDirectory, '%s_%d.%s' % (fileNamePrefix, i, fileNameExtension))
            fInstance = open(instancePath, 'w')

            cpuCapacity = [0] * numCPUs
            for c in range(numCPUs):
                cpuCapacity[c] = random.uniform(minCapacityPerCPU, maxCapacityPerCPU)

            taskResources = [0] * numTasks
            for t in range(numTasks):
                taskResources[t] = random.uniform(minResourcesPerTask, maxResourcesPerTask)

            fInstance.write('nTasks=%d;\n' % numTasks)
            fInstance.write('nCPUs=%d;\n' % numCPUs)

            # translate vector of floats into vector of strings and concatenate that strings separating them by a single space character
            fInstance.write('rt=[%s];\n' % (' '.join(map(str, taskResources))))
            fInstance.write('rc=[%s];\n' % (' '.join(map(str, cpuCapacity))))

            fInstance.close()
