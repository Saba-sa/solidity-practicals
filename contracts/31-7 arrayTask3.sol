//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Array{
int[4] public array;
function ipush() public{
array[0]=-5;
array[1]=0;
array[2]=5;
array[3]=10;
}
function get() public view returns(int[4] memory){
return array;
}
function getlength() public view returns(uint){
return array.length;
}
}
