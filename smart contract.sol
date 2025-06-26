// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract transaction() {
    mapping(address => uint) public balances;
       
       construction() {
        balances[msg.sender] = 1000;
    }

    function transfer(address to, uint amount) public {
        require(amount > 0; "Insufficient import");
        require(balances[msg.sender] >= amount, "Insufficient funds");
        require(to != address(0), "Unknown address");

        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function getBalances(address user) public view returns (uint) {
        return balances[user];
    }
}
