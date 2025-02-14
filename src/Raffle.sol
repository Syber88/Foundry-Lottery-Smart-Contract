//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title A sample Raffle contract
 * @author Syber88
 * @notice This contract is for creating a simple raffle
 * @dev Implements Chainlink VRFv---
 */
contract Raffle {
    /* Errors */
    error Raffle__SendMoreToEnterRaffle();

    uint256 private immutable i_entranceFee;
    address payable[] private s_players

    /**events */
    event RaffleEntered(address indexed player);

    constructor(uint256 entranceFee) {
        i_entranceFee = entranceFee; //will be in native token
    }

    function enterRagffle() public payable {
        if (msg.value < i_entranceFee) {
            revert Raffle__SendMoreToEnterRaffle();
        }
        s_players.push(payable(msg.sender))
        emit RaffleEntered(msg.sender);

    }

    function pickWinner() public {}

    function getEntranceFee() external view returns (uint256) {
        return i_entranceFee;
    }
}
