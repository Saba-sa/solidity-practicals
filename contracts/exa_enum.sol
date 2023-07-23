// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Enum_Example{
enum user{
    allowed,not_allowed,wait
}
user public  u1=user.wait;
}