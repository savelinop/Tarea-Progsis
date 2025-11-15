#ifndef PRODUCTOS_H
#define PRODUCTOS_H

#include "common.h"

typedef struct {
    char   codigo[64];
    char   nombre[128];
    int    cantidad;
    double costo;
    double precio;
} Producto;

int cargarProductos(const char *ruta, Producto **outArr, size_t *outN);
int guardarProductos(const char *ruta, const Producto *arr, size_t n);
int buscarProductoPorCodigo(const Producto *arr, size_t n, const char *codigo);

#endif // PRODUCTOS_H
