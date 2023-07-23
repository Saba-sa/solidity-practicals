// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract enumPractice {
    string public duty;

    enum weekDays {
        Monday,
        Tuesday,
        Wednesday,
        Thursday,
        Friday,
        Saturday,
        Sunday
    }

    mapping(address => weekDays) private officeDuty;

    function getOfficeDuty(address _addr) public view returns (weekDays) {
        return officeDuty[_addr];
    }

    function checkOfficeDuty(weekDays _role, address _addr) public {
        officeDuty[_addr] = _role;
    }

    // struct practice


    
    struct Students {
        string name;
        uint age;
        string DutyDay;
    }

    Students public myStudent;

    function setStudentVal() public {
        myStudent = Students(
            "Xyz",
            20,
            duty
        );
    }

    string public studentName = myStudent.name;
    uint public studentAge = myStudent.age;
    string public studentDutyDay = myStudent.DutyDay;
}
