// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract ControlFlow {
uint public sum=0;
function forLoop()public{
    for(uint i=0;i<15;i++){
        sum+=i;
    }
}
}