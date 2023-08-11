#!/usr/bin/env bash

. .env

forge create UniswapV2Router02 --contracts contracts/UniswapV2Router02.sol \
  --constructor-args "$FACTORY_ADDRESS" "$WETH_ADDRESS" \
  --rpc-url "$RPC_URL" \
  --private-key "$PRIVATE_KEY"  || exit 1
