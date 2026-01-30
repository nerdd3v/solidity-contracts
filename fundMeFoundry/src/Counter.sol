// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe {
    int256 public constant minimum_amount_in_USD = 5;
    address immutable public I_OWNER;
    mapping(address wallet => int256 valueInUSD) fundings;

    AggregatorV3Interface public priceFeed;

    constructor(address _priceFeed){
        I_OWNER = msg.sender;
        priceFeed = AggregatorV3Interface(_priceFeed);
    }
    
    function fund()public payable{
        require(msg.value >= getPrice(), "at least 5$ needs to be funded");
        fundings[msg.sender] ++;
    }

    function getPrice()public view returns(uint256){
        (,int256 answer,,,) = priceFeed.latestRoundData(); //3000$
        int256 weiConversion = 5e18/answer;
        return uint256(weiConversion);
    }
}

//Mathematics 
// 1e18 = 1eth
// 1eth = 3000$
// 1e18 = 3000$
// x wei = 5$