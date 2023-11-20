@echo off

REM Script en el que deberas pedir al usuario el nombre de un archivo y comprobar si existe....
REM
REM Autor: Bruno Moutinho
REM Fecha: 20-11-2023

:inicio

set/P nombre="Introduce el nombre de un archivo: "
if exist %nombre% (
echo "Ya existe"
goto inicio
) 
else( 
echo > %nombre%
)
