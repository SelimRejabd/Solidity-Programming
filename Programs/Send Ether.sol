//SPDX-Lisence-Identifier:MIT
pragma solidity ^0.8.9;

// 3 ways to send ether
// transfer - 2300 gas, reverts
// send - 2300 gas, returns bool
//call- all gas, returns bool and data

contract SendEth {
    constructor() payable{}

    receive() external payable{}

    function sendViaTransfer(address payable _to) external payable {
        _to.transfer(12);
    }

    function sendViaSend(address payable _to) external payable {
        _to.send(2000000000000000000);

    }
    function sendViaCall(address payable _to) external payable {
        _to.call{value:123}("");
    }
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
}