/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   tests.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/24 17:29:52 by cdannapp          #+#    #+#             */
/*   Updated: 2015/02/26 17:11:23 by cdannapp         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "tests.h"

int main(void)
{
	write(1, "\n\n\n\033[44;7m**** Partie 1 ****\033[0m\n\n", 35);
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




	write(1, "\n\n\033[44;7m**** Partie 2 ****\033[0m\n\n", 35);
	test_strlen("« Réfléchis avec lenteur, mais exécute rapidеmеnt tеs déсisiοns. » - Isocrate");
	test_strlen("");
	//test_strlen(NULL);
	/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *\
	| size_t     strlen(const char *s);									|
	| Si s == NULL :													|
	| * Original : Segmentation fault									|
	| * Perso    : Segmentation fault									|
	\* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */


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
	/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *\
	| char	*strdup(const char *s1);									|
	| Si s1 == NULL :													|
	| * Original : Segmentation fault									|
	| * Perso    : Segmentation fault 									|
	\* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */




	write(1, "\n\n\033[44;7m**** Partie Bonus ****\033[0m\n\n", 38);

	test_strcpy("« On crie pour taire ce qui crie. » - Henri Michaux");
	test_strcpy("");
	//test_strcpy(NULL);
	/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *\
	| char		*strcpy(char *restrict dst, const char *restrict src);	|
	| Si s == NULL :													|
	| * Original : Segmentation fault									|
	| * Perso    : Segmentation fault									|
	\* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

	test_pow();
	test_strnew();

	test_putstr_fd("« On crie pour taire ce qui crie. » - Henri Michaux", 1);
	test_putstr_fd("« Réfléchis avec lenteur, mais exécute rapidеmеnt tеs déсisiοns. » - Isocrate", 1);
	test_putstr_fd("« Les gens bien portants sont des malades qui s'ignοrеnt. » - Jules Romains", 1);
	test_putstr_fd(NULL, 1);
	test_putstr_fd("", 1);

	write(1, "\n\n\033[44;7m**** Partie 3 ****\033[0m\n\n", 35);

	test_cat();
	return 0;
}
