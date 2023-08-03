// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Claculate_curcumference{
   uint256 constant public pi=31415;
   uint256 public curcumference;
function circumference_calculator(uint r)public returns(uint256 x){
    curcumference=2*pi*r;
    x=curcumference;
}
}