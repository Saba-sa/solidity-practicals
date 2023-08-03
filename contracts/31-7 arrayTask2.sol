// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract DynamicArr{
    string[] public arr2;
    function addItem(string memory _name)public {
        arr2.push(_name);
    }
      function ReturnLength()public view returns (uint) {
        return arr2.length;
    }
      function PopItem()public{
        arr2.pop();
    }
    function returnFirstName()public view returns (string memory){
      return arr2[0];
    }

    // function returnLastName()public view returns (string memory _LastName){
    //    uint x=arr2.length-1;
    //     _LastName=arr2[x];
    //  return _LastName;
    // }
}