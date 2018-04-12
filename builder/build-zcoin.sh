#!/usr/bin/env bash

if [[ ! -d /verticalcoin ]]; then
    cd / && git clone --depth 1 -b vnode https://github.com/DerUntote/verticalcoin-docker /verticalcoin
fi

cd /verticalcoin && git checkout vnode && git pull origin vnode && /verticalcoin/autogen.sh && ./configure && make
