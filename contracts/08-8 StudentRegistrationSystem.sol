// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

enum Department { ArtificialIntelligence, Blockchain, ECommerce, Arts }
enum Status { Enrolled, NotEnrolled, Graduated, Expelled }

struct Student {
    string studentName;
    uint studentAge;
    uint registrationDate;
    Department studentDepartment;
    Status studentStatus;
    uint obtainedMarks;
}

contract StudentManagement {

    mapping(uint => Student) public studentMap;
    mapping(Department => uint) public departmentCounts;

    uint public totalStudents = 0;

    function registerStudent(uint rollNo, string memory _name, uint _age, uint _regDate, Department _department, Status _status, uint _marks) public {
        if (_status == Status.NotEnrolled || _status == Status.Expelled) {
        _marks = 0;
    }
        studentMap[rollNo] = Student(_name, _age, _regDate, _department, _status, _marks);
        departmentCounts[_department]++;
        totalStudents++;
    }

    function updateStudentDetails(uint rollNo, string memory _name, uint _age, Department _department, Status _status, uint _marks) public {
        Student storage student = studentMap[rollNo];
        student.studentName = _name;
        student.studentAge = _age;
        student.studentDepartment = _department;
        student.studentStatus = _status;
        student.obtainedMarks = _marks;
    }

    function retrieveDetail(uint rollNo) public view returns (Student memory) {
        return studentMap[rollNo];
    }

    function getDepartmentStudentCount() public view returns (uint Ai,uint blockchain,uint ecommerce,uint arts) {
        return (
        departmentCounts[Department.ArtificialIntelligence],
        departmentCounts[Department.Blockchain],
        departmentCounts[Department.ECommerce],
        departmentCounts[Department.Arts]);
    }


function getTopThreeStudents() public view returns (Student memory, Student memory, Student memory) {
    uint[] memory arr = new uint[](totalStudents);
    for (uint i = 0; i < totalStudents; i++) {
          if (studentMap[i].studentDepartment == Department.Blockchain && studentMap[i].obtainedMarks != 0) {
        arr[i] = i;
    }}

    for (uint i = 0; i < totalStudents; i++) {
        for (uint j = 0; j < totalStudents - 1; j++) {
            if (studentMap[arr[j]].obtainedMarks < studentMap[arr[j + 1]].obtainedMarks) {
                uint temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }

    return (studentMap[arr[0]], studentMap[arr[1]], studentMap[arr[2]]);
}

}