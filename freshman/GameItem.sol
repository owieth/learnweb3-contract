// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

/// @title Contract for https://www.learnweb3.io/tracks/freshman/nft-tutorial
/// @author Olivier Winkler
/// @notice This is an example Contract for solving nft tutorial
/// @dev All function calls are currently implemented without side effects
contract GameItem is ERC721 {
    constructor() ERC721("GameItem", "ITM") {
        /// @notice Mint NFT to sender (myself)
        _mint(msg.sender, 1);
    }
}
