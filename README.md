# lotterygame
# Lottery Smart Contract

This is a simple Solidity-based lottery smart contract deployed on the EduChain network. The contract allows participants to enter a lottery by sending Ether, and the contract randomly selects a winner. The winner receives the total prize pool in the contract.

## Features

- **Enter the Lottery**: Users can participate in the lottery by sending at least 0.01 ETH.
- **Random Winner Selection**: The contract randomly selects a winner at the end of the lottery.
- **Prize Distribution**: The winner receives the total balance of the contract as their prize.
- **Simple & Transparent**: The lottery process is fully on-chain, and all transactions can be verified on the blockchain.
  
## Deployed Contract

The lottery contract is deployed on the **EduChain** network. The contract address is:

0x3F8183EBe454DB79665Bae8278cb3064309a3F77

markdown
Copy

You can interact with the deployed contract directly using tools like [Remix IDE](https://remix.ethereum.org/), MetaMask, or any compatible wallet and DApp browser.

## How to Use

### 1. Enter the Lottery
To enter the lottery:
- Send at least 0.01 ETH to the contract address.
- Call the `enter()` function from your wallet to participate in the lottery.

### 2. Select the Winner
Once enough participants have entered the lottery:
- Anyone can call the `pickWinner()` function to select a random winner.
- The winner receives the entire balance of the contract as their prize.

### 3. Check the Contract
You can use the following functions to interact with the contract:

- **`getContractBalance()`**: Check the current balance of the contract (total prize pool).
- **`getNumberOfParticipants()`**: View the number of participants currently entered in the lottery.

## Contract Functions

### `enter()`
- **Purpose**: Allows users to enter the lottery by sending a minimum of 0.01 ETH.
- **Usage**: Call the `enter()` function and send the required amount of Ether.

### `pickWinner()`
- **Purpose**: Randomly selects a winner and transfers the total contract balance to them.
- **Requirements**: There must be at least one participant in the lottery.

### `getContractBalance()`
- **Purpose**: Returns the current balance of the contract (the total prize pool).
- **Usage**: Call this function to see the prize amount available.

### `getNumberOfParticipants()`
- **Purpose**: Returns the number of participants in the current lottery round.
- **Usage**: Call this function to check how many users have entered.

## Deployment

This contract is deployed on **EduChain** at the following address:

0x3F8183EBe454DB79665Bae8278cb3064309a3F77

pgsql
Copy

You can interact with the contract on the EduChain network using any Ethereum-compatible wallet, such as MetaMask.

## Security Considerations

- The lottery contract uses a simple pseudo-random number generation method for selecting a winner (based on `block.difficulty` and `block.timestamp`).
- This random number generation method is not secure and can be manipulated by miners. For high-value applications, consider using a secure random number source like Chainlink VRF (Verifiable Random Function).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments
- Thanks to the Ethereum community for developing Solidity and decentralized technologies.
- EduChain for providing an educational blockchain platform to deploy the contract.
