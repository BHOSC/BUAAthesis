clean:
	-rm *.aux *.lof *.log *.lot *.out *.toc
	-rm file/*.aux
depclean: clean
	-rm *.pdf
bachelor:
	xelatex sample-bachelor.tex
master:
	xelatex sample-master.tex
