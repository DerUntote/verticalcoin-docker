FROM ubuntu:xenial
LABEL maintainer="https://twitter.com/StainedRainbow"

USER root

RUN apt-get update && \
   apt-get install -y software-properties-common && \
   add-apt-repository ppa:bitcoin/bitcoin -y && \
   apt-get update && \
   apt-get install -y libboost-all-dev libdb4.8-dev libdb4.8++-dev libminiupnpc-dev libevent-pthreads-2.0-5 libevent-dev

COPY zcoin-cli       /usr/local/bin
COPY zcoin-tx        /usr/local/bin
COPY zcoind          /usr/local/bin
COPY config-build.sh /usr/local/bin

EXPOSE 8168:8168

ENTRYPOINT [""]
