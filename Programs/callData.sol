//SPDX-Lisence-Identifier:MIT
pragma solidity ^0.8.9;
contract Test{
    string public text;
    //calldata 51438
    // memory 51976
    function setString(string memory _text) external{
        text = _text;
    }

    function getString() public view returns(string memory){
        return text;
    }
}