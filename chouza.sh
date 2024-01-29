#!/bin/bash

# Ejercicio Menu en Bash

limpiar_pantalla() {
    clear
}

mostrar_menu() {
    echo "Menú de opciones:"
    echo "1. Mostrar contenido de un directorio"
    echo "2. Crear un nuevo archivo"
    echo "3. Copiar un archivo a otro directorio"
    echo "4. Mostrar tamaño total del directorio"
    echo "5. Salir"
}

mostrar_contenido_directorio() {
    echo "Ingrese la ruta del directorio:"
    read directorio
    ls "$directorio"
}

crear_nuevo_archivo() {
    echo "Ingrese el nombre del nuevo archivo:"
    read nombre_archivo
    touch "$nombre_archivo"
    echo "Archivo creado: $nombre_archivo"
}

copiar_archivo() {
    echo "Ingrese el nombre del archivo a copiar:"
    read archivo_origen

    echo "Ingrese la ruta del directorio de destino:"
    read directorio_destino

    cp "$archivo_origen" "$directorio_destino"
    echo "Archivo copiado a $directorio_destino"
}

mostrar_tamano_directorio() {
    echo "Ingrese la ruta del directorio:"
    read directorio

    if [ -d "$directorio" ]; then
        tamano=$(du -sh "$directorio" | cut -f1)
        echo "El tamaño total del directorio $directorio es: $tamano"
    else
        echo "El directorio $directorio no existe."
    fi
}

while true; do
    limpiar_pantalla
    mostrar_menu

    echo "Ingrese su opción:"
    read opcion

    case $opcion in
        1)
            mostrar_contenido_directorio
            ;;
        2)
            crear_nuevo_archivo
            ;;
        3)
            copiar_archivo
            ;;
        4)
            mostrar_tamano_directorio
            ;;
        5)
            echo "Saliendo del programa. ¡Hasta luego!"
            exit 0
            ;;
        *)
            echo "Opción no válida. Por favor, elija una opción del menú."
            ;;
    esac

    echo "Presione Enter para continuar..."
    read
done
