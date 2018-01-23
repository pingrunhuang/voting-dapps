Web3 = require('web3');
solc = require('solc');
fs = require('fs');

web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
code = fs.readFileSync('voting.sol').toString();
compiledCode = solc.compile(code);

abi = JSON.parse(compiledCode.contracts[':Voting'].interface);
votingContract = web3.eth.contract(abi);
byteCode = compiledCode.contracts[':Voting'].bytecode;

deployedContract = votingContract.new(['Rama','Nick','Jose'],{data: byteCode, from: web3.eth.accounts[0], gas: 4700000});

contractInstance = votingContract.at(deployedContract.address);

while(typeof contractInstance.address == 'undefined') {
    console.log("contract not mined yet")
}

console.log(contractInstance.address);