# Copyright 2019 Valentin Lahaye
#
# This work may be distributed and/or modified under the
# conditions of the LaTeX Project Public License, either version 1.3
# of this license or (at your option) any later version.
# The latest version of this license is in
#   http://www.latex-project.org/lppl.txt
# and version 1.3 or later is part of all distributions of LaTeX
# version 2005/12/01 or later.

SOURCES=src/curriculum-vitae.tex src/tccv.cls
TARGET=src/curriculum-vitae.pdf

$(TARGET): $(SOURCES)
	latexmk -pdf --interaction=nonstopmode -use-make -cd $<

.PHONY: dist
dist: $(TARGET)
	install -m 644 $< docs/

.PHONY: clean
clean:
	latexmk -C -cd $(SOURCES)
