#!/bin/bash
clear
function crearBaleiros(){
read -p "Introducir nombre del archivo: " nombre
	 touch "$nombre"

}
function crearDirectorio(){
read -p "Introducir nombre del directorio: " nombre
	mkdir "$nombre"
}
function eliminar(){
echo "1) Eliminar repositorio"
echo "2) ELiminar archivo"
read opcion
read -p "introzuca nombre: " nombre
	if [[ "$opcion" -eq 1 ]]
	then
		rmdir "$nombre"
	elif [[ "$opcion" -eq 2 ]]
	then
		rm "$nombre"
	fi
}
function edit(){
read -p "Introduzca nombre del fichero que desea editar: " fich
	nano "$fich"
}
until ((option == 5))
	do
	echo "1) Crear un archivo baleiro"
	echo "2) Crear directorio"
	echo "3) Eliminar directorio o archivo"
	echo "4) Editar ficheros"
	echo "5) Saida"

		read option
		case $option in
			1)
				crearBaleiros
			;;
			2)
				crearDirectorio
			;;
			3)
				eliminar
			;;
			4)
				edit
			;;
			5)
			echo "Chao Chao  Chao"
			;;
			*)
			;;
		esac
	done
