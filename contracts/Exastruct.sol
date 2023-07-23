// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
struct Students{
    uint roll;
    string name;
}
contract structExample{
    Students public s1;
    Students public s2;
    Students public s3;
constructor(uint _roll,string memory _name){
    s1.roll=_roll;
    s1.name=_name;
}
function set_S2(uint _roll,string memory _name)public{
s2.roll=_roll;
s2.name=_name;
}

function set_S3(uint _roll,string memory _name)public{
s3.roll=_roll;
s3.name=_name;
}

function changeS1(uint _roll,string memory _name) public {
    Students memory new_students = Students({
            roll: _roll,
            name: _name
        });
        s1 = new_students;
}
}
