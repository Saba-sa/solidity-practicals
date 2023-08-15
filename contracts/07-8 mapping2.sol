//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Mappings{
 mapping(address => mapping(string => mapping(string=>uint))) public AddrWalletToName;

 function AddValue(address _addr, string memory _walletname, string memory _name,uint _balance) public{
 AddrWalletToName[_addr][_walletname][_name] =_balance;
 }
 
 function getBalance(address _addr, string memory _walletname,string memory _name) public view returns(uint){
 return AddrWalletToName[_addr][_walletname][_name];
 }
 
 function remove(address _addr, string memory _walletname,string memory _name) public{
 delete AddrWalletToName[_addr][_walletname][_name];
 } 
 }
