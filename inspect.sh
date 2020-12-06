#!/bin/bash

echo "
============================
Genral System-Info
uname -a
============================
"
sudo uname -a


echo "
=============================
Disk Usage
sudo df -h
=============================
"
sudo df -h


echo "
============================
Folder Size
sudo du -hs /*
============================
"
sudo du -hs /*


echo "
============================
Network and Ports
netstat -tapen
============================
"
netstat -tapen


echo "
============================
List running Docker Containers
docker ps
============================
"
docker ps