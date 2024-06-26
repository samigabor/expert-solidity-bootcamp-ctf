## CTFs

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

### Scripts:
```sh
forge create \
  --rpc-url $RPC_URL_SEPOLIA \
  --optimizer-runs 10000 \
  --private-key $PRIVATE_KEY \
  src/level.sol:LevelTemplate
```

```sh
forge verify-contract \
  --chain-id 11155111 \
  --watch \
  --etherscan-api-key $ETHERSCAN_API_KEY \
  --optimizer-runs 10000 \
  <contract-address> \
  src/level.sol:LevelTemplate
```

### Tutorial:
For each level you will be asked to write a smart contract based on the given interface. You are free to write the solution as you see fit as long as your contract adheres to the contract interface. In practice this means, for most levels, you will be given an empty function and asked to write the logic. Once you have written your solution you will need to deploy the contract and submit the address to receive a score.

## [Level 0 - Return 42 (tutorial)](https://www.solidityctf.xyz/level-0) => [0xe8dCf4A1Fd4e27bB019374208286417fc5D8BcC3](https://sepolia.etherscan.io/address/0xe8dCf4A1Fd4e27bB019374208286417fc5D8BcC3#code)

This level is really simple. Use the interface below to write a smart contract. Your contract should contain a function called solution that returns a uint8. In this case the function body logic is very simply as the answer is always 42.

```ts
interface Isolution {
  function solution() external pure returns (uint8);
}
```

## [Level 1 - Matrix Addition](https://www.solidityctf.xyz/level-1) => [0x2c49a680A1B75b4AF07C7caF3541cb72Ae5F7d20](https://sepolia.etherscan.io/address/0x2c49a680A1B75b4AF07C7caF3541cb72Ae5F7d20#code)

Write a function that adds two matrices returns the result. To keep things simple the array sizes will be fixed sizes of 2x3 (uint256[2][3]). Take a look at [Wikipedia](https://en.wikipedia.org/wiki/Matrix_addition) if you need help understanding matrix addition. Your solution should implement the following interface:
```ts
interface Isolution1 {
  function solution(uint256[2][3] calldata x, uint256[2][3] calldata y) external pure returns (uint256[2][3] memory);
}
```

## [Level 2 - Sorting an Array](https://www.solidityctf.xyz/level-2) => [0x04eBDD92f5669aB6A1022619d3E430448dc7A871](https://sepolia.etherscan.io/address/0x04eBDD92f5669aB6A1022619d3E430448dc7A871#code)

Write a function that sorts an array in ascending order and returns the result. The array will be a fixed of 10 but the contents random. Your solution should implement the following interface:

```ts
interface Isolution2 {
  function solution(uint256[10] calldata unsortedArray) external returns (uint256[10] memory sortedArray);
}
```

## [Level 3 - abi.encodePacked](https://www.solidityctf.xyz/level-3) => [0x374EB7EaD31d50DB661BE8A8487839f450a1d333](https://sepolia.etherscan.io/address/0x374EB7EaD31d50DB661BE8A8487839f450a1d333#code)

Using the Isolution3 interface write a function that unpacks our data that was packed using abi.encodePacked(a, b, c). Where a is type uint16, b is type bool and c is type bytes6.

```ts
interface Isolution3 {
  function solution(bytes memory packed) external returns (uint16 a, bool b, bytes6 c);
}
```

## [Level 4 - Powers of 2](https://www.solidityctf.xyz/level-4) => [0x52B43c71Ad3C899A1FDBB216764513753d37E725](https://sepolia.etherscan.io/address/0x52B43c71Ad3C899A1FDBB216764513753d37E725#code)

Using the Isolution4 interface write a function that takes a uint256 value and returns the greatest power of 2, (2 ^ n) that is less than or equal to the input value. The input value is a number between 2^0 and 2^256 -1


```ts
// stdin: 1                     stdout: 1 or 2**0
// stdin: 10                    stdout: 8 or 2**3
// stdin: 21                    stdout: 16 or 2**4
// stdin: 2048                  stdout: 2048 or 2**11
// stdin: 9223372036854775808   stdout: 9223372036854775808 or 2**63
// stdin: 0xffffffff            stdout: 2147483648 or 0x80000000 or 2**31
interface Isolution {
  function solution(uint256 number) external pure returns (uint256);
}
```

## [Level 5 - Overflow-free Average, Rounded up](https://www.solidityctf.xyz/level-5) => [0x86A6Bb20D2B97E6b78Df50E16414EDa729d3983D](https://sepolia.etherscan.io/address/0x86A6Bb20D2B97E6b78Df50E16414EDa729d3983D#code)

Using the Isolution5 interface calculate the average of two values int256 a and int256 b.
You will need to write an overflow-free method that will round up the average of (a + b) / 2. Keep in mind that we are rounding up (ceil) and NOT rounding down (floor). Floor = rounding towards zero while Ceil = rounding away from zero see examples on [wikipedia](https://en.wikipedia.org/wiki/Floor_and_ceiling_functions)

```ts
interface Isolution5 {
    function solution(int256 a, int256 b) external pure returns (int256);
}
```
