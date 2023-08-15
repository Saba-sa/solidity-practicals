// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract exa{
enum WorkingDays{
       Monday, Tuesday, Wednesday, Thursday, Friday
   }
   WorkingDays public w1;

   function idelete() public{
       delete w1;
   }

}