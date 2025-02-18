-include .env

.PHONY: sll test deploy

build :; forge build

test :; forge test

install :; forge intsall cyfrin/foundry-devops@0.3.2 --no-commit && forge install smartcontractkit/
chainlink-brownie-contracts@1.3.0 --no-commit && forge install foundry-rs/forge-std@1.9.6