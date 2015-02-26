/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   tests_bonus.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/24 20:32:09 by matguig           #+#    #+#             */
/*   Updated: 2015/02/26 17:10:50 by cdannapp         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "tests.h"

int	test_isupper() {
	int		i;
	int 	error;
	int		official;
	int		personal;

	write(1, "@ Test of ft_isupper() -> ", 26);
	i = 0;
	error = 0;

	while (i < 128) {
		official = isupper(i);
		personal = ft_isupper(i);
		if (personal != official)
			error++;
		i++;
	}

	if (error == 0) {
		write(1, " \033[32mOK\033[0m\n", 13);
		return 0;
	}
	write(1, " \033[31mFAIL\033[0m\n", 15);
	return 1;
}

int	test_islower() {
	int		i;
	int 	error;
	int		official;
	int		personal;

	write(1, "@ Test of ft_islower() -> ", 26);

	i = 0;
	error = 0;

	while (i < 128) {
		official = islower(i);
		personal = ft_islower(i);
		if (personal != official)
			error++;
		i++;
	}

	if (error == 0) {
		write(1, " \033[32mOK\033[0m\n", 13);
		return 0;
	}
	write(1, " \033[31mFAIL\033[0m\n", 15);
	return 1;
}

int	test_pow(){
	int 	i;
	int 	x;
	int 	error;

	write(1, "@ Test of ft_pow()     -> ", 26);
	i = 0;
	x = 0;
	error = 0;

	while (i < 10) {
		while(x < 10) {
			if (pow(i, x) != ft_pow(i, x))
				error++;
			x++;
		}
		i++;
		x = 0;
	}

	if (error == 0) {
		write(1, " \033[32mOK\033[0m\n", 13);
		return 0;
	}
	write(1, " \033[31mFAIL\033[0m\n", 15);
	return 1;
}

int		test_putstr_fd(char *str, int fd) {

	write(1, "\033[4mft_puts() Results :\033[0m \n", 29);

	write(1, "\033[35m personal :> \033[0m", 22);
	ft_putstr_fd(str, fd);
	write(1, "\033[35m$\n\033[0m", 11);

	write(1, "@ Test of ft_putstr_fd()->", 26);


	write(1, " \033[33mCHECK\033[0m\n", 16);
	return 1;
}
