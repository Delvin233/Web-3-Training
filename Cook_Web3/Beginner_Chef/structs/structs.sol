// SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <0.9.0;


// struct is used to hold or bundle various data types
contract structTest{
    struct Movie{
        string Title;
        string Director;
        uint DateOfRelease;
        uint moneyGenerated;
        string countryOfOrigin;
        bool spinOff;
        
    }

    // before using a fucntion to set the struct values, we assign the struct Movie to a variable
    Movie movie;
    Movie comedy;

    function setMovie() public{
        movie = Movie('BlueLock','Ego Sempachi', 2024, 1000000, 'Japan', false);   
        comedy = Movie('Pandas', 'MewTwo', 2000, 5000000, 'America',true); 
    }

    // add a function to return the values we want
    function getMovieInfo() public view returns(bool){
        return  movie.spinOff;
    }
     function getMovieDate() public view returns(uint){
        return  comedy.DateOfRelease;
    }
   
}

