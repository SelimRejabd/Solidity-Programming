//SPDX-Lisence-Identifier:MIT
pragma solidity ^0.8.9;

contract callTestContract {
    function serX(address _test, uint _x) external {
        TestContract(_test).setX(_x);
    }
}

contract TestContract {
    uint public x;
    uint public value = 213;

    function setX(uint _x) external {
        x = _x;
    }
    function getX() external view returns(uint) {
        return x;
    }

    function setXAndReceiveEther(uint _x) external payable {
        x = _x;
        value = msg.value;
    }
}