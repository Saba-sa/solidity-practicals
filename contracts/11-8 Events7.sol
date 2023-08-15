// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;
contract Eventss{
    address public owner;
event log(address prevowner ,address newowne);
    constructor(){
        owner=msg.sender;
    }
function NewOwner(address _adr)public {
address PreviousAddress=owner;
owner=_adr;
emit log(PreviousAddress,_adr);
}

}
