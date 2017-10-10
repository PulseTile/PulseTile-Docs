#!/bin/bash

echo 'deb http://http.us.debian.org/debian jessie main' | tee /etc/apt/sources.list.d/coturn.list

gpg --keyserver pgpkeys.mit.edu --recv-key 8B48AD6246925553
gpg -a --export 8B48AD6246925553 | apt-key add -

gpg --keyserver pgpkeys.mit.edu --recv-key 7638D0442B90D010
gpg -a --export 7638D0442B90D010 | apt-key add -

gpg --keyserver pgpkeys.mit.edu --recv-key CBF8D6FD518E17E1
gpg -a --export CBF8D6FD518E17E1 | apt-key add -

apt-get update
apt-get install coturn=4.2.1.2-1 -y

cp -f ./turnserver.conf /etc/
cp -f ./turnuserdb.conf /etc/
cp -f ./coturn /etc/default

service coturn start

