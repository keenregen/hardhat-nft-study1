//SPDX-License-Identifier: BLANK
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Greeter {
    string private greeting; // line 7

    constructor(string memory _greeting) {
        console.log("Deploying a Greeter with greeting:", _greeting);
        greeting = _greeting; // line 11
    }

    function greet() public view returns (string memory) {
        // line 14
        return greeting;
    }

    function setGreeting(string memory _greeting) public {
        // line 18
        console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
        greeting = _greeting;
    }
}
