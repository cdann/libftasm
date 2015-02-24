/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main_thomas.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/02 14:51:47 by thoraffr          #+#    #+#             */
/*   Updated: 2015/02/24 16:20:44 by cdannapp         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdio.h>

int		main()
{
	char	*str;
	char	*str2;
	char	*str3;
	char	*res;
	int		ret;
	size_t	ret2;
	char	c;

	str = ft_strdup("hello\n");
	write(1, "str: ", 5);
	write(1, str, 7);
	write(1, "ft_bzero(str, 3): ", 18);
	ft_bzero(str, 3);
	write(1, str, 7);
	str = ft_strdup("hello\n");
	write(1, "ft_memset(str, 65, 3): ", 23);
	ft_memset(str, 65, 3);
	write(1, str, 7);
	write(1, "\n", 1);

	//write(1, "ft_isupper('A'): ", 17);
	//ret = ft_isupper('A');
	//if (ret)
	//	write(1, "1\n", 3);
	//else
	//	write(1, "0\n", 3);

	//write(1, "ft_isupper('i'): ", 17);
	//ret = ft_isupper('i');
	//if (ret)
	//	write(1, "1\n", 3);
	//else
	//	write(1, "0\n", 3);
	//write(1, "\n", 1);

	//write(1, "ft_islower('f'): ", 17);
	//ret = ft_islower('f');
	//if (ret)
	//	write(1, "1\n", 3);
	//else
	//	write(1, "0\n", 3);

	//write(1, "ft_islower('R'): ", 17);
	//ret = ft_islower('R');
	//if (ret)
	//	write(1, "1\n", 3);
	//else
	//	write(1, "0\n", 3);
	//write(1, "\n", 1);

	write(1, "ft_isalpha('r'): ", 17);
	ret = ft_isalpha('r');
	if (ret)
		write(1, "1\n", 3);
	else
		write(1, "0\n", 3);

	write(1, "ft_isalpha('5'): ", 17);
	ret = ft_isalpha('5');
	if (ret)
		write(1, "1\n", 3);
	else
		write(1, "0\n", 3);
	write(1, "\n", 1);

	write(1, "ft_isdigit('7'): ", 17);
	ret = ft_isdigit('7');
	if (ret)
		write(1, "1\n", 3);
	else
		write(1, "0\n", 3);

	write(1, "ft_isdigit('|'): ", 17);
	ret = ft_isdigit('|');
	if (ret)
		write(1, "1\n", 3);
	else
		write(1, "0\n", 3);
	write(1, "\n", 1);

	write(1, "ft_isalnum('3'): ", 17);
	ret = ft_isalnum('3');
	if (ret)
		write(1, "1\n", 3);
	else
		write(1, "0\n", 3);

	write(1, "ft_isalnum('p'): ", 17);
	ret = ft_isalnum('p');
	if (ret)
		write(1, "1\n", 3);
	else
		write(1, "0\n", 3);

	write(1, "ft_isalnum('V'): ", 17);
	ret = ft_isalnum('V');
	if (ret)
		write(1, "1\n", 3);
	else
		write(1, "0\n", 3);

	write(1, "ft_isalnum('-'): ", 17);
	ret = ft_isalnum('-');
	if (ret)
		write(1, "1\n", 3);
	else
		write(1, "0\n", 3);
	write(1, "\n", 1);

	write(1, "ft_isascii(0): ", 15);
	ret = ft_isascii(0);
	if (ret)
		write(1, "1\n", 3);
	else
		write(1, "0\n", 3);

	write(1, "ft_isascii('\\n'): ", 18);
	ret = ft_isascii('\n');
	if (ret)
		write(1, "1\n", 3);
	else
		write(1, "0\n", 3);

	write(1, "ft_isascii(127): ", 18);
	ret = ft_isascii(127);
	if (ret)
		write(1, "1\n", 3);
	else
		write(1, "0\n", 3);

	write(1, "ft_isascii('\\t'): ", 18);
	ret = ft_isascii('\t');
	if (ret)
		write(1, "1\n", 3);
	else
		write(1, "0\n", 3);

	write(1, "ft_isascii(200): ", 18);
	ret = ft_isascii(200);
	if (ret)
		write(1, "1\n", 3);
	else
		write(1, "0\n", 3);

	write(1, "ft_isascii(-2): ", 17);
	ret = ft_isascii(-2);
	if (ret)
		write(1, "1\n", 3);
	else
		write(1, "0\n", 3);
	write(1, "\n", 1);

	write(1, "ft_isprint('\\v'): ", 18);
	ret = ft_isprint('\v');
	if (ret)
		write(1, "1\n", 3);
	else
		write(1, "0\n", 3);

	write(1, "ft_isprint('>'): ", 18);
	ret = ft_isprint('>');
	if (ret)
		write(1, "1\n", 3);
	else
		write(1, "0\n", 3);

	write(1, "ft_isprint(127): ", 18);
	ret = ft_isprint(127);
	if (ret)
		write(1, "1\n", 3);
	else
		write(1, "0\n", 3);
	write(1, "\n", 1);

	write(1, "ft_toupper('r'): ", 17);
	c = ft_toupper('r');
	write(1, &c, 1);
	write(1, "\n", 1);

	write(1, "ft_toupper('O'): ", 17);
	c = ft_toupper('O');
	write(1, &c, 1);
	write(1, "\n", 1);
	write(1, "\n", 1);

	write(1, "ft_tolower('A'): ", 17);
	c = ft_tolower('A');
	write(1, &c, 1);
	write(1, "\n", 1);

	write(1, "ft_tolower('z'): ", 17);
	c = ft_tolower('z');
	write(1, &c, 1);
	write(1, "\n", 1);
	write(1, "\n", 1);

	write(1, "ft_strlen(str) == strlen(str) ? 1 : 0 -----> ", 45);
	ret2 = ft_strlen(str);
	if (ret2 == strlen(str))
		write(1, "1\n", 2);
	else
		write(1, "0\n", 2);
	write(1, "\n", 1);

	ret = ft_puts("Je suis écrite par le syscall write, via ft_puts");
	ret = ft_puts(NULL);
	ret = ft_puts("");

	str2 = (char *)malloc(sizeof(char) * 11);
	str2[0] = 'a';
	str2[1] = 'b';
	str2[2] = 'c';
	str2[3] = '\0';
	write(1, "str2: ", 6);
	write(1, str2, 3);
	write(1, "\n", 1);
	write(1, "ft_strcat(str2, \"coucou\\n\"): ", 29);
	res = ft_strcat(str2, "coucou\n");
	write(1, res, 11);
	write(1, "str2: ", 6);
	write(1, str2, 11);
	write(1, "\n", 1);

	str3 = (char *)malloc(sizeof(char) * 10);
	str3[0] = 'i';
	str3[1] = 'g';
	str3[2] = 'e';
	write(1, "str3: ", 6);
	write(1, str3, 3);
	write(1, "\n", 1);
	write(1, "ft_memcpy(str3, \"coucou\\n\", 5): ", 32);
	res = (char *)ft_memcpy(str3, "coucou\n", 5);
	write(1, res, 5);
	write(1, "\n", 1);
	write(1, "str3: ", 6);
	write(1, str3, 5);
	write(1, "\n", 1);

	return (0);
}
