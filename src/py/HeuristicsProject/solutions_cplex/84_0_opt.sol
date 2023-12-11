Running model with src/py/HeuristicsProject/data/84_0.dat and outputting to src/py/HeuristicsProject/solutions_cplex/84_0_opt.sol

<<< setup


<<< generate

Version identifier: 22.1.1.0 | 2022-11-28 | 9160aff4d
Tried aggregator 2 times.
MIP Presolve eliminated 336 rows and 5939 columns.
MIP Presolve modified 1125 coefficients.
Aggregator did 13687 substitutions.
Reduced MIP has 19337 rows, 12047 columns, and 49187 nonzeros.
Reduced MIP has 10765 binaries, 162 generals, 0 SOSs, and 9142 indicators.
Presolve time = 0.11 sec. (293.31 ticks)
Found incumbent of value 9.000000 after 0.31 sec. (430.56 ticks)
Probing fixed 0 vars, tightened 1120 bounds.
Probing changed sense of 364 constraints.
Probing time = 6.66 sec. (2994.45 ticks)
Tried aggregator 2 times.
MIP Presolve eliminated 6404 rows and 7618 columns.
MIP Presolve modified 17 coefficients.
Aggregator did 132 substitutions.
Reduced MIP has 12801 rows, 4297 columns, and 33507 nonzeros.
Reduced MIP has 4140 binaries, 157 generals, 0 SOSs, and 9142 indicators.
Presolve time = 0.08 sec. (54.76 ticks)
Probing time = 0.22 sec. (100.73 ticks)
Tried aggregator 1 time.
Detecting symmetries...
Reduced MIP has 12801 rows, 4297 columns, and 33507 nonzeros.
Reduced MIP has 4140 binaries, 157 generals, 0 SOSs, and 9142 indicators.
Presolve time = 0.05 sec. (26.69 ticks)
Probing time = 0.05 sec. (15.24 ticks)
Clique table members: 87515.
MIP emphasis: balance optimality and feasibility.
MIP search method: dynamic search.
Parallel mode: deterministic, using up to 8 threads.
Root relaxation solution time = 0.30 sec. (151.98 ticks)

        Nodes                                         Cuts/
   Node  Left     Objective  IInf  Best Integer    Best Bound    ItCnt     Gap

*     0+    0                            9.0000      446.0000              --- 
*     0+    0                           14.0000      446.0000              --- 
      0     0      133.6570   900       14.0000      133.6570     3602  854.69%
*     0+    0                           66.0000      133.6570           102.51%
      0     0      133.2146   533       66.0000    Cuts: 3300     4318  101.69%
*     0+    0                           94.0000      133.1168            41.61%
      0     0      129.7892   809       94.0000    Cuts: 2423     6779   38.07%
*     0+    0                           96.0000      129.7892            35.20%
      0     0      128.9786   875       96.0000    Cuts: 2537     8671   34.35%
*     0+    0                           98.0000      128.9786            31.61%
      0     0      128.6105   993       98.0000    Cuts: 1805    10016   31.24%
*     0+    0                          103.0000      128.6105            24.86%
      0     0      128.3871   988      103.0000    Cuts: 1476    11639   24.65%
Detecting symmetries...
      0     0      128.2645   881      103.0000    Cuts: 1613    12543   24.53%
*     0+    0                          113.0000      128.2645            13.51%
      0     0        cutoff            113.0000      128.2645    12543   13.51%
      0     0      128.2014   985      113.0000     Cuts: 969    13292   13.45%
*     0+    0                          119.0000      128.2014             7.73%
      0     0      128.1482  1021      119.0000     Cuts: 793    13892    7.69%
      0     0      128.0970   966      119.0000    Cuts: 1141    14363    7.64%
      0     0      128.0167  1011      119.0000     Cuts: 759    15039    7.58%
      0     0      127.9803   993      119.0000    Cuts: 2029    15676    7.55%
      0     0      127.9639   993      119.0000     Cuts: 358    16045    7.53%
      0     0      127.9491   975      119.0000     Cuts: 552    16328    7.52%
      0     0      127.9255   992      119.0000     Cuts: 248    16659    7.50%
      0     0      127.9179  1027      119.0000     Cuts: 191    16861    7.49%
      0     0      127.9088  1035      119.0000     Cuts: 461    17118    7.49%
*     0+    0                          120.0000      127.9088             6.59%
Detecting symmetries...
      0     2      127.8769   930      120.0000      127.9088    17133    6.59%
Elapsed time = 36.69 sec. (14030.94 ticks, tree = 0.02 MB, solutions = 10)
      1     3      127.5270   790      120.0000      127.8766    18696    6.56%
      6     6      126.7587   643      120.0000      127.7275    21341    6.44%
     15     5      125.9536   900      120.0000      127.7275    22398    6.44%
     30    20      123.2410   534      120.0000      127.7080    35358    6.42%
     52    34      126.5604   641      120.0000      127.7080    45914    6.42%
     75    49      121.2954   349      120.0000      127.4394    65020    6.20%
    107    64      127.0264   694      120.0000      127.4394    75222    6.20%
    126    67      121.3391   700      120.0000      127.4394    80933    6.20%
    149    82      126.2647   643      120.0000      127.4394    94622    6.20%
    274   145      124.4720   580      120.0000      127.4394   150627    6.20%
Elapsed time = 49.84 sec. (17373.55 ticks, tree = 0.43 MB, solutions = 10)
    349   181      126.5128   867      120.0000      126.7258   195020    5.60%
    409   192      123.1906   633      120.0000      126.5066   233440    5.42%
*   485+  205                          121.0000      126.5066             4.55%
    496   193      124.0034   676      121.0000      126.5066   252770    4.55%
    558   193      124.9183   759      121.0000      125.9255   289658    4.07%
    621   200        cutoff            121.0000      125.5767   358145    3.78%
    669   185        cutoff            121.0000      125.0886   386589    3.38%
    734   169      123.7833   395      121.0000      124.8372   421453    3.17%
    858   128        cutoff            121.0000      124.4716   491841    2.87%
    973   120        cutoff            121.0000      124.4716   514283    2.87%
   1072    21        cutoff            121.0000      124.4716   556208    2.87%
Elapsed time = 101.40 sec. (27246.49 ticks, tree = 0.02 MB, solutions = 11)

GUB cover cuts applied:  12
Clique cuts applied:  2606
Cover cuts applied:  2990
Implied bound cuts applied:  62
Flow cuts applied:  40
Mixed integer rounding cuts applied:  120
Zero-half cuts applied:  119
Lift and project cuts applied:  5
Gomory fractional cuts applied:  8

Root node processing (before b&c):
  Real time             =   36.38 sec. (13870.96 ticks)
Parallel b&c, 8 threads:
  Real time             =   65.91 sec. (13917.23 ticks)
  Sync time (average)   =   10.47 sec.
  Wait time (average)   =    0.00 sec.
                          ------------
Total (root+branch&cut) =  102.29 sec. (27788.19 ticks)

<<< solve


OBJECTIVE: 121

<<< post process


<<< done

