// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

/// @title Contract for https://www.learnweb3.io/tracks/freshman/cryptocurrency-tutorial
/// @author Olivier Winkler
/// @notice This is an example Contract for solving erc20 tutorial
/// @dev All function calls are currently implemented without side effects
contract LW3Token is ERC20 {
    constructor(string memory _name, string memory _symbol)
        ERC20(_name, _symbol)
    {
        // @notice Mint 10 LW3Tokens to sender (myself)
        _mint(msg.sender, 10 * 10**18);
    }
}
