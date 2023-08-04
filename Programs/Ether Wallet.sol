//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract EtherWallet {
    address payable public owner;

    constructor(){
        owner = payable(msg.sender);

    }

    receive() external payable{}

    function withdraw(uint _amount) external {
        require(msg.sender == owner, "Caller must be owner");
        owner.transfer(_amount);
    }

    function getBalance() external view returns(uint) {
        return address(this).balance;
    }
}
