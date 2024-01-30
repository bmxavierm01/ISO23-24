#!/bin/bash
#Bruno Miguel Xavier Moutinho
#29/01/2024
#Realizar un script denominado fiveOrMore.sh.

#Control de n de parametros
if [ $# -ne 2 ]; then

	echo "Solo se pueden introducir 2 parámetros"
	exit
fi

direc=$1
arch=$2

#Ver si el directorio no existe
if [ ! -d $direc ]; then
	echo "El directorio $direc no existe"
	exit
fi

#Ver si el fichero existe
if [ -e $arch ]; then
        echo "El fichero $arch ya existe"
        exit
fi

#Ver si el directorio esta vacio
if [ -z "$(ls -A "$direc")" ]; then
	echo "El directorio $direc esta vacío"
	exit
fi

#Sale el nombre de autor por pantalla

echo "El nombre del autor es Bruno Miguel Xavier Moutinho"

#Identifica los ficheros .txt y que contengan mas de 5 lineas. 
#Mostrar nombre y escribir nombre en fichero


for file in $direc/*.txt; do

lineas=$(cat $file | wc -l)
	if [ -f $file ] && [ $lineas -ge 5 ]; then

	#Para mostrar en pantalla
	echo "Fichero encontrado: $file"

	#Para escribir el nombre en el fichero
	echo $file >> $arch

	#Parte 4 
	npalabras=$(cat $arch | wc -w)
	echo "El fichero original tiene $npalabras palabras" > $arch.q
	cat $arch >> $arch.q
	fi
done

#Mostrara el numero de ficheros identificados

numero=$(cat $arch | wc -l)
	echo $numero >> $arch

