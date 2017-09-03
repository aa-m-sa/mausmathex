
all: exercise_template.pdf article_template.pdf

exercise_template.pdf: exercise_template.tex mausmathex.sty
	latexmk -pdflatex="lualatex %O %S" -pdf -ps- -dvi- -recorder exercise_template

article_template.pdf: article_template.tex mausmathex.sty
	latexmk -pdflatex="lualatex %O %S" -pdf -ps- -dvi- -recorder article_template

clean:
	latexmk -C -silent

.PHONY: all clean
