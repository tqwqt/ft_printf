# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vhavryle <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/02/11 16:17:26 by vhavryle          #+#    #+#              #
#    Updated: 2018/02/11 16:17:28 by vhavryle         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FILES = ft_printf.c \
	parser.c \
	caster.c \
	flags.c \
	cast_cs.c \
	uni.c \
	cast_ddi.c \
	cast_x.c \
	casto.c

LDIR = ./libft

LIBFT = $(LDIR)/libft.a

OBJ = $(FILES:.c=.o)

_DEPS = libftprintf.h

IDIR = ./hdr

SDIR = src

DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

NAME = libftprintf.a

KEYS = -Wall -Werror -Wextra

all: $(NAME)

%.o: $(SDIR)/%.c $(DEPS)
	gcc $(KEYS) -c -o $@ $< -I$(IDIR)

$(NAME): $(LIBFT) $(OBJ)
	@cp libft/libft.a ./$(NAME)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

$(LIBFT):
	@make -C libft

clean:
	@make clean -C $(LDIR)
	/bin/rm -f $(OBJ)
fclean: clean
	/bin/rm -f libft/libft.a
	/bin/rm -f $(NAME)
re: fclean all
