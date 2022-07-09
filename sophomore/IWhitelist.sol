// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/// @title Interface for https://www.learnweb3.io/tracks/sophomore/nft-collection
/// @author Olivier Winkler
/// @notice This is an example Contract for solving the nft collection tutorial
/// @dev All function calls are currently implemented without side effects
interface IWhitelist {
    function whitelistedAddresses(address) external view returns (bool);
}
