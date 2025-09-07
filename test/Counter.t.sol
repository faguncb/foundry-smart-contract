// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "../src/Counter.sol";

contract CounterTest is Test {
    Counter counter;

    function setUp() public {
        counter = new Counter();
    }

    function testInitialCountIsZero() public {
        assertEq(counter.count(), 0);
    }

    function testIncrementIncreases() public {
        counter.increment();
        assertEq(counter.count(), 1);
    }

    // Fuzz test: Foundry will try many values for `n`
    function testAddFuzz(uint8 n) public {
        counter.add(n);
        assertEq(counter.count(), uint256(n));
    }
}
