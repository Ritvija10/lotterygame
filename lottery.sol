/ SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Lottery {

    // Array to store participants
    address[] public participants;

    // Event to log when the lottery ends and a winner is selected
    event LotteryEnded(address indexed winner, uint256 prizeAmount);

    // Function to enter the lottery
    function enter() public payable {
        // Ensure that the participant sends a minimum of 0.01 ETH to enter
        require(msg.value >= 0.01 ether, "Minimum 0.01 ETH required to enter");

        // Add the participant to the participants array
        participants.push(msg.sender);
    }

    // Function to select a winner and transfer the prize
    function pickWinner() public {
        // Ensure there are participants in the lottery
        require(participants.length > 0, "No participants in the lottery");

        // Generate a random index (simple pseudo-random number generation)
        uint256 randomIndex = uint256(keccak256(abi.encodePacked(block.prevrandao, block.timestamp, participants))) % participants.length;

        // Select the winner
        address winner = participants[randomIndex];

        // Transfer the prize to the winner (the contract's balance)
        uint256 prizeAmount = address(this).balance;
        payable(winner).transfer(prizeAmount);

        // Emit the LotteryEnded event
        emit LotteryEnded(winner, prizeAmount);

        // Reset the participants for the next round
        delete participants;
    }

    // Function to check the current balance of the contract
    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }

    // Function to get the number of participants
    function getNumberOfParticipants() public view returns (uint256) {
        return participants.length;
    }
}
 
