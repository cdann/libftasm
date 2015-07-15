/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   tests_various.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/24 18:03:11 by matguig           #+#    #+#             */
/*   Updated: 2015/02/27 16:56:16 by cdannapp         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "tests.h"

int		test_puts(char *str) {
	int		official;
	int		personal;

	write(1, "\033[4mft_puts() Results :\033[0m \n", 29);

	write(1, "\033[35m original :> \033[0m", 22);
	official = puts(str);
	write(1, "\033[35m personal :> \033[0m", 22);
	personal = ft_puts(str);

	write(1, "\033[36;1m@ Test of ft_puts()    -> \033[0m", 26);
	if (official != personal) {
		write(1, " \033[31mFAIL\033[0m\n", 15);
		return 0;
	}
	write(1, " \033[33mCHECK\033[0m\n", 16);
	return 1;
}

int		test_strlen(char *str) {
	int		official;
	int		personal;

	official = strlen(str);
	personal = ft_strlen(str);

	write(1, "\033[36;1m@ Test of ft_strlen()  -> \033[0m", 26);
	if (official != personal) {
		write(1, " \033[31mFAIL\033[0m\n", 15);
		return 0;
	}
	write(1, " \033[32mOK\033[0m\n", 13);
	return 1;
}

void 	test_cat(int fd) {
	write(1, "\033[36;1m@ Test of ft_cat()     -> \033[0m \n", 39);
	ft_cat(fd);

	return ;
}
