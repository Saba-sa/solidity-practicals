// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract DynamicArray{
    int[] public arr;
    function add_Item(int _x)public {
        arr.push(_x);
    }
    function RetrieveItem(uint _i)public view returns (int ){
    return arr[_i];
    }
    function DeleteItem(uint _i)public view returns (int ){
    return arr[_i];
    }

  function PopItem()public {
    arr.pop();
    }
}