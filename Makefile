# Giovana Vieira de Morais
#   giovana.vmorais@gmail.com
#
#

REPORT = relatorio.pdf
LATEX = pdflatex -interaction nonstopmode --shell-escape 
DEPS = relatorio.tex

all: $(REPORT)

$(REPORT): $(DEPS)
	$(LATEX) $<
	$(LATEX) $<

.PHONY: clean

clean:
	rm *.toc
	rm *.log
	rm *.pdf
	rm *.aux

read:
	evice $(REPORT)
