// SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <=0.9.0;

// this basically let us appreciate the smart in smart contracts
// means that they are meant to be cost effective

contract bitsAndUnits{
    // uint on default is uint256
    // it has a minimum value of o
    // has a maximum value of (2^256)-1

    // the lower the index, the lower the cost
    // its best to use the value you need for your project


    // changing from one byte to another
    uint32 n = 0x12548855;
    uint16 b = uint16(n); // we lose higher order data from the left 0x8855

    uint16 u = 0x645;
    uint32 y = uint32(u); // we gain bytes from the left 0x0000645

    // same applies to bytes
    bytes2 ba = 0x1234;
    // changing to bytes1 would remove up to 2 numbers (bytes), starting from the right
    // in solidity language: we lose high order data
    bytes1 a = bytes1(ba); // 0x12

    // adding bytes
    bytes3 g = 0x126446;
    bytes4 h = bytes4(g); // 0x1264460000 this adds padding bits to the right

}