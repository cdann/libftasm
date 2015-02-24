/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   tests_str.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: matguig <matguig@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/24 18:17:45 by matguig           #+#    #+#             */
/*   Updated: 2015/02/24 20:19:06 by matguig          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "tests.h"

int 	test_strdup(char *src) {
	write(1, "@ Test of ft_strdup()  -> ", 26);

	if (strcmp(strdup(src), ft_strdup(src))) {
		write(1, " \033[31mFAIL\033[0m\n", 15);
		return 0;
	}
	write(1, " \033[32mOK\033[0m\n", 13);
	return 1;
}

int		test_strcat() {
	char	str1[9];
	char	str2[9];

	write(1, "@ Test of ft_strcat()  -> ", 26);

	bzero(str1, 9);
	bzero(str2, 9);
	if (strcmp(strcat(str1, ""), ft_strcat(str2, ""))) {
		write(1, " \033[31mFAIL\033[0m\n", 15);
		return 0;
	}
	if (strcmp(strcat(str1, "Bon"), ft_strcat(str2, "Bon"))) {
		write(1, " \033[31mFAIL\033[0m\n", 15);
		return 0;
	}
	if (strcmp(strcat(str1, "j"), ft_strcat(str2, "j"))) {
		write(1, " \033[31mFAIL\033[0m\n", 15);
		return 0;
	}
	if (strcmp(strcat(str1, "our."), ft_strcat(str2, "our."))) {
		write(1, " \033[31mFAIL\033[0m\n", 15);
		return 0;
	}
	write(1, " \033[32mOK\033[0m\n", 13);
	return 1;
}

int 	test_strcpy(char *str) {
	char	str1[54];
	char	str2[54];

	write(1, "@ Test of ft_strcpy()  -> ", 26);

	bzero(str1, 54);
	bzero(str2, 54);

	if (strcmp(strcpy(str1, str), ft_strcpy(str2, str))) {
		write(1, " \033[31mFAIL\033[0m\n", 15);
		return 0;
	}
	if (strcmp(str1, str2)) {
		write(1, " \033[31mFAIL\033[0m\n", 15);
		return 0;
	}

	write(1, " \033[32mOK\033[0m\n", 13);
	return 1;
}