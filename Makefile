
build: resume.pdf

resume.pdf: resume.tex
	xelatex resume.tex

watch:
	ls *.tex *.cls | entr -cr sh -c "xelatex resume.tex && open resume.pdf"

clean:
	rm -rf *.pdf *.log *.aux

