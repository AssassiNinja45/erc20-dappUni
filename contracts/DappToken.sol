// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DappToken {
    string public name = "DApp Token";    
    string public symbol = "DAPP";
    string public standard = "DApp Token v1.0";
    uint256 public totalSupply;

    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 _value   
    );

    mapping(address => uint256) public balanceOf;

    constructor(uint256 _initialSupply) {
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
    }

    // Transfer Function
    function transfer(address _to, uint256 _value) public returns (bool success) {
        // Exception if account lacks funds
        require(balanceOf[msg.sender] >= _value);
        // Transfer the balance
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        // Transfer Event
        emit Transfer(msg.sender, _to, _value);
        // Return Boolean
        return true;
    }
}