pragma solidity ^0.4.15;

import '../../contracts/GiveTokenSale.sol';

contract KinTokenSaleMock is GiveTokenSale {
    function GiveTokenSaleMock(address _fundingRecipient, uint256 _startTime)
        GiveTokenSale(_fundingRecipient, _startTime) {
    }

    function setTokensSold(uint256 _tokensSold) {
        tokensSold = _tokensSold;
    }

    /// @dev Web3 helpers functions.
    function getTokenGranteesLength() external constant returns (uint256) {
        return tokenGrantees.length;
    }
}