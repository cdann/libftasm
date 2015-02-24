/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   tests.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: matguig <matguig@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/24 17:29:52 by cdannapp          #+#    #+#             */
/*   Updated: 2015/02/24 20:45:32 by matguig          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "tests.h"

int main(void)
{

	test_isupper();
	test_islower();

	test_isalpha();
	test_isalnum();
	test_isdigit();
	test_isprint();
	test_isascii();

	test_toupper();
	test_tolower();

	test_memcpy(10);
	test_memcpy(30);
	//test_memcpy(60);

	test_puts("« On ne dit pas de mal devant celui qui n'éсοutе раs. » - Saint Augustin");
	test_puts(NULL);
	test_puts("");

	test_strdup("« Les gens bien portants sont des malades qui s'ignοrеnt. » - Jules Romains");
	test_strdup("");
	//test_strdup(NULL);

	test_strcat();

	test_memset(0);
	test_memset(5);
	test_memset(9);
	//test_memset2(10);

	test_bzero(9);

	test_strlen("« Réfléchis avec lenteur, mais exécute rapidеmеnt tеs déсisiοns. » - Isocrate");
	//test_strlen(NULL); // Comportement OK mais segfault
	test_strlen("");

	test_strcpy("« On crie pour taire ce qui crie. » - Henri Michaux");
	// test_strcpy(NULL); // Comportement OK mais segfault
	test_strcpy("blom");

	test_cat();
	return 0;
}
