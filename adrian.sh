#!/bin/bash
clear
function miFuncionSuma() {
    suma=$(($1+$2));
    echo -e "A suma é: $suma\n";
}
function cambiarUsuario() {
    read -p "Novo nome: " nomeIntroducido

            if [ -n "$nomeIntroducido" ];
            then
                nome=$nomeIntroducido
                echo -e "O novo nome é $nome\n"
            else
                echo -e "O novo nome non cambiou, segue sendo $nome\n"
            fi
}

while true
do
    echo -e "a) Introducir os valores de dous numeros \nb) Sumar os valores dos dous numeros \nc) Comproba o teu nome de usuario e cambiao se o desexas\nd) Comproba o contido do teu directorio persoal e indica se son archivos ou directorios\ne) Sair"
    read -p "Elige unha das opcions: " opcion

    case $opcion in
        a)
            clear
            read -p "Valor do nun1: " nun1
            read -p "Valor do nun2: " nun2
            clear
            ;;
        b)  
            clear
            if [[ -n $nun1 && -n $nun2 ]];
            then
                miFuncionSuma $nun1 $nun2
            else
                echo -e "Debes introducir os valores antes de facer a suma.\n"
            fi
            ;;
        c)
            clear
            nome=$(whoami)
            echo "O teu nome de usuario é $nome"
            cambiarUsuario
            ;;
        d)
            clear
            for file in ~/.*
            do
                if [ -d "$file" ];
                then
                    echo "$file ----> DIRETORIO"
                elif [ -f "$file" ];
                then
                    echo "$file ----> ARQUIVO"
                fi
            done
            echo -e "\n"
            ;;
        e)

            echo "Saindo do programa."
            exit 0
            ;;
        *)
            echo "Opción non válida. Introduce unha das opcións válidas (a, b, c, d ou e)."
            ;;
    esac
done
