// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/// @title Contract for https://www.learnweb3.io/tracks/senior/re-entrancy
/// @author Olivier Winkler
/// @dev All function calls are currently implemented without side effects
contract GoodContract {
    mapping(address => uint) public balances;

    // Update the `balances` mapping to include the new ETH deposited by msg.sender
    function addBalance() public payable {
        balances[msg.sender] += msg.value;
    }

    // Send ETH worth `balances[msg.sender]` back to msg.sender
    function withdraw() public {
        require(balances[msg.sender] > 0);
        (bool sent, ) = msg.sender.call{value: balances[msg.sender]}("");
        require(sent, "Failed to send ether");
        // This code becomes unreachable because the contract's balance is drained
        // before user's balance could have been set to 0
        balances[msg.sender] = 0;
    }
}

/*

    How to prevent re-entrancy?

    function withdraw() public {
        require(balances[msg.sender] > 0);
        balances[msg.sender] = 0;
        (bool sent, ) = msg.sender.call{value: balances[msg.sender]}("");
        require(sent, "Failed to send ether");
    }

    or modifier of OpenZeppelin:
    
    modifier nonReentrant() {
        require(!locked, "No re-entrancy");
        locked = true;
        _;
        locked = false;
    }
*/
