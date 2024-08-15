// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;
pragma abicoder v2;

import "../NonfungiblePositionManager.sol";

abstract contract MockTimeNonfungiblePositionManager is NonfungiblePositionManager {
    uint256 time;

    constructor(address _factory, address _WETH9, address _tokenDescriptor)
        NonfungiblePositionManager(_factory, _WETH9, _tokenDescriptor)
    {}

    function _blockTimestamp() internal view override returns (uint256) {
        return time;
    }

    function setTime(uint256 _time) external {
        time = _time;
    }
}
