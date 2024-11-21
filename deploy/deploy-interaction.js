async function main() {
    const erc20Address = "YOUR_ERC20_CONTRACT_ADDRESS"; // Replace with deployed ERC20 address
    const erc721Address = "YOUR_ERC721_CONTRACT_ADDRESS"; // Replace with deployed ERC721 address

    const InteractionContract = await ethers.getContractFactory("InteractionContract");
    const interaction = await InteractionContract.deploy(erc20Address, erc721Address);

    await interaction.deployed();
    console.log("InteractionContract deployed to:", interaction.address);
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
