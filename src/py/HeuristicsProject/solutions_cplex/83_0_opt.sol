Running model with src/py/HeuristicsProject/data/83_0.dat and outputting to src/py/HeuristicsProject/solutions_cplex/83_0_opt.sol

<<< setup


<<< generate

Version identifier: 22.1.1.0 | 2022-11-28 | 9160aff4d
Tried aggregator 2 times.
MIP Presolve eliminated 332 rows and 5475 columns.
MIP Presolve modified 1424 coefficients.
Aggregator did 14275 substitutions.
Reduced MIP has 21428 rows, 13263 columns, and 54292 nonzeros.
Reduced MIP has 11686 binaries, 160 generals, 0 SOSs, and 10290 indicators.
Presolve time = 0.12 sec. (324.65 ticks)
Found incumbent of value 25.000000 after 0.34 sec. (484.83 ticks)
Probing fixed 0 vars, tightened 1417 bounds.
Probing changed sense of 322 constraints.
Probing time = 8.95 sec. (3266.46 ticks)
Tried aggregator 2 times.
MIP Presolve eliminated 6977 rows and 7742 columns.
MIP Presolve modified 18 coefficients.
Aggregator did 111 substitutions.
Reduced MIP has 14340 rows, 5410 columns, and 37665 nonzeros.
Reduced MIP has 5255 binaries, 155 generals, 0 SOSs, and 10290 indicators.
Presolve time = 0.11 sec. (61.50 ticks)
Probing time = 0.50 sec. (108.12 ticks)
Tried aggregator 1 time.
Detecting symmetries...
Reduced MIP has 14340 rows, 5410 columns, and 37665 nonzeros.
Reduced MIP has 5255 binaries, 155 generals, 0 SOSs, and 10290 indicators.
Presolve time = 0.11 sec. (30.21 ticks)
Probing time = 0.13 sec. (15.97 ticks)
Clique table members: 117761.
MIP emphasis: balance optimality and feasibility.
MIP search method: dynamic search.
Parallel mode: deterministic, using up to 8 threads.
Root relaxation solution time = 0.61 sec. (201.34 ticks)

        Nodes                                         Cuts/
   Node  Left     Objective  IInf  Best Integer    Best Bound    ItCnt     Gap

*     0+    0                           25.0000      475.0000              --- 
      0     0      146.7738  1283       25.0000      146.7738     4811  487.10%
*     0+    0                          111.0000      146.7738            32.23%
      0     0      144.6802  1318      111.0000    Cuts: 3685     7616   30.34%
*     0+    0                          118.0000      144.6802            22.61%
      0     0      144.2409  1088      118.0000    Cuts: 3338    13061   22.24%
*     0+    0                          122.0000      144.2409            18.23%
      0     0      143.4345  1378      122.0000    Cuts: 1774    18539   17.57%
*     0+    0                          127.0000      143.4345            12.94%
      0     0      143.0692  1475      127.0000    Cuts: 1601    20770   12.65%
      0     0      142.8271  1331      127.0000    Cuts: 1414    22539   12.46%
Detecting symmetries...
      0     0      142.6785  1361      127.0000    Cuts: 1613    23897   12.35%
*     0+    0                          128.0000      142.6785            11.47%
      0     0      142.5849  1396      128.0000    Cuts: 1196    24929   11.39%
      0     0      142.5212  1375      128.0000    Cuts: 1372    25786   11.34%
*     0+    0                          132.0000      142.5212             7.97%
      0     0      142.4670  1307      132.0000    Cuts: 1999    26823    7.93%
      0     0      142.4319  1316      132.0000     Cuts: 923    27486    7.90%
      0     0      142.3973  1294      132.0000    Cuts: 1615    28286    7.88%
      0     0      142.3868  1294      132.0000     Cuts: 647    28623    7.87%
      0     0      142.3819  1225      132.0000     Cuts: 420    28898    7.87%
      0     0      142.3768  1191      132.0000     Cuts: 183    29171    7.86%
      0     0      142.3693  1263      132.0000     Cuts: 392    29588    7.86%
Detecting symmetries...

Repeating presolve.
Tried aggregator 2 times.
MIP Presolve eliminated 4334 rows and 1529 columns.
MIP Presolve modified 555 coefficients.
Aggregator did 72 substitutions.
Reduced MIP has 9996 rows, 3809 columns, and 25806 nonzeros.
Reduced MIP has 3695 binaries, 114 generals, 0 SOSs, and 6992 indicators.
Presolve time = 0.08 sec. (27.38 ticks)
Probing fixed 1 vars, tightened 0 bounds.
Probing time = 0.36 sec. (152.89 ticks)
Tried aggregator 1 time.
MIP Presolve eliminated 67 rows and 134 columns.
MIP Presolve modified 2 coefficients.
Reduced MIP has 9929 rows, 3675 columns, and 25537 nonzeros.
Reduced MIP has 3561 binaries, 114 generals, 0 SOSs, and 6992 indicators.
Presolve time = 0.05 sec. (23.12 ticks)
Probing time = 0.23 sec. (78.37 ticks)
Tried aggregator 1 time.
Detecting symmetries...
Reduced MIP has 9929 rows, 3675 columns, and 25537 nonzeros.
Reduced MIP has 3561 binaries, 114 generals, 0 SOSs, and 6992 indicators.
Presolve time = 0.04 sec. (19.72 ticks)
Represolve time = 1.15 sec. (439.43 ticks)
Probing time = 0.03 sec. (7.31 ticks)
Clique table members: 86228.
MIP emphasis: balance optimality and feasibility.
MIP search method: dynamic search.
Parallel mode: deterministic, using up to 8 threads.
Root relaxation solution time = 2.74 sec. (649.35 ticks)

        Nodes                                         Cuts/
   Node  Left     Objective  IInf  Best Integer    Best Bound    ItCnt     Gap

