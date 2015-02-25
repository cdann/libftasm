/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   tests_mem.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: matguig <matguig@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/24 17:44:38 by matguig           #+#    #+#             */
/*   Updated: 2015/02/25 21:18:37 by matguig          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "tests.h"

int		test_memcpy(int lenght) {
	char src[20];
	char dest1[50];
	char dest2[50];

	write(1, "@ Test of ft_memcpy()  -> ", 26);

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
	char	str1[9];
	char	str2[9];


	write(1, "@ Test of ft_memset()  -> ", 26);
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


	write(1, "@ Test of ft_bzero()   -> ", 26);

	bzero(str1, lenght);
	ft_bzero(str2, lenght);
	if (strcmp(str1, str2)) {
		write(1, " \033[31mFAIL\033[0m\n", 15);
		return 0;
	}
	write(1, " \033[32mOK\033[0m\n", 13);

	return 1;
}

