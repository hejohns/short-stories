export LATEXMK := latexmk
export TEXINPUTS := $(strip $(shell pwd))//:$(TEXINPUTS)
export name := reviews

default:
	$(MAKE) -C src
view: default
	nohup okular src/reviews.pdf > /dev/null 2>&1 &
clean:
	$(MAKE) -C src clean

.PHONY: default view clean
