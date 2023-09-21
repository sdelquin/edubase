#!/bin/bash

# Muestra las máquinas virtuales "vivas" de PRO o DSW

nmap -sP -R 10.103.1-26.20 10.109.3-15.20 10.109.17-28.20 | perl -nle 'print $1 if /Nmap scan report for (.*)/'
