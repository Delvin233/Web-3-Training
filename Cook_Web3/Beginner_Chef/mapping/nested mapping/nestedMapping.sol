// SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <=0.9.0;

// the nested mapping idea is to for instance allow one address to spend on behalf of another

contract mappingAssignment{
    mapping (address => mapping(uint => Movie)) public myNestedMap;


    struct Movie{
        string title;
        string director;
    }
    mapping (uint => Movie) public movieMap;

    // create a function to take inputs and update the Movie struct
    function movieInput(string memory title, string memory director, uint id) public{
        movieMap [id] = Movie(title, director);
    }
    function nestedMovie(string memory title, string memory director, uint id) public{
        myNestedMap[msg.sender] [id] = Movie(title, director);
    }
  
}

/* 
Your assignment is to build out the rest of the contract functionality. 
Create a Contract, using nested mapping, to pair two contract addresses together 
(an address owner and an address spender) with a value of integers to keep track of their index.

One you have successfully set up the map, add additional contract functionality 
so that the contract can pair up new addresses together (owner and spender) as well 
as retrieve their mapping value.
*/


contract AddessPair{
    struct address1{
        string SpenderAddress;
    }
    // mapping for the spender
    mapping (uint => address1) public Spenderr;
    
    function valueofSpender (uint id, string memory SpenderAddress) public{
        Spenderr[id] = address1(SpenderAddress);
    }

    // mapping the owner and the spender
    mapping (address => mapping(uint => address1)) public nestedAddresses;

    function valueoOwner (uint id, string memory SpenderAddress) public{
        nestedAddresses[msg.sender][id] = address1(SpenderAddress);
    }
}
// LOL  i might have switched the variables, nonetheless the owner is spending for the spender here :)

    

