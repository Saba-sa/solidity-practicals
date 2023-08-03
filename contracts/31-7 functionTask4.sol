// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract FunctionTypes{
uint public number = 4;
// default
function add() public{
number += 2;
}
// pure
function addPure() public {
number += 2;
}
// view
function addView() public  {
number += 2;
}
}