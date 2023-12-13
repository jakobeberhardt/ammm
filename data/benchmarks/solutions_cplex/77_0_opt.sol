Running model with src/py/HeuristicsProject/data/77_0.dat and outputting to src/py/HeuristicsProject/solutions_cplex/77_0_opt.sol

<<< setup


<<< generate

Version identifier: 22.1.1.0 | 2022-11-28 | 9160aff4d
Tried aggregator 2 times.
MIP Presolve eliminated 308 rows and 4705 columns.
MIP Presolve modified 1230 coefficients.
Aggregator did 10977 substitutions.
Reduced MIP has 17207 rows, 10618 columns, and 43425 nonzeros.
Reduced MIP has 9242 binaries, 150 generals, 0 SOSs, and 7856 indicators.
Presolve time = 0.11 sec. (211.09 ticks)
Found incumbent of value 39.000000 after 0.33 sec. (325.22 ticks)
Probing fixed 0 vars, tightened 1226 bounds.
Probing changed sense of 230 constraints.
Probing time = 4.78 sec. (2013.19 ticks)
Tried aggregator 2 times.
MIP Presolve eliminated 5595 rows and 5844 columns.
MIP Presolve modified 54 coefficients.
Aggregator did 139 substitutions.
Reduced MIP has 11473 rows, 4635 columns, and 30286 nonzeros.
Reduced MIP has 4491 binaries, 144 generals, 0 SOSs, and 7856 indicators.
Presolve time = 0.12 sec. (61.16 ticks)
Probing time = 0.21 sec. (91.11 ticks)
Tried aggregator 1 time.
Detecting symmetries...
Reduced MIP has 11473 rows, 4635 columns, and 30286 nonzeros.
Reduced MIP has 4491 binaries, 144 generals, 0 SOSs, and 7856 indicators.
Presolve time = 0.05 sec. (23.60 ticks)
Probing time = 0.06 sec. (13.38 ticks)
Clique table members: 90834.
MIP emphasis: balance optimality and feasibility.
MIP search method: dynamic search.
Parallel mode: deterministic, using up to 8 threads.
Root relaxation solution time = 0.42 sec. (160.38 ticks)

        Nodes                                         Cuts/
   Node  Left     Objective  IInf  Best Integer    Best Bound    ItCnt     Gap

*     0+    0                           39.0000      419.0000           974.36%
      0     0      126.6288   641       39.0000      126.6288     3827  224.69%
*     0+    0                           73.0000      126.6288            73.46%
      0     0      124.9263   589       73.0000    Cuts: 2968     5434   71.13%
*     0+    0                           88.0000      124.9263            41.96%
      0     0      124.4615   857       88.0000    Cuts: 1413     7382   41.43%
*     0+    0                          100.0000      124.4615            24.46%
      0     0      124.0890   681      100.0000    Cuts: 1446    11310   24.09%
*     0+    0                          105.0000      124.0890            18.18%
*     0+    0                          108.0000      124.0890            14.90%
      0     0        cutoff            108.0000      124.0890    11310   14.90%
      0     0      123.9223   959      108.0000    Cuts: 1499    13352   14.74%
*     0+    0                          116.0000      123.9223             6.83%
      0     0      123.7718   998      116.0000    Cuts: 1319    16053    6.70%
Detecting symmetries...
      0     0      123.6018  1125      116.0000    Cuts: 1724    18141    6.55%
      0     0      123.3757   988      116.0000    Cuts: 1489    21030    6.36%
      0     0      123.3325  1111      116.0000    Cuts: 1770    22085    6.32%
*     0+    0                          117.0000      123.3325             5.41%
      0     0      123.3033  1089      117.0000    Cuts: 1499    22963    5.39%
      0     0      123.2785  1066      117.0000     Cuts: 979    23808    5.37%
      0     0      123.2333  1017      117.0000     Cuts: 616    24489    5.33%
      0     0      123.2147  1002      117.0000     Cuts: 780    25176    5.31%
      0     0      123.2043  1016      117.0000     Cuts: 520    25706    5.30%
      0     0      123.1968  1014      117.0000     Cuts: 320    26128    5.30%
Detecting symmetries...
      0     2      123.1736  1161      117.0000      123.1968    26664    5.30%
Elapsed time = 39.35 sec. (14470.27 ticks, tree = 0.02 MB, solutions = 8)
      1     3      121.5421   928      117.0000      123.1733    27998    5.28%
      4     6      120.4626   908      117.0000      123.1733    30420    5.28%
     15     7        cutoff            117.0000      123.1261    38559    5.24%
     37    16      118.0969   653      117.0000      123.1261    43289    5.24%
     57    17      122.6578   985      117.0000      122.9905    51333    5.12%
     87    43      118.7872   804      117.0000      122.9002    78465    5.04%
    138    47      121.0000   607      117.0000      122.9002    86751    5.04%
    207    79      120.4773   824      117.0000      122.9002   106495    5.04%
    224   102      119.0000   364      117.0000      122.6428   117187    4.82%
    281   119      121.0000   360      117.0000      122.4027   149562    4.62%
Elapsed time = 49.10 sec. (17898.67 ticks, tree = 0.24 MB, solutions = 8)
    559   173      121.0000   246      117.0000      121.5306   215802    3.87%
    804   189      118.0000   266      117.0000      121.5306   274892    3.87%
   1033   196        cutoff            117.0000      121.0000   344444    3.42%
   1135   184      118.3773   799      117.0000      120.7156   390518    3.18%
   1234   126        cutoff            117.0000      119.6187   450863    2.24%
*  1374+   72                          118.0000      119.3449             1.14%

GUB cover cuts applied:  12
Clique cuts applied:  2104
Cover cuts applied:  1892
Implied bound cuts applied:  99
Flow cuts applied:  35
Mixed integer rounding cuts applied:  84
Zero-half cuts applied:  135
Lift and project cuts applied:  4
Gomory fractional cuts applied:  16

Root node processing (before b&c):
  Real time             =   38.96 sec. (14187.82 ticks)
Parallel b&c, 8 threads:
  Real time             =   27.50 sec. (9487.43 ticks)
  Sync time (average)   =    4.63 sec.
  Wait time (average)   =    0.00 sec.
                          ------------
Total (root+branch&cut) =   66.46 sec. (23675.24 ticks)

<<< solve


OBJECTIVE: 118

<<< post process


<<< done

