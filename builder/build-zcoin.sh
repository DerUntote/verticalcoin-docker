#!/usr/bin/env bash

if [[ ! -d /zcoin ]]; then
    cd / && git clone --depth 1 -b znode https://github.com/zcoinofficial/zcoin /zcoin
fi

cd /zcoin && git checkout znode && git pull origin znode && /zcoin/autogen.sh && ./configure && make