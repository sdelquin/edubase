#!/bin/bash

CONTEXT=$(curl -fsSL https://raw.githubusercontent.com/sdelquin/edubase/main/scripts/get-context.sh | bash)

declare -A macs
macs[a103pc01]=0800274A5829
macs[a103pc02]=0800274A5830
macs[a103pc03]=0800274A5831
macs[a103pc04]=0800274A5832
macs[a103pc05]=0800274A5833
macs[a103pc06]=0800274A5834
macs[a103pc07]=0800274A5835
macs[a103pc08]=0800274A5836
macs[a103pc09]=0800274A5837
macs[a103pc10]=0800274A5838
macs[a103pc11]=0800274A5839
macs[a103pc12]=0800274A5840
macs[a103pc13]=0800274A5841
macs[a103pc14]=0800274A5842
macs[a103pc15]=0800274A5843
macs[a103pc16]=0800274A5844
macs[a103pc17]=0800274A5845
macs[a103pc18]=0800274A5846
macs[a103pc19]=0800274A5847
macs[a103pc20]=0800274A5848
macs[a103pc21]=0800274A5849
macs[a103pc22]=0800274A5850
macs[a103pc23]=0800274A5851
macs[a103pc24]=0800274A5852
macs[a103pc25]=0800274A5853
macs[a103pc26]=0800274A5854
macs[a103pc27]=0800274A5855
macs[a103pc28]=0800274A5856
macs[a103pc29]=0800274A5857
macs[a103pc30]=0800274A5858

macs[a109pc01]=0610A7FA8820
macs[a109pc02]=0610A7FA8821
macs[a109pc03]=0610A7FA8822
macs[a109pc04]=0610A7FA8823
macs[a109pc05]=0610A7FA8824
macs[a109pc06]=0610A7FA8825
macs[a109pc07]=0610A7FA8826
macs[a109pc08]=0610A7FA8827
macs[a109pc09]=0610A7FA8828
macs[a109pc10]=0610A7FA8829
macs[a109pc11]=0610A7FA8830
macs[a109pc12]=0610A7FA8831
macs[a109pc13]=0610A7FA8832
macs[a109pc14]=0610A7FA8833
macs[a109pc15]=0610A7FA8834
macs[a109pc16]=0610A7FA8835
macs[a109pc17]=0610A7FA8836
macs[a109pc18]=0610A7FA8837
macs[a109pc19]=0610A7FA8838
macs[a109pc20]=0610A7FA8839
macs[a109pc21]=0610A7FA8840
macs[a109pc22]=0610A7FA8841
macs[a109pc23]=0610A7FA8842
macs[a109pc24]=0610A7FA8843
macs[a109pc25]=0610A7FA8844
macs[a109pc26]=0610A7FA8845
macs[a109pc27]=0610A7FA8846
macs[a109pc28]=0610A7FA8847
macs[a109pc29]=0610A7FA8848
macs[a109pc30]=0610A7FA8849


HOSTNAME=$(hostname)
MAC=${macs[$HOSTNAME]}
BRIDGEADAPTER=$(ip -br l | perl -nle 'print $1 if /(en[op][^\W]+)/')

VM_NAME=$CONTEXT
echo ====================================================================
echo ================ NO CAMBIAR SI ES DE NUEVA CREACIÓN ================
echo ====================================================================
read -p "Nombre de tu máquina virtual [$CONTEXT]: " VM_NAME
VM_NAME=${VM_NAME:-$CONTEXT}

VBoxManage modifyvm "$VM_NAME" --macaddress1=$MAC
VBoxManage modifyvm "$VM_NAME" --bridgeadapter1=$BRIDGEADAPTER

echo ✔ Se ha modificado correctamente la configuración de red para la máquina virtual: $VM_NAME
