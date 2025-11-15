#include "usuarios.h"

int cargarUsuarios(const char *ruta, Usuario **outArr, size_t *outN) {
    *outArr = NULL;
    *outN   = 0;

    FILE *f = fopen(ruta, "r");
    if (!f) {
        perror("vendedores.txt");
        return 0;
    }

    char line[MAX_LINE];
    size_t cap = 0;

    while (fgets(line, sizeof(line), f)) {
        chomp(line);
        if (!*line) continue;

        if (*outN == cap) {
            cap = cap ? cap * 2 : 8;
            Usuario *tmp = realloc(*outArr, cap * sizeof(Usuario));
            if (!tmp) {
                fclose(f);
                return 0;
            }
            *outArr = tmp;
        }

        Usuario *u = &(*outArr)[*outN];

        char *tok = strtok(line, ",");
        if (!tok) continue;
        strncpy(u->usuario, tok, sizeof(u->usuario));
        u->usuario[sizeof(u->usuario) - 1] = '\0';

        tok = strtok(NULL, ",");
        if (!tok) continue;
        strncpy(u->clave, tok, sizeof(u->clave));
        u->clave[sizeof(u->clave) - 1] = '\0';

        tok = strtok(NULL, ",");
        if (!tok) continue;
        strncpy(u->nombre, tok, sizeof(u->nombre));
        u->nombre[sizeof(u->nombre) - 1] = '\0';

        (*outN)++;
    }

    fclose(f);
    return 1;
}

int validarLogin(const Usuario *arr, size_t n, const char *user, const char *pass, const char **outNombre) {
    for (size_t i = 0; i < n; ++i) {
        if (strcmp(arr[i].usuario, user) == 0 &&
            strcmp(arr[i].clave, pass) == 0) {

            if (outNombre)
                *outNombre = arr[i].nombre;

            return 1;
        }
    }
    return 0;
}
