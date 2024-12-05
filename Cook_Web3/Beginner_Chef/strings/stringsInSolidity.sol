// SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <=0.9.0;


contract StringsPractice{
    string Greetings = "Helloooo";

    function Hello () public view returns(string memory){
        return Greetings;
        // the returns for string is either memory and storage
        // memory is like RAM, where Solidity doesn't keep the data betweeen excecutions
        // storage retains the data
    }
}