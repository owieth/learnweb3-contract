// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/// @title Contract for https://www.learnweb3.io/tracks/sophomore/initial-coin-offering
/// @author Olivier Winkler
/// @notice This is an example Contract for solving initial-coin-offering
/// @dev All function calls are currently implemented without side effects
interface ICryptoDevs {
    /**
     * @dev Returns a token ID owned by `owner` at a given `index` of its token list.
     * Use along with {balanceOf} to enumerate all of ``owner``'s tokens.
     */
    function tokenOfOwnerByIndex(address owner, uint256 index)
        external
        view
        returns (uint256 tokenId);

    /**
     * @dev Returns the number of tokens in ``owner``'s account.
     */
    function balanceOf(address owner) external view returns (uint256 balance);
}
