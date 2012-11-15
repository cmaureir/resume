TEXCV = $(wildcard latex/*.tex)
PDFCV = $(TEXCV:.tex=.pdf)

pdf:  $(PDFCV)

%.pdf: %.tex
	@rubber	--pdf	$<
clean:
	@rubber	--clean	--pdf	$(TEXCV:latex/.tex=)
	@rm -f *.{vrb,out}
x:
	@okular *.pdf

.PHONY: pdf clean

