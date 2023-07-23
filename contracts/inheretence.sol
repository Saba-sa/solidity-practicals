// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;
contract base_class{
    function foo()public pure virtual returns (string memory){
        return "A";
    }
}
contract classB is base_class{
     function foo()public pure override returns (string memory){
        return "A";
    }
}