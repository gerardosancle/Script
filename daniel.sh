#!/bin/bash 

i=0

function crear() {
    read -p "Introduce el nombre del directorio " NDirectorioCrear
    mkdir $NDirectorioCrear
    cd $NDirectorioCrear
    read -p "Que nombre quieres que tenga el .txt? " NArchivoCrear
    touch $NArchivoCrear
    cd /home/ladmin/scripts
}

function modificar(){
    read -p "Como se llama el directorio donde esta el .txt" NDirectorioModificar
    cd $NDirectorioModificar
    read -p "Como se llama el archivo que quieres modificar" NArchivoModificar
    nano $NArchivoModificar
    cd /home/ladmin/scripts
}

function vaciar(){
    read -p "Como se llama el directorio que quieres vaciar?" NDirectorioVaciar
    cd $NDirectorioVaciar
    read -p "Como se llama el archivo que quieres borrar?" NArchivoVaciar
    rm $NArchivoVaciar
    cd /home/ladmin/scripts
}

function borrar (){
    read -p "Como se llama el directorio que quieres borrar?" NDirectorioBorrar
    rmdir $NDirectorioBorrar
}

while (( i <= 0 ))
do
    clear
    echo 'Hola, Que accion quieres realizar (1-5)'
    echo '(1) Crear un directorio junto a un archivo .txt vacio'
    echo '(2) Modificar un .txt'
    echo '(3) Vaciar un directorio'
    echo '(4) Borrar un directorio (tiene que estar vacio)'
    echo '(5) Terminar el programa'
    read variable

    case $variable in
    1)
        crear
    ;;
    2)
        modificar
    ;;
    3)
        vaciar
    ;;
    4)
        borrar
    ;;
    5)
        echo 'FIN DEL PROGRAMA'
        i=1
    ;;
    *)
    echo 'Valor introducido incorrecto' 
    esac
done