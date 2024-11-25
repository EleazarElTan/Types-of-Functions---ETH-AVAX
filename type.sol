// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Type is ERC20, Ownable {

    constructor(string memory name, string memory symbol) ERC20(name, symbol) Ownable(msg.sender){
        _mint(msg.sender, 1 * 10**decimals()); 
    }
    function decimals() public pure override returns (uint8) {
        return 3;
    }
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
     function transferToken(address destination, uint256 amount) public {
        _transfer(msg.sender, destination, amount);
    }
}
