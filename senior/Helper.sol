// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/// @title Contract for https://www.learnweb3.io/tracks/senior/delegate-call
/// @author Olivier Winkler
/// @dev All function calls are currently implemented without side effects
contract Helper {
    uint public num;

    function setNum(uint _num) public {
        num = _num;
    }
}
