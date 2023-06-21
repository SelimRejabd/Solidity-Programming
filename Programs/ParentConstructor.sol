//SPDX-Lisence-Identifier:MIT
pragma solidity ^0.8.9;

contract A {
    string public text;
   constructor(string memory _text){
       text = _text;
   }
}

contract B {
    string public name;
   constructor(string memory _name){
       name = _name;
   }
}

contract C is A("A"), B("B") {
    
}

contract D is A, B {
    constructor(string memory _name, string memory _text) A(_name) B(_text){
        
    }
}
