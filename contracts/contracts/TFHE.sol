// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./euint32.sol";

library TFHE {
    function asEuint32(uint32 value) internal pure returns (euint32) {
        return euint32.wrap(value);
    }

    function add(euint32 a, euint32 b) internal pure returns (euint32) {
        return euint32.wrap(euint32.unwrap(a) + euint32.unwrap(b));
    }
}
