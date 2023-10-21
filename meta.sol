// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract MyToken {

    // public variables 
    string public tokenName = "mytokentoaccess";
    string public tokenAbbrv = "mta";
    uint public totalSupply = 0 ;

    // mapping variable
    mapping(address => uint) public balances;

    // mint function
    function mint(address _add, uint _val) public {
        totalSupply += _val;
        balances[_add] += _val;
    }

    // burn function
    function burn(address _add, uint _val) public {
        if( balances[ _add ] >= _val) {
            totalSupply -= _val;
            balances[_add] -= _val;
    }
    }
}
