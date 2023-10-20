#!/bin/bash

CONTEXT=$(curl -sL https://raw.githubusercontent.com/sdelquin/edubase/main/scripts/get-context.sh | bash)

case $CONTEXT in
    pro)
        if [ -e ~/pro ]
            then mv ~/pro ~/pro.bk
        fi
        cd $HOME
        mkdir -p pro/ut1/pop0
        mkdir -p pro/ut1/pop1
        mkdir -p pro/ut1/ejer/datos
        mkdir -p pro/ut1/ejer/numeros
        mkdir -p pro/ut1/ejer/cadenas

        mkdir -p pro/ut2/pop0
        mkdir -p pro/ut2/pop1
        mkdir -p pro/ut2/ejer/condicionales
        mkdir -p pro/ut2/ejer/bucles

        mkdir -p pro/ut3/pop1
        mkdir -p pro/ut3/pop2
        mkdir -p pro/ut3/ejer/listas
        mkdir -p pro/ut3/ejer/tuplas
        mkdir -p pro/ut3/ejer/diccionarios
        mkdir -p pro/ut3/ejer/conjuntos
        mkdir -p pro/ut3/ejer/ficheros

        mkdir -p pro/ut4/pop1
        mkdir -p pro/ut4/pop2
        mkdir -p pro/ut4/ejer/funciones
        mkdir -p pro/ut4/ejer/poo
        mkdir -p pro/ut4/ejer/excepciones
        mkdir -p pro/ut4/ejer/modulos

        mkdir -p pro/ut5/pop1
        mkdir -p pro/ut5/pop2
        mkdir -p pro/ut5/ejer/expreg
        mkdir -p pro/ut5/ejer/sqlite

        mkdir -p pro/te/te1
        mkdir -p pro/te/te2
        mkdir -p pro/te/te3
        ;;
    dsw)
        if [ -e ~/dsw ]
            then mv ~/dsw ~/dsw.bk
        fi
        cd $HOME
        mkdir -p dsw
        mkdir -p dsw/ut0
        mkdir -p dsw/ut1
        mkdir -p dsw/ut2
        mkdir -p dsw/ut3
        mkdir -p dsw/ut4
        mkdir -p dsw/ut5
        ;;
    *)
        echo "Contexto no válido o vacío!"
        exit
        ;;
esac

echo ✔ Se han creado correctamente las carpetas de trabajo en: $HOME/$CONTEXT
