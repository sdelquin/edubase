#!/bin/bash

CONTEXT=$(curl -fsSL https://raw.githubusercontent.com/sdelquin/edubase/main/scripts/get-context.sh | bash)

if [ "$CONTEXT" != "pro" ] && [ "$CONTEXT" != "dsw" ]
then
    echo "Contexto no válido o vacío!"
    exit
fi

VM_NAME=$CONTEXT
VBoxManage unregistervm $VM_NAME --delete
