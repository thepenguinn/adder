#A simple makefile

circuit: runlunatikz circuit.pdf _viewpdf

runlunatikz:
	lunatikz --touch-file need_to_build circuit.tex

circuit.pdf: circuit.tex tikzpics/need_to_build
	pdflatex -halt-on-error circuit.tex

viewpdf:
	[ -e circuit.pdf ] && viewpdf circuit.pdf \
		|| printf "circuit.pdf doesn't exist, run make to generate it\n"

_viewpdf:
	viewpdf circuit.pdf

.PHONY: circuit viewpdf _viewpdf
