# $Id: makefile 243 2024-04-06 10:34:40Z rishi $
builddir=build

$(shell mkdir -p $(builddir))


# 默认主文件名
FILE=main.tex
BUILDDIR=build

$(shell mkdir -p $(BUILDDIR))

all: pdf

clean:
	rm -rf $(BUILDDIR)

# # 通用PDF编译规则
# pdf:
# 	pdflatex -output-directory=$(BUILDDIR) $(MAIN)

# # 通用bibtex规则
# bib:
# 	bibtex $(BUILDDIR)/$(basename $(MAIN))

# mma子目录编译

.PHONY: all clean mma coam pdf bib pdf bib ppt

# mma子目录编译
mma:
	$(MAKE) pdf DIR=mma
	$(MAKE) bib DIR=mma
	$(MAKE) pdf DIR=mma
	$(MAKE) pdf DIR=mma

# coam子目录编译
coam:
	$(MAKE) pdf DIR=coam
	$(MAKE) bib DIR=coam
	$(MAKE) pdf DIR=coam
	$(MAKE) pdf DIR=coam


ppt:
	$(MAKE) pdf DIR=. FILE=ppt.tex
	$(MAKE) pdf DIR=. FILE=ppt.tex

# 子目录PDF编译
pdf:
	mkdir -p $(BUILDDIR)/$(DIR)
	pdflatex -output-directory=$(BUILDDIR)/$(DIR) $(DIR)/$(FILE)

# 子目录bibtex
bib:
	mkdir -p $(BUILDDIR)/$(DIR)
	bibtex $(BUILDDIR)/$(DIR)/$(basename $(FILE))

# bst:
# 	latex --output-directory=$(DIR) $(DIR)/$(FILE)
