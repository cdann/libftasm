# libftasm
_libftasm_ is an simple lib for a school project. ([42.fr](http://www.42.fr/))

## functions : ##

size_t	ft_strlen(const char *s);
int		ft_isalpha(int t);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
int		ft_isprint(int c);
int		ft_isascii(int c);
char		*ft_strdup(const char *str);
void		ft_bzero(void *s, size_t n);
void		*ft_memset(void *s, int c, size_t n);
char 	*ft_memcpy(void *st1, const void *st2, size_t n);
char		*ft_strcpy(char *s1, const char *s2);
int		ft_puts(const char *s);
void		ft_cat(unsigned int fd);
int		ft_toupper(int lt);
int		ft_tolower(int lt);
char 	*ft_strcat(char *s1, const char *s2);

int     ft_isupper(int c);
int     ft_islower(int c);

## make commands : ##

	- make
	- make test
	- make re
	- make clean
	- make fclean