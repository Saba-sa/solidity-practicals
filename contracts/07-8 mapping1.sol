// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Mapper{
    mapping(string=>uint)public NameToBalance;

 function set(string memory _str,uint _balance) public{
 NameToBalance[_str] = _balance;
 }   

 function get(string memory _name)public view returns(uint){
return NameToBalance[_name];
 }

 function reset(string memory _str) public{
 delete NameToBalance[_str];
 }

}