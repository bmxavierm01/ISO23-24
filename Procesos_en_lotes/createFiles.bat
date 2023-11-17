@echo off

REM Script para crear menu con 2 opciones si se pulsa1, archivo txt y si es 2 uno bat.
REM
REM Autor: Bruno Moutinho
REM Fecha: 15-11-2023

echo Pulsa 1 para crear un archivo .txt o pulsa 2 para crear un archivo .bat
set/P numero=
set/P ruta= "direccion de ruta: "
set/P nombre= "nombre de archivo: "


if %numero%==1 type nul>%ruta%/%name%.txt
if %numero%==2 type nul>%ruta%/%name%.bat
 

