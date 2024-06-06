# White Coin Token Solidity Contract
[Project Tutorial]()

This contract manages a custom token. It keeps track of balances for each user and the total supply. It allows creating new tokens (minting) for an address and destroying existing tokens (burning) from the sender's account.
## Description 
The `MyToken` contract implements basic functionalities to handle a custom token on the Ethereum blockchain. It includes:

1.Stores token details (name, symbol, total supply) publicly.

2.Tracks balances per address using a mapping.

3.Mints new tokens for an address with `mintToken`.

4.Burns tokens from an address (with balance check) with `burnToken`.


This contract serves as a simple introduction to creating and managing custom tokens using Solidity.

## Getting Started
### Executing Program
1. **Run on Remix IDE:** Use [Remix](https://remix.ethereum.org/) for online execution.
2. **Create a new Solidity file:** Click "+" in the left sidebar, save as `.sol` (e.g., `MyToken.sol`).
3. **Paste the code:** Copy and paste your Solidity code into the file.
```
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

```
4. **Gettin' it ready to run:** Head over to the "Solidity Compiler" tab on the left. Make sure the "Compiler" version is set to something that works with your code (like 0.8.25). Then, hit that "Compile MyToken.sol" button!

5. **Deployment time!:** Now switch to the "Deploy & Run Transactions" tab. Find `MyToken` in the dropdown menu and click "Deploy" to unleash your contract to the world (well, a virtual world at least).

6. **Let's play!:** Remix provides a cool interface to interact with your contract. Use it to call those `mintToken` and `burnToken` functions. Just fill in the info they need and hit the buttons to make it happen!
   
