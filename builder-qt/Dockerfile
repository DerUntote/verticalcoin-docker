FROM ubuntu:xenial
LABEL maintainer="https://twitter.com/StainedRainbow"

USER root

COPY build-verticalcoin.sh /

RUN chmod +x /build-verticalcoin.sh && \
    apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:bitcoin/bitcoin -y && \
    apt-get update && \
    apt-get install -y git build-essential libtool autotools-dev automake pkg-config bsdmainutils libdb4.8-dev libdb4.8++-dev libssl-dev libevent-dev libboost-all-dev libminiupnpc-dev libevent-pthreads-2.0-5 libzmq3-dev && \
    apt-get install -y libminiupnpc-dev libzmq3-dev && \
    apt-get install -y libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler libqrencode-dev 

CMD /build-verticalcoin.sh
