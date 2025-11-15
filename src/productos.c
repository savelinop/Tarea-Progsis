#include "productos.h"

int cargarProductos(const char *ruta, Producto **outArr, size_t *outN) {
    *outArr = NULL;
    *outN = 0;

    FILE *f = fopen(ruta, "r");
    if (!f) {
        perror("producto.txt");
        return 0;
    }

    char line[MAX_LINE];
    size_t cap = 0;

    while (fgets(line, sizeof(line), f)) {
        chomp(line);
        if (!*line) continue;

        if (*outN == cap) {
            cap = cap ? cap * 2 : 16;
            Producto *tmp = realloc(*outArr, cap * sizeof(Producto));
            if (!tmp) {
                fclose(f);
                return 0;
            }
            *outArr = tmp;
        }

        Producto *p = &(*outArr)[*outN];

        char *tok = strtok(line, ",");
        if (!tok) continue;
        strncpy(p->codigo, tok, sizeof(p->codigo));
        p->codigo[sizeof(p->codigo) - 1] = '\0';

        tok = strtok(NULL, ",");
        if (!tok) continue;
        strncpy(p->nombre, tok, sizeof(p->nombre));
        p->nombre[sizeof(p->nombre) - 1] = '\0';

        tok = strtok(NULL, ",");
        if (!tok) continue;
        p->cantidad = atoi(tok);

        tok = strtok(NULL, ",");
        if (!tok) continue;
        p->costo = atof(tok);

        tok = strtok(NULL, ",");
        if (!tok) continue;
        p->precio = atof(tok);

        (*outN)++;
    }

    fclose(f);
    return 1;
}

int guardarProductos(const char *ruta, const Producto *arr, size_t n) {
    FILE *f = fopen(ruta, "w");
    if (!f) {
        perror("producto.txt(w)");
        return 0;
    }

    for (size_t i = 0; i < n; ++i) {
        fprintf(
            f,
            "%s,%s,%d,%.2f,%.2f\n",
            arr[i].codigo,
            arr[i].nombre,
            arr[i].cantidad,
            arr[i].costo,
            arr[i].precio
        );
    }

    fclose(f);
    return 1;
}

int buscarProductoPorCodigo(const Producto *arr, size_t n, const char *codigo) {
    for (size_t i = 0; i < n; ++i) {
        if (strcmp(arr[i].codigo, codigo) == 0) {
            return (int)i;
        }
    }
    return -1;
}
