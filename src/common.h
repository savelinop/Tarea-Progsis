#ifndef COMMON_H
#define COMMON_H

#define _CRT_SECURE_NO_WARNINGS

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#define MAX_LINE 512

// Utilidad: elimina el salto de línea final si existe
static inline void chomp(char *s) {
    size_t n = s ? strlen(s) : 0;
    if (n && (s[n - 1] == '\n' || s[n - 1] == '\r')) {
        s[n - 1] = '\0';
    }
}

#endif // COMMON_H
