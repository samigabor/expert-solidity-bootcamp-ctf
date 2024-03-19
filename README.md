## CTF

### Settings:
```json
{
  "optimizer": {
    "enabled": true,
    "runs": 10000
  },
  "outputSelection": {
    "*": {
      "*": [
        "evm.bytecode",
        "evm.deployedBytecode",
        "devdoc",
        "userdoc",
        "metadata",
        "abi"
      ]
    }
  }
}
```

### Tutorial:
For each level you will be asked to write a smart contract based on the given interface. You are free to write the solution as you see fit as long as your contract adheres to the contract interface. In practice this means, for most levels, you will be given an empty function and asked to write the logic. Once you have written your solution you will need to deploy the contract and submit the address to receive a score.

## [Level 0 - Return 42 (tutorial)](https://www.solidityctf.xyz/level-0)

This level is really simple. Use the interface below to write a smart contract. Your contract should contain a function called solution that returns a uint8. In this case the function body logic is very simply as the answer is always 42.

### Interface:
```ts
// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

interface Isolution {
    function solution() external pure returns (uint8);
}
```

### Solution:
To solve we need write the function to return the correct answer. In this case we would just need to write return 42

```ts
// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

contract Level_0 {

  function solution() external pure returns (uint8){
      return 42;
    }
}
```

### Deployed to: 0xe8dCf4A1Fd4e27bB019374208286417fc5D8BcC3
```sh
forge create \
    --rpc-url $RPC_URL_SEPOLIA \
    --optimizer-runs 10000 \
    --private-key $PRIVATE_KEY \
    src/level0.sol:Level0Template
```

## [Level 1 - Matrix Addition](https://www.solidityctf.xyz/level-1)

Write a function that adds two matrices returns the result. To keep things simple the array sizes will be fixed sizes of 2x3 (uint256[2][3]). Take a look at [Wikipedia](https://en.wikipedia.org/wiki/Matrix_addition) if you need help understanding matrix addition. Your solution should implement the following interface:
```ts
interface Isolution1 {
    function solution(
        uint256[2][3] calldata x, 
        uint256[2][3] calldata y
    ) external pure returns (
        uint256[2][3] memory
    );
}
```

### Deployed to: 0x2c49a680A1B75b4AF07C7caF3541cb72Ae5F7d20
```sh
forge create \
    --rpc-url $RPC_URL_SEPOLIA \
    --optimizer-runs 10000 \
    --private-key $PRIVATE_KEY \
    src/level1.sol:Level1Template
```

## [Level 2 - Sorting an Array](https://www.solidityctf.xyz/level-2)

Write a function that sorts an array in ascending order and returns the result. The array will be a fixed of 10 but the contents random. Your solution should implement the following interface:

```ts
interface Isolution2 {
    function solution(uint256[10] calldata unsortedArray) external returns (uint256[10] memory sortedArray);
}
```

### Deployed to: 0x04eBDD92f5669aB6A1022619d3E430448dc7A871
```sh
forge create \
    --rpc-url $RPC_URL_SEPOLIA \
    --optimizer-runs 10000 \
    --private-key $PRIVATE_KEY \
    src/level2.sol:Level2Template
```

## [Level 3 - abi.encodePacked](https://www.solidityctf.xyz/level-3)

Using the Isolution3 interface write a function that unpacks our data that was packed using abi.encodePacked(a, b, c). Where a is type uint16, b is type bool and c is type bytes6.


```ts
interface Isolution3 {
    function solution(bytes memory packed) external returns (uint16 a, bool b, bytes6 c);
}
```

### Deployed to: 0x374EB7EaD31d50DB661BE8A8487839f450a1d333
```sh
forge create \
    --rpc-url $RPC_URL_SEPOLIA \
    --optimizer-runs 10000 \
    --private-key $PRIVATE_KEY \
    src/level3.sol:Level3Template
```
