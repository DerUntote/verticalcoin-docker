#!/usr/bin/env bash

if [[ ! -d ${HOME}/verticalcoin ]] || [[ ! -f ${HOME}/verticalcoin/verticalcoin.conf ]]; then
    RPCPW=$(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-32};echo;)

    mkdir -p ${HOME}/verticalcoin

    cat <<EOM >$HOME/verticalcoin/verticalcoin.conf
conf=\$HOME/verticalcoin/verticalcoin.conf
datadir=\$HOME/verticalcoin
dbcache=300
maxconnections=128

rpcuser=verticalcoin
rpcpassword=${RPCPW}

seednode=sf1.verticalcoin.io
seednode=sf2.verticalcoin.io
seednode=london.verticalcoin.io
seednode=singapore.verticalcoin.io
seednode=nyc.verticalcoin.io
EOM

fi
