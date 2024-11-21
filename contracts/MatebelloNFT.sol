// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MatebelloNFT is ERC721 {
    address public owner;
    uint256 public tokenCounter;

    constructor() ERC721("MatebelloNFT", "MTBL") {
        owner = msg.sender;
        tokenCounter = 0;
    }

    function mintNFT(address recipient) public returns (uint256) {
        require(msg.sender == owner, "Only the owner can mint NFTs");
        uint256 newTokenId = tokenCounter;
        _safeMint(recipient, newTokenId);
        tokenCounter += 1;
        return newTokenId;
    }
}
