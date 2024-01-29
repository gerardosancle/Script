#!/bin/bash

resp=x

while (( $resp != 6 ))
do

    echo "Menú, elixe unha opción: "
    echo "1) Crear un directorio"
    echo "2) Comprobar se un ficheiro existe"
    echo "3) Cambiar de directorio no que te atopas"
    echo "4) Abrir o editor de texto"
    echo "5) Borrar un directorio/arquivo"
    echo "6) Sair"
    read -p "" resp

    clear

    case $resp in
        1)
        echo "Escribe o nome do directorio que queres crear:"
        read -p "" directorio1
        d=mkdir
        clear

        $d $directorio1

        echo "O directorio creouse satisfactoriamente"
        read -p "Preme enter para volver ao menu"
        ;;


        2)
        echo "Escribe o nome do ficheiro (con extensión):"
        read -p "" ficheiro1
        clear
        
        if [ -e $ficheiro1 ]
        then
            echo "O ficheiro existe"
        else
            echo "O ficheiro non existe"
        fi

        read -p "Preme enter para volver ao menu"
        ;;


        3)
        echo "Contido deste directorio:"
        ls
        echo "Escribe o nome do directorio ao que quere ingresar"
        echo "(Tip: no caso de querer retroceder, introducir "..")"
        read -p "" ruta

        cd $ruta

        clear

        echo "Agora atópaste en:"
        pwd
        read -p "Preme enter para volver ao menu"
        ;;


        4)
        echo "Escribe o nome do arquivo que queres abrir/crear (con extensión):"
        read -p "" arquivo1
        n=nano
        clear

        $n $arquivo1

        read -p "Preme enter para volver ao menu"
        ;;


        5)
        echo "Que tipo de arquivo queres eliminar? (escribe o número)"
        echo "1) directorio"
        echo "2) arquivo"
        echo "3) cambiéi de opinión, quero volver ao menú"
        read -p "" opcion

        clear

        if [ $opcion == 1 ]
        then
            echo "Contido do directorio:"
            ls
            echo "Escribe o nome do directorio que queres eliminar (comproba que esté baleiro):"
            read -p "" directorio2
            clear

            rmdir $directorio2

            echo "O directorio eliminouse correctamente"
        fi

        if [ $opcion == 2 ]
        then
            echo "Contido do directorio:"
            ls
            echo "Escribe o nome do arquivo que queres eliminar:"
            read -p "" arquivo3
            
            clear

            $rm $arquivo3

            echo "O arquivo eliminouse correctamente"

        fi

        read -p "Preme enter para volver ao menu"
        ;;
        

        6)
        ;;


        *)
        echo "Non existe esa opción, elixe outra do menú"
    esac

    clear

done

cd /media/a23andreafr/a23andreafr_documentos/SistemasInformaticos/2do_tri/Scripting/FrescoAndrea_Menu

