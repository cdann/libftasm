/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   tests_various.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/24 18:03:11 by matguig           #+#    #+#             */
/*   Updated: 2015/02/27 16:49:01 by cdannapp         ###   ########.fr       */
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

	write(1, "@ Test of ft_puts()    -> ", 26);
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

	write(1, "@ Test of ft_strlen()  -> ", 26);
	if (official != personal) {
		write(1, " \033[31mFAIL\033[0m\n", 15);
		return 0;
	}
	write(1, " \033[32mOK\033[0m\n", 13);
	return 1;
}

void 	test_cat() {
	//int		fd;

	//char	buf[30];
	//int		ret;

	write(1, "@ Test of ft_cat()     -> ", 26);

	//fd = open("./test/files/cat.test", O_RDONLY);
	//write(1, "\033[33m Read from cat.test \033[0m\n", 31);

	//ft_cat(fd);
	//close(fd);

	write(1, "\033[33m Read from -42 file desc\033[0m\n", 34);
	ft_cat(-42);


	write(1, "\033[33mType any words and press enter\033[0m\n", 40);
	ft_cat(0);
	return ;
}
