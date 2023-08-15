// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract EventsLab{
    address public Owner;
     event ZeroAddressInputted(string message); 
     constructor(address _initialOwner) {
             Owner=_initialOwner;
         if(Owner == address(0)){
             emit ZeroAddressInputted("Zero Address inputted on deployment of contract"); 
         }
     }
}