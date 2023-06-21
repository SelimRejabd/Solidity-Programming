//SPDX-Lisence-Identifier:MIT
pragma solidity ^0.8.9;

library Math {
    function max(uint x, uint y) internal pure returns(uint) {
        return x>=y ? x : y;
    }
}

contract Test {
    function testMax(uint x, uint y) external pure returns(uint) {
        return Math.max(x, y);
    }
}

contract TestArray {
    uint[] public arr = [1,2,3,4];
    
    function testFind() external view returns (uint i) {

    }
}