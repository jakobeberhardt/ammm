int                    n = ...;    // Number of orders.
int                    t = ...;    // Number of time slots
range                  N = 1..n;   // Range of orders.
range                  T = 1..t;   // Range  of time slots.
int            length[N] = ...;    // Time slots i-th order takes.
int       min_deliver[N] = ...;    // Min slot i-th order should be delivered.
int       max_deliver[N] = ...;    // Max slot i-th order should be delivered.
float          profit[N] = ...;    // Profit if I take i-th order.
float         surface[N] = ...;    // Surface of i-th order.
float   surface_capacity = ...;    // Surface capacity.
int    min_start[o in N];          // minimum start time
int    max_start[o in N];          // maximum start time

dvar boolean x[N]; // Order was taken
dvar int start[N];
dvar int end[N];
dvar boolean geq_start[N,T];
dvar boolean leq_end[N,T];

dvar boolean y[N,T]; // schedule

execute {
	for(var o = 1; o<=n; o++) {
  		min_start[o] = min_deliver[o] - length[o]+1;
  		if(min_start[o] <= 0) min_start[o] = 1;
  		
  		max_start[o] = max_deliver[o] - length[o]+1;
  		if(max_start[o] <= 0) max_start[o] = 1;
  } 		 
  };

maximize  sum(i in N) profit[i]*x[i];// Write here the objective function.


subject to {
    forall(i in N)
      end[i] == start[i] + x[i]*length[i] - 1;
    
   //space is respcted
    forall(j in T)
      sum(i in N) surface[i]*y[i,j] <= surface_capacity;
            
    // correct amount of consecutive slots
    // without using CPLEX logic functions
    forall(i in N)
      forall(j in min_start[i]..max_deliver[i]) {
 	    j >= start[i] - (t+1) * (1-geq_start[i,j]);
 	    start[i] >= j - (t+1) * geq_start[i,j];
 	    
 	    end[i] >= j - (t+1) * (1-leq_end[i,j]);
 	    j >= end[i] - (t+1) * leq_end[i,j];
 	    0 <= geq_start[i,j] + leq_end[i,j] - 2 * y[i,j];
      } 	    

	// start is within interval
	forall(i in N)
	  start[i] <= max_start[i];
    forall(i in N)	
	  min_start[i] <= start[i];
	  
	// infeasible slots are zero  
	forall(i in N)
	  sum(j in 1..min_start[i]-1) y[i, j] == 0;
	forall(i in N)
	  sum(j in max_deliver[i]+1..t) y[i, j] == 0;  

	// correct amount of slots, x has the intended meaning
 	forall(i in N)
  	  sum(j in min_start[i]..max_deliver[i]) y[i, j] == x[i]*length[i];
}
 