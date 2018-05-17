FROM verticalcoin-builder
LABEL maintainer="https://twitter.com/StainedRainbow"

RUN apt-get clean && \
    apt-get autoclean && \
    apt-get autoremove --purge

COPY bin/* /usr/local/bin/

EXPOSE 8168 18168
