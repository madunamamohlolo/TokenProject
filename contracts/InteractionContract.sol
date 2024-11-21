// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./MamohloloToken.sol";
import "./MatebelloNFT.sol";

contract InteractionContract {
    MamohloloToken public erc20;
    MatebelloNFT public erc721;
    address public owner;

    constructor(address _erc20Address, address _erc721Address) {
        erc20 = MamohloloToken(_erc20Address);
        erc721 = MatebelloNFT(_erc721Address);
        owner = msg.sender;
    }

    function sendTokensAndMintNFT(address recipient) public {
        require(msg.sender == owner, "Only the owner can execute this function");

        // Send 100 ERC20 tokens
        erc20.transfer(recipient, 100 * (10 ** erc20.decimals()));

        // Mint 1 ERC721 token
        erc721.mintNFT(recipient);
    }
}
