// SPDX-License-Identifier: MIT
// An example of a consumer contract that relies on a subscription for funding.
pragma solidity ^0.8.7;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
contract ForGetPrice {
   
     AggregatorV3Interface internal priceFeed;

     constructor(){
        priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
     }
     
     function getLastesPrice() public view returns (int){
        (,int price,,,)=priceFeed.latestRoundData();
        return price;
     }
}
