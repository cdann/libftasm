# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2013/11/22 11:44:16 by cdannapp          #+#    #+#              #
#    Updated: 2015/02/20 17:59:12 by cdannapp         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
NAME = libft.a

NASM = $(HOME)/.brew/bin/nasm

SRC = ft_strlen.s \
	  ft_isalpha.s \
	  ft_isascii.s \
	  ft_isprint.s \
	  ft_isalnum.s \
	  ft_isdigit.s \
	  ft_toupper.s \
	  ft_tolower.s \
	  ft_puts.s \
	  ft_strcat.s \
	  ft_strcpy.s \
	  ft_memset.s \
	  ft_bzero.s \
	  #ft_memcpy.sm \
	  #ft_strdup.s \
	  #ft_cat.s


OBJ =  $(SRC:.s=.o)



all:  $(NAME)

%.o: %.s
	@$(NASM) -f macho64 $< -g -o $@
	@echo "\033[42m \033[0m\033[32m $@ \033[0m"

$(NAME): $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@echo "\033[32m ** Lib ASM créée ** \033[0m"

test: re
	gcc main.c -L. -lft -mdynamic-no-pic -o tester
	./tester


clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all
