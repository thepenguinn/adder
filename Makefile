#A simple makefile

default: circuit.pdf viewpdf

circuit.pdf: circuit.tex
	pdflatex circuit.tex

viewpdf:
	viewpdf circuit.pdf

.PHONY: default viewpdf
