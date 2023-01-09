// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";

import {MyContract} from "foundry-verification-bug-core/MyContract.sol";

contract MyHelper {
    function getNameOf(MyContract myContract) public view returns (string memory) {
        return string.concat("The name is: ", myContract.name());
    }

    function doRandomOtherThing() public pure returns (uint256 number) {
        number = FixedPointMathLib.mulDivDown(12, 12, 2);
    }
}
