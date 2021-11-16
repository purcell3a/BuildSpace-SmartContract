// SPDX-License-Identifier: UNLICENSED

//This is the version of the Solidity compiler we want our contract to use. It basically says "when running this, I only want to use version 0.8.0 of the Solidity compiler, nothing lower. Note, be sure that the compiler version is the same in hardhat.config.js.
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;

    constructor() {
        console.log("Look at you and your very first smart contract, cute!");
    }

    function wave() public {
        totalWaves += 1;
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    
}