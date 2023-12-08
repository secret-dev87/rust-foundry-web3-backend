// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
    function setUp() public {}

    // Deployed to 0x2A872b3411b7d9B006Ca16600B51D742da7e6089
    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        Counter counter = new Counter();
        console2.log("Counter address: ", address(counter));
        counter.setNumber(69420);
        console2.log("Counter number: ", counter.number());
        vm.stopBroadcast();
    }
}
