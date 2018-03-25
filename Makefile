PDF_PRE = ./pdf/
TEX_PRE = ./latex/
TEX_OBJ := $(notdir $(shell find $(TEX_PRE) -name '*.tex'))

OUT_LIST := $(addprefix $(PDF_PRE), $(TEX_OBJ:tex=pdf)) 

 
all: pdf

pdf: $(OUT_LIST)

$(PDF_PRE)%.pdf: $(TEX_PRE)%.tex Makefile
	pdflatex $<
	rm *.aux *.log
	mv $(notdir $@) $@


read: $(PDF_PRE)$(open).pdf
	firefox $(PDF_PRE)$(open).pdf &

clean:
	rm *.aux *.log $(PDF_PRE)*.pdf
