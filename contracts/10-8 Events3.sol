// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;
contract eventsLab{
struct PersonInfo{
    string name;
    uint age;
    address WalletAdr;
}
PersonInfo public P1;

event Update( 
        PersonInfo oldValue, 
        PersonInfo newValue, 
        uint256 timestamp, 
        uint256 blockNumber 
    ); 

 function setPersonInfo(string memory _n,uint _a,address _addr) public { 
        PersonInfo memory oldValue = P1; 
        P1=PersonInfo(_n,_a,_addr);
    emit Update(oldValue, P1, block.timestamp, block.number); 
} 
}
