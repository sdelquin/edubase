#!/bin/bash

CONTEXT=$(curl -fsSL https://raw.githubusercontent.com/sdelquin/edubase/main/scripts/get-context.sh | bash)

case $CONTEXT in
    pro)
        OVA_BASE_URL=http://repo.amy/daw/1daw/pro
        ;;
    dsw)
        OVA_BASE_URL=http://repo.amy/daw/2daw/dsw
        ;;
    *)
        echo "Contexto no válido o vacío!"
        exit
        ;;
esac

VM_NAME=$CONTEXT
OVA_NAME=daw.ova
OVA_URL=$OVA_BASE_URL/$OVA_NAME
OVA_LOCAL_PATH=$HOME/Descargas/$OVA_NAME

if [ -f "$OVA_LOCAL_PATH" ]
then
    read -p "Ya se ha descargado una OVA en la ruta $OVA_LOCAL_PATH. ¿Usar esta OVA? [s/n] " -r
    echo
    [[ $REPLY =~ ^[Ss]$ ]] || curl -L $OVA_URL -o $OVA_LOCAL_PATH
else
    curl -L $OVA_URL -o $OVA_LOCAL_PATH
fi

VBoxManage import $OVA_LOCAL_PATH --vsys=0 --vmname=$VM_NAME && rm -f $OVA_LOCAL_PATH
