// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;
    contract PersonContract { 
 struct PersonInfo {
     string name;
     uint age;
     string department;
     uint Timestamp;
     uint blockNo;

 } 
 PersonInfo public P1; 
  event Update(PersonInfo oldValue,PersonInfo newValue,uint256 timestamp,uint256 blockNumber); 

 function setPersonInfo(string memory _name,uint _age,string memory _department) public { 
    PersonInfo memory oldValue = P1; 
    P1=PersonInfo(_name,_age,_department,block.timestamp,block.number);
    emit Update(oldValue, P1, block.timestamp, block.number); } 
}