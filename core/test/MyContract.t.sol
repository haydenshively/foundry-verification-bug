// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

import "forge-std/Test.sol";

import {MyContract} from "src/MyContract.sol";

contract MyContractTest is Test {
    function setUp() public {}

    function test_name() public {
        MyContract myContract = new MyContract("Hello World");
        assertEq(myContract.name(), "Hello World");
    }
}
