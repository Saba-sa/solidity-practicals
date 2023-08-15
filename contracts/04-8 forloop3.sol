// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Factorial{

function createFact(uint n) public pure returns(uint){
uint factvalue=1;
if(n == 0){
factvalue = 1;
return factvalue;
}

//******** Insert For Loop Here***********

for (uint i=1;i<=n;i++) 
{
 factvalue*=i;   
}

return factvalue;
}
}