// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";

// NOTE: Usage of Foo is what causes periphery contract verification to fail!
import {Foo} from "./libraries/Foo.sol";

contract MyContract {
    string public name;

    uint256 private number;

    constructor(string memory name_) {
        name = name_;
        number = Foo.addOne(FixedPointMathLib.mulDivDown(10, 10, 5));
    }
}
