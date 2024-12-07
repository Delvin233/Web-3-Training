// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// enum is used to restrict a variable to some predefined values
// the enumerated values are called enums

// creating an enum for the class of gob3; from normal to pro to promax 
contract enumTest{
    enum gob3Class {NORMAL, PRO, PROMAX}
    gob3Class choice;
    gob3Class constant defaultClass = gob3Class.NORMAL;

    // a function to retrive the normal class
    function promaxClass() public {
        choice = gob3Class.PROMAX;
    }

    // a function to return the choice we decide on from above
    function getClass() public view returns(gob3Class){
        return choice;
    }

    // a function to return the default choice
    function defaultGob3() public pure returns(uint){
        return uint (defaultClass);
    }
}

// assignment
// create an enum of shirt colors: red, white, green, blue
// creeate a default choice of blue
// creeate a data called choice of no value
// create a function to change the shirt color to white
// create a fucntion to return the choice above
// create a function to retrieve the default choice

contract ShirtColor{
    enum colorOfShirt {red, white, green, blue}
    colorOfShirt choice;
    colorOfShirt constant defaultColor = colorOfShirt.blue;

    function colorWhite() public{
        choice = colorOfShirt.white;
    }
    function getWhite() public view returns(colorOfShirt){
        return choice;
    }
    function getDefault() public pure  returns(colorOfShirt){
        return defaultColor;
    }
}
