#!/bin/bash

CONTEXT=$(curl -fsSL https://raw.githubusercontent.com/sdelquin/edubase/main/scripts/get-context.sh | bash)

case $CONTEXT in
    pro)
        mkdir -p ~/pro/ut2/datos && touch ~/pro/ut2/datos/.placeholder
        mkdir -p ~/pro/ut2/numeros && touch ~/pro/ut2/numeros/.placeholder
        mkdir -p ~/pro/ut2/cadenas && touch ~/pro/ut2/cadenas/.placeholder
        mkdir -p ~/pro/ut3/condicionales && touch ~/pro/ut3/condicionales/.placeholder
        mkdir -p ~/pro/ut3/bucles && touch ~/pro/ut3/bucles/.placeholder
        mkdir -p ~/pro/ut4/listas && touch ~/pro/ut4/listas/.placeholder
        mkdir -p ~/pro/ut4/tuplas && touch ~/pro/ut4/tuplas/.placeholder
        mkdir -p ~/pro/ut5/diccionarios && touch ~/pro/ut5/diccionarios/.placeholder
        mkdir -p ~/pro/ut5/conjuntos && touch ~/pro/ut5/conjuntos/.placeholder
        mkdir -p ~/pro/ut5/ficheros && touch ~/pro/ut5/ficheros/.placeholder
        mkdir -p ~/pro/ut6/funciones && touch ~/pro/ut6/funciones/.placeholder
        mkdir -p ~/pro/ut7/objetosyclases && touch ~/pro/ut7/objetosyclases/.placeholder
        mkdir -p ~/pro/ut7/excepciones && touch ~/pro/ut7/excepciones/.placeholder
        mkdir -p ~/pro/ut7/modulos && touch ~/pro/ut7/modulos/.placeholder
        mkdir -p ~/pro/ut8/expreg && touch ~/pro/ut8/expreg/.placeholder
        mkdir -p ~/pro/ut8/sqlite && touch ~/pro/ut8/sqlite/.placeholder
        ;;
    dsw)
        mkdir -p ~/dsw/ut1 && touch ~/dsw/ut1/.placeholder
        mkdir -p ~/dsw/ut2 && touch ~/dsw/ut2/.placeholder
        mkdir -p ~/dsw/ut3 && touch ~/dsw/ut3/.placeholder
        mkdir -p ~/dsw/ut4 && touch ~/dsw/ut4/.placeholder
        mkdir -p ~/dsw/ut5 && touch ~/dsw/ut5/.placeholder
        ;;
    *)
        echo "Contexto no válido o vacío!"
        exit
        ;;
esac

echo ✔ Se han creado correctamente las carpetas de trabajo en: $HOME/$CONTEXT
