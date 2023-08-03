// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Loop {
 function Palindrome(uint input) public pure returns (bool) {
 uint temp = input;
 uint digit;
 uint rev;
 do{
 digit = temp % 10;
 rev = (rev * 10) + digit;
 temp = temp / 10;
 } while (temp != 0);
 if (input == rev)
 return true;
 else
 return false; }
}