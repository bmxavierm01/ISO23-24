#!/bin/bash
#Bruno M. Xavier Moutinho
#17/01/2024
#ENTREGABLE 1 AGENDA DE CONTACTOS

clear

opc=0

while [ $opc!=e ]; do

echo "a)Añadir una entrada"

echo "b)Buscar por dni"

echo "c)Ver la agenda completa"

echo "d)Eliminar todas las entradas de la agenda"

echo "e)Finalizar"

read -p "Seleccione una opcion: " opc

case $opc in


	a)

		read -p "Escriba su DNI:" dni


		if grep "^dni:" agenda.txt 2> /dev/null ;then

			echo "Dni ya registrado"

		else

			read -p "Nombre: " nombre

			read -p "Apellidos: " apellidos

			read -p "Localidad: " localidad


		echo "$dni:$nombre:$apellidos:$localidad" >> agenda.txt

		fi

		;;


	b)

		read -p "Escribe su DNI: " dni


		if grep "^$dni:" agenda.txt 2> /dev/null ;then

		nombre=$(grep "^$dni" agenda.txt | cut -d ":" -f 2)

		apellidos=$(grep "^$dni" agenda.txt | cut -d ":" -f 3)

		localidad=$(grep "^$dni" agenda.txt | cut -d ":" -f 4)


echo "La persona con DNI numero $dni es: $nombre $apellidos, y vive en $localidad"


		else

			echo "Error no existe el Dni indicado"

		fi

		;;

	c)

		texto=$(cat agenda.txt)


		if [ -s agenda.txt ];then

			echo "$texto"

		else

			echo "Agenda vacia"


		fi

		;;

	d)

		cat /dev/null > agenda.txt

		echo "archivo vaciado"

	;;

	e)

	echo "Has abandonado el menu"

	exit

	;;

	esac

	done

