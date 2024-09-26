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

# DESCARGA DE LA OVA
if [ -f "$OVA_LOCAL_PATH" ]
then
    OVA_MOD_DATE=$(date -r $OVA_LOCAL_PATH "+%d-%m-%Y")
    read -p "Ya se ha descargado una OVA en la ruta $OVA_LOCAL_PATH ($OVA_MOD_DATE). ¿Usar esta OVA? [S/n]: "
    REPLY=${REPLY:-S}
    [[ $REPLY =~ ^[Ss]$ ]] || curl -L $OVA_URL -o $OVA_LOCAL_PATH
else
    curl -L $OVA_URL -o $OVA_LOCAL_PATH
fi

# INSTALACIÓN DE LA OVA
if VBoxManage list vms | perl -nle 'print $1 if /"([^"]+)"/' | grep -E '^'"$VM_NAME"'$' > /dev/null
then
    read -p "Ya existe una máquina virtual con el nombre "$VM_NAME". Para continuar habrá que borrar esta máquina virtual. ¿Continuar? [S/n]: "
    REPLY=${REPLY:-S}
    if [[ $REPLY =~ ^[Ss]$ ]]
    then
        VBoxManage unregistervm $VM_NAME --delete && rm -fr "$HOME/VirtualBox VMs/$VM_NAME"
    else
        exit 0
    fi
fi
VBoxManage import $OVA_LOCAL_PATH --vsys=0 --vmname=$VM_NAME && rm -f $OVA_LOCAL_PATH
