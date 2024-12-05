// SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <= 0.9.0;


// Loops allow us to iterate through a set of data

contract LoopContract{
    // a function to check if a set of numbers are divisible by eachother (modulo)
    function checkMultiples(uint num1, uint num2) public pure returns(bool){
        if (num1 % num2 == 0){
            return true;
        }else {
            return false;
        }
    }
    // or we can just use an array
    // The function to be created would loop through an array and check for multiples of a number in an array
    // and provide us with the amount of multiples in the array


    uint [] public randomArray = [1,2,3,4,5,6];
    
    function multiplierCheck(uint number) public view returns(uint counter){
        counter = 0; // counter starts at zero
        for (uint i = 1; i< randomArray.length; i++) 
        {
            if (checkMultiples(randomArray[i], number)){
                counter ++;
                
            }
        }return counter;
    }

    uint [] public longList = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,16,17,18,19,20];
    uint [] public numbersList = [1,4,34,56];
    // Assignment 1 : create a function that loops through numbersList to check if the number inputed by the user is in the array
    // pseudocode: * the function must take user input, be public viewed and must return a bool
    //             * there should be a condition where what the user inputs is === to the number in the array
    //             * finally the bool should be returned

    function checkUserInput(uint num) public view returns (bool success){
        for(uint i = 0; i < numbersList.length; i ++){
        if (num == numbersList[i]){
            return true;
        }
    }}
    // Assignment 2 : create a function that checks how many even numbers are in the numbers list
    // Pseudocode: * the function must return an integer, must be public viewed
    //             * create a counter variable and initialize it form 0
    //             * add an if statement that compares the values of the longlist 
    function evenNumberCounter() public view returns (uint){
        uint counting = 0;
        for (uint j = 0; j < longList.length; j ++){
            if (longList[j] % 2 == 0){
                counting ++;
            }
            
        }return counting;
    }
    
}
