// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract FunctionForms{
 function Form1(string memory Name,string memory Gender,address MetaAddress)public pure returns (string memory _Name,string memory _Gender,address _MetaAddress){
_Name=Name;
_Gender=Gender;
_MetaAddress=MetaAddress;
 }   

function Form2() external pure returns (string memory _Name,string memory _Gender,address _MetaAddress) {
return Form1("Saba", "Female",0x2cAF9B0e260eA8BB6c3337Ac212d00505df01F88 );
}
function Form3() external pure returns (string memory _Name,string memory _Gender,address _MetaAddress) {
return Form1({Gender:"Female",Name:"saba",MetaAddress:0x2cAF9B0e260eA8BB6c3337Ac212d00505df01F88});
}


}
