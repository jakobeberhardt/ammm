

# Algorithmic Methods for Mathematical Models - Course Project 23/24
**Mathematics of Baking**

**Tim Wichelmann & Jakob Eberhardt**

- [Algorithmic Methods for Mathematical Models - Course Project 23/24](#algorithmic-methods-for-mathematical-models---course-project-2324)
		- [Table of Contents](#table-of-contents)
	- [Project Structure](#project-structure)
	- [Running the ILP](#running-the-ilp)
	- [Running the Heuristics](#running-the-heuristics)
		- [Benchmarking the Greedy solver / local search / GRASP](#benchmarking-the-greedy-solver--local-search--grasp)
## Project Structure
The project is structured as followed: 
- **models/** includes the developed OPL models
- **src/py/HeuristicsProject** incudes the implementations of
  - Greedy
  - local search
  - GRASP 
  - Instance Generator
- **src/py/misc** includes various scripts for benchmarking and plotting data regarding the Python implementations
- **Makefile** can be used to automate CPLEX benchmarks
- **src/py/HeuristicsProject/data** includes example instances of many sizes
- **data/report/results.ods** includes the benchmarking results used in the report

## Running the ILP
- In order to run a single instance, we can use `make`, which will obtain a optimal solution for the input data specified in the `Makefile` (default 75 orders). The output is also stored to a `.sol` file.
- To run and benchmark the model for all instances available in *src/py/HeuristicsProject/data*, we can use `make full`. The results will also go to *src/py/HeuristicsProject/solutions_cplex*.

## Running the Heuristics
All runs are configured in the *config.dat* file located under *HeuristicsProject/config/*.

In pycharm, we can select one of the run configurations in the top right bar. These include: 
- **Run Solver** which will run the configured instance.
- **Generate Data** to manually generate an instance (e.g. for CPLEX).
- **Generate Plot** to create plots based on the solutions. 

Alternatively, we can use the following commands to run each script form the command line:
```sh
### Run the solver with the given configuration
PYTHONPATH=<path/to/project>/projects/ammm/src/py python3.8 Main.py
```
```sh
### Manually generate data
PYTHONPATH=<path/to/project>/ammm/src/py/HeuristicsProject/DataGenerator/Main.py python3.8 Main.py
```
```sh
### Create schedule plots
PYTHONPATH=<path/to/project>/ammm/src/py/misc/main.py python3.8 Main.py
```
### Benchmarking the Greedy solver / local search / GRASP
After configuring the run in the *config.dat*, we can use the scripts located under *misc/* to automatically change input parameters such as `maxExecTime` or `inputDataFile`. The output is saved to the respective `.sol` file.


