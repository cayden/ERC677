pragma solidity ^0.4.18;

import './ERC677Token.sol';


/**
 * @title Example ERC677 Token
 * @dev A very crude example (though functional) of an ERC677 compatible
 *      token. See https://github.com/ethereum/EIPs/issues/677 for
 *      specification and discussion.
 */
contract ExampleERC677Token is ERC677Token {
    function ExampleERC677Token(uint256 _totalSupply) public {
        totalSupply = _totalSupply;
        balances[msg.sender] = _totalSupply;
    }
}
