SHELL := cmd
.SHELLFLAGS := /Q /C

CC      := gcc
CFLAGS  := -Wall -Wextra -std=c11 -O2 -g

ASM_DIR := asm
OBJ_DIR := obj
SRC_DIR := src

.PHONY: arch sistema_ventas dump_main prepare clean

prepare:
	@if not exist "$(ASM_DIR)" mkdir "$(ASM_DIR)"
	@if not exist "$(OBJ_DIR)" mkdir "$(OBJ_DIR)"

# 1) GENERAR ARCHIVOS .s
arch: prepare
	$(CC) -S $(SRC_DIR)\main.c     -o $(ASM_DIR)\main.s
	$(CC) -S $(SRC_DIR)\usuarios.c -o $(ASM_DIR)\usuarios.s
	$(CC) -S $(SRC_DIR)\productos.c -o $(ASM_DIR)\productos.s
	@echo *** Archivos .s generados en asm\ ***

# 2) GENERAR ARCHIVOS .o + EJECUTABLE
sistema_ventas: prepare
	$(CC) -c $(SRC_DIR)\main.c     -o $(OBJ_DIR)\main.o
	$(CC) -c $(SRC_DIR)\usuarios.c -o $(OBJ_DIR)\usuarios.o
	$(CC) -c $(SRC_DIR)\productos.c -o $(OBJ_DIR)\productos.o
	$(CC) $(OBJ_DIR)\main.o $(OBJ_DIR)\usuarios.o $(OBJ_DIR)\productos.o -o sistema_ventas.exe
	@echo *** Ejecutable generado: sistema_ventas.exe ***

# 3) GENERAR DUMP DEL main.o
dump_main: prepare
	@if not exist "$(OBJ_DIR)\main.o" echo ERROR: primero ejecuta 'mingw32-make sistema_ventas' & exit /b 1
	objdump -d -S $(OBJ_DIR)\main.o > $(ASM_DIR)\main.dump.s
	@echo Archivo generado en asm\main.dump.s

# 4) LIMPIAR TODO
clean:
	@if exist "$(ASM_DIR)" rmdir /S /Q "$(ASM_DIR)"
	@if exist "$(OBJ_DIR)" rmdir /S /Q "$(OBJ_DIR)"
	@if exist "sistema_ventas.exe" del /Q sistema_ventas.exe
