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

preview/%.png: src/%.svg preview preview/README.mkd
	inkscape -z -e "$@" -w $(SIZE) -h $(SIZE) "$<"
	echo "+ **$$(basename "$@")** ![]($$(basename "$@"))" >> preview/README.mkd

preview/README.mkd: preview
	echo "# OIcons" > $@

preview:
	mkdir -p $@
