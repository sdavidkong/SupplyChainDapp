// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract ownable {
    address public _owner;

    constructor() {
        _owner = msg.sender;
    }
    modifier onlyOwner() {
        require(isOwner(), "You are not the owner.");
        _;
    }

    function isOwner() public view returns(bool) {
        return(msg.sender == _owner);
    }
}