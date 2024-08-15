// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.26;

/// @title Function for getting the current chain ID
library ChainId {
    /// @dev Gets the current chain ID
    /// @return chainId The current chain ID
    function get() internal view returns (uint256 chainId) {
        return block.chainid;
    }
}
