// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract ControlFlow {
// while
 function whileTest() public pure returns(uint){
 uint sum = 0;
 uint i = 0;
 while(i < 15){
 sum += i;
 i++; }
 return(sum);
 }
}