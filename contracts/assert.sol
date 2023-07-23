// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract errorHandling{
    bool public even;
function check(uint x)public {
    assert(x%2==0);
    even=true;
}
}