// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

contract Level1Template {

    function solution(uint256[2][3] calldata x, uint256[2][3] calldata y) external pure returns (uint256[2][3] memory finalArray) {
        unchecked { // Disable overflow checks since we are sure the arrays are of length 2 & 3
            for (uint256 i = 0; i < 3; i++) { // x.length
                for (uint256 j = 0; j < 2; j++) { // x[i].length
                    finalArray[i][j] = x[i][j] + y[i][j];
                }
            }
        }
    }
}
