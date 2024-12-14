// SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <=0.9.0;


// function modifiers are used to modify the behaviour of a function
// function modifiers are customizable modifications of functions

contract Owner{
    address owner;
    
    // when we deploy the contract we want to set the address of the contract to the owner
    constructor () public  {
        owner = msg.sender;
    }

    modifier onlyOwner{
        // any customizable logic to modify the function

        require(msg.sender == owner);
        _;   // the underscore implies that the function should continue
            // it is used to end the modifier statement
    }
    
}

contract Register is Owner{
    mapping (address => bool) registeredAccount;
    
    uint price;

    // using a constructor to set the price to initial price
    constructor (uint initialPrice) public {
        price = initialPrice;
    }

    // function to set msg.sender to true
    function register() public payable{
        registeredAccount[msg.sender] = true;
    }
    
    // function to allow only the owner to modify the price
    function changePrice (uint newPrice) public onlyOwner{
        price = newPrice;
    }
}

// create a function modifier for Register above