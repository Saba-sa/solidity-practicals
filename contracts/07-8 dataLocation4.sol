// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract Last {

    struct CAR {
        string Make;
        string Model;
        uint Variant;
    }

    CAR[] public car;
    CAR public cars;

    function initCar1() public {
        CAR storage new_car=cars;
        new_car.Make = "ee";
        new_car.Model = "ABC";
        new_car.Variant = 123;
    }

    function initCar2() public {
        CAR memory newCar;
        newCar.Make = "ee";
        newCar.Model = "ABC";
        newCar.Variant = 123;
        car.push(newCar);
    }
}
