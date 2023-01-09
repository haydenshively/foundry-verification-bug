// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.17;

import "forge-std/Script.sol";

import {MyHelper} from "src/MyHelper.sol";

contract DeployScript is Script {
    function run() external {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));

        new MyHelper();

        vm.stopBroadcast();
    }
}
