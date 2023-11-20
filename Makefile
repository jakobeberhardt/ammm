OPLRUN = /opt/ibm/ILOG/CPLEX_Studio2211/opl/bin/x86-64_linux/oplrun
MAIN_MODEL = main.mod
MODELS_DIR = models/
DATA_DIR = data/

all:
	@$(OPLRUN) $(MODELS_DIR)$(MAIN_MODEL)

# Does not work, fix data input
full:
	@for i in 1 2 3 4 5 6 ; do \
		echo "Running model with project.$$i.dat" ; \
		$(OPLRUN) $(MODELS_DIR)$(MAIN_MODEL) $(DATA_DIR)project.$$i.dat ; \
	done

.PHONY: all full

pdf: ammm.tex
	pdflatex \\nonstopmode \\input ammm.tex
