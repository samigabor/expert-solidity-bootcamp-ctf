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
