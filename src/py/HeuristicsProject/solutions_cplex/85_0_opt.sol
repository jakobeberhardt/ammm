Running model with src/py/HeuristicsProject/data/85_0.dat and outputting to src/py/HeuristicsProject/solutions_cplex/85_0_opt.sol

<<< setup


<<< generate

Version identifier: 22.1.1.0 | 2022-11-28 | 9160aff4d
Tried aggregator 2 times.
MIP Presolve eliminated 340 rows and 6044 columns.
MIP Presolve modified 1211 coefficients.
Aggregator did 13830 substitutions.
Reduced MIP has 19602 rows, 11976 columns, and 49579 nonzeros.
Reduced MIP has 10630 binaries, 160 generals, 0 SOSs, and 8750 indicators.
Presolve time = 0.13 sec. (295.91 ticks)
Found incumbent of value 30.000000 after 0.33 sec. (433.89 ticks)
Probing fixed 0 vars, tightened 1186 bounds.
Probing changed sense of 768 constraints.
Probing time = 9.98 sec. (3295.96 ticks)
Tried aggregator 2 times.
MIP Presolve eliminated 6916 rows and 7209 columns.
MIP Presolve modified 48 coefficients.
Aggregator did 147 substitutions.
Reduced MIP has 12539 rows, 4620 columns, and 33269 nonzeros.
Reduced MIP has 4464 binaries, 156 generals, 0 SOSs, and 8750 indicators.
Presolve time = 0.11 sec. (67.53 ticks)
Probing time = 0.23 sec. (104.40 ticks)
Tried aggregator 1 time.
Detecting symmetries...
Reduced MIP has 12539 rows, 4620 columns, and 33269 nonzeros.
Reduced MIP has 4464 binaries, 156 generals, 0 SOSs, and 8750 indicators.
Presolve time = 0.05 sec. (26.49 ticks)
Probing time = 0.04 sec. (15.70 ticks)
Clique table members: 91752.
MIP emphasis: balance optimality and feasibility.
MIP search method: dynamic search.
Parallel mode: deterministic, using up to 8 threads.
Root relaxation solution time = 0.41 sec. (190.67 ticks)

        Nodes                                         Cuts/
   Node  Left     Objective  IInf  Best Integer    Best Bound    ItCnt     Gap

*     0+    0                           30.0000      486.0000              --- 
      0     0      123.4093   838       30.0000      123.4093     3898  311.36%
*     0+    0                           91.0000      123.4093            35.61%
      0     0      122.6107   783       91.0000    Cuts: 3234     6509   34.74%
*     0+    0                          103.0000      122.6107            19.04%
      0     0      122.2167   731      103.0000    Cuts: 1865     8505   18.66%
*     0+    0                          105.0000      122.2167            16.40%
      0     0      121.8450   892      105.0000    Cuts: 1133    10455   16.04%
*     0+    0                          110.0000      121.8450            10.77%
      0     0      121.7390   588      110.0000     Cuts: 718    11441   10.67%
      0     0      121.7135   667      110.0000    Cuts: 1225    12408   10.65%
Detecting symmetries...
      0     0      121.6967   622      110.0000    Cuts: 1143    13491   10.63%
      0     0      121.6789   650      110.0000     Cuts: 514    14252   10.62%
      0     0      121.6631   659      110.0000     Cuts: 654    15070   10.60%
      0     0      121.6578   639      110.0000     Cuts: 209    15681   10.60%
      0     0      121.6496   649      110.0000     Cuts: 193    15913   10.59%
      0     0      121.6440   667      110.0000     Cuts: 362    16193   10.59%
Detecting symmetries...
      0     2      121.6440   667      110.0000      121.6249    16193   10.57%
