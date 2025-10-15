# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jaialons <jaialons@student.42madrid.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/10/15 18:47:36 by jaialons          #+#    #+#              #
#    Updated: 2025/10/15 19:12:02 by jaialons         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
CC = cc
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs
RM = rm -f

SRC = ft_printf.c ft_putchars.c ft_putnbrs.c utils.c utils2.c
OBJ = $(SRC:.c=.o)
BONUS_SRC = $(SRC_BONUS:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(AR) $(NAME) $(OBJ)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

bonus: $(OBJ) $(BONUS_SRC)
	$(AR) $(NAME) $(OBJ) $(BONUS_SRC)

.PHONY: all clean fclean re bonus