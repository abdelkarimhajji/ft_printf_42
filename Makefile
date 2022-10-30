# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahajji <ahajji@student.1337.ma>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/20 16:04:22 by ahajji            #+#    #+#              #
#    Updated: 2022/10/23 18:28:06 by ahajji           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRS = ft_printf.c \
	  ft_putchar.c \
	  ft_putstr.c \
	  ft_putnbr.c \
	  ft_putnbr_base.c \
	  ft_putnbr_uns.c \
	  ft_putadres.c 

OBJ = ft_printf.o \
	  ft_putchar.o \
	  ft_putstr.o \
	  ft_putnbr.o \
	  ft_putnbr_base.o \
	  ft_putnbr_uns.o \
	  ft_putadres.o

all: $(NAME)

$(NAME): $(OBJ)
	@ar -r $(NAME) $(OBJ)

$(OBJ): $(SRS)
	@gcc -Wall -Werror -Wextra -c $(SRS)

clean:
	@rm -f *.o
fclean: clean
	@rm -f libftprintf.a

re: fclean all
