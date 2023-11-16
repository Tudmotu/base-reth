![Base](logo.webp)

# Reth-based Base node

Base is a secure, low-cost, developer-friendly Ethereum L2 built to bring the next billion users onchain. It's built on Optimism’s open-source [OP Stack](https://stack.optimism.io/).

This repository contains the relevant Docker builds to run your own reth-based node on the Base network.

### Hardware requirements

We recommend you have this configuration to run a node:

- at least 16 GB RAM
- an SSD drive with at least 500 GB free

### Usage

1. Ensure you have an Ethereum L1 full node RPC available (not Base), and set `OP_NODE_L1_ETH_RPC` (in the `.env` file).
If running your own L1 node, it needs to be synced before Base will be able to fully sync.

2. Create a directory `./reth/reth-data` and add a file named `jwt.hex` in it with the content: `688f5d737bad920bdfb2fc2f488d6b6209eebda1dae949a8de91398d932c517a`
If you want to generate your own token, make sure to update it in the `.env` file.

3. Run:

```
docker compose up --build
```

4. You should now be able to `curl` your Base node:

```
curl -d '{"id":0,"jsonrpc":"2.0","method":"eth_getBlockByNumber","params":["latest",false]}' \
  -H "Content-Type: application/json" http://localhost:8545
```
