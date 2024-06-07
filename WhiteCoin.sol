// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract MyToken {

    // public variables here
    string public tokenName = "White Coin";
    string public tokenAbbrv = "WC";
    uint public totalSupply = 0;

    // mapping variable here
    mapping(address => uint) public balances;

    // mint function
    function mint (address _address, uint _value) public {
        balances[_address] += _value;
        totalSupply += _value;
    }

    // burn function
    function burn (address _address, uint _value) public {
        if(balances[_address] >= _value){
            balances[_address] -= _value;
            totalSupply -= _value;
        }
    }
}
