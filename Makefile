TEXFILE := exercise_template

all: $(TEXFILE).pdf

$(TEXFILE).pdf: $(TEXFILE).tex mausmathex.sty
	latexmk -pdflatex="lualatex %O %S" -pdf -ps- -dvi- -recorder -interaction=nonstopmode -silent $(TEXFILE)

clean:
	latexmk -C -silent

.PHONY: all clean