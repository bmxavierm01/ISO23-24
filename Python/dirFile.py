#Entregable2:dirFile.py
#Autor: Bruno Miguel Xavier Moutinho
#Fecha:01/03/2024

import os
import shutil

#Listas para ficheros y directorios
ficheros = []
directorios = []

# Nombre del archivo
archivo_rutas = "notas.txt"

# Comprobar si el archivo existe
if not os.path.exists(archivo_rutas):
    print(f"El archivo {archivo_rutas} no existe.")
else:
    # Leer el archivo línea por línea
    with open(archivo_rutas, "r") as archivo:
        for linea in archivo:
            ruta = linea.strip()  # Eliminar espacios en blanco y saltos de línea
            # La ruta es un fichero o un directorio
            if os.path.isfile(ruta):
                ficheros.append(ruta)
            elif os.path.isdir(ruta):
                directorios.append(ruta)
            else:
                print(f"La ruta {ruta} no es ni un fichero ni un directorio.")
while True:
    print("OpcionA:Nombre de fichero y eliminarlo")
    print("OpcionB:Nombre de directorio e información")
    print("OpcionC:Nombre de fichero, destino y copiarlo en destino")
    print("OpcionD:Mostrar lista elegida")
    print("OpcionE:Salir")
    num=input("Elige una opción: ")

    match num:
        case "a":
            print(ficheros)
            arch1=input("Introduce la ruta del archivo: ")
            os.remove(arch1)
            ficheros.remove(arch1)

        case "b":
            print(directorios)
            dir1=input("Introduce la ruta del directorio: ")
            os.system("ls "+ dir1)

        case "c":
            arch2=input("Introduce el nombre de un archivo: ")
            ruta1=input("Introduce una ruta: ")
            shutil.copy(arch2,ruta1)

        case "d":
            opcion1=input("Introduce la lista que quieres ver: ")
            if opcion1 == ficheros:
                print(ficheros)
            else:
                print(directorios)

        case "e":
            exit()





	

