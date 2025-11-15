#ifndef USUARIOS_H
#define USUARIOS_H

#include "common.h"

typedef struct {
    char usuario[64];
    char clave[64];
    char nombre[128];
} Usuario;

int cargarUsuarios(const char *ruta, Usuario **outArr, size_t *outN);
int validarLogin(const Usuario *arr, size_t n, const char *user, const char *pass, const char **outNombre);

#endif // USUARIOS_H
