# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: matguig <matguig@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2013/11/22 11:44:16 by cdannapp          #+#    #+#              #
#    Updated: 2015/02/24 21:04:06 by matguig          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
NAME = libft.a

NASM = nasm

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
	  ft_memcpy.s \
	  ft_strdup.s \
	  ft_cat.s \
	  ft_isupper.s \
	  ft_islower.s


SRC_TESTS = test/tests_is.c \
			test/tests_mem.c \
			test/tests_various.c \
			test/tests_str.c \
			test/tests_to.c \
			test/tests_bonus.c



OBJ =  $(SRC:.s=.o)
OBJ_TESTS =  $(SRC_TESTS:.c=.o)



all:  $(NAME)

%.o: %.c
	@gcc -Wall -Wextra -Werror -o $@ -c $<
	@echo "\033[42m \033[0m\c"

%.o: %.s
	@$(NASM) -f macho64 $< -g -o $@
	@echo "\033[42m \033[0m\033[32m $@ \033[0m"

$(NAME): $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@echo "\033[32m  ** Lib ASM créée ** \033[0m"

test: re $(OBJ_TESTS)
	@gcc -c test/tests.c -o test/test.o
	@ld test/test.o $(OBJ_TESTS) -L. -lft -macosx_version_min 10.8 -lSystem -o tester
	@rm -f $(OBJ_TESTS)
	@rm -f test/test.o
	@echo "\033[31m  Objets tests SUPPRESSION \033[0m"
	@echo "\033[32m  ** Execution des tests :) ** \033[0m"
	@./tester


clean:
	@rm -f $(OBJ)
	@echo "\033[31m  Objets SUPPRESSION \033[0m"

fclean: clean
	@rm -f $(NAME)
	@echo "\033[31m  Lib ASM SUPPRESSION \033[0m"

re: fclean all
