// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DappToken {
    // Constructor
    // Set total number of tokens
    // Read the total number of tokens
    uint256 public totalSupply;
    
    constructor() {
        totalSupply = 1000000;
    }

}