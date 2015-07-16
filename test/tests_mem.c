/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   tests_mem.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/24 17:44:38 by cdannapp          #+#    #+#             */
/*   Updated: 2015/07/16 16:21:14 by cdannapp         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "tests.h"

int		test_memcpy(int lenght) {
	char *src;
	char *dest1;
	char *dest2;

	src = (char*) malloc(sizeof(char) * 20);
	dest1 = (char*) malloc(sizeof(char) * 50);
	dest2 = (char*) malloc(sizeof(char) * 50);

	write(1, "\033[36;1m@ Test of ft_memcpy()  -> \033[0m", 26);

	memset(src, 'o', 20);
	memset(dest1, 'w', 50);
	memset(dest2, 'w', 50);
	src[19] = '\0';
	dest1[49] = '\0';
	dest2[49] = '\0';

	ft_memcpy(dest1, src, lenght);
	memcpy(dest2, src, lenght);
	if (strcmp(dest1, dest2)) {
		write(1, " \033[31mFAIL\033[0m\n", 15);
		return 0;
	}
	write(1, " \033[32mOK\033[0m\n", 13);
	return 1;
}

int		test_memset(int lenght) {
	char	*str1;
	char	*str2;

	str1 = (char*) malloc(sizeof(char) * 9);
	str2 = (char*) malloc(sizeof(char) * 9);

	write(1, "\033[36;1m@ Test of ft_memset()  -> \033[0m", 26);
	bzero(str1, 9);
	bzero(str2, 9);

	memset(str1, 'r', lenght);
	ft_memset(str2, 'r', lenght);
	if (strcmp(str1, str2)) {
		write(1, " \033[31mFAIL\033[0m\n", 15);
		return 0;
	}
	write(1, " \033[32mOK\033[0m\n", 13);

	return 1;
}

int		test_bzero(int lenght) {
	char	str1[9];
	char	str2[9];


	write(1, "\033[36;1m@ Test of ft_bzero()   -> \033[0m", 26);

	bzero(str1, lenght);
	ft_bzero(str2, lenght);
	if (strcmp(str1, str2)) {
		write(1, " \033[31mFAIL\033[0m\n", 15);
		return 0;
	}
	write(1, " \033[32mOK\033[0m\n", 13);

	return 1;
}

