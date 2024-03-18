// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

contract Level2Template {
    // Bubble sort algorithm
    function solution(uint256[10] calldata unsortedArray) external pure returns (uint256[10] memory sortedArray) {
        uint256 n = unsortedArray.length;
        sortedArray = unsortedArray;

        for (uint256 i = 0; i < n - 1; i++) {
            for (uint256 j = 0; j < n - i - 1; j++) {
                if (sortedArray[j] > sortedArray[j + 1]) {
                    // Swap elements
                    (sortedArray[j], sortedArray[j + 1]) = (sortedArray[j + 1], sortedArray[j]);
                }
            }
        }
    }
}
