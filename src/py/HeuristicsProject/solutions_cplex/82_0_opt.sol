Running model with src/py/HeuristicsProject/data/82_0.dat and outputting to src/py/HeuristicsProject/solutions_cplex/82_0_opt.sol

<<< setup


<<< generate

Version identifier: 22.1.1.0 | 2022-11-28 | 9160aff4d
Tried aggregator 2 times.
MIP Presolve eliminated 328 rows and 5447 columns.
MIP Presolve modified 1292 coefficients.
Aggregator did 12614 substitutions.
Reduced MIP has 18698 rows, 11144 columns, and 46861 nonzeros.
Reduced MIP has 9711 binaries, 148 generals, 0 SOSs, and 7984 indicators.
Presolve time = 0.09 sec. (252.33 ticks)
Found incumbent of value 19.000000 after 0.26 sec. (376.58 ticks)
Probing fixed 0 vars, tightened 1285 bounds.
Probing changed sense of 1084 constraints.
Probing time = 3.82 sec. (1852.28 ticks)
Tried aggregator 2 times.
MIP Presolve eliminated 6929 rows and 6144 columns.
MIP Presolve modified 77 coefficients.
Aggregator did 100 substitutions.
Reduced MIP has 11669 rows, 4900 columns, and 31211 nonzeros.
Reduced MIP has 4757 binaries, 143 generals, 0 SOSs, and 7984 indicators.
Presolve time = 0.09 sec. (49.60 ticks)
Probing time = 0.19 sec. (93.76 ticks)
Tried aggregator 1 time.
Detecting symmetries...
Reduced MIP has 11669 rows, 4900 columns, and 31211 nonzeros.
Reduced MIP has 4757 binaries, 143 generals, 0 SOSs, and 7984 indicators.
Presolve time = 0.04 sec. (24.09 ticks)
Probing time = 0.05 sec. (12.70 ticks)
Clique table members: 94947.
MIP emphasis: balance optimality and feasibility.
MIP search method: dynamic search.
Parallel mode: deterministic, using up to 8 threads.
Root relaxation solution time = 0.32 sec. (202.11 ticks)

        Nodes                                         Cuts/
   Node  Left     Objective  IInf  Best Integer    Best Bound    ItCnt     Gap

*     0+    0                           19.0000      397.0000              --- 
      0     0      108.9569   896       19.0000      108.9569     5105  473.46%
*     0+    0                           89.0000      108.9569            22.42%
*     0+    0                           91.0000      108.9569            19.73%
      0     0      107.0579   934       91.0000    Cuts: 3017     7285   17.65%
      0     0      106.2771   953       91.0000    Cuts: 3017     9958   16.79%
      0     0      105.6858  1123       91.0000    Cuts: 2187    12027   16.14%
      0     0      105.3205  1164       91.0000    Cuts: 1689    13158   15.74%
*     0+    0                           92.0000      105.3205            14.48%
*     0+    0                           97.0000      105.3205             8.58%
      0     0      104.9574  1222       97.0000     Cuts: 956    15207    8.20%
Detecting symmetries...
      0     0      104.7402  1231       97.0000    Cuts: 1322    16921    7.98%
      0     0      104.5809  1242       97.0000    Cuts: 1155    19005    7.82%
      0     0      104.3473  1288       97.0000    Cuts: 1341    20954    7.57%
      0     0      104.3051  1171       97.0000     Cuts: 872    21713    7.53%
      0     0      104.2835  1042       97.0000     Cuts: 649    22374    7.51%
      0     0      104.2560  1240       97.0000     Cuts: 482    23081    7.48%
      0     0      104.2223  1203       97.0000     Cuts: 724    23948    7.45%
      0     0      104.1904  1226       97.0000     Cuts: 430    24654    7.41%
      0     0      104.1775  1140       97.0000     Cuts: 523    24969    7.40%
      0     0      104.1616  1139       97.0000     Cuts: 270    25302    7.38%
      0     0      104.1418  1184       97.0000     Cuts: 473    25733    7.36%
      0     0      104.1300  1179       97.0000     Cuts: 433    26115    7.35%
      0     0      104.1206  1188       97.0000     Cuts: 287    26390    7.34%
Detecting symmetries...
      0     2      104.1206  1184       97.0000      104.1206    26390    7.34%
Elapsed time = 34.63 sec. (13849.15 ticks, tree = 0.02 MB, solutions = 5)
      1     3      103.9536  1041       97.0000      104.1205    28164    7.34%
      3     4      103.1462   909       97.0000      104.1205    29823    7.34%
      6     6      102.8017   965       97.0000      103.9536    33481    7.17%
*    15+    7                           98.0000      103.9209             6.04%
     17    16      102.5820   672       98.0000      103.8971    40948    6.02%
     39    22      101.7194   772       98.0000      103.8951    42994    6.02%
     51    21      101.0394   814       98.0000      103.8951    46920    6.02%
     78    63       99.4821   479       98.0000      103.8951    75152    6.02%
    104    65       99.5000   592       98.0000      103.8951    78664    6.02%
    116    80      103.0576   873       98.0000      103.8951    94964    6.02%
    166   104      100.5869   685       98.0000      103.8951   133093    6.02%
