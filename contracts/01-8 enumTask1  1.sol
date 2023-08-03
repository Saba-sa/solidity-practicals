// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract PizzaDeli{

enum PizzaOrder{
Pending,
Preparing,
Delivering,
Received
    }

PizzaOrder public P1;
PizzaOrder public P2=PizzaOrder.Preparing;
PizzaOrder public P3=PizzaOrder(3);

function set_P1(PizzaOrder _i)public{
    P1=_i;
} 

function getter() public view returns(PizzaOrder,PizzaOrder,PizzaOrder){
return (P1,P2,P3);
}

}