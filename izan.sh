#!/bin/bash

function calculadora() {
    if [ $deseo == 1 ]
        then
            suma=$((num1 + num2))
            echo "la suma de los números es $suma"
        fi
        if [ $deseo == 2 ]
        then
            resta=$((num2 - num1))
            resta2=$((num1 - num2))
            echo "la resta del primer número menos el segundo es $resta, y del segundo menos el primero $resta2"
        fi
        if [ $deseo == 3 ]
        then
            multiplicacion=$((num1 * num2))
            echo "la multiplicacion de ambos numeros es $multiplicacion"
        fi
        if [ $deseo == 4 ]
        then
            division=$((num1 / num2))
            division2=$((num2 / num1))
            echo "la división del primero entre el segundo es $division y la division del segundo entre el primero es $division2"
        fi
}

function cadenas(){
    if [ $cad1\>$cad2 ]
        then 
            echo "la cadena uno es mayor que la cadena dos"
        else
            echo "la cadena uno es menor que la cadena dos"
        fi
}

function propiedades() {
    if [ -n $cad1 ] 
        then
            echo "la cadena que has seleccionado no está vacia"
        else
            echo "la cadena que has seleccionado está vacia"
    fi
}

function nombre() {
    if [ -n "$nombreIntroducido" ]
        then
            nombre=$nombreIntroducido
            echo "el nuevo nombre es $nombre"
        else
            echo "el nombre no cambio, sigue siendo $nombre"
        fi
}

clear

echo "selecciona una letra para meterte en el siguiente menú"
echo "a) realizar una operación con dos números"
echo "b) comparar dos cadenas de texto"
echo "c) conocer las propiedades de un documento"
echo "d) insertar un nombre de usuario nuevo"
echo "e) salir del programa"

read -p "elección: " respuesta

while true
do
    case $respuesta in 
    a)
        read -p "selecciona un primer número: " num1
        read -p "selecciona un segundo número: " num2
        read -p "que deseas realizar: 1)sumar 2)restar 3)multiplicar 4)dividir ": deseo
        calculadora $deseo
        ;;
    b)
        read -p "selecciona la primera cadena de texto: " cad1
        read -p "selecciona la segund cadena de texto: " cad2
        cadenas $cad1 $cad2
        ;;
    c)
        read -p "selecciona la cadena que deseas analizar:" cad1
        propiedades $cad1
        ;;
    d)
        nombre=$(whoami)
        read -p "introduce un nuevo nombre de usuario:" nombreIntroducido
        nombre $nombreIntroducido
        ;;
    e)
        echo "programa finalizado"
        exit 0
        ;;
    *)
        echo "opción no válida"
        ;;
    
    esac 

    echo "selecciona una nueva letra para introducirte en un nuevo apartado del menú"
    echo "a) realizar una operación con dos números"
    echo "b) comparar dos cadenas de texto"
    echo "c) conocer las propiedades de un documento"
    echo "d) insertar un nombre de usuario nuevo"
    echo "e) salir del programa"

    read -p "nueva letra": respuesta
done