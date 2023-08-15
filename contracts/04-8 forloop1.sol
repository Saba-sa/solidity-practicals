// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract ForLoop{
uint[] public numtable;

function table(uint num) public{
uint temp = num;
for(uint i = 1; i <= 20; i++){
numtable.push(num);
num += temp;
}
}

function get() public view returns(uint[] memory){
return numtable;
}

function resetarr() public{
delete numtable;
}
}