MARKDOWN=multimarkdown
MARKDOWNFLAGS=-b --to=html
SASS=sassc

MDFILES!=find . -iname "*.md" ! -name "README.md" ! -name "nav.md"
SCSSFILES!=find . -iname "*.scss"
HTMLFILES=$(subst .md,.html,$(MDFILES))
CSSFILES=$(subst .scss,.css,$(SCSSFILES))

SHELL := /bin/bash

.PHONY: all, clean

all: $(HTMLFILES) $(CSSFILES)

%.html: %.md nav.md
	$(MARKDOWN) $(MARKDOWNFLAGS) $*.md

%.css: %.scss
	$(SASS) $*.scss $*.css

clean:
	rm -rf $(HTMLFILES) $(CSSFILES)
