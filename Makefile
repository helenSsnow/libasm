NAME = libasm.a

SRCS =	ft_strlen.s \
		ft_strcpy.s \
		ft_strcmp.s \
		ft_write.s	\
		ft_read.s	\
		ft_strdup.s

C_FILES = main.c

OBJS = $(SRCS:.s=.o)

all: $(NAME)

%.o	: %.s
	nasm -f macho64 $< -o $@

$(NAME): $(OBJS) 
	ar rcs $(NAME) $(OBJS)
	gcc -Wall -Wextra -Werror $(C_FILES) -I libasm.h libasm.a

clean:
	rm -f $(OBJS)


fclean: clean
	rm -f $(NAME)
	rm -f libasm

re: fclean all