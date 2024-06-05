// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
    
    event TokensMinted(address indexed to, uint256 amount); 
    event TokensRedeemed(address indexed from, uint256 amount, string itemName); 
    event TokensBurned(address indexed from, uint256 amount);
    event ItemSet(string itemName, uint256 price); 

    struct Item {
        uint256 price;
        bool exists;
    }

    mapping(string => Item) public items;
    
    constructor(address initialOwner) ERC20("DegenToken", "DGN") Ownable(initialOwner) {
    }
    
    function mint(address to, uint256 amount) external onlyOwner {  
        _mint(to, amount);
        emit TokensMinted(to, amount);
    }

    function setItem(string memory itemName, uint256 price) public onlyOwner {
        require(price > 0, "Price must be greater than zero");
        items[itemName] = Item(price, true);
        emit ItemSet(itemName, price);
    }
    
    function redeem(string memory itemName) external {
        Item memory item = items[itemName];
        require(item.exists, "Item does not exist");
        require(balanceOf(msg.sender) >= item.price, "Insufficient balance");

        _burn(msg.sender, item.price);
        emit TokensRedeemed(msg.sender, item.price, itemName);
    }

    function burn(uint256 amount) external {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _burn(msg.sender, amount);
        emit TokensBurned(msg.sender, amount);
    }

    function transfer(address to, uint256 token) public override returns (bool) {
        _transfer(msg.sender, to, token);
        return true;
    }
}
