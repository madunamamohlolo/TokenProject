async function main() {
    const [deployer] = await ethers.getSigners();
    const MatebelloNFT = await ethers.getContractFactory("MatebelloNFT");
    const erc721 = await MatebelloNFT.deploy();

    await erc721.deployed();
    console.log("MatebelloNFT deployed to:", erc721.address);
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
