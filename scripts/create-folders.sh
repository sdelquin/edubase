#!/bin/bash

CONTEXT=$(curl -fsSL https://raw.githubusercontent.com/sdelquin/edubase/main/scripts/get-context.sh | bash)

case $CONTEXT in
    pro)
        if [ -e ~/pro ]
        then
            mv ~/pro ~/pro.bk
        fi
        cd $HOME
        mkdir -p pro/ut2/datos
        mkdir -p pro/ut2/numeros
        mkdir -p pro/ut2/cadenas
        mkdir -p pro/ut3/condicionales
        mkdir -p pro/ut3/bucles
        mkdir -p pro/ut4/listas
        mkdir -p pro/ut4/tuplas
        mkdir -p pro/ut5/diccionarios
        mkdir -p pro/ut5/conjuntos
        mkdir -p pro/ut5/ficheros
        mkdir -p pro/ut6/funciones
        mkdir -p pro/ut7/objetosyclases
        mkdir -p pro/ut7/excepciones
        mkdir -p pro/ut7/modulos
        mkdir -p pro/ut8/expreg
        mkdir -p pro/ut8/sqlite
        ;;
    dsw)
        if [ -e ~/dsw ]
        then
            mv ~/dsw ~/dsw.bk
        fi
        cd $HOME
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
