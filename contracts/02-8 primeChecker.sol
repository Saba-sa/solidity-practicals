// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Loop {
function PrimeChecker(uint _num) public pure returns (bool is_prime ) {
 uint j =2;
 is_prime= true;
 if (_num == 0 || _num == 1) {
 is_prime = false;
 }
 while (j <= _num/2 ) {
 if (_num % j == 0) {
 is_prime = false;
 break; }
 j++; }
}
}
