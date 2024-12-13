// SPDX-License-Identifier: MIT
pragma solidity >0.7.0 <=0.9.0;

// an example of  global variable is the msg.sender variable


// create a map of wallets with amounts and  update the amounts

contract LedgerBalance{
    mapping (address => uint) balances;

    function changeBal(uint newBalances) public {
        balances[msg. sender] = newBalances;
    }

}

// assignment
// create a contract that inherits the above contract
// create a function called update balance
// this fucntin updates the Balance  of the msg.sender address 

contract Updated{
    function updateBalance () public {
       LedgerBalance ledgerbalance = new LedgerBalance();
       ledgerbalance.changeBal(30); 
    }
}

// OTHER GLOBAL VARIABLES IN THE BLOCKCHAIN

contract SimpleVariables{

    uint storedData;
    function set(uint _x) public {
        //storedData = _x;

        // block difficulty
        //storedData = block.difficulty;

        // time stamp
        storedData = block.timestamp;
    }
    function get() public view  returns(uint){
        return storedData;
    }
}


