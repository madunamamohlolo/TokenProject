async function main() {
    const [deployer] = await ethers.getSigners();
    const MamohloloToken = await ethers.getContractFactory("MamohloloToken");
    const erc20 = await MamohloloToken.deploy(1000000); // 1,000,000 initial supply

    await erc20.deployed();
    console.log("MamohloloToken deployed to:", erc20.address);
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
