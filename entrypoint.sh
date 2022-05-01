#!/bin/bash

gitopiad init --chain-id "$GITOPIA_CHAIN_ID" "$GITOPIA_MONIKER" &&\
git clone gitopia://gitopia1dlpc7ps63kj5v0kn5v8eq9sn2n8v8r5z9jmwff/testnets &&\
cp ./testnets/$GITOPIA_CHAIN_ID/genesis.json $HOME/.gitopia/config/genesis.json &&\
gitopiad start