// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

library Foo {
    function addOne(uint256 a) internal pure returns (uint256 b) {
        b = a + 1;
    }
}
