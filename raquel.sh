#!/bin/bash
limpiar_pantalla() {
    clear
}

mostrar_menu() {
    echo "	╭────────────♡────────────╮"
    echo "		   Menú:	   "
    echo "	╰────────────♡────────────╯"
    echo "1. Lista de archivos en el directorio actual"
    echo "2. Fecha y hora actuales"
    echo "3. Crear un archivo"
    echo "4. Mostrar el contenido de un archivo"
    echo "5. Saber si un archivo existe"
    echo "6. Salir"
}

listar_archivos() {
    echo "Archivos en el directorio actual:"
    ls
}

mostrar_fecha_hora() {
    echo "Fecha y hora actuales:"
    date
}

crear_archivo() {
    read -p "Ingresa el nombre de tu nuevo archivo: " nombre_archivo
    touch "$nombre_archivo"
    echo "¡Archivo nuevo creado!☺: $nombre_archivo"
}

mostrar_contenido() {
    read -p "Ingresa el nombre del archivo del que quieres mostrar el contenido: " nombre_archivo
    if [ -e "$nombre_archivo" ]; then
        echo "Contenido de $nombre_archivo:"
        cat "$nombre_archivo"
    else
        echo "El archivo no existe ☹"
    fi
}

archivo_existe() {
    read -p "Introduce el nombre del archivo que quieres buscar: " f
    if [ -e $f ]
    then
	if [ -s $f ]
	then
	echo "El archivo existe y no está vacío"
	else
	echo "El archivo existe pero está vacío"
	fi
    else
    echo "El archivo no existe ☹"
    fi
}
# Programa 
while true; do
    limpiar_pantalla
    mostrar_menu

    read -p "Selecciona una opción (1-5): " opcion

    case $opcion in
        1)
            listar_archivos
            ;;
        2)
            mostrar_fecha_hora
            ;;
        3)
            crear_archivo
            ;;
        4)
            mostrar_contenido
            ;;
      	5)
	    archivo_existe
	    ;;
	6)
	    echo "Saliendo del programa. ¡Chao!:)"
            exit 0
            ;;
	*)
            echo "Opción no válida. Por favor, selecciona una opción válida."
            ;;
    esac

    read -p "Presiona Enter para elegir otra opción del menú..."
done