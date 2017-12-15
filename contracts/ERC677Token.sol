pragma solidity ^0.4.18;

import './StandardToken.sol';
import './ERC677.sol';
import './ERC677Receiver.sol';


contract ERC677Token is ERC677, StandardToken {
    function transferAndCall(address _receiver, uint _amount, bytes _data) {
        require(super.transfer(_receiver, _amount));

        Transfer(msg.sender, _receiver, _amount, _data);

        // call receiver
        if (isContract(_receiver)) {
            ERC677Receiver to = ERC677Receiver(_receiver);
            to.tokenFallback(msg.sender, _amount, _data);
        }
    }

    function isContract(address _addr) private returns (bool) {
        uint len;
        assembly {
            len := extcodesize(_addr)
        }
        return len > 0;
    }
}
