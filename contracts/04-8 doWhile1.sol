// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Loop{
 uint[] public arr;
 function ODDNum(uint max) public{
 uint i = 1;
do{
    if(i%2!=0){
 arr.push(i);
}
 i++;

}while(i <= max);
 }

function get()public view returns(uint[] memory){
 return arr;
 }

}
