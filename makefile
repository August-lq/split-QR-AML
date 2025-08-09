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

.PHONY: all clean mma coma pdf bib pdf-sub bib-sub

# mma子目录编译
mma:
	$(MAKE) pdf DIR=mma
	$(MAKE) bib DIR=mma
	$(MAKE) pdf DIR=mma
	$(MAKE) pdf DIR=mma

# coma子目录编译
coma:
# 	$(MAKE) bst DIR=coma FILE=coma.dbj
	$(MAKE) pdf DIR=coma
	$(MAKE) bib DIR=coma
	$(MAKE) pdf DIR=coma
	$(MAKE) pdf DIR=coma

# coma-bst:
# 	$(MAKE) bst DIR=coma FILE=coma.dbj

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
