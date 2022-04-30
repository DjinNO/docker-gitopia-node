#!/bin/bash

gitopiad init --chain-id "$GITOPIA_CHAIN_ID" "$GITOPIA_MONIKER"
curl -s "https://api.nodes.guru/gitopia_genesis_internal-7.json" > $HOME/.gitopia/config/genesis.json

gitopiad start