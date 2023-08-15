// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;
contract tranfer{

event Transfer(address indexed from, address indexed to, uint256 value); 
// define _transfer function，execute transfer logic
mapping(address=>uint)public _balances; 
function _transfer(address from, address to, uint256 amount) external { 
        
        _balances[from] = 10000000; // give some initial tokens to transfer address 
        _balances[from] -=  amount; // "from" address minus the number of transfer 
        _balances[to] += amount; // "to" address adds the number of transfer 
        // emit event 
        emit Transfer(from, to, amount);   } 

}