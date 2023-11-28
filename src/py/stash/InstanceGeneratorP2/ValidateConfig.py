'''
AMMM P2 Instance Generator v2.0
Config attributes validator.
Copyright 2020 Luis Velasco

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

from AMMMGlobals import AMMMException


class ValidateConfig(object):
    # Validate config attributes read from a DAT file.

    @staticmethod
    def validate(data):
        # Validate that mandatory input parameters were found
        paramList = ['instancesDirectory', 'fileNamePrefix', 'fileNameExtension', 'numInstances',
                      'numCPUs', 'minCapacityPerCPU', 'maxCapacityPerCPU',
                      'numTasks', 'minResourcesPerTask', 'maxResourcesPerTask']
        for paramName in paramList:
            if paramName not in data.__dict__:
                raise AMMMException('Parameter(%s) has not been not specified in Configuration' % str(paramName))

        instancesDirectory = data.instancesDirectory
        if len(instancesDirectory) == 0: raise AMMMException('Value for instancesDirectory is empty')

        fileNamePrefix = data.fileNamePrefix
        if len(fileNamePrefix) == 0: raise AMMMException('Value for fileNamePrefix is empty')

        fileNameExtension = data.fileNameExtension
        if len(fileNameExtension) == 0: raise AMMMException('Value for fileNameExtension is empty')

        numInstances = data.numInstances
        if not isinstance(numInstances, int) or (numInstances <= 0):
            raise AMMMException('numInstances(%s) has to be a positive integer value.' % str(numInstances))

        numCPUs = data.numCPUs
        if not isinstance(numCPUs, int) or (numCPUs <= 0):
            raise AMMMException('numCPUs(%s) has to be a positive integer value.' % str(numCPUs))

        minCapacityPerCPU = data.minCapacityPerCPU
        if not isinstance(minCapacityPerCPU, (int, float)) or (minCapacityPerCPU <= 0):
            raise AMMMException('minCapacityPerCore(%s) has to be a positive float value.' % str(minCapacityPerCPU))

        maxCapacityPerCPU = data.maxCapacityPerCPU
        if not isinstance(maxCapacityPerCPU, (int, float)) or (maxCapacityPerCPU <= 0):
            raise AMMMException('maxCapacityPerCore(%s) has to be a positive float value.' % str(maxCapacityPerCPU))

        if maxCapacityPerCPU < minCapacityPerCPU:
            raise AMMMException('maxCapacityPerCore(%s) has to be >= minCapacityPerCore(%s).' % (str(maxCapacityPerCPU), str(minCapacityPerCPU)))

        numTasks = data.numTasks
        if not isinstance(numTasks, int) or (numTasks <= 0):
            raise AMMMException('numTasks(%s) has to be a positive integer value.' % str(numTasks))

        minResourcesPerTask = data.minResourcesPerTask
        if not isinstance(minResourcesPerTask, (int, float)) or (minResourcesPerTask <= 0):
            raise AMMMException('minResourcesPerThread(%s) has to be a positive float value.' % str(minResourcesPerTask))

        maxResourcesPerTask = data.maxResourcesPerTask
        if not isinstance(maxResourcesPerTask, (int, float)) or (maxResourcesPerTask <= 0):
            raise AMMMException('maxResourcesPerThread(%s) has to be a positive float value.' % str(maxResourcesPerTask))

        if maxResourcesPerTask < minResourcesPerTask:
            raise AMMMException('maxResourcesPerThread(%s) has to be >= minResourcesPerThread(%s).' % (str(maxResourcesPerTask), str(minResourcesPerTask)))