Elapsed time = 44.20 sec. (17399.52 ticks, tree = 0.83 MB, solutions = 6)
    214   135      100.4983   847       98.0000      103.8951   177524    6.02%
    262   149      102.4914   908       98.0000      103.4382   211996    5.55%
    304   183      100.8236   772       98.0000      103.2832   259619    5.39%
    356   203      102.0932   881       98.0000      103.2832   285089    5.39%
    427   227       99.9301   781       98.0000      103.2832   314257    5.39%
    478   277      100.8521   864       98.0000      103.2827   362526    5.39%
    530   313       99.6657   879       98.0000      103.2264   400181    5.33%
    569   324      100.7367   924       98.0000      103.2264   415984    5.33%
    604   333      101.3899   875       98.0000      103.2264   444684    5.33%
    646   378       99.2946   960       98.0000      103.1820   510819    5.29%
Elapsed time = 79.79 sec. (27079.15 ticks, tree = 1.71 MB, solutions = 6)
    694   389       99.1726   602       98.0000      102.7547   522398    4.85%
    744   411       99.7294   918       98.0000      102.6406   592319    4.74%
    786   419        cutoff             98.0000      102.6167   603607    4.71%
    828   445        cutoff             98.0000      102.6057   639103    4.70%
    869   466      100.5159   983       98.0000      102.5078   696556    4.60%
    900   451      100.0806   668       98.0000      102.5078   675888    4.60%
    921   464        cutoff             98.0000      102.2782   718720    4.37%
    948   479      100.9840   976       98.0000      102.2592   754592    4.35%
    969   488      100.2904   994       98.0000      102.2444   818657    4.33%
   1000   486      101.4990   890       98.0000      102.1835   816681    4.27%
Elapsed time = 121.86 sec. (36831.51 ticks, tree = 2.37 MB, solutions = 6)
   1036   494       99.6427   974       98.0000      102.1675   872524    4.25%
   1085   495       99.0518   803       98.0000      102.1084   905266    4.19%
   1122   499       99.1690   826       98.0000      102.0881   952295    4.17%
   1156   517      100.4445   918       98.0000      102.0881  1007815    4.17%
   1189   516       99.4140   930       98.0000      102.0547  1002921    4.14%
   1229   525       99.2648   780       98.0000      101.9778  1061035    4.06%
   1263   523        cutoff             98.0000      101.9243  1112651    4.00%
   1286   521        cutoff             98.0000      101.8888  1088935    3.97%
   1312   525       99.8146   846       98.0000      101.8801  1119407    3.96%
   1332   519       99.0912   776       98.0000      101.8184  1157825    3.90%
Elapsed time = 163.97 sec. (46587.81 ticks, tree = 2.78 MB, solutions = 6)
   1363   515       99.5768   937       98.0000      101.8127  1207600    3.89%
   1398   511        cutoff             98.0000      101.7609  1236198    3.84%
   1431   513       99.8613   898       98.0000      101.6730  1239980    3.75%
   1466   516       99.9738   951       98.0000      101.6304  1255514    3.70%
   1502   519        cutoff             98.0000      101.4907  1379591    3.56%
   1522   504        cutoff             98.0000      101.4326  1330846    3.50%
   1561   518      100.4149   963       98.0000      101.4077  1345011    3.48%
   1595   498        cutoff             98.0000      101.3896  1486659    3.46%
   1622   510       99.2609   945       98.0000      101.3896  1474351    3.46%
   1655   476       99.9632   937       98.0000      101.2538  1527933    3.32%
Elapsed time = 206.52 sec. (56444.93 ticks, tree = 1.99 MB, solutions = 6)
   1675   480       99.0925   907       98.0000      101.1842  1518245    3.25%
   1702   448        cutoff             98.0000      101.1513  1576984    3.22%
   1736   440        cutoff             98.0000      101.0805  1608631    3.14%
   1773   446        cutoff             98.0000      101.0325  1602674    3.09%
   1813   446        cutoff             98.0000      100.9976  1606949    3.06%
   1865   390        cutoff             98.0000      100.8772  1721296    2.94%
   1900   412       99.2565  1061       98.0000      100.8198  1689909    2.88%
   1947   342        cutoff             98.0000      100.5833  1793214    2.64%
   1983   364        cutoff             98.0000      100.5833  1771746    2.64%
   2042   278        cutoff             98.0000      100.4683  1864764    2.52%
Elapsed time = 253.82 sec. (66256.99 ticks, tree = 1.00 MB, solutions = 6)
   2118   240       99.1301   634       98.0000      100.2021  1891401    2.25%
   2276    55        cutoff             98.0000      100.2021  1939332    2.25%

GUB cover cuts applied:  24
Clique cuts applied:  2604
Cover cuts applied:  4328
Implied bound cuts applied:  63
Flow cuts applied:  36
Mixed integer rounding cuts applied:  90
Zero-half cuts applied:  173
Lift and project cuts applied:  1
Gomory fractional cuts applied:  46

Root node processing (before b&c):
  Real time             =   34.39 sec. (13693.02 ticks)
Parallel b&c, 8 threads:
  Real time             =  227.83 sec. (54839.88 ticks)
  Sync time (average)   =   16.45 sec.
  Wait time (average)   =    0.00 sec.
                          ------------
Total (root+branch&cut) =  262.22 sec. (68532.91 ticks)

<<< solve


OBJECTIVE: 98

<<< post process


<<< done

