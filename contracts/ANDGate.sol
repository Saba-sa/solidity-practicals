// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract andGate {
bool public booleanVal;//false

function TT()public view returns(bool){
    return !booleanVal && !booleanVal;
}

function TF()public view returns(bool){
    return !booleanVal && booleanVal;
}

function FT()public view returns(bool){
    return booleanVal && !booleanVal;
}

function FF()public view returns(bool){
    return booleanVal && booleanVal;
}
}