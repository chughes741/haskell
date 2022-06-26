NAME	=	output

CC		=	ghc
CFLAGS	=	-fdiagnostics-color=always -Wall -Werror
RM		=	rm -rf
HIDE	=	@

SRC		=	*.hs

all: $(NAME)

$(NAME):
	$(CC) $(CFLAGS) -o $@ $(SRC)

test: all
	$(HIDE)./$(NAME)
	$(HIDE)$(MAKE) fclean

clean:
	$(HIDE)$(RM) *.hi
	$(HIDE)$(RM) *.o

fclean: clean
	$(HIDE)$(RM) $(NAME)