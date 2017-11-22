FROM ubuntu:xenial
LABEL maintainer="https://twitter.com/StainedRainbow"

USER root

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:bitcoin/bitcoin -y && \
    apt-get update && \
    apt-get install -y git build-essential libtool autotools-dev automake pkg-config bsdmainutils libdb4.8-dev libdb4.8++-dev libssl-dev libevent-dev libboost-all-dev libminiupnpc-dev libevent-pthreads-2.0-5 libzmq3-dev && \
    git clone --depth 1 -b znode https://github.com/zcoinofficial/zcoin /zcoin && \
    cd /zcoin && /zcoin/autogen.sh && ./configure && make

