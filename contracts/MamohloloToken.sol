// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MamohloloToken is ERC20 {
    address public owner;

    constructor(uint256 initialSupply) ERC20("MamohloloToken", "MHL") {
        owner = msg.sender;
        _mint(owner, initialSupply * (10 ** decimals())); // Mint initial supply to owner
    }
}
