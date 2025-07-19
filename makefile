# $Id: makefile 243 2024-04-06 10:34:40Z rishi $
builddir=build

$(shell mkdir -p $(builddir))

all: 

clean:
	rm -rf $(builddir)

pdf:
	pdflatex -output-directory=$(builddir) $(file).tex

bib:
	bibtex $(builddir)/$(file)

mma: 
	$(MAKE) pdf file=MMA
	$(MAKE) bib file=MMA
	$(MAKE) pdf file=MMA
	$(MAKE) pdf file=MMA

