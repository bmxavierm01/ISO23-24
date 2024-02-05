#!/bin/bash
#ENTREGABLE4:USERS.SH
#02/02/2024
#Autor:Bruno Miguel Xavier Moutinho

if [ $# == 1 ];then
	$1=1000
fi

if [ $# -gt 1 ];then
	echo "Has introducido más de un parámetro"
fi

if [ $# == 0 ];then
	valor=1000
	echo "El valor del parámetro será de 1000"
fi
echo "==============================================================="
echo ""
fecha=$( date +%d/%m/%y)
hora=$( date | cut -d " " -f 5 )
echo "Informe de usuarios el día $fecha a las $hora "	

IFS=":"
total=0

while read user x uid gid g home shell
do

	if [ $uid -ge $valor ];then

		echo $user - $uid	
		total=$(($total+1))		
		
fi
done < /etc/passwd
echo "Total: $total usuarios"
echo "==========================================================="


