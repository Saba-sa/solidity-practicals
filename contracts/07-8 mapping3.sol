// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract NameMap{

mapping(uint=> mapping(address=>mapping(string=>string))) public UserMap;

function setMap(uint _yearofbirth, address _wallet, string memory _codename, string memory _username) public {
    UserMap[_yearofbirth][_wallet][_codename] = _username;
}
function getMap(uint _yearofbirth, address _wallet, string memory _codename) public view returns(string memory _username){
    return UserMap[_yearofbirth][_wallet][_codename];
}
function reset(uint _yearofbirth, address _wallet, string memory _codename) public{
    delete UserMap[_yearofbirth][_wallet][_codename];
}

}