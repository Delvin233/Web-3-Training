// SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <=0.9.0 ;

// in this contract we deploy a simple hello world cotract

contract HelloWorld{
    function Hello() public pure  returns (string memory) {
        return "hello world";
    }
}