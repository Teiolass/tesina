OBJS := $(wildcard *.tex)

all: $(patsubst %.tex, %.pdf, $(OBJS))


%.pdf: %.tex Makefile
	pdflatex $<
	rm *.aux *.log


read: $(open).pdf
	firefox $(open).pdf &

clean:
	rm *.aux *.log *.pdf

