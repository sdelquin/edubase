#!/bin/bash

ROOM=$(ip a | perl -lne 'print $1 if /10\.(10\d)\.\d+.\d+/')
case $ROOM in
    103)
        CONTEXT=dsw
        ;;
    109)
        CONTEXT=pro
        ;;
    *)
        echo "Aula/Contexto no válido o vacío!"
        exit
        ;;
esac

echo $CONTEXT
