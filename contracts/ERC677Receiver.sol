pragma solidity ^0.4.18;

/**
 * @title Receiver interface for ERC677 transferAndCall
 * @dev See https://github.com/ethereum/EIPs/issues/677 for specification and
 *      discussion.
 */
contract ERC677Receiver {
    function tokenFallback(address _from, uint _amount, bytes _data) public;
}
