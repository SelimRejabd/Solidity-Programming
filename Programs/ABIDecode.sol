// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract AbiDecode {
    struct MyStruct {
        string name;
        uint[2] nums;
    }

    function encode(
        uint x,
        address addr,
        uint[] calldata arr,
        string memory name
    ) external pure returns (bytes memory) {
        return abi.encode(x, addr, arr, name);
    }

    function decode(bytes calldata data) external pure 
    returns (
        uint x,
        address addr,
        uint[] memory arr,
        string memory name
    ) 
    {
      (x, addr, arr, name)  = abi.decode(data, (uint, address, uint[], string));
    }
}