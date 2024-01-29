#!/bin/bash



#Función para imprimir o menú

imprimirMenu(){

	echo "OPCION - 1: Pero en que día estamos?"

	echo "OPCION - 2: Conta as letras dun arquivo"

	echo "OPCION - 3: Ver os permisos dun arquivo"

	echo "OPCION - 4: Abrir o Mestre"

	echo "OPCION - 5: Mostrar os arquivos do directorio actual"

	echo "OPCION - 6: Sair do menú"

}



#Función para borrar o texto da pantalla

borrarPantalla(){

	clear

}



#Funcion que indica o día actual

verData(){

	echo "Hoxe é o "$(date +%d)" de "$(date +%B)" do ano  "$(date +%Y)

}



#Conta cantas letras ten un arquivo seleccionado

contarLetras(){

	echo "Introduce o nome do arquivo"

	read arquivo

	echo "numero de palabras:"

	wc -c $arquivo

}



#Saber os permisos dun arquivo seleccionado

verPermiso(){

	echo "Introduce o nome do arquivo"

	read arquivo

	echo "O arquivo "$arquivo" ten os seguintes permisos"

	stat -c '%a' $arquivo

}



#Función para ver unha web

abrirMestre(){

	xdg-open "https://t.ly/8eYKG" >/dev/null 2>&1 

	sleep 5

}



#Listar os arquivos do directorio

listar(){

	ls

}



#-----MENU-----



while ((opcion<6))

do

imprimirMenu

echo "ELixe unha opción"

read opcion

	case $opcion in

		1)borrarPantalla

		verData

		;;

		2)borrarPantalla

		contarLetras

		;;

		3)borrarPantalla

		verPermiso

		;;

		4)borrarPantalla

		abrirMestre

		;;

		5)borrarPantalla

		listar

		;;

		6)borrarPantalla

		echo "Aburiño! :)"

		;;		

	esac

done