// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract StudentMarksChecker{
    bool condition=true;
    function marksCheck(uint score)public pure returns(bool,string memory){
if(score>=60){
    if(score>=80&&score<=100){
        return (true,"Achieved Gade : A");
    }
    else{
        return (true,"Achieved Gade : B");
    }
}
else{
     if(score>=40&&score<=59){
        return (false,"Achieved Gade : C");
    }
    else{
        return (false,"Better Luck Next Time");
    }
}
    }
function CheckGradesByternary(uint score)public pure returns(bool,string memory){
  return score>=60?score>=80&&score<=100?(true,"Achieved Gade : A"):(true,"Achieved Gade : B"):score>=40&&score<=59?(false,"Achieved Gade : C"):(false,"Better Luck Next Time");
}
}