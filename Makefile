bachelor:
	xelatex sample-bachelor.tex
master:
	xelatex sample-master.tex
clean:
	-rm *.aux *.lof *.log *.lot *.out *.toc *.bbl *.blg
	-rm data/*.aux
	-rm data/bachelor/*.aux
	-rm data/master/*.aux
depclean: clean
	-rm *.pdf
