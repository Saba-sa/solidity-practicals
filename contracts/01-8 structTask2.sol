// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

struct BankAccount{
uint256 accountID;
uint256 balance;
address owner;
}
contract Banking{
BankAccount[] public Account;

function PushingValues(uint256 x,uint256 y,address addr)public {
    Account.push(BankAccount(x,y,addr));
}

function KeyValues(uint256 x,uint256 y,address addr)public {
    Account.push(BankAccount({accountID:x,balance:y,owner:addr}));
}


 function create3(uint256 x,uint256 y,address _addr) public {
 BankAccount memory bank;
 bank.accountID = x;
 bank.balance = y;
 bank.owner = _addr;
 Account.push(bank);
 }

 function get(uint index) public view returns (uint256 x,uint256 y, address addr) {
 BankAccount storage bank = Account[index];
 return (bank.accountID, bank.accountID,bank.owner);
 }

}