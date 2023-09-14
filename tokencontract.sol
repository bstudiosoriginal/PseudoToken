// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;


contract MyToken {
    string public tokenName = "AdToken";
    string public tokenAbbr = "ADT";
    uint public totalValue = 0;
    mapping (address => uint) public balances;

    function mint(address sender, uint value) external {
        totalValue += value;
        balances[sender] += value;
    }

    function burn(address sender, uint value) external {
        if (balances[sender] >= value){
            totalValue -= value;
            balances[sender] -= value;
        }
        
    }

}