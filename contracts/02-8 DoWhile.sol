// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract ControlFlow {
uint public sum=0;
function DOWhile()public{
    uint i=0;
    do {
   sum+=i;
   i++;
    }while(i<15);
}
}