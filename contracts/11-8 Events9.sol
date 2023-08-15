// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract eventTask{
    event localVar(string message,int value);
    function numgive(int x)public  returns(int y){
int neg; 
int positiveEven;
int positiveOdd;
    if(x<0){
        neg=x;
        emit localVar("negative local variable returned the value",neg); 
        return neg;
    }
    else{
if(x%2==0){
positiveEven=x;
        emit localVar("positiveEven local variable returned the value",positiveEven); 
return positiveEven;
}else{
positiveOdd=x;
        emit localVar("positiveOdd local variable returned the value",positiveOdd); 
return positiveOdd;
}
    }

    }
}