// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract Level5Template {
    // Give an overflow-free method for computing the average, rounding up, of 2 signed integers, (a + b) / 2 
    // Your function will take 2 values (a,b) and return the average of these values
    // Keep in mind that you will be rounding the average up (ceil) NOT rounding down (floor)
    // Floor -> rounding towards zero
    // Ceil -> rounding away from zero
    function solution(int256 a, int256 b) external pure returns (int256) {
        bool aIsOdd = a % 2 != 0;
        bool bIsOdd = b % 2 != 0;

        bool aIsPossitive = a >= 0;
        bool bIsPossitive = b >= 0;

        // both possitive - default
        int256 result = a/2 + b/2;
        if (aIsOdd || bIsOdd) {
            result++;
        }

        if (!aIsPossitive && !bIsPossitive) { // both negative
            if (aIsOdd || bIsOdd) {
                result--;
            }
        }
        
        if ((aIsPossitive && !bIsPossitive) || (!aIsPossitive && bIsPossitive)) { // one possitive and one negative
            if ((a + b < 0) && (aIsOdd || bIsOdd)) {
                result--;
            }
        }
        
        return result;
    }
}
