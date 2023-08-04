//SPDX-License-Identifier:MIT
pragma solidity ^0.8.9;

contract Error{

    uint [] public a = [1,2,3,4,4];
    uint public l=a.length;
    uint public test;
    function ck(uint _i) public {
        require(_i<=10,"i>10");
        // return _i;
        test = _i;

    }
    function testRevert(uint _j) public {
        if(_j>20){
            revert("_j>20");
        }
        test = _j;
    }


    function returnMany(uint _b, bool c) public pure returns(uint, bool){
        return (_b,c);
    }
    function PrintArray() public view returns(uint){
        
        uint i;
        for(i=0;i<l;i++){
            return a[i];
        }
        // return a[];
    }

}
