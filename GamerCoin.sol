// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.9;
import "C:\Users\rwh11\OneDrive\Documents\GitHub\MetaMaskTest\Contracts\GamerCoin\ERC20Burnable.sol
/// @notice Explain to an end user what this does
/// @dev Explain to a developer any extra detailsERC20Burnable.sol";


contract GamerCoin is ERC20Burnable {
    constructor(uint256 initialBalance) ERC20("GamerCoin", "GAC") {
        _mint(msg.sender, initialBalance);
    }
}
