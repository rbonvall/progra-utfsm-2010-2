TEXFILES = $(shell ls *.tex | grep -v ^flujo\.tex)
PDFFILES = $(TEXFILES:.tex=.pdf)
PNGFILES = $(PDFFILES:.pdf=.png)

png: $(PNGFILES)
pdf: $(PDFFILES)

%.pdf: %.tex flujo.tex
	@rubber --pdf $<
%.png: %.pdf
	@convert -density 1200 -scale 10\% -quality 80 $< $@

clean:
	@rubber --clean --pdf $(TEXFILES:.tex=)
	@rm -f *.png

.PHONY: png pdf clean all
