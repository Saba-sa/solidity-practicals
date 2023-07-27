pragma solidity ^0.8.17;
contract StateVar{
    string public firstName;
    string public lastName;

function setFullName(string memory _firstName, string memory _lastName) public {
 firstName=_firstName;
 lastName=_lastName;   
}
function getFullName() public view  returns (string memory) {
    return string(abi.encodePacked(firstName, " ", lastName));
}

}