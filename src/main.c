#include "common.h"
#include "usuarios.h"
#include "productos.h"

// Obtiene AAAA-MM-DD de hoy
static void hoy_iso(char out[11]) {
    time_t t = time(NULL);
    struct tm *lt = localtime(&t);
    snprintf(out, 11, "%04d-%02d-%02d", lt->tm_year + 1900, lt->tm_mon + 1, lt->tm_mday);
}

// Lee el último número de factura y devuelve (último + 1)
static int proximo_num_factura(const char *rutaVentas) {
    FILE *f = fopen(rutaVentas, "r");
    if (!f) return 1000;

    char line[MAX_LINE];
    int last = 999;

    while (fgets(line, sizeof(line), f)) {
        chomp(line);
        if (!*line) continue;

        char *dup = strdup(line);
        char *tok = strtok(dup, ",");

        if (tok) {
            int num = atoi(tok);
            if (num > last) last = num;
        }
        free(dup);
    }

    fclose(f);
    return last + 1;
}

typedef struct {
    int idxProducto;
    int cantidad;
} LineaVenta;

int main(void) {

    const char *RUTA_VENDEDORES = "data/vendedores.txt";
    const char *RUTA_PRODUCTOS  = "data/producto.txt";
    const char *RUTA_VENTAS     = "data/ventas.txt";

    // --------- LOGIN ---------
    printf("\n**********************************************\n");
    printf("           SISTEMA DE VENTAS - POS\n");
    printf("**********************************************\n\n");

    Usuario *users = NULL;
    size_t nUsers = 0;

    if (!cargarUsuarios(RUTA_VENDEDORES, &users, &nUsers)) {
        fprintf(stderr, "ERROR: No se pudo abrir vendedores.txt\n");
        return 1;
    }

    int intentos = 0, ok = 0;
    const int MAX_INTENTOS = 3;
    const char *nombreVendedor = NULL;

    while (intentos < MAX_INTENTOS) {
        char u[128], p[128];

        printf("-> Usuario: ");
        if (!fgets(u, sizeof(u), stdin)) return 1;
        chomp(u);

        printf("-> Clave  : ");
        if (!fgets(p, sizeof(p), stdin)) return 1;
        chomp(p);

        if (validarLogin(users, nUsers, u, p, &nombreVendedor)) {
            ok = 1;
            break;
        }

        printf("\n  *** Credenciales incorrectas ***\n\n");
        intentos++;
    }

    free(users);

    if (!ok) {
        printf("\n*** Maximo de intentos alcanzado. Saliendo... ***\n");
        return 0;
    }

    printf("\nBienvenido, %s\n\n", nombreVendedor);

    // --------- CARGA PRODUCTOS ---------
    Producto *prods = NULL;
    size_t nProds = 0;

    if (!cargarProductos(RUTA_PRODUCTOS, &prods, &nProds)) {
        fprintf(stderr, "ERROR: No se pudo cargar producto.txt\n");
        return 1;
    }

    // --------- ENCABEZADO DE FACTURA ---------
    int numFactura = proximo_num_factura(RUTA_VENTAS);
    char fecha[11];
    hoy_iso(fecha);

    printf("************ NUEVA VENTA ************\n");
    printf("Fecha   : %s\n", fecha);
    printf("Factura : %d\n", numFactura);
    printf("**************************************\n\n");

    // --------- CAPTURA DE PRODUCTOS ---------
    LineaVenta *lineas = NULL;
    size_t nLin = 0, capLin = 0;

    while (1) {

        char codigo[128];
        printf("Codigo de producto (ENTER para terminar): ");

        if (!fgets(codigo, sizeof(codigo), stdin)) break;
        chomp(codigo);
        if (!*codigo) break;

        int idx = buscarProductoPorCodigo(prods, nProds, codigo);
        if (idx < 0) {
            printf("  -> ERROR: No existe el codigo\n\n");
            continue;
        }

        // --------- MOSTRAR PRODUCTO TIPO POS ---------
        Producto *prod = &prods[idx];
        printf("\n----------------------------------------------\n");
        printf(" PRODUCTO ENCONTRADO\n");
        printf("----------------------------------------------\n");
        printf(" Codigo : %s\n", prod->codigo);
        printf(" Nombre : %s\n", prod->nombre);
        printf(" Stock  : %d\n", prod->cantidad);
        printf(" Precio : $%.2f\n", prod->precio);
        printf("----------------------------------------------\n\n");

        printf("Cantidad a vender: ");
        char buf[64];
        if (!fgets(buf, sizeof(buf), stdin)) break;

        int cant = atoi(buf);

        if (cant <= 0) {
            printf("  -> Cantidad invalida.\n\n");
            continue;
        }

        if (cant > prod->cantidad) {
            printf("  -> No hay suficiente inventario.\n\n");
            continue;
        }

        if (nLin == capLin) {
            capLin = capLin ? capLin * 2 : 8;
            LineaVenta *tmp = realloc(lineas, capLin * sizeof(LineaVenta));
            if (!tmp) {
                printf("ERROR: Memoria insuficiente.\n");
                free(prods);
                return 1;
            }
            lineas = tmp;
        }

        lineas[nLin++] = (LineaVenta){ idx, cant };
        printf("  ✔ Producto agregado\n\n");
    }

    if (nLin == 0) {
        printf("\n*** No se registro ningun producto. Saliendo... ***\n");
        free(prods);
        return 0;
    }

    // --------- DETALLE TIPO POS ---------
    printf("\n=============== DETALLE DE VENTA ===============\n");
    printf("%-20s %-10s %-6s %-10s %-10s\n",
           "Producto", "Codigo", "Cant", "P.Unit", "Subtotal");
    printf("--------------------------------------------------------------\n");

    double total = 0.0;

    for (size_t i = 0; i < nLin; ++i) {
        Producto *p = &prods[lineas[i].idxProducto];
        double sub = p->precio * lineas[i].cantidad;
        total += sub;

        printf("%-20s %-10s %-6d $%-9.2f $%-9.2f\n",
               p->nombre, p->codigo, lineas[i].cantidad, p->precio, sub);
    }

    printf("--------------------------------------------------------------\n");
    printf("TOTAL: $%.2f\n", total);
    printf("==============================================================\n\n");

    // --------- CONFIRMACIÓN ---------
    printf("¿Confirmar venta? (s/n): ");
    char resp[8];
    if (!fgets(resp, sizeof(resp), stdin) || (resp[0] != 's' && resp[0] != 'S')) {
        printf("\n*** Venta cancelada ***\n");
        free(prods);
        free(lineas);
        return 0;
    }

    // --------- ACTUALIZAR INVENTARIO ---------
    for (size_t i = 0; i < nLin; ++i) {
        prods[lineas[i].idxProducto].cantidad -= lineas[i].cantidad;
    }
    guardarProductos(RUTA_PRODUCTOS, prods, nProds);

    // --------- REGISTRAR EN ventas.txt ---------
    FILE *fv = fopen(RUTA_VENTAS, "a");
    if (!fv) {
        printf("ERROR al abrir ventas.txt\n");
        free(prods);
        free(lineas);
        return 1;
    }

    for (size_t i = 0; i < nLin; ++i) {
        Producto *p = &prods[lineas[i].idxProducto];
        fprintf(fv, "%d,%s,%s,%d,%.2f,%.2f,%s\n",
                numFactura, p->codigo, p->nombre,
                lineas[i].cantidad, p->costo, p->precio, fecha);
    }
    fclose(fv);

    printf("\n************* VENTA REGISTRADA *************\n");
    printf("Gracias por usar el sistema :)\n");
    printf("********************************************\n\n");

    free(prods);
    free(lineas);
    return 0;
}
