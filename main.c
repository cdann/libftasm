/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/18 14:32:45 by cdannapp          #+#    #+#             */
/*   Updated: 2015/02/20 18:14:21 by cdannapp         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include "libft.h"

//extern void *ft_memset(void *b, int c, size_t len);
//extern int ft_toupper(int c);
//extern int ft_tolower(int c);
//extern int ft_isprint(int c);

void	test_isalpha();
void	test_isalnum();
void	test_isdigit();
void	test_isprint();
void	test_isascii();
void	test_toupper();
void	test_tolower();
void	test_strcatandchicken();
void	test_strcat();
void	test_puts();
void	test_strcpy();
void	test_memset();
void	test_bzero();

int		main(void)
{
	//test_isalpha();
	//test_isalnum();
	//test_isdigit();
	//test_isprint();
	//test_isascii();
	//test_toupper();
	//test_tolower();
//
	//test_puts();
	//test_strcatandchicken();
	test_memset();
	test_bzero();
	//test_strcatandchicken();
	//test_strcat();
	//get_number();
	//char	*b;
	//b = strdup("lalala");
	//ft_puts(b);



	//ft_puts(b);

	return (0);
}

void	test_isalpha() {
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

	if (error == 0)
		write(1, "OK\n", 3);
	else
		write(1,"FAIL\n", 5);
	return;
}
void	test_isalnum() {
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

	if (error == 0)
		write(1, "OK\n", 3);
	else
		write(1,"FAIL\n", 5);
	return;
}
void	test_isdigit() {
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

	if (error == 0)
		write(1, "OK\n", 3);
	else
		write(1,"FAIL\n", 5);
	return;
}
void	test_isprint() {
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

	if (error == 0)
		write(1, "OK\n", 3);
	else
		write(1,"FAIL\n", 5);
	return;
}
void	test_isascii() {
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

	if (error == 0)
		write(1, "OK\n", 3);
	else
		write(1,"FAIL\n", 5);
	return;
}
void	test_toupper() {
	int		i;
	int 	error;
	int		official;
	int		personal;

	write(1, "@ Test of ft_toupper() -> ", 26);

	i = 0;
	error = 0;

	while (i < 128) {
		official = toupper(i);
		personal = ft_toupper(i);
		if (personal != official)
			error++;
		i++;
	}

	if (error == 0)
		write(1, "OK\n", 3);
	else
		write(1,"FAIL\n", 5);
	return;
}
void	test_tolower() {
	int		i;
	int 	error;
	int		official;
	int		personal;

	write(1, "@ Test of ft_tolower() -> ", 26);

	i = 0;
	error = 0;

	while (i < 128) {
		official = tolower(i);
		personal = ft_tolower(i);
		if (personal != official)
			error++;
		i++;
	}

	if (error == 0)
		write(1, "OK\n", 3);
	else
		write(1,"FAIL\n", 5);
	return;
}

void	test_puts() {
	int		i;
	int 	error;
	int		official;
	int		personal;

	write(1, "@ Test of ft_puts() -> ", 23);

	official = puts("boum");
	personal = ft_puts("boum");

	if (personal != official)
		printf("\n[DIFF] %d vs %d\n", personal, official);

	return ;
}

void	test_strcatandchicken(){
	char	buf[9];
	char	buf2[9];
	char	*ret;
	char	*ret2;



	write(1, "@ Test of ft_strcat() -> \n", 26);
	bzero(buf, 9);
	bzero(buf2, 9);
		buf[0] = 'u';
	buf[1] = 'z';
	buf2[0] = 'u';
	buf2[1] = 'z';
	ret = ft_strcat(buf, "blom");
	ret2 = strcat(buf2, "blom");
	printf(">>>premier resultat pour blom:\n buf %s \n buf2 %s \n", buf, buf2);
	printf("les retours:\n ret %s \n ret2 %s \n", ret, ret2);

	ret = ft_strcat(buf, "zz");
	ret2 =strcat(buf2, "zz");
	printf(">>>resultat pour zz:\n buf %s \n buf2 %s \n", buf, buf2);
	printf("les retours:\n ret %s \n ret2 %s \n", ret, ret2);

}

void	test_strcat(){
	char	buf[9];

	write(1, "@ Test of ft_strcat() -> ", 25);
	bzero(buf, 9);
	strcat(buf, "");
	printf("SUPER RESULTAT:\n %s \n", buf);
	strcat(buf, "Bon");
	printf("SUPER RESULTAT:\n %s \n", buf);
	strcat(buf, "j");
	printf("SUPER RESULTAT:\n %s \n", buf);
	strcat(buf, "our.");
	printf("SUPER RESULTAT:\n %s \n", buf);
	strcat(buf, "");
	printf("SUPER RESULTAT:\n %s \n", buf);

}

void	test_strcpy(){
	char	buf[9];
	char	buf2[9];
	char	*ret;
	char	*ret2;

	write(1, "@ Test of ft_strcpy() -> ", 25);
	bzero(buf, 9);
	bzero(buf2, 9);
	ret = ft_strcpy(buf, "blom");
	ret2 = strcpy(buf2, "blom");
	printf("premier resultat pour blom:\n buf %s \n buf2 %s \n", buf, buf2);
	printf("premier resultat pour blom:\n ret %s \n ret2 %s \n", ret, ret2);

	ret = ft_strcpy(buf, "zz");
	ret2 =strcpy(buf2, "zz");
	printf("premier resultat pour blom:\n buf %s \n buf2 %s \n", buf, buf2);
	printf("premier resultat pour blom:\n ret %s \n ret2 %s \n", ret, ret2);


}


void	test_memset(){
	char	buf[9];
	char	*ret;
	char	buf2[9];
	char	*ret2;


	write(1, "@ Test of ft_strcpy() -> \n", 26);
	bzero(buf, 9);
	bzero(buf2, 9);
	ret2 = (char*)memset(buf2, 0, 9);
	ret = (char*)ft_memset(buf, 0, 9);
	printf("premier resultat pour blom:\n buf %s \t ret %s \n buf2 %s \t ret %s \n", buf, ret, buf2, ret2);

}

void	test_bzero(){
	char	buf[9];
	int		i;

	ft_bzero(buf, 9);
	for(i = 0; i < 9; i++)
	{
		printf("%d\t", buf[i]);
	}
}
