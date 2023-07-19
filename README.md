
/*First write code for your circuit ,provide input in json file then follow this command. */  

### Install
`npm i`


### Compile
`npx hardhat circom` 
This will generate the **out** file with circuit intermediaries and generate the **CustomCircuitVerifier.sol** contract


### Prove and Deploy
`npx hardhat run scripts/deploy.ts`
This script does 4 things  
1. Deploys the CustomCircuitVerifier.sol contract
2. Generates a proof from circuit intermediaries with `generateProof()`
3. Generates calldata with `generateCallData()`
4. Calls `verifyProof()` on the verifier contract with calldata

## For deploying and testing  on testnet 
1. copy rpc url any,here i have copied for mumbai.
2. connect your metamask to polygon.
3. provide private key of your account in .env file.
4. Then transfer some matic tokens for deploying on testnet from faucet mumbai.
5. 'npx hardhat run scripts/deploy.ts --network mumbai' use this command for deploying on mumbai network.
6. Go to polygon scan mumbai and paste that deployed address genearated by above command and you will able to see your transaction.


