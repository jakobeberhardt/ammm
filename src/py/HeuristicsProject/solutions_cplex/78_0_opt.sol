Running model with src/py/HeuristicsProject/data/78_0.dat and outputting to src/py/HeuristicsProject/solutions_cplex/78_0_opt.sol

<<< setup


<<< generate

Version identifier: 22.1.1.0 | 2022-11-28 | 9160aff4d
Tried aggregator 2 times.
MIP Presolve eliminated 312 rows and 5185 columns.
MIP Presolve modified 905 coefficients.
Aggregator did 10196 substitutions.
Reduced MIP has 14807 rows, 9237 columns, and 37564 nonzeros.
Reduced MIP has 8184 binaries, 152 generals, 0 SOSs, and 6506 indicators.
Presolve time = 0.09 sec. (178.88 ticks)
Found incumbent of value 33.000000 after 0.25 sec. (270.31 ticks)
Probing fixed 0 vars, tightened 901 bounds.
Probing changed sense of 226 constraints.
Probing time = 3.19 sec. (1513.48 ticks)
Tried aggregator 2 times.
MIP Presolve eliminated 4844 rows and 5602 columns.
MIP Presolve modified 15 coefficients.
Aggregator did 162 substitutions.
Reduced MIP has 9801 rows, 3473 columns, and 25777 nonzeros.
Reduced MIP has 3326 binaries, 147 generals, 0 SOSs, and 6506 indicators.
Presolve time = 0.08 sec. (42.32 ticks)
Probing time = 0.22 sec. (90.47 ticks)
Tried aggregator 1 time.
Detecting symmetries...
Reduced MIP has 9801 rows, 3473 columns, and 25777 nonzeros.
Reduced MIP has 3326 binaries, 147 generals, 0 SOSs, and 6506 indicators.
Presolve time = 0.05 sec. (20.05 ticks)
Probing time = 0.05 sec. (12.45 ticks)
Clique table members: 58751.
MIP emphasis: balance optimality and feasibility.
MIP search method: dynamic search.
Parallel mode: deterministic, using up to 8 threads.
Root relaxation solution time = 0.32 sec. (116.19 ticks)

        Nodes                                         Cuts/
   Node  Left     Objective  IInf  Best Integer    Best Bound    ItCnt     Gap

*     0+    0                           33.0000      446.0000              --- 
      0     0      121.0121   666       33.0000      121.0121     2923  266.70%
*     0+    0                           95.0000      121.0121            27.38%
      0     0      117.0125   560       95.0000    Cuts: 2550     5154   23.17%
*     0+    0                          104.0000      117.0125            12.51%
      0     0      115.1526   581      104.0000    Cuts: 2298     6303   10.72%
      0     0      113.8565   613      104.0000     Cuts: 612     7342    9.48%
      0     0      113.4986   651      104.0000     Cuts: 616     8044    9.13%
      0     0      113.1782   637      104.0000     Cuts: 406     8886    8.83%
Detecting symmetries...
      0     0      113.0375   647      104.0000     Cuts: 412     9379    8.69%
      0     0      112.8393   651      104.0000     Cuts: 356     9933    8.50%
      0     0      112.6721   691      104.0000     Cuts: 377    10466    8.34%
      0     0      112.5901   662      104.0000     Cuts: 273    10804    8.26%
      0     0      112.5415   698      104.0000     Cuts: 344    11260    8.21%
      0     0      112.4781   651      104.0000     Cuts: 619    11750    7.87%
      0     0      112.4424   661      104.0000     Cuts: 240    12302    4.48%
      0     0        cutoff            104.0000      104.0000    12508    0.00%
Elapsed time = 16.71 sec. (6338.47 ticks, tree = 0.01 MB, solutions = 3)

GUB cover cuts applied:  12
Clique cuts applied:  1535
Cover cuts applied:  1094
Implied bound cuts applied:  5
Flow cuts applied:  20
Mixed integer rounding cuts applied:  97
Zero-half cuts applied:  111
Gomory fractional cuts applied:  2

Root node processing (before b&c):
  Real time             =   16.72 sec. (6339.32 ticks)
Parallel b&c, 8 threads:
  Real time             =    0.00 sec. (0.00 ticks)
  Sync time (average)   =    0.00 sec.
  Wait time (average)   =    0.00 sec.
                          ------------
Total (root+branch&cut) =   16.72 sec. (6339.32 ticks)

<<< solve


OBJECTIVE: 104

<<< post process


<<< done

