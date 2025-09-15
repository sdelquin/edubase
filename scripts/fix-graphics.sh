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

VBoxManage modifyvm $VM_NAME --graphicscontroller vmsvga
