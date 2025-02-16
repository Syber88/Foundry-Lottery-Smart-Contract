// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script, console2} from "forge-std/Script.sol";
import {HelperConfig} from "../script/HelperConfig.sol";
import {VRFCoordinatorV2_5Mock} from "@chainlink/contracts/src/v0.8/vrf/mocks/VRFCoordinatorV2_5Mock.sol";

contract CreateSubscription is Script{
    function createSubscriptionUsingConfig() public returns (uint256, address){
        HelperConfig helperConfig = new HelperConfig();
        address vrfCoodinator = helperConfig.getConfig().vrfCoordinator;
        (uint256 subId, address vrfCoordinator) = createSubscription(vrfCoodinator);
        return (subId, vrfCoordinator);
    }

    function createSubscription(address vrfCoordinator) public returns (uint256, address){
        console2.log("creating Subscription on chain Id: ", block.chainid);
        vm.startBroadcast();
        uint256 subId = VRFCoordinatorV2_5Mock(vrfCoordinator).createSubscription();
        vm.stopBroadcast();
        console2.log("Your Subscription Id is: ", subId);
        return (subId, vrfCoordinator);




    }

    function run() public {

    }

}