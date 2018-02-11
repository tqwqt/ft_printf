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

SRC = src/parser.c\
	  src/caster.c\
	  src/flags.c\
	  src/cast_cs.c\
	  src/uni.c\
	  src/cast_ddi.c\
	  src/cast_x.c\
	  src/casto.c

LIBSRC = lsrc/ft_strdup.c\
		 lsrc/ft_strlen.c\
		 lsrc/ft_memset.c\
		 lsrc/ft_bzero.c\
		 lsrc/ft_strchr.c\
		 lsrc/ft_strnstr.c\
		 lsrc/ft_tolower.c\
		 lsrc/ft_strnew.c\
		 lsrc/ft_strdel.c\
		 lsrc/ft_strsub.c\
		 lsrc/ft_strjoin.c\
		 lsrc/ft_itoa.c\
		 lsrc/ft_itoa_base.c\
		 lsrc/ft_atoi.c

OBJ = ft_printf.o\
	  parser.o\
	  caster.o\
	  flags.o\
	  cast_cs.o\
	  uni.o\
	  cast_ddi.o\
	  cast_x.o\
	  casto.o\
	  ft_strdup.o\
	  ft_strlen.o\
	  ft_memset.o\
	  ft_bzero.o\
	  ft_strchr.o\
	  ft_strnstr.o\
	  ft_tolower.o\
	  ft_strnew.o\
	  ft_strdel.o\
	  ft_strsub.o\
	  ft_strjoin.o\
	  ft_itoa.o\
	  ft_itoa_base.o\
	  ft_atoi.o

NAME = libftprintf.a
FLAGS = -Wall -Werror -Wextra

all: $(NAME)

$(NAME): $(SRC)
	@gcc $(FLAGS) -c ft_printf.c $(SRC) $(LIBSRC) -I hdr
	@ar rc $(NAME) $(OBJ)

clean:
	@rm -f $(OBJ)
fclean: clean
	@rm -f $(NAME)
re: fclean all
