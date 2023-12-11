Running model with src/py/HeuristicsProject/data/88_0.dat and outputting to src/py/HeuristicsProject/solutions_cplex/88_0_opt.sol

<<< setup


<<< generate

Version identifier: 22.1.1.0 | 2022-11-28 | 9160aff4d
Tried aggregator 2 times.
MIP Presolve eliminated 352 rows and 6432 columns.
MIP Presolve modified 1317 coefficients.
Aggregator did 14818 substitutions.
Reduced MIP has 21298 rows, 13073 columns, and 53922 nonzeros.
Reduced MIP has 11590 binaries, 166 generals, 0 SOSs, and 9846 indicators.
Presolve time = 0.10 sec. (338.00 ticks)
Found incumbent of value 4.000000 after 0.30 sec. (491.62 ticks)
Probing fixed 0 vars, tightened 1317 bounds.
Probing changed sense of 672 constraints.
Probing time = 10.04 sec. (4005.48 ticks)
Tried aggregator 2 times.
MIP Presolve eliminated 7352 rows and 7885 columns.
MIP Presolve modified 42 coefficients.
Aggregator did 135 substitutions.
Reduced MIP has 13811 rows, 5053 columns, and 36469 nonzeros.
Reduced MIP has 4895 binaries, 158 generals, 0 SOSs, and 9846 indicators.
Presolve time = 0.11 sec. (62.85 ticks)
Probing time = 0.20 sec. (99.34 ticks)
Tried aggregator 1 time.
Detecting symmetries...
Reduced MIP has 13811 rows, 5053 columns, and 36469 nonzeros.
Reduced MIP has 4895 binaries, 158 generals, 0 SOSs, and 9846 indicators.
Presolve time = 0.06 sec. (29.56 ticks)
Probing time = 0.07 sec. (17.53 ticks)
Clique table members: 105786.
MIP emphasis: balance optimality and feasibility.
MIP search method: dynamic search.
Parallel mode: deterministic, using up to 8 threads.
Root relaxation solution time = 0.45 sec. (207.19 ticks)

        Nodes                                         Cuts/
   Node  Left     Objective  IInf  Best Integer    Best Bound    ItCnt     Gap

*     0+    0                            4.0000      481.0000              --- 
      0     0      115.6005  1002        4.0000      115.6005     4635     --- 
*     0+    0                           78.0000      115.6005            48.21%
      0     0      112.5190   971       78.0000    Cuts: 3552     7572   44.26%
*     0+    0                           92.0000      112.5190            22.30%
      0     0      111.2450   812       92.0000    Cuts: 3552     9902   20.92%
*     0+    0                           93.0000      111.2450            19.62%
      0     0      110.3736  1076       93.0000    Cuts: 2191    12691   18.68%
*     0+    0                           95.0000      110.3736            16.18%
      0     0      109.9732  1030       95.0000    Cuts: 2011    14456   15.76%
      0     0      109.8260  1083       95.0000    Cuts: 1410    15318   15.61%
Detecting symmetries...
      0     0      109.7103  1046       95.0000    Cuts: 1690    16096   15.48%
      0     0      109.6568  1077       95.0000    Cuts: 1433    16791   15.43%
*     0+    0                           96.0000      109.6568            14.23%
      0     0      109.5772  1089       96.0000    Cuts: 1358    17627   14.14%
      0     0      109.5697  1157       96.0000    Cuts: 1140    18061   14.14%
      0     0      109.4539  1090       96.0000     Cuts: 611    19150   14.01%
      0     0      109.2295   952       96.0000    Cuts: 1087    20137   13.78%
      0     0      109.1012  1126       96.0000    Cuts: 1369    21011   13.65%
      0     0      109.0612  1120       96.0000    Cuts: 1094    21636   13.61%
      0     0      109.0407  1108       96.0000     Cuts: 605    22066   13.58%
*     0+    0                           97.0000      109.0407            12.41%
      0     0      109.0305   999       97.0000     Cuts: 547    22629   12.40%
      0     0      109.0238  1123       97.0000     Cuts: 658    22959   12.40%
*     0+    0                           98.0000      109.0238            11.25%
*     0+    0                          100.0000      109.0238             9.02%
Detecting symmetries...
      0     2      109.0238  1123      100.0000      109.0238    22959    9.02%
Elapsed time = 45.23 sec. (16766.19 ticks, tree = 0.02 MB, solutions = 9)
      2     3      108.6867  1030      100.0000      109.0238    24678    9.02%
      6     6      108.5093   726      100.0000      108.6864    26866    8.69%
     19     8      107.9935   797      100.0000      108.6864    31167    8.69%
     39    10      107.2335   729      100.0000      108.5063    40636    8.51%
     49    16      105.9204   869      100.0000      108.4029    47789    8.40%
     58    19      103.7602   695      100.0000      108.4029    58681    8.40%
     71    28      106.1433   812      100.0000      108.4029    74603    8.40%
     82    35      106.0417   605      100.0000      108.4029    90143    8.40%
     92    37      102.7436   894      100.0000      108.3628   104113    8.36%
    129    58      105.1202   896      100.0000      108.3628   147068    8.36%
Elapsed time = 60.54 sec. (20750.06 ticks, tree = 0.40 MB, solutions = 9)
    162    66      104.7047   783      100.0000      108.3628   171706    8.36%
    215    75        cutoff            100.0000      108.3628   216955    8.36%
    270    86      103.0780   851      100.0000      108.1836   256660    8.18%
    314    97      102.0920  1022      100.0000      108.1836   281569    8.18%
    357    92      104.0448   827      100.0000      108.1836   339183    8.18%
    424   109      103.3724   879      100.0000      105.9529   361625    5.95%
    462    97        cutoff            100.0000      105.9146   392700    5.91%
    518   107      103.1847   659      100.0000      105.9146   477847    5.91%
    603    97        cutoff            100.0000      105.9146   500616    5.91%
    707    81        cutoff            100.0000      105.9146   530060    5.91%
Elapsed time = 102.97 sec. (30654.91 ticks, tree = 0.33 MB, solutions = 9)
    731    36      103.9339  1101      100.0000      105.9146   563855    5.91%
    738     8      101.7614   953      100.0000      104.5481   601829    4.55%

GUB cover cuts applied:  15
Clique cuts applied:  3342
Cover cuts applied:  2021
Implied bound cuts applied:  61
Flow cuts applied:  22
Mixed integer rounding cuts applied:  95
Zero-half cuts applied:  106
Gomory fractional cuts applied:  6

Root node processing (before b&c):
  Real time             =   44.73 sec. (16461.11 ticks)
Parallel b&c, 8 threads:
  Real time             =   62.18 sec. (16699.42 ticks)
  Sync time (average)   =   10.87 sec.
  Wait time (average)   =    0.00 sec.
                          ------------
Total (root+branch&cut) =  106.90 sec. (33160.53 ticks)

<<< solve


OBJECTIVE: 100

<<< post process


<<< done

