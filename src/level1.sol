// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

// Matrix Addition

contract Level1Template {
    function solution(uint256[2][3] calldata x, uint256[2][3] calldata y)
        external
        pure
        returns (uint256[2][3] memory finalArray)
    {
        for (uint256 i = 0; i < 3;) { // x.length
            for (uint256 j = 0; j < 2;) { // x[i].length
                finalArray[i][j] = x[i][j] + y[i][j];
                unchecked {
                    ++j;
                }
            }
            unchecked {
                ++i;
            }
        }
    }
}
