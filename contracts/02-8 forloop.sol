// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Loop {
uint[] public data;

function loop() public returns (uint[] memory) {
 
 for (uint8 i = 0; i < 20; i++) {
if(i%2!=0){
 data.push(i);
}
 }
 
 return data;
}

}