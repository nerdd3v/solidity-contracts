// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {FundMe} from "../src/Counter.sol";

contract CounterTest is Test {
    FundMe public counter;

    function setUp() public {
        counter = new FundMe(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        // counter.setNumber(0);
    }

    // function test_Increment() public {
    //     counter.increment();
    //     assertEq(counter.number(), 1);
    // }

    // function testFuzz_SetNumber(uint256 x) public {
    //     counter.setNumber(x);
    //     assertEq(counter.number(), x);
    // }
}
