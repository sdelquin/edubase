#!/bin/bash

CONTEXT=$(curl -fsSL https://raw.githubusercontent.com/sdelquin/edubase/main/scripts/get-context.sh | bash)

if [ "$CONTEXT" != "pro" ] && [ "$CONTEXT" != "dsw" ]
then
    echo "Contexto no válido o vacío!"
    exit
fi

VM_NAME=$CONTEXT

read -p "Se va a borrar COMPLETAMENTE la máquina virtual "$VM_NAME". ¿Continuar? [s/n] " -r
echo
if [[ $REPLY =~ ^[Ss]$ ]]
then
    VBoxManage unregistervm $VM_NAME --delete
    rm -fr "$HOME/VirtualBox VMs/$VM_NAME"
fi
