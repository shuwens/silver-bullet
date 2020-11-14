#!/bin/bash

LATEXRUN=./latexrun
latexfile=paper
bibfile=bibs

.PHONY: FORCE
${latexfile}.pdf: ${latexfile}.tex ${bibfile}.bib
	$(LATEXRUN) --latex-args="-shell-escape" --bibtex-cmd="biber" -Wall $< -o $@

.PHONY: clean
clean:
	$(LATEXRUN) --clean-all

.PHONY: cleaner
cleaner:
	rm ${latexfile}.pdf
	rm -rf latex.out

