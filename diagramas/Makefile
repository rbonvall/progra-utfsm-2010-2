TEXFILES = $(shell ls *.tex | grep -v ^flujo\.tex)
PDFFILES = $(TEXFILES:.tex=.pdf)
PNGFILES = $(PDFFILES:.pdf=.png)
DEPLOYDIR = ../_static/diagramas

png: $(PNGFILES)
pdf: $(PDFFILES)

%.pdf: %.tex
	@rubber --pdf $<
%.png: %.pdf
	@convert -density 1200 -scale 10\% $< $@

deploy: png
	@mkdir -p $(DEPLOYDIR)
	@echo "Copying PNGs to $(DEPLOYDIR)"
	@cp *.png $(DEPLOYDIR)

clean:
	@rubber --clean --pdf $(TEXFILES:.tex=)
	@rm -f *.png

.PHONY: png pdf deploy clean all
