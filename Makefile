TEX = xelatex -f -pdf -shell-escape -interaction=nonstopmode -file-line-error
PREVIEW = zathura 

all: compile 
	echo 'ok'

compile:
	$(TEX) base.tex

preview:
	$(PREVIEW) base.pdf

clean:
	-rm -f figuras/fontes/*.aux
	-rm -f figuras/fontes/*.
	-rm -f figuras/fontes/*.fdb_latexmk
	-rm -f figuras/fontes/*.fls
	-rm -f figuras/fontes/*.log
	-rm -f *.aux
	-rm -f *.bbl
	-rm -f *.blg
	-rm -f *.brf
	-rm -f *.fdb_latexmk
	-rm -f *.fls
	-rm -f *.idx
	-rm -f *.ilg
	-rm -f *.ind
	-rm -f *.loa
	-rm -f *.lof
	-rm -f *.log
	-rm -f *.lot
	-rm -f *.synctex.gz
	-rm -f *.toc 
	-rm -f *.nav
	-rm -f *.out
	-rm -f *.snm
	-rm -f *.lol
	-rm -rf _minted-*

