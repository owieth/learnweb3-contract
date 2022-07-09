// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/// @title Contract for https://www.learnweb3.io/tracks/freshman/dapp-tutorial
/// @author Olivier Winkler
/// @notice This is an example Contract for solving dapp tutorial
/// @dev All function calls are currently implemented without side effects
contract Mood {
    public string mood;

    /// @param _mood sent amount
    /// @dev Set mood to given value
    function setMood(string _mood) public {
        mood = _mood;
    }

    /// @dev Return current mood
    function getMood() public view returns (string) {
        return mood;
    }
}
