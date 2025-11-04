// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BaseKitRegistry {
    mapping(address => string) public gameNames;
    mapping(address => uint256) public playerCounts;
    
    uint256 public totalGames;
    uint256 public totalPlayers;
    
    event GameRegistered(address indexed game, string name);
    event PlayerJoined(address indexed player, address indexed game);
    
    function registerGame(string memory gameName) external {
        if (bytes(gameNames[msg.sender]).length == 0) {
            totalGames++;
        }
        gameNames[msg.sender] = gameName;
        emit GameRegistered(msg.sender, gameName);
    }
    
    function playerJoinGame() external {
        totalPlayers++;
        emit PlayerJoined(msg.sender, tx.origin);
    }
    
    function getStats() external view returns (uint256, uint256) {
        return (totalGames, totalPlayers);
    }
}
