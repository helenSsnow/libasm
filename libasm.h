#ifndef LIBASM_H
#define LIBASM_H

#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>
#include <fcntl.h>
# include <errno.h>

size_t              ft_strlen(const char *str);
int                 ft_strcmp(const char *s1, const char *s2);
char                *ft_strcpy(char *dst, const char *src);
char                *ft_strdup(const char *s1);
size_t              ft_write(int fd, void const *buf, size_t nbyte);
size_t              ft_read(int fd, void *buf, size_t nbyte);

#endif
