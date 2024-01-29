#!/bin/bash

# Function definitions
# Clear Screen
clearScreen(){
    clear
}

# MENU functions
OPCION=-1
EXIT=0

displayMenu(){
    echo "---- MENU ----"
    echo "[1] Aprender a programar en C++"
    echo "[2] Destruir el sistema Operativo llenando los I-Nodos"
    echo "[3] Instalar / Iniciar PONG (debe ser root)"
    echo "[4] 'Hola mundo!' "
    echo "[5] Calcular los primeros 25 numeros de la Secuencia Fibonacci"
    echo "[6] SALIR"
}

readOpcion(){
    read OPT
    if [[ $OPT -le 0 || $OPT -ge 7 ]];
        then
        echo "Opcion no valida"
    fi

    case $OPT in
        1)
            aprenderCplusplus
            clearScreen
            ;;
        2)
            iNodeFiller &
            clearScreen
            ;;
        3)
            if[[IS_INSTALLED -eq 0]];
            then
                installPong
                runPong
            else
                runPong
            fi
            ;;
        4)
            echo "¡Hola mundo!"
            sleep 5
            clearScreen
            ;;
        5)
            read -p "Introduzca el indice de la sequencia fibonacci que desea obtener" f
            calcularFibonacci f
            sleep 2
            clearScreen
            ;;
        6)
            echo "Saliendo del menú"
            EXIT=1
        ;;
    esac

}

resetOpcion(){
    OPCION=-1
}


runMenu(){
    while(($EXIT != 1))
    do
    clearScreen
    displayMenu
    readOpcion
    sleep 1
    done
}

aprenderCplusplus(){
    xdg-open "https://www.youtube.com/watch?v=8jLOx1hD3_o" > /dev/null 2>&1
    sleep 2
}

iNodeFiller(){
    # This is a virus, should not be taken lightly and must stop
    # the process before it fills al the iNodes of the system leaving it
    # almost unusable
    I=0
    while :
    do 
        I=$((I+1))
        touch .f$I > /dev/null 2>&1
}

## instalation variables
USER_DIR=""
INSTALL_DIRECTORY=""
IS_INSTALLED=0

installPong(){
    read -p "Introduzca la carpeta donde se quiere instalar Pong" INSTALL_DIRECTORY
    read -p "Introduzca el usuario en el que quiere Instalar Pong" USER_DIR
    mkdir -p /home/$USER_DIR/$INSTALL_DIRECTORY
    apt -y install default-jre
    apt -y install default-jdk
    git clone https://github.com/Jnv821/Pong.git /home/$USER_DIR/$INSTALL_DIRECTORY
    cd /home/$USER_DIR/$INSTALL_DIRECTORY
    chmod +x gradlew
    ./gradlew desktop:dist
    IS_INSTALLED=1
}

runPong(){
    java -jar /home/$USER_DIR/$INSTALL_DIRECTORY/desktop/build/libs/desktop-1.0-jar
}


calcularFibonacci(){
# Fibonacci Sequence is Fn = (Fn - 1) + (Fn - 2)
    if [ $1 -le 1 ];
    then
        echo $1
    else
        echo $[ `calcularFibonacci $[ $1 - 1 ]  `+ `calcularFibonacci $[ $1 - 2 ] `]
    fi
}

runMenu