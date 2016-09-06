TEXCV = $(wildcard latex/*.tex)
PDFCV = $(TEXCV:.tex=.pdf)

pdf:  $(PDFCV)

%.pdf: %.tex
	@xelatex $<
	@bibtex cv-en.aux
	@xelatex $<
	@xelatex $<
clean:
	@rubber	--clean	--pdf	$(TEXCV:latex/.tex=)
	@rm -f *.{vrb,out}
x:
	@okular *.pdf

.PHONY: pdf clean

