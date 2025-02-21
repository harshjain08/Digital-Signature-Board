 ```markdown
# 📝 On-Chain Petition Board

A **decentralized petition system** that allows users to digitally sign petitions on the blockchain. This project ensures **transparency, immutability, and verifiability** of signatures without relying on any central authority.

## 📌 Features  
✅ **Fully On-Chain Signatures** – All signed addresses are stored on the blockchain.  
✅ **No Central Authority** – Completely decentralized and trustless.  
✅ **One Signature Per Address** – Prevents duplicate signatures.  
✅ **Publicly Verifiable** – Anyone can verify signatures.  
✅ **Gas-Efficient Design** – Minimal and optimized for low-cost transactions.  

## 🚀 Deployed Contract  
- **Network**: Edu Chain  
- **Contract Address**: `0x7Ec22848A5C83e637F9B786903a61061517F02de`  
- **Explorer Link**: [Edu Chain Explorer](https://edu-chain-explorer-url.com) *(Replace with actual explorer link if available)*  

## 🔧 How It Works  
1. Users call the `signPetition()` function to sign the petition.  
2. The contract ensures that each address can sign only once.  
3. All signed addresses are stored on-chain and can be fetched using `getSignatures()`.  

## 📜 Smart Contract  
```solidity
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
```

## 👨‍💻 Usage  
- Call `signPetition()` from your Ethereum wallet to sign the petition.  
- Use `getSignatures()` to retrieve the list of all signers.  

## 📢 Contribute  
Feel free to fork, improve, and submit pull requests! 🚀  

---

📌 **Developed & Deployed by Harsh Jain**  
```
