# $Id: makefile 243 2024-04-06 10:34:40Z rishi $
builddir=build
file=main_v2_aml_1p
# file=main_v2_aml_5p
# file=elsarticle-template-harv

$(shell mkdir -p $(builddir))

all: pdf out 
	make pdf
	make pdf

out:
	if [ -f $(builddir)/$(file).out ] ; then cp $(builddir)/$(file).out $(builddir)/tmp.out; fi ;
	sed 's/BOOKMARK/dtxmark/g;' $(builddir)/tmp.out > $(builddir)/x.out; mv $(builddir)/x.out $(builddir)/tmp.out ;

pdf:
	pdflatex -output-directory=$(builddir) $(file).tex

index:
	cd $(builddir) && makeindex -s ../gind.ist -o $(file).ind $(file).idx

changes:
	cd $(builddir) && makeindex -s ../gglo.ist -o $(file).gls $(file).glo

xview:
	open -a 'Skim.app' $(builddir)/$(file).pdf

view:
	open -a 'Adobe Reader.app' $(builddir)/$(file).pdf

ins:
	latex -output-directory=$(builddir) $(file).ins

diff:
	diff $(builddir)/$(file).sty ../$(file).sty |less

copy:
	cp $(builddir)/$(file).sty ../

