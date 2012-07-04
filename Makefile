bachelor:
	xelatex sample-bachelor.tex
master:
	xelatex sample-master.tex
clean:
	-rm *.aux *.lof *.log *.lot *.out *.toc *.bbl *.blg
	-rm file/*.aux
depclean: clean
	-rm *.pdf
