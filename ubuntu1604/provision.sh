#!/bin/sh
apt-get install -y make autoconf automake libtool bison re2c libapparmor-dev

git clone https://github.com/php/php-src.git
cd php-src/sapi/
git clone  https://github.com/bukka/fpmi.git
cd ../
./buildconf --force
./configure --disable-all --enable-fpmi
make -j2
make install
