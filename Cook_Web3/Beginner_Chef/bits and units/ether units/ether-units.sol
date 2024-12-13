// SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <=0.9.0;


// etherium is the blockchain and ether is the currency
// wei is the smallest denomination of ether
// 1 eth = 10^18 wei
contract etherUnits{
    // Assert should only be used to test for internal errors, and to check invariants. 
    function learnUnits() public pure{
        assert(1 ether == 1e18 wei);
    }
    // assert times and dates in solidity
    function assertTime() public pure{
        assert (60 seconds == 1 minutes );
        assert (1 hours == 60 minutes);
    }
}