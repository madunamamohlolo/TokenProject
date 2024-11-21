const interaction = await ethers.getContractAt(
    "InteractionContract",
    "YOUR_INTERACTION_CONTRACT_ADDRESS"
);

await interaction.sendTokensAndMintNFT("0x96029cf65026cB7F151271DCc9966eF5730AbCe0");
