// SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <=0.9.0;

// mapping assigns with a key-value library to save some data
// we have to write excess code to loop through a map

contract learnMapping{
    mapping (address => uint) public myMap;

    // we create a function to get the address we want
    function getAddress(address _address) public view returns (uint){
        return myMap[_address];
    }
    
    // create a function to set or add an address
    function setAddress(address _address, uint _i) public {
        myMap[_address] = _i;
    }

    // create a function to remove an address
    function removeAddress(address _address) public{
        delete myMap[_address];
    }
    
}

contract mappingAssignment{
    struct Movie{
        string title;
        string director;
    }
    mapping (uint => Movie) public movieMap;

    // create a function to take inputs and update the Movie struct
    function movieInput(string memory title, string memory director, uint id) public{
        movieMap [id] = Movie(title, director);
    }
  
}