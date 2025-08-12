#!/bin/bash

HOSTNAME=$(hostname)
ROOM=${HOSTNAME:1:3}
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
