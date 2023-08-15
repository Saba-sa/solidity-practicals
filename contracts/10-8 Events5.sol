// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NoPrime {
    uint public num;
    
    event PrimeCheckerResult(string message, uint number, bool isPrime);
    
    function setter(uint _inputNum) public {
        num = _inputNum;
    }

    function check() public { 
        bool isPrime = PrimeChecker();
        
        if (isPrime) {
            emit PrimeCheckerResult("The Number is Prime", num, true);
        } else {
            emit PrimeCheckerResult("The Number is not Prime", num, false); 
        }
    }

    function PrimeChecker() public view returns (bool is_prime) {
        uint j = 2;
        is_prime = true;
        
        if (num == 0 || num == 1) {
            is_prime = false;
        }
        
        while (j <= num / 2) {
            if (num % j == 0) {
                is_prime = false;
                break;
            }
            j++;
        }
    }
}
