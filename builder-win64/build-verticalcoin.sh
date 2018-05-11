#!/usr/bin/env bash

if [[ ! -d /verticalcoin ]]; then
    cd / && git clone --depth 1 -b master https://github.com/DerUntote/verticalcoin /verticalcoin
fi
cd /verticalcoin 

git checkout master && git pull origin master && /verticalcoin/autogen.sh

## build win64 binaries
cd depends
make HOST=x86_64-w64-mingw32 -j4
cd ..
./configure --prefix=`pwd`/depends/x86_64-w64-mingw32
make

