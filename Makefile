#!/bin/bash

LATEXRUN ?= ./latexrun
FLAGS=--bibtex-cmd=biber

latexfile=paper
bibfile=bibs
FIGDIR=figures
BIBFILES=main.bib


all: ${latexfile}.pdf


.PHONY: FORCE
${latexfile}.pdf: FORCE ${latexfile}.tex
		$(LATEXRUN) ${FLAGS} ${latexfile}.tex -o $@


.PHONY: clean
clean:
		$(LATEXRUN) --clean-all


.PHONY: cleaner
cleaner:
		$(LATEXRUN) --clean-all
		rm -rf latex.out
