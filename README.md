# Anvil GitHub Action

A GitHub Action to start and configure Anvil, a local Ethereum development environment, as part of your CI/CD pipeline.

## Overview

This action allows you to easily spin up an Anvil instance with customizable parameters for testing Ethereum smart
contracts and dApps in GitHub Actions workflows.

## Usage

```yaml
steps:
  - uses: actions/checkout@v4
  
  - name: Start Anvil
    uses: iExecBlockchainComputing/anvil-github-action@main
    with:
      anvil-port: "8545"
      block-time: "1"
      hardfork: "berlin"
      chain-id: "134"
      gas-limit: "6700000"
      gas-price: "0"
      
  - name: Run tests
    run: |
      npm install
      npm test
```

## Inputs

| Input               | Description                            | Required | Default   |
|---------------------|----------------------------------------|----------|-----------|
| `anvil-port`        | Port number for Anvil to listen on     | Yes      | `8545`    |
| `block-time`        | Block time in seconds                  | No       | `1`       |
| `hardfork`          | Hardfork to use (e.g., berlin, london) | No       | `berlin`  |
| `fork-url`          | URL of the chain to fork               | No       | -         |
| `fork-block-number` | Block number to fork from              | No       | -         |
| `chain-id`          | Chain ID                               | No       | `134`     |
| `gas-limit`         | Block gas limit                        | No       | `6700000` |
| `gas-price`         | Gas price                              | No       | `0`       |

## Examples

### Basic Usage

```yaml
- name: Start Anvil
  uses: https://github.com/iExecBlockchainComputing/anvil-github-action
  with:
    anvil-port: "8545"
```

### With Forking

```yaml
- name: Start Forked Anvil
  uses: https://github.com/iExecBlockchainComputing/anvil-github-action@main
  with:
    anvil-port: "8545"
    fork-url: "https://eth-mainnet.alchemyapi.io/v2/"
    fork-block-number: "14000000"
```

## License

[MIT](LICENSE)
