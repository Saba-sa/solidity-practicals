// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;
contract GasConsumer {
uint256 public count;
function consumeGas(uint256 iterations) public {
for(uint256 i = 0; i < iterations; i++) {
count++;
}
}
}