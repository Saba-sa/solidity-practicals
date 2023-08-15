// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Loop{

function iterate(uint cond) public pure returns(uint){
uint i;
uint iteration;
do {
iteration ++;
i++;
} while(i < cond);
return iteration;
}
}