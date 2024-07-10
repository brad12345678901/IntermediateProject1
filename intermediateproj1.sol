// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ATM {

    uint constant private limit = 50000;
    address private user;
    // mapping variable here
    mapping(address => uint) private balances;
    constructor (address u){
        user = u;
    }
    // deposit function
    function deposit(uint value) public {
        require(value > 0, "The amount must be greater than zero");
        require(value <= limit, "Only up to 50K that can be deposited");
        balances[user] += value;
        if (balances[user] > limit){
            revert("Insuficient Spaces for Deposit, Consider Withdrawing to provide space");
        }
    }
    function viewBalance() public view returns (uint){
        return balances[user];
    }
    // withdraw function
    function withdraw(uint value) public {
        assert(balances[user] != 0);
        require(value > 0, "The amount must be greater than zero");
        require(value <= limit, "Only up to 50K that can be withdrawn");
        require(value <= balances[user],"The amount to withdraw exceeds your balance");
        balances[user] -= value;
    }
}
