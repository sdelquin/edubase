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

echo

echo ↻ Ahora te sugiero que cambies tu contraseña de usuario
echo '  (aunque no veas los caracteres al escribir, sí está funcionando)'
passwd

if [ $? -eq 0 ]; then
    xfce4-terminal --tab
fi
