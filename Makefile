REPORT = relatorio.pdf
LATEX = pdflatex -interaction nonstopmode --shell-escape 
# caso haja mais de um arquivo no relatório, editar essa variável
DEPS = relatorio.tex \
       # dependencia1.tex \
       # dependencia2.tex	 
	
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
	evince $(REPORT)
