//SPDX-Lisence-Identifier:MIT
pragma solidity ^0.8.9;

contract A {
    function retA() public view virtual returns(string memory){
        return "A";
    }
}

contract B is A {
    function retA() public view override virtual returns(string memory){
        return "B";
    }
}

contract C is A,B {
    function retA() public view override(A,B) returns(string memory){
        return "c";
    }
}
