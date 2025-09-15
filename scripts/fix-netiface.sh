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

netiface=$(ip addr | perl -lne 'print $1 if /^.*(enp\w+)\W*/' | uniq)
if [ -z "$netiface" ]; then
    echo "No se ha podido detectar la interfaz de red cableada de la máquina real."
    exit 1
fi
VBoxManage modifyvm $VM_NAME --nic1 bridged --bridgeadapter1 $netiface
