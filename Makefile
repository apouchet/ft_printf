# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: apouchet <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/03/10 00:33:28 by apouchet          #+#    #+#              #
#    Updated: 2017/03/10 00:33:31 by apouchet         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CFLAGS = -Wall -Werror -Wextra

NAME =  libftprintf.a

LIB = ./src/libft/ft_putnbr.c ./src/libft/ft_isascii.c ./src/libft/ft_strcpy.c \
	./src/libft/ft_strncpy.c ./src/libft/ft_isdigit.c ./src/libft/ft_putstr.c ./src/libft/ft_strdup.c ./src/libft/ft_strrchr.c \
	./src/libft/ft_atoi.c ./src/libft/ft_isprint.c ./src/libft/ft_strcat.c ./src/libft/ft_strlen.c ./src/libft/ft_tolower.c \
	./src/libft/ft_isalnum.c ./src/libft/ft_putchar.c ./src/libft/ft_strchr.c ./src/libft/ft_strncat.c ./src/libft/ft_toupper.c \
	./src/libft/ft_isalpha.c ./src/libft/ft_strcmp.c ./src/libft/ft_strncmp.c ./src/libft/ft_strlcat.c ./src/libft/ft_strstr.c \
	./src/libft/ft_memset.c ./src/libft/ft_memcpy.c ./src/libft/ft_memccpy.c ./src/libft/ft_memchr.c ./src/libft/ft_strsub.c \
	./src/libft/ft_memcmp.c ./src/libft/ft_bzero.c ./src/libft/ft_strnstr.c ./src/libft/ft_strdel.c ./src/libft/ft_strclr.c \
	./src/libft/ft_strnew.c ./src/libft/ft_strsplit.c ./src/libft/ft_putchar_fd.c ./src/libft/ft_putstr_fd.c \
	./src/libft/ft_putendl.c ./src/libft/ft_putendl_fd.c ./src/libft/ft_putnbr_fd.c ./src/libft/ft_striter.c ./src/libft/ft_itoa.c \
	./src/libft/ft_striteri.c ./src/libft/ft_strequ.c ./src/libft/ft_strnequ.c ./src/libft/ft_memdel.c ./src/libft/ft_strjoin.c \
	./src/libft/ft_memalloc.c ./src/libft/ft_strtrim.c ./src/libft/ft_strmap.c ./src/libft/ft_strmapi.c ./src/libft/ft_memmove.c \
	./src/libft/ft_lstnew.c ./src/libft/ft_lstdelone.c ./src/libft/ft_lstdel.c ./src/libft/ft_lstiter.c ./src/libft/ft_lstadd.c ./src/libft/ft_lstmap.c \
	./src/libft/ft_ultimate_range.c ./src/libft/ft_strupcase.c ./src/libft/ft_strlowcase.c ./src/libft/ft_concat_params.c ./src/libft/ft_strcapitalize.c

SRC = ./src/ft_printf.c ./src/octo.c ./src/decalage.c ./src/autre.c ./src/ft_printf_char.c ./src/ft_printf_nb.c ./src/ft_nombre.c

OBJ = $(SRC:.c=.o)

OBJL = $(LIB:.c=.o)

all: $(NAME) 

$(NAME) : $(OBJ) $(OBJL)
	ar rc $(NAME) $(OBJ) $(OBJL)
	ranlib $(NAME)

norm :
	clear
	norminette -R CheckForbiddenSourceHeader *.c

clean :
	rm -f ./src/*.o
	rm -f ./src/libft/*.o

re : fclean all

check : 
	sh ~/Documents/42FileChecker/42FileChecker.sh

fclean : clean
	rm -f $(NAME)
