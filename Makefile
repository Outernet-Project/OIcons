.PHONY: compile clean previews

SOURCES = $(wildcard src/*.svg)
PREVIEWS = $(SOURCES:src/%.svg=preview/%.png)
SIZE = 64

compile: ./build

build:
	grunt

clean:
	-rm -rf build
	-rm -rf preview
	-rm PREVIEW.mkd

previews: $(sort $(PREVIEWS))

preview/%.png: src/%.svg preview PREVIEW.mkd
	inkscape -z -e "$@" -w $(SIZE) -h $(SIZE) "$<"
	echo "+ ![]($@) **$$(basename "$@")**" >> PREVIEW.mkd

PREVIEW.mkd: preview
	echo "# OIcons" > $@

preview:
	mkdir -p $@
