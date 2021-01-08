#!/bin/bash
 
#includedir /etc/sudoers.d

sudo addgroup experts
sudo addgroup novice
sudo addgroup debutant

%debutant ALL=NOPASSWD /usr/bin/apt-get update
%novice ALL=NOPASSWD /usr/bin/apt-get install
%novice ALL=NOPASSWD /usr/bin/apt-get update
%experts ALL=NOPASSWD /usr/bin/apt-get update
%experts ALL=NOPASSWD /usr/bin/apt-get install
%experts ALL=NOPASSWD /usr/bin/apt-get autoremove


