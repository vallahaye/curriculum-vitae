SOURCES=src/curriculum-vitae.tex src/tccv.cls
TARGET=src/curriculum-vitae.pdf

default: $(TARGET)

$(TARGET): $(SOURCES)
	latexmk -pdf --interaction=nonstopmode -use-make -cd $<

.PHONY: dist
dist: $(TARGET)
	install -m 644 $< docs/

.PHONY: clean
clean:
	latexmk -C -cd $(SOURCES)
