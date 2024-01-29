#!/bin/bash

. externo

while true; do

    menu

    read -p "Selecciona unha operación (1-5): " opcion

    echo $limparPantalla

    case $opcion in
        1) 
            ingresarNumero

            sumar $num1 $num2
            ;;
        2) 
            ingresarNumero

            restar $num1 $num2
            ;;
        3) 
            ingresarNumero

            multiplicar $num1 $num2
            ;;
        4) 
            ingresarNumero

            dividir $num1 $num2
            ;;
        5) 
            echo $mensaxeDespedida
            exit 0
            ;;
        *) 
            echo "Opción non válida. Por favor, selecciona una opción válida."
            ;;
    esac

    read -p "Presiona Enter para continuar..."

    echo $limparPantalla

done