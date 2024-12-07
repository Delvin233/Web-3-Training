// SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <= 0.9.0;

/* Constructors are a special fucntion in Solidiy
The keyword is constructor and it is used to initialize a state variables of a contract
    FEATURES
    1. Only one constructor per contract
    2. It is used to initialize a contract state
    3. Can be public or internal
    4. Incase there is no contractor, a default is created
*/

contract member{
    string Name;
    uint age;

    // initialize Name and age upon deployment with a constructor
    constructor(string memory _name, uint _age) public {
        Name = _name;
        age = _age;
    }
}

// To return Name we have to inherit member. The keyword is "is"
contract Teacher is member {
    // we can use the contractor instead of hardcoding the parameers 
    // for instance: contract Teacher is member("Sam", 45){}
    constructor (string memory names, uint ages) member(names, ages) public{}

    function getName() public view returns (string memory){
        return Name;
    }
}

// assignment
// create a contract called Base, store fully accessible inside and outside data(integer) on deployment
// create another contract called Derieved to derieve the data from base and output the data to the number 5

contract Base{
    uint number;
    constructor(uint _num) public {
        number = _num;
    } 

}
contract Derieved is Base(5){

    function derieved() public view returns(uint){
        return number;
    }
}


