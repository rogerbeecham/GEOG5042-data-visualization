# makefile
# adapted from Tom Swan (www.tomswan.com)
# 2018-04-09
# Type 'make' to build, 'make clean' to delete generated files

targets=index.html tableau.html resources.html practical.html

all: ${targets}

%.html : %.adoc menu-include.adoc
	asciidoctor $<

clean:
	rm -v -f ${targets}
	# rm -v -f *.*~
