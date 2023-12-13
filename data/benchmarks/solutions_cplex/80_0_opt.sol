Running model with src/py/HeuristicsProject/data/80_0.dat and outputting to src/py/HeuristicsProject/solutions_cplex/80_0_opt.sol

<<< setup


<<< generate

Version identifier: 22.1.1.0 | 2022-11-28 | 9160aff4d
Tried aggregator 2 times.
MIP Presolve eliminated 320 rows and 5351 columns.
MIP Presolve modified 1058 coefficients.
Aggregator did 11883 substitutions.
Reduced MIP has 17062 rows, 10446 columns, and 43131 nonzeros.
Reduced MIP has 9246 binaries, 142 generals, 0 SOSs, and 7662 indicators.
Presolve time = 0.09 sec. (227.82 ticks)
Found incumbent of value 11.000000 after 0.27 sec. (343.02 ticks)
Probing fixed 0 vars, tightened 1058 bounds.
Probing changed sense of 596 constraints.
Probing time = 5.61 sec. (2614.54 ticks)
Tried aggregator 2 times.
MIP Presolve eliminated 5926 rows and 6299 columns.
MIP Presolve modified 24 coefficients.
Aggregator did 137 substitutions.
Reduced MIP has 10999 rows, 4010 columns, and 29055 nonzeros.
Reduced MIP has 3873 binaries, 137 generals, 0 SOSs, and 7662 indicators.
Presolve time = 0.08 sec. (47.84 ticks)
Probing time = 0.20 sec. (92.40 ticks)
Tried aggregator 1 time.
Detecting symmetries...
Reduced MIP has 10999 rows, 4010 columns, and 29055 nonzeros.
Reduced MIP has 3873 binaries, 137 generals, 0 SOSs, and 7662 indicators.
Presolve time = 0.04 sec. (23.00 ticks)
Probing time = 0.05 sec. (15.11 ticks)
Clique table members: 80360.
MIP emphasis: balance optimality and feasibility.
MIP search method: dynamic search.
Parallel mode: deterministic, using up to 8 threads.
Root relaxation solution time = 0.25 sec. (155.06 ticks)

        Nodes                                         Cuts/
   Node  Left     Objective  IInf  Best Integer    Best Bound    ItCnt     Gap

*     0+    0                           11.0000      439.0000              --- 
*     0+    0                           12.0000      439.0000              --- 
      0     0      117.6341   735       12.0000      117.6341     3716  880.28%
*     0+    0                           65.0000      117.6341            80.98%
      0     0      114.4824   721       65.0000    Cuts: 2849     5362   76.13%
*     0+    0                           81.0000      114.4824            41.34%
      0     0      112.7345   765       81.0000    Cuts: 2849     8681   39.18%
*     0+    0                           94.0000      112.7345            19.93%
      0     0      112.2299   860       94.0000    Cuts: 1059    14315   19.39%
      0     0      111.8307   722       94.0000    Cuts: 1829    16940   18.97%
*     0+    0                           98.0000      111.8307            14.11%
      0     0      111.6625   854       98.0000    Cuts: 1057    18576   13.94%
Detecting symmetries...
      0     0      111.5870   690       98.0000     Cuts: 398    19219   13.86%
*     0+    0                          100.0000      111.5870            11.59%
      0     0        cutoff            100.0000      111.5870    19219   11.59%
      0     0      111.4929   881      100.0000    Cuts: 1134    21046   11.49%
      0     0      111.4250   810      100.0000     Cuts: 862    22137   11.42%
      0     0      111.4124   680      100.0000     Cuts: 845    22518   11.41%
      0     0      111.3964   728      100.0000     Cuts: 233    22813   11.40%
      0     0      111.3485   608      100.0000     Cuts: 983    23353   11.35%
      0     0      111.3223   646      100.0000     Cuts: 671    23918   11.32%
      0     0      111.2990   737      100.0000     Cuts: 409    24289   11.30%
      0     0      111.2823   746      100.0000     Cuts: 809    24567   11.28%
      0     0      111.2751   753      100.0000     Cuts: 231    25007   11.28%
      0     0      111.2574   753      100.0000    Cuts: 1067    25438   11.26%
Detecting symmetries...
      0     2      111.2574   753      100.0000      111.2574    25438   11.26%
