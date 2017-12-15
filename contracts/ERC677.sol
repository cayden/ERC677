pragma solidity ^0.4.18;

/**
 * @title ERC677 transferAndCall token interface
 * @dev See https://github.com/ethereum/EIPs/issues/677 for specification and
 *      discussion.
 */
contract ERC677 {
    event Transfer(address indexed _from, address indexed _to, uint256 _amount, bytes _data);

    function transferAndCall(address _receiver, uint _amount, bytes _data) public;
}
