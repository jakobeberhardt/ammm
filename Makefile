OPLRUN = /opt/ibm/ILOG/CPLEX_Studio2211/opl/bin/x86-64_linux/oplrun
MAIN_MODEL = $(MODELS_DIR)bakers.mod
MODELS_DIR = models/
DATA_DIR = src/py/HeuristicsProject/data/
OUTPUT_DIR = src/py/HeuristicsProject/solutions_cplex/

all:
	@$(OPLRUN) $(MAIN_MODEL) $(DATA_DIR)75_0.dat

full:
	@mkdir -p $(OUTPUT_DIR)
	@for i in $$(seq 75 90) ; do \
		FILENAME="$(DATA_DIR)$$i"_0.dat ; \
		OUTPUT_FILE="$(OUTPUT_DIR)$$i"_0_opt.sol ; \
		echo "Running model with $$FILENAME and outputting to $$OUTPUT_FILE" | tee $$OUTPUT_FILE ; \
		time $(OPLRUN) $(MAIN_MODEL) $$FILENAME | tee -a $$OUTPUT_FILE ; \
	done

.PHONY: all full

report: tex/project/report.tex
	cd ./tex; pdflatex \\nonstopmode \\input project/report.tex; cd ..; code ./tex/report.pdf

presentation: tex/project/presentation.tex
	cd ./tex; pdflatex \\nonstopmode \\input project/presentation.tex; cd ..; code ./tex/presentation.pdf

pdf: report presentation

clean:
	rm ./tex/*.aux ./tex/*.nav ./tex/*.out ./tex/*.snm ./tex/*.lof ./tex/*.toc ./tex/*.log tex/report.pdf tex/presentation.pdf
