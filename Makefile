#!/bin/bash

LATEXRUN = ./latexrun
latexfile = paper

.PHONY: FORCE
${latexfile}.pdf: ${latexfile}.tex
	$(LATEXRUN) --latex-args="-shell-escape" --bibtex-cmd="biber" -Wall $< -o $@

.PHONY: clean
clean:
	$(LATEXRUN) --clean-all
