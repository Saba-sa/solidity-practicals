// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract DArray {
// uint[] public arr;
// function getlength() public view returns(uint){
// return arr.length;
// }

//task 2
uint[4] public arr1=[9,3,7,6];

function give(uint _i, uint value) public{
arr1[_i] = value;
}


function GetArr1()public view returns (uint[4] memory){
    return arr1;
}
}
