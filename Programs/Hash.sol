//SPDX-Lisence-Identifier:MIT
pragma solidity ^0.8.9;

contract HashFunc {
    function hash(string memory text, uint num, address addr) external pure returns (bytes32){
        return keccak256(abi.encodePacked(text, num, addr));
    }

    function encode(string memory _text1, string memory _text2) external view returns (bytes memory){
        return abi.encode(_text1, _text2);
    }

    function encodePacked(string memory _text1, string memory _text2) external view returns (bytes memory) {
        return abi.encodePacked(_text1, _text2);
    }
}
