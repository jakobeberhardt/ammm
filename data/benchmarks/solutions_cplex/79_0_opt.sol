Running model with src/py/HeuristicsProject/data/79_0.dat and outputting to src/py/HeuristicsProject/solutions_cplex/79_0_opt.sol

<<< setup


<<< generate

Version identifier: 22.1.1.0 | 2022-11-28 | 9160aff4d
Tried aggregator 2 times.
MIP Presolve eliminated 316 rows and 5085 columns.
MIP Presolve modified 1163 coefficients.
Aggregator did 13034 substitutions.
Reduced MIP has 18676 rows, 11384 columns, and 47191 nonzeros.
Reduced MIP has 10076 binaries, 146 generals, 0 SOSs, and 8496 indicators.
Presolve time = 0.13 sec. (261.00 ticks)
Found incumbent of value 4.000000 after 0.36 sec. (390.13 ticks)
Probing fixed 0 vars, tightened 1162 bounds.
Probing changed sense of 738 constraints.
Probing time = 5.59 sec. (2478.16 ticks)
Tried aggregator 2 times.
MIP Presolve eliminated 6541 rows and 6882 columns.
MIP Presolve modified 8 coefficients.
Aggregator did 109 substitutions.
Reduced MIP has 12026 rows, 4393 columns, and 31729 nonzeros.
Reduced MIP has 4253 binaries, 140 generals, 0 SOSs, and 8496 indicators.
Presolve time = 0.09 sec. (51.03 ticks)
Probing time = 0.22 sec. (92.04 ticks)
Tried aggregator 1 time.
Detecting symmetries...
MIP Presolve eliminated 14 rows and 0 columns.
MIP Presolve modified 14 coefficients.
Reduced MIP has 12012 rows, 4393 columns, and 31701 nonzeros.
Reduced MIP has 4253 binaries, 140 generals, 0 SOSs, and 8496 indicators.
Presolve time = 0.07 sec. (29.04 ticks)
Probing time = 0.06 sec. (15.03 ticks)
Clique table members: 86627.
MIP emphasis: balance optimality and feasibility.
MIP search method: dynamic search.
Parallel mode: deterministic, using up to 8 threads.
Root relaxation solution time = 0.55 sec. (213.86 ticks)

        Nodes                                         Cuts/
   Node  Left     Objective  IInf  Best Integer    Best Bound    ItCnt     Gap

*     0+    0                            4.0000      431.0000              --- 
      0     0      128.5431  1032        4.0000      128.5431     4599     --- 
*     0+    0                           98.0000      128.5431            31.17%
      0     0      124.7235  1129       98.0000    Cuts: 3103     6791   27.27%
*     0+    0                          102.0000      124.7235            22.28%
      0     0      123.9908  1102      102.0000    Cuts: 3103     9536   21.56%
*     0+    0                          104.0000      123.9908            19.22%
      0     0      123.1336  1231      104.0000    Cuts: 1905    12428   18.40%
      0     0      122.8822  1262      104.0000    Cuts: 1250    13935   18.16%
*     0+    0                          108.0000      122.8822            13.78%
      0     0      122.6812  1137      108.0000     Cuts: 859    14797   13.59%
Detecting symmetries...
      0     0      122.4690  1157      108.0000    Cuts: 1162    16206   13.40%
*     0+    0                          110.0000      122.4690            11.34%
      0     0      122.3467  1186      110.0000    Cuts: 1509    16880   11.22%
      0     0      122.2711  1298      110.0000    Cuts: 1174    17566   11.16%
      0     0      122.2283  1204      110.0000     Cuts: 840    18041   11.12%
      0     0      122.1289  1278      110.0000     Cuts: 613    18759   11.03%
      0     0      122.0869  1204      110.0000     Cuts: 749    19342   10.99%
      0     0      122.0665  1177      110.0000     Cuts: 374    19655   10.97%
      0     0      122.0324  1188      110.0000     Cuts: 463    20077   10.94%
      0     0      121.9905  1111      110.0000     Cuts: 731    20604   10.90%
      0     0      121.9544  1164      110.0000     Cuts: 487    20944   10.87%
      0     0      121.9381  1179      110.0000    Cuts: 1449    21261   10.85%
      0     0      121.9181  1062      110.0000     Cuts: 921    21587   10.83%
      0     0      121.9068  1117      110.0000     Cuts: 911    21899   10.82%
Detecting symmetries...
      0     2      121.9068  1008      110.0000      121.9068    21899   10.82%
