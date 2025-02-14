//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title A sample Raffle contract
 * @author Syber88
 * @notice This contract is for creating a simple raffle
 * @dev Implements Chainlink VRFv---
 */

contract Raffle {

    uint256 private immutable i_entranceFee;

    constructor(uint256 entranceFee) {
        i_entranceFee = entranceFee; //will be in native token
    }

    function enterRagffle () public payable {}

    function pickWinner () public {}

    function getEntranceFee () external view returns(uint256) {
        return i_entranceFee;
    }

}
