# Official Verticalcoin Binary Builder for Ubuntu (with Docker)

1. **For `Verticalcoin` team to gather rapid feedback, no symbol is stripped and binary size is large.**
2. If you face a crash, have an issue, or/and want to ask a question, go to [Verticalcoin discord channel](COMING SOON).
3. This repository will be kept updated until the official release comes out.

## Build

1. Make sure you have `docker` installed and running. Then, follow the instruction below.  
  (Basically copy and paste. Then wait.)  

  ```sh
  git clone --depth 1 -b vnode https://github.com/DerUntote/verticalcoin-docker
  cd verticalcoin-docker/builder && make

  # compilation will take a while. Have a cup of coffee.
  ...
  ```
2. Once completed, you'll see three executables files.

  ```sh
  cd output && ls

  verticalcoind
  verticalcoin-cli
  verticalcoin-tx
  ```

## Build QT / Win32 / Win64

1. Use scripts inside the folders and collect binaries from output path.

## Setup

1. Make sure you have `root` privilege to install runtime dependencies.

  ```sh
  apt-get update && \
  apt-get install -y software-properties-common && \
  add-apt-repository ppa:bitcoin/bitcoin -y && \
  apt-get update && \
  apt-get install -y libboost-all-dev libdb4.8-dev libdb4.8++-dev libminiupnpc-dev libevent-pthreads-2.0-5 libevent-dev libzmq3-dev && \
  ldconfig
  ```
2. Setup Vnode according to [the guide](https://github.com/DerUntote/verticalcoin/blob/master/ZNODE.md).
