// SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <=0.9.0;

// we create a contract to check the people in the residency, ckeck whether they are still around and chceck to total number of people there

contract DataCollection{
    // A struct holds data that are related to eachother
    struct Person{
        string name;
        uint256 age;
        bool LivesHereOrNot;
    }
    enum ResidencyStatus{
        LivesHere,
        MovedAway
    }
    // List of all residents
    Person[] public listOfResident;

    // event
    event PersonAdded(string name, uint256 age, ResidencyStatus);

    // we now map the tenants with a key value system
    

}