.PHONY: compile clean previews

SOURCES = $(wildcard src/*.svg)
PREVIEWS = $(SOURCES:src/%.svg=preview/%.png)
SIZE = 128

compile: ./build

build:
	grunt

clean:
	-rm -rf build
	-rm -rf preview

previews: $(PREVIEWS)

preview/%.png: src/%.svg preview
	inkscape -z -e "$@" -w $(SIZE) -h $(SIZE) "$<"

preview:
	mkdir -p $@
