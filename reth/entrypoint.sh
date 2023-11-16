#!/usr/bin/env sh
./target/release/op-reth \
    node \
    --full \
    --chain base \
    --rollup.sequencer-http https://sequencer.base.org \
    --rollup.disable-tx-pool-gossip \
    --http.addr 0.0.0.0 \
    --http \
    --ws \
    --authrpc.addr 0.0.0.0 \
    --authrpc.port 8551 \
    --authrpc.jwtsecret /reth-data/jwt.hex \
    --datadir=/reth-data \

