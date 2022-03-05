#!/usr/bin/env bash

echo 'this script is only for kali linux please do not use it on other systems than kali linux'

echo 'test systems'

j=$(uname -n)

if test "$j" = "kali" ;then

echo 'update'

sudo apt update

echo 'install'

sudo apt install -y python-pip seclists python2-dev python3-dev zip rar

echo 'python-pip lib'

pip2 install mechanize

echo 'premissions'

chmod +x facebook_crack.py

echo 'start'

python2 facebook_crack.py

fi

echo 'test systems'


if test "$j" != "kali" ;then

echo 'install'

sudo apt install -y python2-dev python3-dev python-pip git zip rar 

echo 'zip seclists'
wget -c https://github.com/danielmiessler/SecLists/archive/master.zip -O SecList.zip \
  && unzip SecList.zip \
  && rm -f SecList.zip

echo 'python lib'

pip2 install  mechanize

echo 'premissions'

chmod +x facebook_crack.py

echo 'start'

python2 facebook_crack.py

fi

echo 'done'
