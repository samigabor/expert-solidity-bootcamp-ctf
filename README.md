## CTF

### Template:

```js
// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

/*
    interface Isolution {
        function solution() external pure returns (uint8);
    }
*/

contract Level0Template {

	  function solution() external pure returns (uint8){
        // TODO: Implement your solution here
      }
}
```

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
