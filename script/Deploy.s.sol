// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import "../src/Counter.sol";

contract DeployScript is Script {
    function run() external {
        // For simulation: reads private key from env when broadcasting
        vm.startBroadcast();
        Counter c = new Counter();
        vm.stopBroadcast();
        // prints address to console in the foundry output
    }
}