Elapsed time = 40.31 sec. (11586.14 ticks, tree = 0.02 MB, solutions = 5)
      1     3      121.5712   608      110.0000      121.6249    16408   10.57%
      7     8      117.1463   478      110.0000      121.4399    23866   10.40%
     32    20        cutoff            110.0000      121.4394    35022   10.40%
     46    36      115.8968   590      110.0000      121.4394    49415   10.40%
     62    46      117.8197   452      110.0000      121.4394    60457   10.40%
    104    65      116.4335   587      110.0000      121.3629    78187   10.33%
    154    94      111.6904   485      110.0000      121.3629   100119   10.33%
    183   122      120.3764   330      110.0000      121.3629   127017   10.33%
    204   124      118.1874   341      110.0000      121.3629   135600   10.33%
    409   195      113.1771   330      110.0000      121.2493   205105   10.23%
Elapsed time = 53.80 sec. (14784.05 ticks, tree = 1.38 MB, solutions = 5)
    555   302        cutoff            110.0000      121.0088   292765   10.01%
    618   336      120.2909   578      110.0000      120.7577   315880    9.78%
    720   386      112.0188   662      110.0000      120.7577   392292    9.78%
    855   453      115.6540   600      110.0000      120.6527   449291    9.68%
    976   534        cutoff            110.0000      120.6527   540272    9.68%
   1015   568        cutoff            110.0000      119.9790   596132    9.07%
   1070   592      116.2703   569      110.0000      119.7211   634710    8.84%
   1164   620      114.5361   535      110.0000      119.6484   670886    8.77%
   1252   683      116.9422   694      110.0000      119.5682   757880    8.70%
   1349   731      115.5285   613      110.0000      119.3291   838196    8.48%
Elapsed time = 96.38 sec. (24468.08 ticks, tree = 3.40 MB, solutions = 5)
   1425   752      111.0356   727      110.0000      119.2719   859435    8.43%
   1491   814      111.0000   123      110.0000      119.0313   945364    8.21%
   1556   818      114.4319   684      110.0000      118.9113   977802    8.10%
   1629   865      112.4731   770      110.0000      118.9113  1044572    8.10%
   1685   900      112.5250   642      110.0000      118.5988  1092058    7.82%
   1730   935      114.0245   806      110.0000      118.5104  1137505    7.74%
   1777   966        cutoff            110.0000      118.3814  1211560    7.62%
   1819   984      112.5783   657      110.0000      118.3163  1269001    7.56%
   1895   996        cutoff            110.0000      118.1441  1317396    7.40%
   1955  1029      113.6843   650      110.0000      117.9955  1360781    7.27%
Elapsed time = 140.58 sec. (34283.83 ticks, tree = 6.46 MB, solutions = 5)
   2001  1044        cutoff            110.0000      117.9865  1393213    7.26%
   2038  1066      114.9698   623      110.0000      117.7127  1462297    7.01%
   2091  1076      112.9282   623      110.0000      117.6441  1493966    6.95%
   2174  1085        cutoff            110.0000      117.5694  1552336    6.88%
   2231  1080      113.7539   713      110.0000      117.3999  1566433    6.73%
   2293  1098      113.7465   712      110.0000      117.3031  1603649    6.64%
   2348  1123      111.1219   634      110.0000      117.1592  1674768    6.51%
   2384  1129        cutoff            110.0000      117.1524  1711730    6.50%
   2413  1122        cutoff            110.0000      117.0401  1742810    6.40%
   2442  1126      112.5214   609      110.0000      117.0287  1812366    6.39%
Elapsed time = 183.09 sec. (44020.86 ticks, tree = 6.89 MB, solutions = 5)
   2475  1130      114.2869   638      110.0000      116.8973  1833853    6.27%
   2502  1129      111.5462   667      110.0000      116.8498  1855766    6.23%
   2538  1119      113.6422   647      110.0000      116.8093  1929798    6.19%
   2580  1120      113.0066   639      110.0000      116.8093  1940873    6.19%
   2629  1123      111.0339   441      110.0000      116.6759  1985081    6.07%
   2665  1119      111.5003   512      110.0000      116.6759  2003071    6.07%
   2721  1116      113.9986   417      110.0000      116.6149  2007543    6.01%
   2757  1124      114.1840   624      110.0000      116.5593  2076477    5.96%
   2785  1124        cutoff            110.0000      116.4824  2163190    5.89%
   2827  1130      111.6168   678      110.0000      116.3862  2206220    5.81%
