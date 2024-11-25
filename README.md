###    Types of Functions - ETH + AVAX
# Overview
This repository contains a Solidity smart contract that implements an ERC-20 token with additional features such as custom decimals, minting, burning, and a custom token transfer function. The contract is built using OpenZeppelin libraries for security and functionality.

###  Features

#    Constructor
```
constructor(string memory name, string memory symbol) ERC20(name, symbol) Ownable(msg.sender) {
    _mint(msg.sender, 1 * 10**decimals());
}
```

+ Initializes the contract with a name and symbol for the token.
+ Mints an initial supply of 1 token (adjusted for decimals) to the deployer of the contract.
    
#    Custom Decimals

```
function decimals() public pure override returns (uint8) {
    return 3;
}
```
+ Overrides the default decimals to 3.

#    Mint Function
```
function mint(address to, uint256 amount) external onlyOwner {
    _mint(to, amount);
}
```
+ Allows the contract owner to mint new tokens.
+ Parameters:
    + to: The address to receive the minted tokens.
    + amount: The number of tokens to mint.
      
#    Burn Function

```
function burn(uint256 amount) external {
    _burn(msg.sender, amount);
}
```

+ Enables any user to burn tokens from their own balance.
+ Parameters:
    + amount: The number of tokens to burn.
  
#    Custom Token Transfer

```
function transferToken(address destination, uint256 amount) public {
    _transfer(msg.sender, destination, amount);
}
```

+ Facilitates token transfers from the sender’s address to a specified destination.
+ Parameters:
    + destination: The recipient's address.
    + amount: The number of tokens to transfer.
