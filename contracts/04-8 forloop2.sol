// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract ForLoop{

int[5] public arr = [-9, 8, 7, -2, 1];
int[] public positarr;

function positivepart() public{

for(uint i = 0; i < arr.length; i++){

if(arr[i] >= 0){
positarr.push(arr[i]);
}
}
}
function getposit() public view returns(int[] memory){
return positarr;
}

int[] public negarr;

function negativepart()public {
    for(uint i=0;i<arr.length;i++){
        if(arr[i]<0){
            negarr.push(arr[i]);
        }
    }
}

function getnegative() public view returns(int[] memory){
return negarr;
}

}