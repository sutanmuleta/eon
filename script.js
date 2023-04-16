const hre = require("hardhat");

async function main ()
{
const eon=await hre.ethers.getContractFactory("eon");
const Eon = await eon.deploy();

await eon.deployed();
console.log("eon is deployed to : ", eon.address); 
}