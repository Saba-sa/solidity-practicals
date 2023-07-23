// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

// example 1
// interface ICounter {
//     function increment() external;
//     function count()external view returns(uint);
// }

// contract MyContratc{
//     function MyIncrement(address _addr) public {
//         ICounter(_addr).increment();
//     }
//     function myCount(address _addr) public view{
//         ICounter(_addr).count();
//     }
// }
// example 2

contract counter{
uint public count;
function increment() external {
    count+=1;
}
}
interface Icount {
 function increment() external;
 function count()external view returns(uint);   
}


contract MyContract{
function MyIncrement(address _addr)public {
Icount(_addr).increment();
}
function MyCount(address _addr)public view returns (uint){
return Icount(_addr).count();
}
}