*     0+    0                          132.0000      142.3693             7.86%
      0     0      142.3693  1142      132.0000      142.3693    29646    7.86%
      0     0      142.3239  1177      132.0000    Cuts: 1728    30854    7.82%
      0     0      142.3033  1020      132.0000    Cuts: 1025    31516    7.81%
      0     0      142.2965  1052      132.0000     Cuts: 557    31806    7.80%
      0     0      142.2888  1069      132.0000     Cuts: 421    32132    7.79%
      0     0      142.2835  1056      132.0000     Cuts: 299    32425    7.79%
      0     0      142.2817  1124      132.0000     Cuts: 281    32637    7.79%
      0     0      142.2792  1061      132.0000     Cuts: 714    32791    7.79%
      0     0      142.2777  1070      132.0000     Cuts: 152    32936    7.79%
Detecting symmetries...
      0     2      142.2777  1070      132.0000      142.2777    32936    7.79%
Elapsed time = 71.81 sec. (23500.05 ticks, tree = 0.02 MB, solutions = 7)
      1     3      142.1309   948      132.0000      142.2772    34452    7.79%
      3     4      138.1559   985      132.0000      142.2772    35510    7.79%
      5     6      138.0337   949      132.0000      142.1308    38597    7.67%
      8     7      141.4881   759      132.0000      141.8451    40709    7.46%
     10    12      139.8549   711      132.0000      141.6856    49765    7.34%
     15    16      133.4596   503      132.0000      141.6856    59560    7.34%
     26    20      140.2638   820      132.0000      141.4869    73737    7.19%
     37    27      135.0788   478      132.0000      141.4869    92122    7.19%
     50    30      135.2827   545      132.0000      141.4869    99876    7.19%
    109    50      138.8405   779      132.0000      141.4869   135527    7.19%
Elapsed time = 85.79 sec. (27235.15 ticks, tree = 0.77 MB, solutions = 7)
    177    77      137.1669   800      132.0000      141.0720   187352    6.87%
    272   111      133.8683   690      132.0000      140.5869   244684    6.51%
    500   170      135.4105   502      132.0000      139.4913   292064    5.68%
    874   245      136.0406   811      132.0000      139.0219   378715    5.32%
   1096   250        cutoff            132.0000      138.4784   417465    4.91%
   1145   240        cutoff            132.0000      138.0000   484126    4.55%
   1271   207      136.2000   521      132.0000      137.4510   523207    4.13%
   1565   248      136.1864   495      132.0000      136.5890   560846    3.48%
   1875   370      136.2083   445      132.0000      136.3390   650442    3.29%
   2175   365      136.0730   495      132.0000      136.3070   706262    3.26%
Elapsed time = 126.44 sec. (36884.60 ticks, tree = 1.02 MB, solutions = 7)
   2360   351      133.7027   464      132.0000      136.2714   763087    3.24%
   2809   330      135.9936   391      132.0000      136.2035   794801    3.18%
   3155   368        cutoff            132.0000      136.0100   859505    3.04%
   3317   387        cutoff            132.0000      136.0000   935355    3.03%
   3398   367      133.6570   249      132.0000      136.0000   966921    3.03%
   3504   296        cutoff            132.0000      136.0000  1016473    3.03%
   3680   180      133.0399   338      132.0000      135.9431  1067639    2.99%
*  3756+  179                          133.0000      135.9431             2.21%
   3871     2      134.0000   173      133.0000      134.0000  1119478    0.75%

GUB cover cuts applied:  10
Clique cuts applied:  2386
Cover cuts applied:  516
Implied bound cuts applied:  2493
Flow cuts applied:  30
Mixed integer rounding cuts applied:  130
Zero-half cuts applied:  106
Lift and project cuts applied:  10
Gomory fractional cuts applied:  36

Root node processing (before b&c):
  Real time             =   71.59 sec. (23403.62 ticks)
Parallel b&c, 8 threads:
  Real time             =   84.70 sec. (21248.48 ticks)
  Sync time (average)   =   11.60 sec.
  Wait time (average)   =    0.00 sec.
                          ------------
Total (root+branch&cut) =  156.30 sec. (44652.10 ticks)

<<< solve


OBJECTIVE: 133

<<< post process


<<< done

