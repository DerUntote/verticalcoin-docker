#!/usr/bin/env bash

if [[ ! -d ${HOME}/verticalcoin-bin ]] || [[ ! -f ${HOME}/verticalcoin-bin/verticalcoin.conf ]]; then
    RPCPW=$(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-32};echo;)

    mkdir    -p ${HOME}/verticalcoin-bin
    cp -f bin/* ${HOME}/verticalcoin-bin
    cat <<EOM >$HOME/verticalcoin/verticalcoin.conf
conf=\$HOME/verticalcoin-bin/verticalcoin.conf
datadir=\$HOME/verticalcoin-bin
dbcache=300
maxconnections=128

rpcuser=verticalcoin
rpcpassword=${RPCPW}

seednode=seed1.vrtseed.ovh
addnode=H01.vrtnode.ovh
addnode=H02.vrtnode.ovh
addnode=H03.vrtnode.ovh
addnode=H04.vrtnode.ovh
addnode=H05.vrtnode.ovh
addnode=H06.vrtnode.ovh
addnode=H07.vrtnode.ovh
addnode=H08.vrtnode.ovh
addnode=H09.vrtnode.ovh
addnode=H10.vrtnode.ovh

EOM

fi
