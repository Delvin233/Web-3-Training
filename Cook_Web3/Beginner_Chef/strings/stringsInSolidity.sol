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

    // strings are expensive in solidity and so strings should be converted to bytes so we can do some things 
    // like checking the length of the string
    function lengthOfAString()public view returns(uint){
        // return Greetings.length();


        // computers speak in bytes
        // they also have a storage optioin in Solidity so we can use memory or storage

        bytes memory stringToBytes = bytes(Greetings);
        return stringToBytes.length;
    }
} 
contract Colors{
    // creating functions to take a color we already have set, change the color and give the length of the color
    string public favouriteColor = "Blue";
    function color() public view returns(string memory){
        return favouriteColor;
    }
    function changeColor(string memory _colorchange) public{
        favouriteColor = _colorchange;
    }
    function lettersInColor() public view returns(uint){
        // first convert from string to bytes
        bytes memory colorToByte = bytes(favouriteColor);
        return colorToByte.length;
    }


        //  EXTRAS
        // \n can be used to skip lines
}