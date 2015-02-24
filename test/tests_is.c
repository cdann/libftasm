/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   tests_is.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/24 17:17:19 by cdannapp          #+#    #+#             */
/*   Updated: 2015/02/24 17:22:48 by cdannapp         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "tests.h"

int	test_isalpha() {
	int		i;
	int 	error;
	int		official;
	int		personal;

	write(1, "@ Test of ft_isalpha() -> ", 26);

	i = 0;
	error = 0;

	while (i < 128) {
		official = isalpha(i);
		personal = ft_isalpha(i);
		if (personal != official)
			error++;
		i++;
	}

	if (error == 0) {
		write(1, "OK\n", 3);
		return 0;
	}
		write(1,"FAIL\n", 5);
	return 1;
}

int	test_isalnum() {
	int		i;
	int 	error;
	int		official;
	int		personal;

	write(1, "@ Test of ft_isalnum() -> ", 26);

	i = 0;
	error = 0;

	while (i < 128) {
		official = isalnum(i);
		personal = ft_isalnum(i);
		if (personal != official)
			error++;
		i++;
	}

	if (error == 0) {
		write(1, "OK\n", 3);
		return 0;
	}
		write(1,"FAIL\n", 5);
	return 1;
}
int	test_isdigit() {
	int		i;
	int 	error;
	int		official;
	int		personal;

	write(1, "@ Test of ft_isdigit() -> ", 26);

	i = 0;
	error = 0;

	while (i < 128) {
		official = isdigit(i);
		personal = ft_isdigit(i);
		if (personal != official)
			error++;
		i++;
	}

	if (error == 0) {
		write(1, "OK\n", 3);
		return 0;
	}
		write(1,"FAIL\n", 5);
	return 1;
}
int	test_isprint() {
	int		i;
	int 	error;
	int		official;
	int		personal;

	write(1, "@ Test of ft_isprint() -> ", 26);

	i = 0;
	error = 0;

	while (i < 128) {
		official = isprint(i);
		personal = ft_isprint(i);
		if (personal != official)
			error++;
		i++;
	}

	if (error == 0) {
		write(1, "OK\n", 3);
		return 0;
	}
	write(1,"FAIL\n", 5);
	return 1;
}
int	test_isascii() {
	int		i;
	int 	error;
	int		official;
	int		personal;

	write(1, "@ Test of ft_isascii() -> ", 26);

	i = 0;
	error = 0;

	while (i < 128) {
		official = isascii(i);
		personal = ft_isascii(i);
		if (personal != official)
			error++;
		i++;
	}

	if (error == 0) {
		write(1, "OK\n", 3);
		return 0;
	}
		write(1,"FAIL\n", 5);
	return 1;
}
