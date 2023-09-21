#!/bin/bash

# Muestra las máquinas virtuales "vivas" de PRO o DSW

CONTEXT=$1
case $CONTEXT in
	pro)
		IP_RANGE="10.103.1-26.20"
		;;
	dsw)
		IP_RANGE="10.109.1-25.20"
		;;
	*)
		echo "Contexto no válido o vacío!"
        exit
		;;
esac

nmap -sP -R $IP_RANGE | perl -nle 'print $1 if /Nmap scan report for (.*)/'
