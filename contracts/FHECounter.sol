// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./TFHE.sol";

contract FHECounter {
    euint32 private counter;

    constructor() {
        counter = TFHE.asEuint32(0);
    }

    function increment() public {
        counter = TFHE.add(counter, TFHE.asEuint32(1));
    }

    function getCounter() public view returns (euint32) {
        return counter;
    }
}
