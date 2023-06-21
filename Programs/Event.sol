//SPDX-Lisence-Identifier:MIT
pragma solidity ^0.8.9;
contract Event{
    event Log(string message, uint val);
    event Message(address indexed _form, address indexed _to, string message);

    function example() external{
        emit Log("Hello", 321);
    }
    function sendMessage(address _to, string calldata message) external {
        emit Message(msg.sender, _to, message);
    }
}