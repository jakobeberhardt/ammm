Running model with src/py/HeuristicsProject/data/75_0.dat and outputting to src/py/HeuristicsProject/solutions_cplex/75_0_opt.sol

<<< setup


<<< generate

Version identifier: 22.1.1.0 | 2022-11-28 | 9160aff4d
Tried aggregator 2 times.
MIP Presolve eliminated 301 rows and 4664 columns.
MIP Presolve modified 1252 coefficients.
Aggregator did 10415 substitutions.
Reduced MIP has 15332 rows, 9551 columns, and 38877 nonzeros.
Reduced MIP has 8443 binaries, 144 generals, 0 SOSs, and 6944 indicators.
Presolve time = 0.08 sec. (187.33 ticks)
Found incumbent of value 8.000000 after 0.19 sec. (285.29 ticks)
Probing fixed 0 vars, tightened 964 bounds.
Probing changed sense of 210 constraints.
Probing time = 4.50 sec. (2272.15 ticks)
Tried aggregator 2 times.
MIP Presolve eliminated 8880 rows and 5733 columns.
MIP Presolve modified 3832 coefficients.
Aggregator did 127 substitutions.
Reduced MIP has 6325 rows, 3691 columns, and 19020 nonzeros.
Reduced MIP has 3554 binaries, 137 generals, 0 SOSs, and 6944 indicators.
Presolve time = 0.08 sec. (61.65 ticks)
Probing time = 0.17 sec. (85.17 ticks)
Tried aggregator 1 time.
Detecting symmetries...
Reduced MIP has 6325 rows, 3691 columns, and 19020 nonzeros.
Reduced MIP has 3554 binaries, 137 generals, 0 SOSs, and 6944 indicators.
Presolve time = 0.02 sec. (15.65 ticks)
Probing time = 0.03 sec. (11.08 ticks)
Clique table members: 62000.
MIP emphasis: balance optimality and feasibility.
MIP search method: dynamic search.
Parallel mode: deterministic, using up to 8 threads.
Root relaxation solution time = 0.29 sec. (235.68 ticks)

        Nodes                                         Cuts/
   Node  Left     Objective  IInf  Best Integer    Best Bound    ItCnt     Gap

*     0+    0                            8.0000      386.0000              --- 
*     0+    0                           11.0000      386.0000              --- 
      0     0      128.7253   351       11.0000      128.7253       35     --- 
*     0+    0                           89.0000      128.7253            44.64%
      0     0      127.6809   673       89.0000    Cuts: 1510     1523   43.46%
*     0+    0                          102.0000      127.6809            25.18%
      0     0      126.6248   773      102.0000    Cuts: 1628     3796   24.14%
*     0+    0                          103.0000      126.6248            22.94%
      0     0      125.9484   771      103.0000    Cuts: 1012     5060   22.28%
*     0+    0                          113.0000      125.9484            11.46%
      0     0        cutoff            113.0000      125.9484     5060   11.46%
      0     0      125.3898   797      113.0000     Cuts: 772     5651   10.96%
      0     0      125.1431   695      113.0000     Cuts: 927     6276   10.75%
Detecting symmetries...
      0     0      125.0403   710      113.0000     Cuts: 995     6700   10.66%
*     0+    0                          114.0000      125.0403             9.68%
      0     0      124.9925   695      114.0000     Cuts: 590     7075    9.64%
      0     0      124.9377   747      114.0000     Cuts: 612     7575    9.59%
      0     0      124.8924   745      114.0000     Cuts: 651     8000    9.55%
      0     0      124.8512   682      114.0000     Cuts: 260     8273    9.52%
      0     0      124.8074   732      114.0000     Cuts: 341     8710    9.48%
      0     0      124.7828   675      114.0000     Cuts: 340     9056    9.46%
*     0+    0                          116.0000      124.7828             7.57%
      0     0        cutoff            116.0000      124.7828     9056    7.57%
      0     0      124.7589   689      116.0000     Cuts: 260     9398    7.55%
      0     0      124.7419   700      116.0000     Cuts: 194     9597    7.54%
      0     0      124.7113   679      116.0000     Cuts: 204     9841    7.51%
      0     0      124.6870   704      116.0000     Cuts: 282    10095    7.49%
      0     0      124.6749   633      116.0000     Cuts: 185    10207    7.48%
      0     0      124.6686   615      116.0000     Cuts: 111    10322    7.47%
      0     0      124.6561   721      116.0000     Cuts: 108    10483    7.46%
Detecting symmetries...
      0     2      124.6560   683      116.0000      124.6561    10496    7.46%
Elapsed time = 19.49 sec. (8415.25 ticks, tree = 0.02 MB, solutions = 8)
      3     4      123.6446   553      116.0000      124.6515    12879    7.46%
     10    12      124.2818   608      116.0000      124.5155    17347    7.34%
     26    14      122.2154   675      116.0000      124.4510    21132    7.29%
     75    36      121.9515   572      116.0000      124.4510    34968    7.29%
    121    59      121.8264   617      116.0000      124.2793    53156    7.14%
    162    63      119.9818   526      116.0000      124.0898    66580    6.97%
    235    86      121.2047   528      116.0000      124.0898    75103    6.97%
    307   105      123.3041   476      116.0000      124.0898    84974    6.97%
    365   122        cutoff            116.0000      124.0898   109447    6.97%
*   492+   70                          118.0000      121.8830             3.29%
    496    89      119.8080   533      118.0000      121.8830   142393    3.29%
Elapsed time = 31.32 sec. (11580.11 ticks, tree = 1.50 MB, solutions = 9)

GUB cover cuts applied:  4
Clique cuts applied:  516
Cover cuts applied:  699
Implied bound cuts applied:  871
Flow cuts applied:  16
Mixed integer rounding cuts applied:  104
Zero-half cuts applied:  102
Lift and project cuts applied:  4
Gomory fractional cuts applied:  16

Root node processing (before b&c):
  Real time             =   19.35 sec. (8333.94 ticks)
Parallel b&c, 8 threads:
  Real time             =   12.52 sec. (3519.94 ticks)
  Sync time (average)   =    3.07 sec.
  Wait time (average)   =    0.00 sec.
                          ------------
Total (root+branch&cut) =   31.88 sec. (11853.89 ticks)

<<< solve


OBJECTIVE: 118

<<< post process


<<< done

