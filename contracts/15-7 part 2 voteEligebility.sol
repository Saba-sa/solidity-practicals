// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract AgeVerifier{
function checkEligibility(uint age) public pure returns(bool){
    if(age>=18){
        return true;
    }
    else{
        return false;
    }
}

function ternaryAgeVerifier(uint age) public pure returns (bool ageVerify) {
        return age > 18 ? true : false;
}


}