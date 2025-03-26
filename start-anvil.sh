#!/bin/bash
ANVIL_PORT=${1}
BLOCK_TIME=${2}
HARDFORK=${3}
FORK_URL=${4}
FORK_BLOCK_NUMBER=${5}
CHAIN_ID=${6}
GAS_LIMIT=${7}
GAS_PRICE=${8}

CMD="anvil --host 0.0.0.0 --port ${ANVIL_PORT} --block-time ${BLOCK_TIME} --hardfork ${HARDFORK} --chain-id ${CHAIN_ID} --gas-limit ${GAS_LIMIT} --gas-price ${GAS_PRICE}"

if [ -n "$FORK_URL" ]; then
  CMD="$CMD --fork-url ${FORK_URL}"
fi

if [ -n "$FORK_BLOCK_NUMBER" ]; then
  CMD="$CMD --fork-block-number ${FORK_BLOCK_NUMBER}"
fi

echo "Starting Anvil with command: $CMD"
exec $CMD
