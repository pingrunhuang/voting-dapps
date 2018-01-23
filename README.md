# voting-dapps
a decentralized voting apps

This is just a prototype that I learnt from the [this post](https://medium.com/@mvmurthy/full-stack-hello-world-voting-ethereum-dapp-tutorial-part-1-40d2d0d807c2)
and thanks for the guidence from (Siraj)(https://github.com/llSourcell/Your_First_Decentralized_Application)

### How to use it?
To run the app, first have to install all the dependencies:
```
npm install
```
Then open a terminal to run the virtual chain with 10 virtual accounts:
```
node_modules/ethereumjs-testrpc/build/cli.node.js
```
Then open another terminal and type in the code in the `deploy_contract.js` to deploy the contract in the chain and achieve the address of the deployed contract.

Then open the `index.js` and change the address variable and open `index.html` in the web brrowser.

### Tech stack
1. web3.js as a thin client to interact with chain from the brrowser
2. testrpc as the testing rpc protocal for running the test chain
3. node as a server agent for plain html to interact with the chain
