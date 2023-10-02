#!/bin/bash

CONTEXT=$1
case $CONTEXT in
    pro)
        OVA_BASE_URL=http://amy/daw/1daw/$CONTEXT/
        ;;
    dsw)
        OVA_BASE_URL=http://amy/daw/2daw/$CONTEXT/
        ;;
    *)
        echo "Contexto no válido o vacío!"
        exit
        ;;
esac

VM_NAME=$CONTEXT
OVA_NAME=daw.ova
OVA_URL=$OVA_BASE_URL/$OVA_NAME
OVA_TEMP_PATH=/tmp/$OVA_NAME

curl -L $OVA_URL -o $OVA_TEMP_PATH
VBoxManage import $OVA_TEMP_PATH --vsys=0 --vmname=$VM_NAME
rm $OVA_TEMP_PATH
