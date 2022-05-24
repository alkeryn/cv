CC=pdflatex
NAME=cv
OUT=out
$(NAME): $(NAME).tex
	mkdir -p $(OUT)
	$(CC) -output-directory=$(OUT) $(NAME).tex
	mv $(OUT)/$(NAME).pdf ./
run:
	@setsid zathura $(NAME).pdf &
clean:
	rm -rf *.pdf out
