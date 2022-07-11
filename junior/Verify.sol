//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/// @title Contract for https://www.learnweb3.io/tracks/junior/etherscan-contract-verification
/// @author Olivier Winkler
/// @notice Verified Contract https://mumbai.polygonscan.com/address/0x9FA39A2552278E1D32DB92185Eb67969E7e865cf
/// @dev All function calls are currently implemented without side effects
contract Verify {
    string private greeting;

    function hello(bool sayHello) public pure returns (string memory) {
        if (sayHello) {
            return "hello";
        }
        return "";
    }
}
