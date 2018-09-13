#! /bin/sh

wget https://dl.bintray.com/boostorg/release/1.68.0/source/boost_1_68_0.tar.gz
tar zxvf boost_1_68_0.tar.gz  > /dev/null
cd boost_1_68_0
./bootstrap.sh --prefix=$HOME/boost
./b2 install > /dev/null
cd ..
