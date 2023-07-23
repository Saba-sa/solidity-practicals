// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract classTask {
address public owner;
constructor() {
    owner=msg.sender;
}
function onlyOwnwer() public view  {
require(msg.sender==owner,"not owner");
}
function validAddress(address _addr) public pure  {
    require(_addr!=address(0),"not valid address");
}
function changeOwner(address _newOwner) public{
    onlyOwnwer();
    validAddress(_newOwner);
owner=_newOwner;
}

}