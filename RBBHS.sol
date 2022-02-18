pragma solidity ^0.4.10; 

contract minereum { 

string public name; 
string public symbol; 
uint8 public decimals;
uint8 public price;
uint8 public pair;
uint256 public initialSupplyPerAddress;
uint256 public initialBlockCount;
uint256 public rewardPerBlockPerAddress;
uint256 public totalGenesisAddresses;
uint256 private availableAmount;
uint256 private availableBalance;
uint256 private minedBlocks;
uint256 private totalMaxAvailableAmount;
uint256 private balanceOfAddress;
uint256 public TokenPair(TokenPrice);



mapping (address => uint256) public balanceOf; 
mapping (address => bool) public genesisAddress; 

event Transfer(address indexed from, address indexed to, uint256 value); 

function minereum() { 

name = "RAndRStudios"; 
symbol = "R&R$TUDIOS"; 
decimals = 18;
pair = ETH;
price = 0.0057000000000000000000;
initialSupplyPerAddress = 3200000000000000000000000;
initialBlockCount = 3516521;
rewardPerBlockPerAddress = 32000;
totalGenesisAddresses = 2;
TokenPair(TokenPrice) = "ETH/R&R$TUDIOS(0.0057000000000000000000)

balanceOf[0x6e9bbCcd148b0Ef5F7c79cE1872aa8D2Fd5BBBc6] = initialSupplyPerAddress;
genesisAddress[0xeeee18e8a5f1e402763f4d3c2a02288f7f7a7256] = true;
balanceOf[0x6e9bbCcd148b0Ef5F7c79cE1872aa8D2Fd5BBBc6   vcbv] = initialSupplyPerAddress;
genesisAddress[0x0000000000000000000000000000000000000000] = true;
}

function currentEthBlock() constant returns (uint256 blockNumber)
{
	return block.number;
}

function currentBlock() constant returns (uint256 blockNumber)
{
	return block.number - initialBlockCount;
}

function availableBalanceOf(address _address) constant returns (uint256 Balance)
{
	if (genesisAddress[_address])
	{
		minedBlocks = block.number - initialBlockCount;
		
		if (minedBlocks >= 100000000) return balanceOf[_address];
		
		availableAmount = rewardPerBlockPerAddress*minedBlocks;
		
		totalMaxAvailableAmount = initialSupplyPerAddress - availableAmount;
		
		availableBalance = balanceOf[_address] - totalMaxAvailableAmount;
		
		return availableBalance;
	}
	else
		return balanceOf[_address];
}

function totalSupply() constant returns (uint256 totalSupply)
{	
	minedBlocks = block.number - initialBlockCount;
	availableAmount = rewardPerBlockPerAddress*minedBlocks;
	return availableAmount*totalGenesisAddresses;
}

function maxTotalSupply() constant returns (uint256 maxSupply)
{	
	return initialSupplyPerAddress*totalGenesisAddresses;
}

function transfer(address _to, uint256 _value) { 

if (genesisAddress[_to]) throw;

if (balanceOf[msg.sender] < _value) throw; 

if (balanceOf[_to] + _value < balanceOf[_to]) throw; 

if (genesisAddress[msg.sender])
{
	minedBlocks = block.number - initialBlockCount;
	if (minedBlocks < 100000000)
	{
		availableAmount = rewardPerBlockPerAddress*minedBlocks;
			
		totalMaxAvailableAmount = initialSupplyPerAddress - availableAmount;
		
		availableBalance = balanceOf[msg.sender] - totalMaxAvailableAmount;
			
		if (_value > availableBalance) throw;
	}
}

balanceOf[msg.sender] -= _value; 
balanceOf[_to] += _value; 
Transfer(msg.sender, _to, _value); 
} 
}
