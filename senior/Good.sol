//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/// @title Contract for https://www.learnweb3.io/tracks/senior/delegate-call
/// @author Olivier Winkler
/// @dev All function calls are currently implemented without side effects
contract Good {
    address public helper;
    address public owner;
    uint public num;

    constructor(address _helper) {
        helper = _helper;
        owner = msg.sender;
    }

    function setNum(uint _num) public {
        helper.delegatecall(abi.encodeWithSignature("setNum(uint256)", _num));
    }
}
