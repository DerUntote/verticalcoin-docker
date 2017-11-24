FROM ubuntu:xenial
LABEL maintainer="https://twitter.com/StainedRainbow"

USER root

COPY build-zcoin.sh /

RUN chmod +x /build-zcoin.sh && \
    apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:bitcoin/bitcoin -y && \
    apt-get update && \
    apt-get install -y git build-essential libtool autotools-dev automake pkg-config bsdmainutils libdb4.8-dev libdb4.8++-dev libssl-dev libevent-dev libboost-all-dev libminiupnpc-dev libevent-pthreads-2.0-5 libzmq3-dev

CMD /build-zcoin.sh