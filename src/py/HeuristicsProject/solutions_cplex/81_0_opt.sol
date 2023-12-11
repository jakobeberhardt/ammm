Running model with src/py/HeuristicsProject/data/81_0.dat and outputting to src/py/HeuristicsProject/solutions_cplex/81_0_opt.sol

<<< setup


<<< generate

Version identifier: 22.1.1.0 | 2022-11-28 | 9160aff4d
Tried aggregator 2 times.
MIP Presolve eliminated 324 rows and 5583 columns.
MIP Presolve modified 983 coefficients.
Aggregator did 13463 substitutions.
Reduced MIP has 18260 rows, 11273 columns, and 46415 nonzeros.
Reduced MIP has 10138 binaries, 152 generals, 0 SOSs, and 8422 indicators.
Presolve time = 0.09 sec. (270.43 ticks)
Found incumbent of value 57.000000 after 0.25 sec. (399.76 ticks)
Probing fixed 0 vars, tightened 983 bounds.
Probing changed sense of 654 constraints.
Probing time = 5.91 sec. (2711.94 ticks)
Tried aggregator 2 times.
MIP Presolve eliminated 11640 rows and 7355 columns.
MIP Presolve modified 5162 coefficients.
Aggregator did 122 substitutions.
Reduced MIP has 6498 rows, 3796 columns, and 20370 nonzeros.
Reduced MIP has 3653 binaries, 143 generals, 0 SOSs, and 8422 indicators.
Presolve time = 0.09 sec. (59.15 ticks)
Probing time = 0.15 sec. (85.80 ticks)
Tried aggregator 1 time.
Detecting symmetries...
Reduced MIP has 6498 rows, 3796 columns, and 20370 nonzeros.
Reduced MIP has 3653 binaries, 143 generals, 0 SOSs, and 8422 indicators.
Presolve time = 0.03 sec. (16.93 ticks)
Probing time = 0.03 sec. (12.16 ticks)
Clique table members: 77347.
MIP emphasis: balance optimality and feasibility.
MIP search method: dynamic search.
Parallel mode: deterministic, using up to 8 threads.
Root relaxation solution time = 0.37 sec. (270.73 ticks)

        Nodes                                         Cuts/
   Node  Left     Objective  IInf  Best Integer    Best Bound    ItCnt     Gap

*     0+    0                           57.0000      468.0000           721.05%
      0     0      135.2227   404       57.0000      135.2227       47  137.23%
*     0+    0                          108.0000      135.2227            25.21%
      0     0      132.6279   558      108.0000    Cuts: 1590     1818   22.80%
      0     0      131.1720   770      108.0000    Cuts: 1581     3500   21.46%
*     0+    0                          111.0000      131.1720            18.17%
      0     0      130.8397   752      111.0000    Cuts: 1333     4468   17.87%
      0     0      130.6348   803      111.0000    Cuts: 1428     5250   17.69%
      0     0      130.4672   918      111.0000     Cuts: 851     6277   17.54%
Detecting symmetries...
      0     0      130.3879   885      111.0000     Cuts: 746     6691   17.47%
      0     0      130.3080   859      111.0000     Cuts: 453     7069   17.39%
      0     0      130.2751   864      111.0000     Cuts: 528     7346   17.36%
      0     0      130.2352   864      111.0000     Cuts: 379     7782   17.33%
      0     0      130.2031   863      111.0000     Cuts: 479     8145   17.30%
      0     0      130.1824   879      111.0000     Cuts: 629     8430   17.28%
      0     0      130.1312   862      111.0000     Cuts: 343     8733   17.24%
      0     0      130.0882   886      111.0000     Cuts: 383     9166   17.20%
      0     0      130.0660   854      111.0000     Cuts: 441     9406   17.18%
      0     0      130.0521   916      111.0000     Cuts: 381     9634   17.16%
      0     0      130.0150   782      111.0000     Cuts: 244     9950   17.13%
      0     0      129.9835   819      111.0000     Cuts: 433    10265   16.44%
Detecting symmetries...
      0     2      129.9835   815      111.0000      127.3333    10265   14.71%
Elapsed time = 22.02 sec. (8990.71 ticks, tree = 0.02 MB, solutions = 3)
      1     3      121.2049   615      111.0000      127.3333    11751   14.71%
      6     5      120.4680   563      111.0000      127.3333    13103   14.71%
     30    16      119.5421   523      111.0000      127.3333    22801   14.71%
     58    33      117.3261   538      111.0000      127.3333    30349   14.71%
     88    54      120.7500   588      111.0000      127.3333    50767   14.71%
    132    66      116.5762   588      111.0000      127.3333    62801   14.71%
    188    91      115.2517   396      111.0000      127.3333    82488   14.71%
    271   123      119.1088   486      111.0000      127.3333    96203   14.71%
    304   141      122.8629   622      111.0000      127.3333   107672   14.71%
    455   197      124.4200   645      111.0000      125.6477   163397   13.20%
Elapsed time = 33.16 sec. (12167.51 ticks, tree = 0.42 MB, solutions = 3)
    613   256      118.4300   572      111.0000      125.6477   219166   13.20%
*   651+  272                          112.0000      125.6477            12.19%
    792   275      116.6333   476      112.0000      125.6477   277914   12.19%
    926   315        cutoff            112.0000      120.8713   341960    7.92%
   1121   306        cutoff            112.0000      119.2951   386544    6.51%
   1386   356      113.9789   432      112.0000      118.6982   469552    5.98%
   1500   393      116.7832   401      112.0000      118.2272   505513    5.56%
   1725   396      114.2000   276      112.0000      118.0330   564875    5.39%
   1969   439        cutoff            112.0000      118.0000   650580    5.36%
   2100   448        cutoff            112.0000      117.5604   678506    4.96%
   2362   410        cutoff            112.0000      116.8527   752466    4.33%
Elapsed time = 69.58 sec. (21757.34 ticks, tree = 0.96 MB, solutions = 4)
   2619   377        cutoff            112.0000      116.4847   800572    4.00%
   2948   175      113.0000    96      112.0000      115.4523   860609    3.08%
   3452    43      113.7500   333      112.0000      114.0000   908524    1.79%

GUB cover cuts applied:  5
Clique cuts applied:  787
Cover cuts applied:  782
Implied bound cuts applied:  2234
Flow cuts applied:  20
Mixed integer rounding cuts applied:  48
Zero-half cuts applied:  133
Gomory fractional cuts applied:  18

Root node processing (before b&c):
  Real time             =   21.77 sec. (8862.88 ticks)
Parallel b&c, 8 threads:
  Real time             =   57.91 sec. (15787.23 ticks)
  Sync time (average)   =    6.20 sec.
  Wait time (average)   =    0.00 sec.
                          ------------
Total (root+branch&cut) =   79.68 sec. (24650.11 ticks)

<<< solve


OBJECTIVE: 112

<<< post process


<<< done

