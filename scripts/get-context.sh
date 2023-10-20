#!/bin/bash

HOSTNAME=$(hostname)
ROOM=${HOSTNAME:1:3}
case $ROOM in
    103)
        CONTEXT=pro
        ;;
    109)
        CONTEXT=dsw
        ;;
    *)
        echo "Aula/Contexto no válido o vacío!"
        exit
        ;;
esac

echo $CONTEXT
