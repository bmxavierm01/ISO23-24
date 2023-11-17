@echo off

REM Script para crear menu con 5 opciones
REM
REM Autor: Bruno Moutinho
REM Fecha: 15-11-2023

set/P numero="Introducir numero para ir al menu: "

if %numero%==1 goto 1
if %numero%==2 goto 2
if %numero%==3 goto 3
if %numero%==4 goto 4
if %numero%==5 goto 5

:1
set/P="Introducir el nombre de archivo: "
type nul > %nombre%
exit

:2
@echo on
tree %USERPROFILE%
pause 
exit

:3
dir/O *.txt
exit

:4
mkdir alfredoff marinapg ramonam
exit

:5
xcopy %USERPROFILE% C:\Copia /E
exit





