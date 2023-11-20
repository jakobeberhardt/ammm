main {
var src = new IloOplModelSource("bakers.mod");
var def = new IloOplModelDefinition(src);
var cplex = new IloCplex();
var model = new IloOplModel(def,cplex);
var data = new IloOplDataSource("../data/project.1.dat");
model.addDataSource(data);
model.generate();
cplex.epgap=0.01;
writeln("Running with " + model.n + " orders");
if (cplex.solve()) {
writeln("Solution " + cplex.getObjValue());
for (var o=1;o<=model.n;o++) {
	for(var)

}
}
else {
writeln("No solution found");
}
model.end();
data.end();
def.end();
cplex.end();
src.end();
};