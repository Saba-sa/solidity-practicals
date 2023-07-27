// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IntegerChecker {
    function checkInteger(int256 number) public pure returns (string memory) {
        if (number >= 0) {
            return "uint";
        } else {
            return "int";
        }
    }
}
