// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {FundMe} from "../src/Counter.sol";

contract CounterScript is Script {
    FundMe public counter;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        counter = new FundMe(0x694AA1769357215DE4FAC081bf1f309aDC325306);

        vm.stopBroadcast();
    }
}
