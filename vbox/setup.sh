#!/bin/bash

CONTEXT=$1

declare -A hostnames

hostnames['08:00:27:4A:58:29']=a103pc01$CONTEXT
hostnames['08:00:27:4A:58:30']=a103pc02$CONTEXT
hostnames['08:00:27:4A:58:31']=a103pc03$CONTEXT
hostnames['08:00:27:4A:58:32']=a103pc04$CONTEXT
hostnames['08:00:27:4A:58:33']=a103pc05$CONTEXT
hostnames['08:00:27:4A:58:34']=a103pc06$CONTEXT
hostnames['08:00:27:4A:58:35']=a103pc07$CONTEXT
hostnames['08:00:27:4A:58:36']=a103pc08$CONTEXT
hostnames['08:00:27:4A:58:37']=a103pc09$CONTEXT
hostnames['08:00:27:4A:58:38']=a103pc10$CONTEXT
hostnames['08:00:27:4A:58:39']=a103pc11$CONTEXT
hostnames['08:00:27:4A:58:40']=a103pc12$CONTEXT
hostnames['08:00:27:4A:58:41']=a103pc13$CONTEXT
hostnames['08:00:27:4A:58:42']=a103pc14$CONTEXT
hostnames['08:00:27:4A:58:43']=a103pc15$CONTEXT
hostnames['08:00:27:4A:58:44']=a103pc16$CONTEXT
hostnames['08:00:27:4A:58:45']=a103pc17$CONTEXT
hostnames['08:00:27:4A:58:46']=a103pc18$CONTEXT
hostnames['08:00:27:4A:58:47']=a103pc19$CONTEXT
hostnames['08:00:27:4A:58:48']=a103pc20$CONTEXT
hostnames['08:00:27:4A:58:49']=a103pc21$CONTEXT
hostnames['08:00:27:4A:58:50']=a103pc22$CONTEXT
hostnames['08:00:27:4A:58:51']=a103pc23$CONTEXT
hostnames['08:00:27:4A:58:52']=a103pc24$CONTEXT
hostnames['08:00:27:4A:58:53']=a103pc25$CONTEXT
hostnames['08:00:27:4A:58:54']=a103pc26$CONTEXT
hostnames['08:00:27:4A:58:55']=a103pc27$CONTEXT
hostnames['08:00:27:4A:58:56']=a103pc28$CONTEXT
hostnames['08:00:27:4A:58:57']=a103pc29$CONTEXT
hostnames['08:00:27:4A:58:58']=a103pc30$CONTEXT

hostnames['06:10:A7:FA:88:20']=a109pc01$CONTEXT
hostnames['06:10:A7:FA:88:21']=a109pc02$CONTEXT
hostnames['06:10:A7:FA:88:22']=a109pc03$CONTEXT
hostnames['06:10:A7:FA:88:23']=a109pc04$CONTEXT
hostnames['06:10:A7:FA:88:24']=a109pc05$CONTEXT
hostnames['06:10:A7:FA:88:25']=a109pc06$CONTEXT
hostnames['06:10:A7:FA:88:26']=a109pc07$CONTEXT
hostnames['06:10:A7:FA:88:27']=a109pc08$CONTEXT
hostnames['06:10:A7:FA:88:28']=a109pc09$CONTEXT
hostnames['06:10:A7:FA:88:29']=a109pc10$CONTEXT
hostnames['06:10:A7:FA:88:30']=a109pc11$CONTEXT
hostnames['06:10:A7:FA:88:31']=a109pc12$CONTEXT
hostnames['06:10:A7:FA:88:32']=a109pc13$CONTEXT
hostnames['06:10:A7:FA:88:33']=a109pc14$CONTEXT
hostnames['06:10:A7:FA:88:34']=a109pc15$CONTEXT
hostnames['06:10:A7:FA:88:35']=a109pc16$CONTEXT
hostnames['06:10:A7:FA:88:36']=a109pc17$CONTEXT
hostnames['06:10:A7:FA:88:37']=a109pc18$CONTEXT
hostnames['06:10:A7:FA:88:38']=a109pc19$CONTEXT
hostnames['06:10:A7:FA:88:39']=a109pc20$CONTEXT
hostnames['06:10:A7:FA:88:40']=a109pc21$CONTEXT
hostnames['06:10:A7:FA:88:41']=a109pc22$CONTEXT
hostnames['06:10:A7:FA:88:42']=a109pc23$CONTEXT
hostnames['06:10:A7:FA:88:43']=a109pc24$CONTEXT
hostnames['06:10:A7:FA:88:44']=a109pc25$CONTEXT
hostnames['06:10:A7:FA:88:45']=a109pc26$CONTEXT
hostnames['06:10:A7:FA:88:46']=a109pc27$CONTEXT
hostnames['06:10:A7:FA:88:47']=a109pc28$CONTEXT
hostnames['06:10:A7:FA:88:48']=a109pc29$CONTEXT
hostnames['06:10:A7:FA:88:49']=a109pc30$CONTEXT

