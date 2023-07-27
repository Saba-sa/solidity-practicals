// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract immutableVar {
address public immutable ADMIN_Address=0x2cAF9B0e260eA8BB6c3337Ac212d00505df01F88;

function getAdminAddress() public view  returns(address){
    return ADMIN_Address;
}
}