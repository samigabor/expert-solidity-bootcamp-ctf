// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract Level3Template {
    function solution(bytes memory packed) external pure returns (uint16 a, bool b, bytes6 c) {
        assembly {
            // Load the packed data into memory
            let dataPtr := add(packed, 32)

            // Unpack uint16 'a' from the first 2 bytes
            a := shr(240, mload(dataPtr))
            
            // Unpack bool 'b' from the third byte
            b := mload(add(dataPtr, 2))
            
            // Unpack bytes6 'c' from the remaining 6 bytes
            c := mload(add(dataPtr, 3))
        }
    }
}