Elapsed time = 40.53 sec. (14497.86 ticks, tree = 0.02 MB, solutions = 6)
      4     4      121.8020   868      110.0000      121.9068    23488   10.82%
      9     6      121.6727   814      110.0000      121.8008    24411   10.73%
     20    13      119.5439   907      110.0000      121.8008    34106   10.73%
     34    23      119.0833   739      110.0000      121.7116    42241   10.65%
     48    30      120.6167   793      110.0000      121.4141    49104   10.38%
     56    37      117.5286   749      110.0000      121.2872    54147   10.26%
     73    49      113.3896   626      110.0000      121.2872    67746   10.26%
     86    64      115.5191   770      110.0000      121.2872    86591   10.26%
     95    63      120.0761   756      110.0000      121.2872    88203   10.26%
    181    84      116.8889   652      110.0000      121.2872   125540   10.26%
Elapsed time = 52.70 sec. (17862.33 ticks, tree = 0.28 MB, solutions = 6)
    222   150      114.9525   677      110.0000      121.0626   206203   10.06%
    288   171      115.2613   908      110.0000      121.0626   245572   10.06%
    358   202      112.6111   671      110.0000      120.6943   277639    9.72%
    400   273      116.4406   873      110.0000      120.6943   347232    9.72%
    441   280      111.8924   711      110.0000      120.5229   370110    9.57%
    504   294      112.8219   728      110.0000      120.3507   397731    9.41%
    573   338        cutoff            110.0000      120.3507   472677    9.41%
    622   376      111.5470   575      110.0000      120.2180   521870    9.29%
    700   387      113.4195   914      110.0000      120.0540   550455    9.14%
*   722+  404                          112.0000      120.0540             7.19%
    757   412      112.3864   843      112.0000      120.0540   591416    7.19%
Elapsed time = 93.48 sec. (27640.01 ticks, tree = 1.03 MB, solutions = 7)
    809   392      118.7642   715      112.0000      119.4637   641070    6.66%
    857   402        cutoff            112.0000      118.9729   697186    6.23%
    893   409      116.0197   840      112.0000      118.3734   727801    5.69%
    934   410      116.0486   926      112.0000      118.3702   778634    5.69%
    969   425      114.1750   826      112.0000      118.0928   796510    5.44%
   1027   423        cutoff            112.0000      118.0928   859316    5.44%
   1085   428      114.5526   964      112.0000      117.8467   879513    5.22%
   1122   418        cutoff            112.0000      117.6313   933303    5.03%
   1149   422      114.4181   871      112.0000      117.6313   954997    5.03%
   1193   428        cutoff            112.0000      117.6313  1014569    5.03%
Elapsed time = 135.85 sec. (37547.24 ticks, tree = 1.06 MB, solutions = 7)
   1221   432        cutoff            112.0000      117.3565  1045995    4.78%
   1245   427        cutoff            112.0000      117.1718  1039865    4.62%
   1272   422        cutoff            112.0000      117.1089  1123051    4.56%
   1312   427        cutoff            112.0000      117.0880  1154248    4.54%
   1343   414        cutoff            112.0000      116.9655  1194726    4.43%
   1391   422        cutoff            112.0000      116.7538  1191437    4.24%
   1441   423      113.1186   822      112.0000      116.5774  1223409    4.09%
   1476   435        cutoff            112.0000      116.4028  1272443    3.93%
   1504   440        cutoff            112.0000      116.3675  1341870    3.90%
   1536   443        cutoff            112.0000      116.3235  1380802    3.86%
Elapsed time = 178.38 sec. (47671.16 ticks, tree = 1.66 MB, solutions = 7)
   1561   424        cutoff            112.0000      116.0815  1412132    3.64%
   1590   405        cutoff            112.0000      115.9568  1454490    3.53%
   1618   406        cutoff            112.0000      115.9250  1467976    3.50%
   1643   399      113.2967   991      112.0000      115.7735  1483772    3.37%
   1669   392        cutoff            112.0000      115.7735  1505074    3.37%
   1694   390        cutoff            112.0000      115.7735  1558375    3.37%
   1730   376        cutoff            112.0000      115.7461  1589530    3.34%
   1769   327        cutoff            112.0000      115.3767  1663206    3.01%
   1830   284        cutoff            112.0000      115.2226  1698420    2.88%
   1904   201        cutoff            112.0000      115.2226  1730032    2.88%
Elapsed time = 222.28 sec. (57641.03 ticks, tree = 0.51 MB, solutions = 7)
   2004    96        cutoff            112.0000      114.1488  1787375    1.92%

GUB cover cuts applied:  8
Clique cuts applied:  2277
Cover cuts applied:  4427
Implied bound cuts applied:  50
Flow cuts applied:  40
Mixed integer rounding cuts applied:  90
Zero-half cuts applied:  92
Gomory fractional cuts applied:  22

Root node processing (before b&c):
  Real time             =   40.26 sec. (14357.31 ticks)
Parallel b&c, 8 threads:
  Real time             =  187.95 sec. (44829.85 ticks)
  Sync time (average)   =   13.04 sec.
  Wait time (average)   =    0.00 sec.
                          ------------
Total (root+branch&cut) =  228.22 sec. (59187.16 ticks)

<<< solve


OBJECTIVE: 112

<<< post process


<<< done

