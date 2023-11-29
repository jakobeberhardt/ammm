// PLEASE ONLY CHANGE THIS FILE WHERE INDICATED.

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





// Define here your decision variables and
// any other auxiliary program variables you need.
// You can run an execute block if needed.


dvar boolean	x[N]; // Order was taken
dvar boolean start[N];
//>>>>>>>>>>>>>>>>
dvar boolean y[N,T];
//<<<<<<<<<<<<<<<<


execute {
	for(var o = 1; o<=n; o++) {
  		min_start[o] = min_deliver[o] - length[o];
  		if(min_start[o] <= 0) min_start[o] = 1;
  		
  		max_start[o] = max_deliver[o] - length[o];
  		if(max_start[o] <= 0) max_start[o] = 1;
  } 		 
  };

maximize  sum(i in N) profit[i]*x[i];// Write here the objective function.

//>>>>>>>>>>>>>>>>


//<<<<<<<<<<<<<<<<

subject to {
    
    //space is respcted
    forall(j in T)
      sum(i in N) surface[i]*y[i,j] <= surface_capacity;
      
    //correct amount or zero
    forall(i in N)
      sum(j in min_start[i]..max_deliver[i]) y[i, j] == x[i]*length[i];
      
    // consecutive slots
    forall(i in N)
	      sum(k in start[i]..start[i] + length[i]) y[i,k]  >=  x[i]*length[i];
	      
	// start is within intervall 
	forall(i in N){
	  min_start[i] <= start[i];
	  start[i] <= max_start[i];
	  
	// infeasible slots are zero  
 }	  
 
}

// You can run an execute block if needed.

//>>>>>>>>>>>>>>>>

//<<<<<<<<<<<<<<<<
