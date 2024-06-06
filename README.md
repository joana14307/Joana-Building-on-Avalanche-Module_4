# Abdulmanan,Joana A. - Module 4 

## DegenToken Contract

## Overview

The DegenToken contract (DGN) is implemented in Solidity and follows the ERC20 standard. This contract facilitates the creation, distribution, and management of DgenToken, which can be used for in-game purposes. It includes functionalities such as minting, burning, and redeeming tokens for in-game items.

## Installation

To deploy and interact with the DungeonQuest contract, ensure you have the following prerequisites:
- A compatible Ethereum development environment
- OpenZeppelin Contracts library (version 4.6 or higher)

## Contract Details

- **Name**: DegenToken
- **Symbol**: DGN
- **Decimal**: 18

## Functions

1. **Constructor**: Initializes the token with a name, symbol, and initial supply.
2. **Mint**: allows the owner of the contract to create new tokens and assign them to a specified address.
3. **SetItem**: allows the owner to add a new item with a specified name and price.
4. **Redeem**: allows users to redeem an item by burning the corresponding amount of tokens from their balance.
5. **Burn**: allows users to burn a specified amount of tokens from their balance
6. **Transfer**: overrides the ERC20 transfer function to enable token transfers between addresses.

## Usage

1. Deploy the contract to an Ethereum network, specifying the name and symbol of the token.
2. Use the `mint` function to used by the contract owner to create new tokens.
3. The 'Set Item' allows the contract owner to define items that can be purchased or redeemed using the token.
4. 'Redeem Item'  is use for checks if the item exists and if the user has enough tokens to redeem it. 
5. `Burn` function allows token holders to destroy (burn) a specified amount of their tokens. 
6. 'Transfer' to enables token holders to transfer tokens to another address.
7. 'Transfer Ownership' allows the current owner to transfer ownership of the contract to a new owner.
   
## Author

- Name: Abdulmanan,Joana A.
- Email: 8213866@ntc.edu.ph
