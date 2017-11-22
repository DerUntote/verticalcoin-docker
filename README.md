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
