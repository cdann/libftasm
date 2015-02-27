/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   tests.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/24 17:29:52 by cdannapp          #+#    #+#             */
/*   Updated: 2015/02/27 17:27:31 by cdannapp         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "tests.h"

void 	partie1() {
	test_bzero(9);
	test_strcat();
	test_isalpha();
	test_isdigit();
	test_isalnum();
	test_isascii();
	test_isprint();
	test_toupper();
	test_tolower();
	test_puts("« On ne dit pas de mal devant celui qui n'éсοutе раs. » - Saint Augustin");
	test_puts(NULL);
	test_puts("");
}

void 	partie2() {
	test_strlen("« Réfléchis avec lenteur, mais exécute rapidеmеnt tеs déсisiοns. » - Isocrate");
	test_strlen("");
	//test_strlen(NULL);
	test_memset(0);
	test_memset(5);
	test_memset(9);
	test_memset(11);
	test_memcpy(10);
	test_memcpy(30);
	test_memcpy(60);
	test_isupper();
	test_islower();
	test_strdup("« Les gens bien portants sont des malades qui s'ignοrеnt. » - Jules Romains");
	test_strdup("");
	//test_strdup(NULL);
}

void	partieBonus() {
	test_strcpy("« On crie pour taire ce qui crie. » - Henri Michaux");
	test_strcpy("");
	//test_strcpy(NULL);
	test_pow();
	test_strnew();
	test_putstr_fd("« On crie pour taire ce qui crie. » - Henri Michaux", 1);
	test_putstr_fd("« Réfléchis avec lenteur, mais exécute rapidеmеnt tеs déсisiοns. » - Isocrate", 1);
	test_putstr_fd("« Les gens bien portants sont des malades qui s'ignοrеnt. » - Jules Romains", 1);
	test_putstr_fd(NULL, 1);
	test_putstr_fd("", 1);
}

void partie3() {
	int fd;

	fd = open("./test/files/cat.test", O_RDONLY);
	write(1, "\n\033[33m Read from cat.test \033[0m\n", 32);
	test_cat(fd);
	close(fd);
	write(1, "\n\033[33m Read from -42 file desc\033[0m\n", 35);
	test_cat(-42);
	write(1, "\n\033[33mType any words and press enter\033[0m\n", 41);
	test_cat(0);
}

int main(void)
{
	write(1, "\n\n\n\033[44;7m**** Partie 1 ****\033[0m\n\n", 35);
	partie1();
	write(1, "\n\n\033[44;7m**** Partie 2 ****\033[0m\n\n", 35);
	partie2();
	write(1, "\n\n\033[44;7m**** Partie Bonus ****\033[0m\n\n", 38);
	partieBonus();
	write(1, "\n\n\033[44;7m**** Partie 3 ****\033[0m\n\n", 34);
	partie3();
	return 0;
}
