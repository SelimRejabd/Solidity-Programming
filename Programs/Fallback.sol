//SPDX-Lisence-Identifier:MIT
pragma solidity ^0.8.9;

// It enable transaction to the contract
contract Fallback {
    //fallback() external payable {}
    receive() external payable {}
    function getBalance() public view returns(uint){
        return address(this).balance;
    }

}