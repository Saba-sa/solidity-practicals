// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;
contract ConstVariable {
uint public PI=314159;
function calculateArea(uint radius) public view returns(uint){
uint area = PI * radius * radius;
return area;
}
}
