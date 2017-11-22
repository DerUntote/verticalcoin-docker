# Unofficial Znode Binary Builder for Ubuntu (with Docker)

1. **For `Zcoin` team to gather rapid feedback, no symbol is stripped and binary size is large.**
2. If you face a crash, have an issue, or/and want to ask a question, go to [Zcoin discord channel](https://discordapp.com/invite/4FjnQ2q).
3. This repository will be kept updated until the official release comes out.

## Build Image

- make sure you have `docker` installed and running.
- Follow the instruction below. (Basically copy and paste. Then wait.) 

```sh
git clone --depth 1 -b znode https://github.com/rainbowstain/zcoin-docker
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

- Make sure you have `root` privilege to install runtime dependencies.

```sh
# install dependencies

apt-get update && \
apt-get install -y software-properties-common && \
add-apt-repository ppa:bitcoin/bitcoin -y && \
apt-get update && \
apt-get install -y libboost-all-dev libdb4.8-dev libdb4.8++-dev libminiupnpc-dev libevent-pthreads-2.0-5 libevent-dev libzmq3-dev && \
ldconfig
``` 

- Setup Znode according to [the guide](https://github.com/zcoinofficial/zcoin/blob/znode/ZNODE.md) and run `zcoind` as a user.

```
zcoind -daemon
```
