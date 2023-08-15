// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract NumberProcessor {
 function calculateSumAndAverage(uint256[5] memory numbers) public pure
returns (uint256 sum) {
 uint256 totalSum = 0;
 uint256 i = 0;
 while(i < numbers.length) {
 totalSum += numbers[i];
 i++;
 }
 sum = totalSum;
 }
}