Elapsed time = 31.25 sec. (12058.35 ticks, tree = 0.02 MB, solutions = 7)
      1     3      111.1877   718      100.0000      111.2572    26541   11.26%
      5     6      110.2930   618      100.0000      111.1876    30031   11.19%
     22    12    infeasible            100.0000      111.1876    40713   11.19%
     57    18      102.9919   493      100.0000      111.0813    42096   11.08%
     95    44      108.3326   629      100.0000      111.0813    68915   11.08%
    123    59      101.9391   534      100.0000      111.0813    83969   11.08%
    140    66      101.0531   664      100.0000      111.0813    99858   11.08%
    152    74      105.3838   596      100.0000      111.0813   111888   11.08%
    161    76      107.5504   589      100.0000      111.0813   125389   11.08%
    224    92      104.8835   593      100.0000      110.7982   158986   10.80%
Elapsed time = 43.42 sec. (15381.16 ticks, tree = 0.16 MB, solutions = 7)
    248   102      107.2916   886      100.0000      110.5745   184666   10.57%
    279   117      103.2470   751      100.0000      110.2409   237308   10.24%
    321   135      106.8972   859      100.0000      110.1952   281959   10.20%
    360   160      104.3719   671      100.0000      110.1766   357879   10.18%
    392   174        cutoff            100.0000      110.1728   403874   10.17%
    424   180      103.9235   606      100.0000      110.1728   453007   10.17%
    477   183        cutoff            100.0000      110.1728   477535   10.17%
    531   210      104.5534   685      100.0000      110.1728   552222   10.17%
    579   221      106.3673   573      100.0000      110.1728   586119   10.17%
    609   247      104.3418   431      100.0000      109.3802   658318    9.38%
Elapsed time = 74.24 sec. (25269.27 ticks, tree = 0.49 MB, solutions = 7)
    659   251      101.1549   683      100.0000      108.9557   726565    8.96%
    714   269      101.1594   777      100.0000      108.7085   804208    8.71%
    769   272      104.7544   644      100.0000      107.6978   828494    7.70%
    832   292        cutoff            100.0000      107.5258   857597    7.53%
    859   315        cutoff            100.0000      107.3496   916313    7.35%
    881   333      105.6981   829      100.0000      107.2772   932319    7.28%
    905   344        cutoff            100.0000      107.2772  1040840    7.28%
    930   348      104.6758   778      100.0000      107.2772  1052544    7.28%
    954   350      103.5485   830      100.0000      106.9630  1131170    6.96%
    987   343        cutoff            100.0000      106.8587  1129553    6.86%
Elapsed time = 113.98 sec. (34971.86 ticks, tree = 0.80 MB, solutions = 7)
   1018   350      104.3641   687      100.0000      106.8471  1217170    6.85%
   1057   343      101.8093   815      100.0000      106.8471  1247607    6.85%
   1088   343      102.0697   719      100.0000      106.7116  1272520    6.71%
   1112   350        cutoff            100.0000      106.6868  1378208    6.69%
   1143   349      103.1993   790      100.0000      106.6798  1356119    6.68%
   1173   324        cutoff            100.0000      106.3353  1478469    6.34%
   1198   321        cutoff            100.0000      106.2572  1486024    6.26%
   1221   307        cutoff            100.0000      106.0773  1579626    6.08%
   1249   287        cutoff            100.0000      105.7636  1644724    5.76%
   1282   301        cutoff            100.0000      105.6357  1594750    5.64%
Elapsed time = 155.98 sec. (44901.46 ticks, tree = 0.84 MB, solutions = 7)
   1310   281      103.5052   583      100.0000      105.5167  1680647    5.52%
   1343   255      103.2950   776      100.0000      105.2557  1775028    5.26%
   1384   236        cutoff            100.0000      104.8879  1831051    4.89%
   1414   235      101.1080   677      100.0000      104.8257  1856447    4.83%
   1445   191        cutoff            100.0000      104.7704  1954147    4.77%
   1492   198        cutoff            100.0000      104.5090  1931975    4.51%
   1527   144        cutoff            100.0000      104.4288  2047594    4.43%
   1632    43        cutoff            100.0000      104.4288  2150719    4.43%

GUB cover cuts applied:  9
Clique cuts applied:  2630
Cover cuts applied:  3368
Implied bound cuts applied:  92
Flow cuts applied:  33
Mixed integer rounding cuts applied:  80
Zero-half cuts applied:  112
Gomory fractional cuts applied:  11

Root node processing (before b&c):
  Real time             =   30.87 sec. (11847.60 ticks)
Parallel b&c, 8 threads:
  Real time             =  160.68 sec. (42020.57 ticks)
  Sync time (average)   =   11.85 sec.
  Wait time (average)   =    0.00 sec.
                          ------------
Total (root+branch&cut) =  191.55 sec. (53868.16 ticks)

<<< solve


OBJECTIVE: 100

<<< post process


<<< done

