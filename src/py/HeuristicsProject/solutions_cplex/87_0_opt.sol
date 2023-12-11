Running model with src/py/HeuristicsProject/data/87_0.dat and outputting to src/py/HeuristicsProject/solutions_cplex/87_0_opt.sol

<<< setup


<<< generate

Version identifier: 22.1.1.0 | 2022-11-28 | 9160aff4d
Tried aggregator 2 times.
MIP Presolve eliminated 348 rows and 6484 columns.
MIP Presolve modified 1106 coefficients.
Aggregator did 15759 substitutions.
Reduced MIP has 20866 rows, 12692 columns, and 52912 nonzeros.
Reduced MIP has 11441 binaries, 158 generals, 0 SOSs, and 9394 indicators.
Presolve time = 0.12 sec. (354.70 ticks)
Found incumbent of value 13.000000 after 0.39 sec. (504.55 ticks)
Probing fixed 0 vars, tightened 1093 bounds.
Probing changed sense of 1146 constraints.
Probing time = 9.33 sec. (3704.05 ticks)
Tried aggregator 2 times.
MIP Presolve eliminated 7709 rows and 8273 columns.
MIP Presolve modified 19 coefficients.
Aggregator did 133 substitutions.
Reduced MIP has 13024 rows, 4286 columns, and 34515 nonzeros.
Reduced MIP has 4134 binaries, 152 generals, 0 SOSs, and 9394 indicators.
Presolve time = 0.09 sec. (57.03 ticks)
Probing time = 0.19 sec. (97.99 ticks)
Tried aggregator 1 time.
Detecting symmetries...
Reduced MIP has 13024 rows, 4286 columns, and 34515 nonzeros.
Reduced MIP has 4134 binaries, 152 generals, 0 SOSs, and 9394 indicators.
Presolve time = 0.06 sec. (27.82 ticks)
Probing time = 0.04 sec. (17.02 ticks)
Clique table members: 94217.
MIP emphasis: balance optimality and feasibility.
MIP search method: dynamic search.
Parallel mode: deterministic, using up to 8 threads.
Root relaxation solution time = 0.37 sec. (184.48 ticks)

        Nodes                                         Cuts/
   Node  Left     Objective  IInf  Best Integer    Best Bound    ItCnt     Gap

*     0+    0                           13.0000      492.0000              --- 
      0     0      124.6336   748       13.0000      124.6336     4496  858.72%
*     0+    0                           89.0000      124.6336            40.04%
      0     0      121.6279   731       89.0000    Cuts: 3356     6916   36.66%
      0     0      120.2151   876       89.0000    Cuts: 2589     8779   35.07%
*     0+    0                           98.0000      120.2151            22.67%
      0     0      119.2904  1065       98.0000    Cuts: 2080    10809   21.72%
*     0+    0                           99.0000      119.2904            20.50%
      0     0      119.0148   974       99.0000    Cuts: 1889    12220   20.22%
*     0+    0                          102.0000      119.0148            16.68%
      0     0      118.8265  1008      102.0000     Cuts: 966    13190   16.50%
Detecting symmetries...
      0     0      118.7190  1064      102.0000     Cuts: 972    13626   16.39%
      0     0      118.6335  1062      102.0000     Cuts: 557    14265   16.31%
*     0+    0                          103.0000      118.6335            15.18%
      0     0      118.5286  1047      103.0000     Cuts: 429    14942   15.08%
*     0+    0                          106.0000      118.5286            11.82%
      0     0      118.4777  1038      106.0000     Cuts: 622    15427   11.77%
      0     0      118.4420  1093      106.0000     Cuts: 825    15916   11.74%
      0     0      118.4140  1030      106.0000     Cuts: 434    16291   11.71%
      0     0      118.3905  1113      106.0000     Cuts: 716    16680   11.69%
      0     0      118.3743  1000      106.0000     Cuts: 283    16967   11.67%
      0     0      118.3535  1041      106.0000     Cuts: 682    17253   11.65%
      0     0      118.3384  1013      106.0000     Cuts: 351    17558   11.64%
      0     0      118.3147  1116      106.0000     Cuts: 234    17852   11.62%
      0     0      118.3051  1086      106.0000     Cuts: 515    18071   11.61%
      0     0      118.2966  1061      106.0000     Cuts: 272    18268   11.60%
      0     0      118.2921  1006      106.0000     Cuts: 302    18385   11.60%
      0     0      118.2886  1023      106.0000     Cuts: 164    18539   11.59%
      0     0      118.2856   999      106.0000     Cuts: 150    18675   11.59%
      0     0      118.2822  1098      106.0000     Cuts: 290    18849   11.59%
*     0+    0                          109.0000      118.2822             8.52%
Detecting symmetries...
      0     2      118.2822  1098      109.0000      118.2822    18849    8.52%
Elapsed time = 40.43 sec. (14776.50 ticks, tree = 0.02 MB, solutions = 8)
      2     4      117.9573  1054      109.0000      118.2817    20113    8.52%
      4     6      117.9480  1012      109.0000      118.2381    22810    8.48%
      8     6        cutoff            109.0000      118.2381    26864    8.48%
     15    13        cutoff            109.0000      117.9542    41408    8.21%
     21    10      112.6395   875      109.0000      117.9542    32869    8.21%
     32     9      116.0786   905      109.0000      117.9542    30859    8.21%
     50    29      116.2750   828      109.0000      117.7811    68606    8.06%
     60    33      117.3017   858      109.0000      117.7811    72850    8.06%
     73    37      112.3376   666      109.0000      117.7811    80627    8.06%
    160    80      110.4265   528      109.0000      117.7811   126544    8.06%
Elapsed time = 54.12 sec. (18373.10 ticks, tree = 1.05 MB, solutions = 8)
    237   103      110.5999   690      109.0000      117.4557   169614    7.76%
    285   134      112.1957   724      109.0000      117.3957   199823    7.70%
    328   147      113.9876   793      109.0000      116.9624   239573    7.30%
    421   160      112.0073   724      109.0000      116.9624   266968    7.30%
    513   208      112.5445   766      109.0000      116.7299   323945    7.09%
    565   230      113.4990   825      109.0000      115.8875   347413    6.32%
    614   242        cutoff            109.0000      115.6735   407714    6.12%
    649   232      112.1003   537      109.0000      115.6289   436343    6.08%
    693   227        cutoff            109.0000      114.5058   460936    5.05%
    749   218        cutoff            109.0000      114.1892   498761    4.76%
Elapsed time = 95.36 sec. (28069.75 ticks, tree = 0.97 MB, solutions = 8)
    805   188      112.2342   746      109.0000      113.8032   539726    4.41%
    891   178      110.0114   701      109.0000      113.2605   566013    3.91%
   1005    65        cutoff            109.0000      112.6751   642734    3.37%
   1081     4        cutoff            109.0000      110.7599   664438    1.61%

GUB cover cuts applied:  23
Clique cuts applied:  1653
Cover cuts applied:  2876
Implied bound cuts applied:  49
Flow cuts applied:  15
Mixed integer rounding cuts applied:  132
Zero-half cuts applied:  132
Gomory fractional cuts applied:  12

Root node processing (before b&c):
  Real time             =   40.03 sec. (14561.95 ticks)
Parallel b&c, 8 threads:
  Real time             =   69.01 sec. (17413.63 ticks)
  Sync time (average)   =    8.98 sec.
  Wait time (average)   =    0.00 sec.
                          ------------
Total (root+branch&cut) =  109.04 sec. (31975.58 ticks)

<<< solve


OBJECTIVE: 109

<<< post process


<<< done

