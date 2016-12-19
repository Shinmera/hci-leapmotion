BIB=bibtex
TEX=lualatex -shell-escape --synctex=1 -interaction=nonstopmode
TEXFILES = $(wildcard *.tex)
BIBFILES = $(wildcard *.bib)

define tex
	$(TEX) --jobname $(1) "\input" $(1).tex
endef

define bib
	$(BIB) $(1)
endef

all: paper

paper: $(TEXFILES) $(BIBFILES)
	$(call tex,hci-leapmotion)
	$(call bib,hci-leapmotion)
	$(call tex,hci-leapmotion)
	$(call tex,hci-leapmotion)
