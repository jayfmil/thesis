all:
	pdflatex thesis.tex
	bibtex thesis
	pdflatex thesis.tex
	pdflatex thesis.tex


cleanext = ~ .out .log .toc .aux .log .lof .bbl .blg

clean:
	$(foreach x,$(cleanext),find . -name *$(x) | xargs -I {} rm -vf {};)


