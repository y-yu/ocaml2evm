# Sample Contracts

## Directory Organization

- `src` directory contains sample `.ml` files.
- `contracts` directory contains `.json` files compiled from sample `.ml` files.
- `contract_test` directory contains `.js` files for testing `.json` files.

## How to Build

`dune exec ocamyulc src/<filename>.ml` generates a `.json` file from `<filename>.ml` and
saves it in `contracts` directory.

Before compiling, you need to install `solc`.

## How to Test

By `npm test`, test scripts run.

Before testing, you need to run `npm install`.

## Deploying Contracts

`deploy_erc20.js` is a sample code for deploying contracts. 
This script deploys the ABI and bytecode provided by `contracts/erc20.ml` using `.env` file,
which is not committed because it has the information about a private key.