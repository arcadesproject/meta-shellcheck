.PHONY: all clean

TEX=paper.tex
PDF=paper.pdf
PLOTS=plot-data.png

all: $(PDF)

$(PDF): $(TEX) $(PLOTS)
	pdflatex $(TEX)

plot-%.png: %.dat plot.py
	./plot.py -i $*.dat -o $@

clean:
	@echo "Cleaning up..."
	@rm -f $(PDF) plot-*.png *.log *.out *.aux
