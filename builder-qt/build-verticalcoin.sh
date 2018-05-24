#!/usr/bin/env bash

if [[ ! -d /verticalcoin ]]; then
    cd / && git clone --depth 1 -b master https://github.com/DerUntote/verticalcoin_mainnet /verticalcoin
fi

cd /verticalcoin && git checkout master && git pull origin master && /verticalcoin/autogen.sh && ./configure && make
