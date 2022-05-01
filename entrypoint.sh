#!/bin/bash

gitopiad init --chain-id "$GITOPIA_CHAIN_ID" "$GITOPIA_MONIKER"
curl -s "https://raw.githubusercontent.com/stratosnet/stratos-chain-testnet/main/genesis.json" > $HOME/.gitopia/config/genesis.json

gitopiad start