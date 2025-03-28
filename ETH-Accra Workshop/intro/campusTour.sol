// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; // Specifies the Solidity version


contract MyFirstContract {
// Contract content goes here
    function getName() public pure returns (string memory){
        return "UG Tour";
    }

}

contract Example {
    uint256 public storedNumber; // A state variable stored on the blockchain
    function setNumber(uint256 _num) public {
        storedNumber = _num; // Updates the state variable
    }

    
    function getNumber() public pure returns (uint256) {
        uint256 localNumber = 10; // Local variable, exists only in this function
        return localNumber;
    }

        
    uint256 public blockNumber = block.number; // Gets the current block number
    address public sender = msg.sender; // Gets the address of the sender
}

contract Deposit{
        
    function deposit() public payable {
        require(msg.value > 0, "Must send some Ether"); // Ensures Ether is sent
    }
    function getBalance() public view returns (uint256) {
        return address(this).balance; // Returns the contract's balance
}
}