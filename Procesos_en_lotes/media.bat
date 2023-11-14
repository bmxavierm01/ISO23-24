@echo off

REM Script de hacer la media de 3 variables
REM
REM Autor: Bruno Moutinho
REM Fecha: 14-11-2023

set N1= %1
set N2= %2
set N3= %3

set/A sumamedia = %N1% + %N2% + %N3%

set/A resultadomedia = %sumamedia%/3

echo El resultado de la media es %resultadomedia%
