#!/bin/bash

LATEXRUN = ./latexrun

latexfile = paper

.PHONY: FORCE
${latexfile}.pdf:
	$(LATEXRUN) ${latexfile}.tex

# nuclear option, use it carefully
.PHONY: full #FORCE $(BIBFILES).bib
full :
	$(LATEXRUN) ${latexfile}.tex
	biber ${latexfile}.bcf --output-directory latex.out
	$(LATEXRUN) --clean-all
	$(LATEXRUN) ${latexfile}.tex

.PHONY: clean
clean:
	$(LATEXRUN) --clean-all
