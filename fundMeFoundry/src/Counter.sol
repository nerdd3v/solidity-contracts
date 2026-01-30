// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe {
    address public owner;
    mapping(string name => uint256 valueInDollar) fundings;
    AggregatorV3Interface public priceFeed;

    constructor(address _priceFeed){
        owner = msg.sender;
        priceFeed = AggregatorV3Interface(_priceFeed);
    }
    
}
