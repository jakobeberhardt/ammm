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
int min_start[o in N];
int max_start[o in N];

dvar boolean x[N]; // Order was taken
dvar int start[N];
dvar int end[N]; 

dvar boolean y[N,T]; // schedule

// initialize auxiliary arrays with correct values
execute {
	for(var o = 1; o<=n; o++) {
  		min_start[o] = min_deliver[o] - length[o]+1;
  		if(min_start[o] <= 0) min_start[o] = 1;
  		
  		max_start[o] = max_deliver[o] - length[o]+1;
  		if(max_start[o] <= 0) max_start[o] = 1;
  } 		 
  };

// Objective function
maximize  sum(i in N) profit[i]*x[i];

// constraints
subject to {
  
  	// start and end have the intended meaning
    forall(i in N)
      end[i] == start[i] + x[i]*length[i] - 1;
    
    //space is respcted
    forall(j in T)
      sum(i in N) surface[i]*y[i,j] <= surface_capacity;
            
    // correct amount of consecutive slots
    forall(i in N)
  	  forall(j in min_start[i]..max_deliver[i])
  	    y[i,j] == ((j >= start[i]) && (j <= end[i]));

	// start is within intervall 
	forall(i in N)
	  start[i] <= max_start[i];
    forall(i in N)	
	  min_start[i] <= start[i];
	  
	// infeasible slots are zero  
	forall(i in N)
	  sum(j in 1..min_start[i]-1) y[i, j] == 0;
	forall(i in N)
	  sum(j in max_deliver[i]+1..t) y[i, j] == 0;  

    // not needed but makes execution faster
 	forall(i in N)
  	  sum(j in min_start[i]..max_deliver[i]) y[i, j] == x[i]*length[i];
}
