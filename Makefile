all: build/Strukturfunktionen.pdf

texoptions = \
	     --lualatex \
	     --interaction=nonstopmode \
	     --halt-on-error \
	     --output-directory=build

build/Strukturfunktionen.pdf: FORCE | build
	latexmk $(texoptions) Strukturfunktionen.tex

preview: FORCE | build
	latexmk $(texoptions) -pvc Strukturfunktionen.tex

FORCE:

build:
	mkdir -p build

clean:
	rm -r build
