// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract MerkleTree {
    uint[4] public arr = [1, 3, 4, 2]; //
    uint[] public arr1;//

    function copyItem() public {   
        arr1 = arr;
    }

function calculateSum() public {
    copyItem();
    uint count = arr.length;
    while (count > 0) {
        for (uint i = 1; i <count; i += 2) {
            if(count==2){
            uint total = arr1[arr1.length-1] +arr1[arr1.length-2];
            arr1.push(total);
            }
            else{
            uint total = arr[i - 1] + arr[i];
            arr1.push(total);
            }
        }
        count /= 2;
    }
}

function RootItem()public view returns (uint) {
    return arr1[arr1.length-1];
}
function returnArr()public view returns (uint[] memory) {
    return arr1;
}
}
