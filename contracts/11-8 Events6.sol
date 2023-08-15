// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.17; 
  
contract Events{ 
    enum Quality{ 
        Good, Moderate, Bad 
    } 
    struct specs{ 
        string microprocessor; 
        uint RAM; 
    } 
    //A single event can have multiple parameters 
    event multi(string laptop, uint price); 
  
    //You can also emit enums and structs as well 
    //An event can have upto 3 indexed parameters 
    event multiple(string laptop, uint indexed price, Quality indexed q, specs indexed s); 
  
    //Naming the variable in an event is not necessary 
    event mu(string, Quality); 
    
    //++++++++++++++
    event Another(Quality,specs ,uint);
    //You can also emit empty events 
    event empty(); 
    function emits() public{ 
        emit multi("Hp", 150000); 
        emit multiple("dell", 100000, Quality.Good, specs("intel", 128)); 
        emit mu("Lenovo", Quality.Moderate); 
        emit empty(); 

        //+++++++
        emit Another(Quality.Good,specs("intel",222) ,233 );
    } 
} 