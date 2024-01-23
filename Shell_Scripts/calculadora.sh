#!/bin/bash
#Ejercicio calculadora.sh (Entregable 2)
#Autor:Bruno M. Xavier Moutinho
#23/01/2024
echo "Bruno M. Xavier Moutinho"

#Control del número de parámetros de entrada. Si no son dos, el programa termina. Si el fichero existe, el programa avisa y termina. 

if [ $# != 2 ];then
	echo "Numero de parámetros incorrecto"
	exit
fi

if [ -f $1 ];then
	echo "Fichero existente"
	exit
fi

for ((i=1; i<=$2; i++));do
read -p "Operacion : op1 op2 " op op1 op2

case $op in

	S)
		rs=$((op1 + op2))
		echo "$op1 + $op2 = $rs"
		echo $op $op1 $op2 >> $1

	;;

	R)
		rr=$((op1 - op2))
		echo "$op1 - $op2 = $rr"
		echo $op $op1 $op2 >> $1
	;;

	M)
		rmm=$((op1 * op2))
		echo "$op1 * $op2 = $rmm"
		echo $op $op1 $op2 >> $1
	;;

	D)
		rd=$((op1 / op2))
		echo "$op1 / $op2 = $rd"
		echo $op $op1 $op2 >> $1
	;;

	X)
		echo "Salimos del script"
		exit
	;;

	*)
		echo "Operacion incorrecta"
		exit
	;;
	esac
	done

	ruta=$(pwd)
	echo "La ruta del archivo $1 es $ruta/$1"
	cat $1
