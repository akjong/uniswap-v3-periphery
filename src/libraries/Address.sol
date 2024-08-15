// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    function isContract(address addr) internal view returns (bool) {
        // The EXTCODEHASH of the account without code is c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 what is the keccack256 hash of empty data, https://github.com/ethereum/EIPs/blob/master/EIPS/eip-1052.md
        bytes32 accountHash = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;

        bytes32 codehash;
        assembly {
            codehash := extcodehash(addr)
        }
        return (codehash != 0x0 && codehash != accountHash);
    }
}
