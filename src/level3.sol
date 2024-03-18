// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract Level3Template {
    function solution(bytes memory packed) external pure returns (uint16 a, bool b, bytes6 c) {
        // Unpack uint16 'a' from the first 2 bytes
        assembly {
            a := mload(add(packed, 2))
        }

        // Unpack bool 'b' from the third byte
        b = packed[2] != 0;

        // Unpack bytes6 'c' from the remaining 6 bytes
        unchecked { // Disable overflow checks since we are sure the array is of length 6
            for (uint256 i = 0; i < 6; i++) {
                c |= bytes6(packed[i + 3]) >> (i * 8);
            }
        }
    }
}
