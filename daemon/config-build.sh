#!/usr/bin/env bash

if [[ ! -d ${HOME}/zcoin ]] || [[ ! -f ${HOME}/zcoin/zcoin.conf ]]; then
    RPCPW=$(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-32};echo;)

    mkdir -p ${HOME}/zcoin

    cat <<EOM >$HOME/zcoin/zcoin.conf
conf=\$HOME/zcoin/zcoin.conf
datadir=\$HOME/zcoin
dbcache=300
maxconnections=128

rpcuser=zcoin
rpcpassword=${RPCPW}

seednode=sf1.zcoin.io
seednode=sf2.zcoin.io
seednode=london.zcoin.io
seednode=singapore.zcoin.io
seednode=nyc.zcoin.io
EOM

fi
