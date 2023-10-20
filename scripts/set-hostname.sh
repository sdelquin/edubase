#!/bin/bash

declare -A hostnames

hostnames['08:00:27:4A:58:29']=a103pc01pro
hostnames['08:00:27:4A:58:30']=a103pc02pro
hostnames['08:00:27:4A:58:31']=a103pc03pro
hostnames['08:00:27:4A:58:32']=a103pc04pro
hostnames['08:00:27:4A:58:33']=a103pc05pro
hostnames['08:00:27:4A:58:34']=a103pc06pro
hostnames['08:00:27:4A:58:35']=a103pc07pro
hostnames['08:00:27:4A:58:36']=a103pc08pro
hostnames['08:00:27:4A:58:37']=a103pc09pro
hostnames['08:00:27:4A:58:38']=a103pc10pro
hostnames['08:00:27:4A:58:39']=a103pc11pro
hostnames['08:00:27:4A:58:40']=a103pc12pro
hostnames['08:00:27:4A:58:41']=a103pc13pro
hostnames['08:00:27:4A:58:42']=a103pc14pro
hostnames['08:00:27:4A:58:43']=a103pc15pro
hostnames['08:00:27:4A:58:44']=a103pc16pro
hostnames['08:00:27:4A:58:45']=a103pc17pro
hostnames['08:00:27:4A:58:46']=a103pc18pro
hostnames['08:00:27:4A:58:47']=a103pc19pro
hostnames['08:00:27:4A:58:48']=a103pc20pro
hostnames['08:00:27:4A:58:49']=a103pc21pro
hostnames['08:00:27:4A:58:50']=a103pc22pro
hostnames['08:00:27:4A:58:51']=a103pc23pro
hostnames['08:00:27:4A:58:52']=a103pc24pro
hostnames['08:00:27:4A:58:53']=a103pc25pro
hostnames['08:00:27:4A:58:54']=a103pc26pro
hostnames['08:00:27:4A:58:55']=a103pc27pro
hostnames['08:00:27:4A:58:56']=a103pc28pro
hostnames['08:00:27:4A:58:57']=a103pc29pro
hostnames['08:00:27:4A:58:58']=a103pc30pro

hostnames['06:10:A7:FA:88:20']=a109pc01dsw
hostnames['06:10:A7:FA:88:21']=a109pc02dsw
hostnames['06:10:A7:FA:88:22']=a109pc03dsw
hostnames['06:10:A7:FA:88:23']=a109pc04dsw
hostnames['06:10:A7:FA:88:24']=a109pc05dsw
hostnames['06:10:A7:FA:88:25']=a109pc06dsw
hostnames['06:10:A7:FA:88:26']=a109pc07dsw
hostnames['06:10:A7:FA:88:27']=a109pc08dsw
hostnames['06:10:A7:FA:88:28']=a109pc09dsw
hostnames['06:10:A7:FA:88:29']=a109pc10dsw
hostnames['06:10:A7:FA:88:30']=a109pc11dsw
hostnames['06:10:A7:FA:88:31']=a109pc12dsw
hostnames['06:10:A7:FA:88:32']=a109pc13dsw
hostnames['06:10:A7:FA:88:33']=a109pc14dsw
hostnames['06:10:A7:FA:88:34']=a109pc15dsw
hostnames['06:10:A7:FA:88:35']=a109pc16dsw
hostnames['06:10:A7:FA:88:36']=a109pc17dsw
hostnames['06:10:A7:FA:88:37']=a109pc18dsw
hostnames['06:10:A7:FA:88:38']=a109pc19dsw
hostnames['06:10:A7:FA:88:39']=a109pc20dsw
hostnames['06:10:A7:FA:88:40']=a109pc21dsw
hostnames['06:10:A7:FA:88:41']=a109pc22dsw
hostnames['06:10:A7:FA:88:42']=a109pc23dsw
hostnames['06:10:A7:FA:88:43']=a109pc24dsw
hostnames['06:10:A7:FA:88:44']=a109pc25dsw
hostnames['06:10:A7:FA:88:45']=a109pc26dsw
hostnames['06:10:A7:FA:88:46']=a109pc27dsw
hostnames['06:10:A7:FA:88:47']=a109pc28dsw
hostnames['06:10:A7:FA:88:48']=a109pc29dsw
hostnames['06:10:A7:FA:88:49']=a109pc30dsw

MAC=$(ip -br l | perl -nle 'print $1 if /^enp.*UP\s+((?:[0-9a-f]{2}:?)+)/')
MAC=${MAC^^}

OLD_HOSTNAME=$(hostname)
NEW_HOSTNAME=${hostnames[$MAC]}

sudo hostnamectl set-hostname $NEW_HOSTNAME
sudo sed -i "s/$OLD_HOSTNAME/$NEW_HOSTNAME/g" /etc/hosts
clear

echo ✔ Se ha modificado correctamente el nombre de la máquina: $NEW_HOSTNAME
echo '  (lo verás al abrir una nueva terminal)'
