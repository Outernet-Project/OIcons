.PHONY: compile clean

compile: ./build

build:
	grunt

clean:
	-rm -rf build
