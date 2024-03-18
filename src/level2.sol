// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

contract Level2Template {
    // Bubble sort algorithm
    function solution(uint256[10] calldata unsortedArray) external pure returns (uint256[10] memory sortedArray) {
        sortedArray = unsortedArray;

        unchecked { // Disable overflow checks since we are sure the array is of length 10
            for (uint256 i = 0; i < 9; i++) { // unsortedArray.length - 1
                for (uint256 j = 0; j < 9 - i; j++) { // unsortedArray.length - i - 1
                    if (sortedArray[j] > sortedArray[j + 1]) {
                        // Swap elements
                        (sortedArray[j], sortedArray[j + 1]) = (sortedArray[j + 1], sortedArray[j]);
                    }
                }
            }
        }
    }
}
