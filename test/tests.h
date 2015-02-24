/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   tests.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: matguig <matguig@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/24 17:18:23 by cdannapp          #+#    #+#             */
/*   Updated: 2015/02/24 20:44:54 by matguig          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef TESTS_H
# define TESTS_H

#include <stdio.h>
#include <fcntl.h>
#include <ctype.h>
#include <string.h>
#include "../libft.h"

int		test_isalpha();
int		test_isalnum();
int		test_isdigit();
int		test_isprint();
int		test_isascii();

int		test_memcpy(int lenght);

int		test_puts(char *str);

int 	test_strdup(char *src);
int 	test_strcat();

int		test_memset(int lenght);
int		test_bzero(int lenght);

int		test_strlen(char *str);
int 	test_strcpy(char *str);

int 	test_toupper();
int 	test_tolower();

void 	test_cat();

#endif
