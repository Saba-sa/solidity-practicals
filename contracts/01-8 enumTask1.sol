//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract Enum{
enum Exam{
Checking,
Pass,
Fail,
Scholarship
}

Exam public e1;
 function Pass() public{
 if(e1 == Exam.Checking){
 e1 = Exam.Pass;
 //e1 = Exam(2); can also be used
 }}
 function Fail()public {
if(e1==Exam.Checking){
e1=Exam.Fail;
}}
function Scholarships() public {
if(e1==Exam.Pass){
    e1=Exam.Scholarship;
}
}
function idelete()public {
    delete e1;
}

}