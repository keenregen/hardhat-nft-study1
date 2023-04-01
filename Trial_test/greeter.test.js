const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Greeter", function () {
  it("Should return the new greeting once it's changed", async function () {
    const Greeter = await ethers.getContractFactory("Greeter");
    const greeter = await Greeter.deploy("Hello!");
    await greeter.deployed();
    expect(await greeter.greet()).to.equal("Hello!");
    const setGreetingTx = await greeter.setGreeting("Hi!");

    // wait until the transaction is mined
    await setGreetingTx.wait();

    expect(await greeter.greet()).to.equal("Hi!");
  });
});
