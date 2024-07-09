// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract TokenV2 {

    // public variables here
    string public TokenName = "Truely Amazing Coin";
    string public TokenAbbrev = "TAC";
    uint public TotalSupply;
    // mapping variable here
    mapping(address => uint) public balances;
    // mint function
    function mint(address to, uint value) public {
        require(value > 0, "Mint amount must be greater than zero");
        TotalSupply += value;
        balances[to] += value;
        if (value > 50){
            revert("Minting was limited to 50");
        }
    }
    // burn function
    function burn(address from, uint value) public {
        require(balances[from] >= value, "Insufficient balance for burning");
        TotalSupply -= value;
        balances[from] -= value;
        assert(TotalSupply == balances[from]);
    }
    //test function to test assertion
    function testassert(uint value) public {
        TotalSupply -= value;
    }
    function matchTotalSupply(address from) public {
        TotalSupply = balances[from];
    }
}
