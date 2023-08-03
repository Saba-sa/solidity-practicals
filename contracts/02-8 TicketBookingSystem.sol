// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract TicketBookingSystem{
enum TicketType{
    Economy,
    Business,
    FirstClass
}
enum Days{
    Monday, 
    Tuesday,
    Wednesday, 
    Thursday, 
    Friday,
    Saturday,
    Sunday
}

struct Ticket{
 string passenger;
 TicketType ticketType;
 Days day;
 bool isBooked;
}

Ticket[] public ticket;

function bookTicket(string memory _passenger, Days _day, TicketType _ticketType) public{
ticket.push(Ticket({passenger:_passenger,day:_day,ticketType:_ticketType,isBooked:true}));
}

function getTicketType(uint256 _index) public view returns(TicketType){
    Ticket memory ti=ticket[_index];
    return (ti.ticketType);
}

function getTicketDay(uint256 _index) public view returns (Days){
    Ticket memory ti=ticket[_index];
    return (ti.day);
}
function toggleStatus(uint256 _index) public  {
Ticket storage tik=ticket[_index];
tik.isBooked=!tik.isBooked;

}

}