Elapsed time = 227.00 sec. (53836.00 ticks, tree = 6.27 MB, solutions = 5)
   2861  1128        cutoff            110.0000      116.3156  2216563    5.74%
   2891  1118        cutoff            110.0000      116.2705  2247576    5.70%
   2927  1089        cutoff            110.0000      116.2312  2311715    5.66%
   2951  1091      115.1569   804      110.0000      116.1411  2314839    5.58%
   2986  1075      111.7860   546      110.0000      116.0610  2416053    5.51%
   3035  1074      113.2106   819      110.0000      116.0123  2408022    5.47%
   3094  1054        cutoff            110.0000      115.9357  2468930    5.40%
   3131  1044        cutoff            110.0000      115.9151  2497685    5.38%
   3160  1038        cutoff            110.0000      115.7893  2514767    5.26%
   3208  1032        cutoff            110.0000      115.7081  2565117    5.19%
Elapsed time = 272.10 sec. (63841.50 ticks, tree = 5.91 MB, solutions = 5)
   3247  1026      113.4377   758      110.0000      115.6857  2591499    5.17%
   3275   998      112.2427   546      110.0000      115.5757  2633367    5.07%
   3312   989        cutoff            110.0000      115.5619  2656138    5.06%
   3344   961      113.1859   469      110.0000      115.4800  2715803    4.98%
   3392   942        cutoff            110.0000      115.3861  2732718    4.90%
   3459   884        cutoff            110.0000      115.2370  2815036    4.76%
   3488   908      111.1535   610      110.0000      115.1993  2788909    4.73%
   3529   847        cutoff            110.0000      114.9986  2849216    4.54%
   3580   836        cutoff            110.0000      114.9382  2883562    4.49%
   3631   788      111.9131   541      110.0000      114.7706  2927834    4.34%
Elapsed time = 315.21 sec. (73728.95 ticks, tree = 4.36 MB, solutions = 5)
   3682   787        cutoff            110.0000      114.5808  2922869    4.16%
   3737   723        cutoff            110.0000      114.5468  2990580    4.13%
   3792   684        cutoff            110.0000      114.3769  3023366    3.98%
   3853   626      112.9572   789      110.0000      114.1088  3086847    3.74%
   3936   538        cutoff            110.0000      113.9598  3127302    3.60%
   3993   517        cutoff            110.0000      113.9427  3146115    3.58%
   4068   468        cutoff            110.0000      113.3390  3177586    3.04%
   4253   234        cutoff            110.0000      113.1229  3249884    2.84%
   4473    50      111.0000    92      110.0000      112.1306  3287494    1.94%
   4735    28      111.0000    54      110.0000      111.8364  3295722    1.67%
Elapsed time = 358.79 sec. (83632.67 ticks, tree = 0.08 MB, solutions = 5)
   4987    79      111.0000    41      110.0000      111.8364  3282963    1.67%
   5617    43      111.0000    37      110.0000      111.0000  3298805    0.91%

GUB cover cuts applied:  2
Clique cuts applied:  1639
Cover cuts applied:  5497
Implied bound cuts applied:  88
Flow cuts applied:  35
Mixed integer rounding cuts applied:  42
Zero-half cuts applied:  95
Gomory fractional cuts applied:  35

Root node processing (before b&c):
  Real time             =   39.97 sec. (11411.93 ticks)
Parallel b&c, 8 threads:
  Real time             =  326.82 sec. (74798.06 ticks)
  Sync time (average)   =   31.73 sec.
  Wait time (average)   =    0.00 sec.
                          ------------
Total (root+branch&cut) =  366.78 sec. (86209.99 ticks)

<<< solve


OBJECTIVE: 110

<<< post process


<<< done

