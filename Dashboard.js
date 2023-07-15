import React, { useEffect, useState } from 'react';
import Web3 from 'web3';


// Update with your contract ABI
const periodCalculatorABI = [ [
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_fertilitywindow",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "_preovulation",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "_postovulation",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "_ovulationday",
				"type": "uint256"
			}
		],
		"stateMutability": "nonpayable",
		"type": "constructor"
	},
	{
		"inputs": [],
		"name": "currentPeriodState",
		"outputs": [
			{
				"internalType": "enum PeriodCalculator.PeriodState",
				"name": "",
				"type": "uint8"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "fertilitywindow",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "nextperioddate",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "ovulationday",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "postovulation",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "preovulation",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "firstDayLastPeriod",
				"type": "uint256"
			}
		],
		"name": "setInitialPeriodState",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	}
]
  // Contract ABI
  // ...
];

// Update with your contract address
const periodCalculatorAddress = '0x123456789...';

const Dashboard = () => {
  const [nextPeriodDate, setNextPeriodDate] = useState('');
  const [web3, setWeb3] = useState(null);
  const [contract, setContract] = useState(null);

  useEffect(() => {
    connectToWeb3();
  }, []);

  const connectToWeb3 = async () => {
    if (typeof window.ethereum !== 'undefined') {
      await window.ethereum.enable();
      const web3 = new Web3(window.ethereum);
      setWeb3(web3);
      const contract = new web3.eth.Contract(periodCalculatorABI, periodCalculatorAddress);
      setContract(contract);
      loadNextPeriodDate(contract);
    }
  };

  const loadNextPeriodDate = async (contract) => {
    if (contract) {
      try {
        const periodDate = await contract.methods.getPeriodDate().call();
        setNextPeriodDate(periodDate);
      } catch (error) {
        console.log('Error:', error);
      }
    }
  };

  const handleInputChange = (event) => {
    // Handle user input for last period date
    // ...
  };

  const handleFormSubmit = (event) => 
  {
    event.preventDefault();
    // Call contract method to set last period date
    // ...
  };

  return (
    <div className="dashboard">
      <h1>Welcome to Eon Dashboard</h1>
      <p>Next Period Date: {nextPeriodDate}</p>
      <form onSubmit={handleFormSubmit}>
        <label htmlFor="lastPeriodDate">Last Period Date:</label>
        <input
          type="date"
          id="lastPeriodDate"
          name="lastPeriodDate"
          onChange={handleInputChange}
        />
        <button type="submit">Submit</button>
      </form>
      {/* Other dashboard components */}
    </div>
  );
};

export default Dashboard;

