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

pdf: ammm.tex
	pdflatex \\nonstopmode \\input ammm.tex; code ./ammm.pdf

clean:
	rm *.aux *.log
