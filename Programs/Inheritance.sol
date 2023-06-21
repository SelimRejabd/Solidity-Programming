//SPDX-Lisence-Identifier:MIT
pragma solidity ^0.8.9;

contract A {
    function retA() public pure virtual returns(string memory){
        return "A";
    }

}

contract B is A {
    function retA() public pure override returns(string memory){
        return "B";
    }
}