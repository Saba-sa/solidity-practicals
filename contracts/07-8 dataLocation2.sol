 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract MemoryAssignment {

 function modifyMemory(uint[] memory originalArray) public pure returns (uint[] memory) {
 // Assign the input array to a new variable in memory
 uint[] memory newArray = originalArray;
 // Modify a value within the new array
 if (newArray.length > 0) {
 newArray[0] = 999;
 }
 return originalArray; // Return the original array
 }
}