MAC=$(ip -br l | perl -nle 'print $1 if /^enp.*UP\s+((?:[0-9a-f]{2}:?)+)/')
MAC=${MAC^^}

OLD_HOSTNAME=$(hostname)
NEW_HOSTNAME=${hostnames[$MAC]}

sudo hostnamectl set-hostname $NEW_HOSTNAME
sudo sed -i "s/$OLD_HOSTNAME/$NEW_HOSTNAME/g" /etc/hosts
clear

echo ✔ Se ha modificado correctamente el nombre de la máquina: $NEW_HOSTNAME
echo '  (lo verás al abrir una nueva terminal)'

case $CONTEXT in
    pro)
        if [ -e ~/pro ]
            then mv ~/pro ~/pro.bk
        fi
        cd $HOME
        mkdir -p pro/ut1/pop0
        mkdir -p pro/ut1/pop1
        mkdir -p pro/ut1/ejer/datos
        mkdir -p pro/ut1/ejer/numeros
        mkdir -p pro/ut1/ejer/cadenas

        mkdir -p pro/ut2/pop0
        mkdir -p pro/ut2/pop1
        mkdir -p pro/ut2/ejer/condicionales
        mkdir -p pro/ut2/ejer/bucles

        mkdir -p pro/ut3/pop1
        mkdir -p pro/ut3/pop2
        mkdir -p pro/ut3/ejer/listas
        mkdir -p pro/ut3/ejer/tuplas
        mkdir -p pro/ut3/ejer/diccionarios
        mkdir -p pro/ut3/ejer/conjuntos
        mkdir -p pro/ut3/ejer/ficheros

        mkdir -p pro/ut4/pop1
        mkdir -p pro/ut4/pop2
        mkdir -p pro/ut4/ejer/funciones
        mkdir -p pro/ut4/ejer/poo
        mkdir -p pro/ut4/ejer/excepciones
        mkdir -p pro/ut4/ejer/modulos

        mkdir -p pro/ut5/pop1
        mkdir -p pro/ut5/pop2
        mkdir -p pro/ut5/ejer/expreg
        mkdir -p pro/ut5/ejer/sqlite

        mkdir -p pro/te/te1
        mkdir -p pro/te/te2
        mkdir -p pro/te/te3
        ;;
    dsw)
        if [ -e ~/dsw ]
            then mv ~/dsw ~/dsw.bk
        fi
        cd $HOME
        mkdir -p dsw
        mkdir -p dsw/ut0
        mkdir -p dsw/ut1
        mkdir -p dsw/ut2
        mkdir -p dsw/ut3
        mkdir -p dsw/ut4
        mkdir -p dsw/ut5
        ;;
    *)
        echo "Contexto no válido o vacío!"
        exit
        ;;
esac

echo ✔ Se han creado correctamente las carpetas de trabajo en: $HOME/$CONTEXT
echo
echo ↻ Ahora te sugiero que cambies tu contraseña de usuario...
