bachelor:
	xelatex sample-bachelor.tex
master:
	xelatex sample-master.tex
clean:
	-rm *.aux *.lof *.log *.lot *.out *.toc *.bbl *.blg
	-rm file/*.aux
	-rm file/bachelor/*.aux
	-rm file/master/*.aux
depclean: clean
	-rm *.pdf
