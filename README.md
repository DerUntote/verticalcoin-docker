# Zcoin Builder

Zcoin binary build for ubuntu 

## Build Image

make sure you have `docker` installed and running.

```sh
git clone https://github.com/rainbowstain/zcoin-docker
cd zcoin-docker/builder && make

# compilation will take a while. Have a cup of coffee.
...

cd output && ls

# you'll see following three binaries to run znode
zcoind
zcoin-cli
zcoin-tx
```

## Run `zcoind` for znode

make sure you have `root` privilege.

```sh
# install dependencies

apt-get update && \
apt-get install -y software-properties-common && \
add-apt-repository ppa:bitcoin/bitcoin -y && \
apt-get update && \
apt-get install -y libboost-all-dev libdb4.8-dev libdb4.8++-dev libminiupnpc-dev libevent-pthreads-2.0-5 libevent-dev && \
ldconfig
``` 

run `zcoind` as a user

```
zcoind -daemon
```