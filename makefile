# why-RSA-works/makefile
# Copyright 2012 Peter Franusic.
# All rights reserved.
#

MISC= 	README \
	makefile \

TEXS=   block-diagram.tex \
	conclusions.tex \
	exponent-arithmetic.tex \
	exponential-notation.tex \
	exponential-tables.tex \
	factor-ops.tex \
	hard-problems.tex \
	huge-integers.tex \
	intro.tex \
	main.tex \
	mappings.tex \
	modex-15.tex \
	modex-33-arrows.tex \
	modex-33-cols.tex \
	modex-33.tex \
	modex-function.tex \
	mult-plus-one.tex \
	multiple-plus-one.tex \
	oplus-15.tex \
	oplus-operator.tex \
	otimes-15.tex \
	otimes-operator.tex \
	references.tex \
	rings.tex \
	set-Zn.tex \
	simple-proof.tex \
	simulation.tex \
	wallpaper.tex \


why-RSA-works.pdf:	${TEXS}$
			pdflatex main.tex
			pdflatex main.tex
			mv main.pdf why-RSA-works.pdf

why-RSA-works.tar:	${TEXS}$ ${MISC}$
			tar -cvf why-RSA-works.tar ${MISC}$ ${TEXS}$ why-RSA-works.pdf

clean:			
			rm *~ *.aux *.log

