#!/bin/bash
limpiar_pantalla(){
    clear

}
amosar_menu(){
    echo "1. Erizos"
    echo "2. Presentarse"
    echo "3. Accion 3"
    echo "4. Accion 4"
    echo "5. Accion 5"
    echo "0. Sair"
}

condicion_saida(){

    echo "Presioona 0 para sair do programa"
}

accion1() {
    echo "Los erizos son animales muy pequeños"

}
accion2() {
    echo “como te chamas?”
read nome
echo “Que tal, $nome”

}
accion3() {
    echo "Realizando accion 3"

}
accion4() {
    echo "Realizando accion 4"

}
accion5() {
    echo "Realizando accion 5"

}

while true; do
limpiar_pantalla
amosar_menu
condicion_saida
read -p "Escolle unha opcion: " opcion

case $opcion in

1) accion1 ;;
2) accion2 ;;
3) accion3 ;;
4) accion4 ;;
5) accion5 ;;
0)
    limpiar_pantalla
    echo "Saindo do progra."
    exit 0
    ;;
*) 
    echo "Opcion non valida.Escolle outra opcion"
    ;;
esac
    read -p "Presiona Enter para continuar"
done

