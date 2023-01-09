// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

import "forge-std/Test.sol";

import {MyContract, MyHelper} from "src/MyHelper.sol";

contract MyHelperTest is Test {
    function setUp() public {}

    function test_getNameOf() public {
        MyContract myContract = new MyContract("Hello World");
        MyHelper myHelper = new MyHelper();

        assertEq(myHelper.getNameOf(myContract), "The name is: Hello World");
    }
}
