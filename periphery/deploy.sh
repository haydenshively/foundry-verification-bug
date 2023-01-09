#!/bin/bash
source .env
forge script script/Deploy.s.sol:DeployScript --rpc-url $RPC_URL_GOERLI --broadcast --verify -vv
