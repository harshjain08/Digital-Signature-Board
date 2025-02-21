// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PetitionBoard {
    address[] private signatures;
    mapping(address => bool) private hasSigned;

    function signPetition() public {
        require(!hasSigned[msg.sender], "Already signed");
        hasSigned[msg.sender] = true;
        signatures.push(msg.sender);
    }

    function getSignatures() public view returns (address[] memory) {
        return signatures;
    }
}
