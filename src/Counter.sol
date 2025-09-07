// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

contract Counter {
    uint256 public count;
    event Incremented(address indexed who, uint256 by, uint256 newCount);

    function increment() public {
        count += 1;
        emit Incremented(msg.sender, 1, count);
    }

    function add(uint256 n) public {
        count += n;
        emit Incremented(msg.sender, n, count);
    }

    function reset() public {
        count = 0;
    }
}
