// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import 'hardhat/console.sol';


contract EtherWallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
        console.log(owner);
    }

    receive() external payable {}

    function withdraw(uint _amount) external {
        require(msg.sender == owner, "caller is not owner");
        payable(msg.sender).transfer(_amount);
        console.log('You have done withdraw');
    }

    function getBalance() external view returns (uint) {
        return address(this).balance;
    }
}
