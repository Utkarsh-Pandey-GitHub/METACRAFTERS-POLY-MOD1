# METACRAFTERS-POLY-MOD3
*This is repository for Assessment3 of Metacrafters*
## To use this on your local device
1. Clone this repo by `git clone https://github.com/Utkarsh-Pandey-GitHub/METACRAFTERS-POLY-Module3/`
2. change directory by `cd METACRAFTERS-POLY-Module3/`
3. now check `hardhat.config.js` file and `circuit.circom` file and make changes as necessary. You can also give custom input through *`input.json`* file
4. to compile the circuit run `npx hardhat circom`
5. this command will generate an *`out/`* folder in *`contract/`* folder
6. find the output and the proof *`proof.json`* file which is the proof of circuit.
7. Now to deploy the contract add  network configuration (eg. sepolia or mumbai) to `hardhat.config.js` file.
   ```javascript
   require("@nomicfoundation/hardhat-toolbox");

    // Go to https://infura.io, sign up, create a new API key
    // in its dashboard, and replace "KEY" with it
    const INFURA_API_KEY = "KEY";
    
    // Replace this private key with your Sepolia account private key
    // To export your private key from Coinbase Wallet, go to
    // Settings > Developer Settings > Show private key
    // To export your private key from Metamask, open Metamask and
    // go to Account Details > Export Private Key
    // Beware: NEVER put real Ether into testing accounts
    const SEPOLIA_PRIVATE_KEY = "YOUR SEPOLIA PRIVATE KEY";
    
    module.exports = {
      solidity: "0.8.19",
      networks: {
        sepolia: {
          url: `https://sepolia.infura.io/v3/${INFURA_API_KEY}`,
          accounts: [SEPOLIA_PRIVATE_KEY]
        }
      }
    };
   ```

8. then run this command to compile and deploy the circuit .
```javascript 
  npx hardhat run script/deploy.ts --network sepolia
```
### CIRCOM
Circom is a programming language and toolchain used for creating arithmetic circuits. Arithmetic circuits are used in the context of zero-knowledge proofs, particularly zk-SNARKs, which are cryptographic techniques for proving that a computation was done correctly without revealing the actual data involved. Circom allows you to define these circuits in a high-level language, which can then be compiled into constraints that are used in zk-SNARK proofs.

In this assignment this library is used to deploy this logical circuit with inputs a=0 and b=1 to generate proofs.![image](https://github.com/Utkarsh-Pandey-GitHub/METACRAFTERS-POLY-Module3/assets/92950393/8e84dc98-9860-469e-919e-94208daf933b) 
