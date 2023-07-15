import React, { useEffect, useState } from 'react';
import Web3 from 'web3';
import Dashboard from './Dashboard';
import MetaMaskLogin from './MetaMaskLoginButton';

// Update with your contract ABI
const periodCalculatorABI = [
  // Contract ABI
  // ...
];

// Update with your contract address

const periodCalculatorAddress = '0x123456789...';

const App = () => {
  const [isAuthenticated, setIsAuthenticated] = useState(false);
  const [web3, setWeb3] = useState(null);
  const [contract, setContract] = useState(null);

  useEffect(() => {
    connectToWeb3();
  }, []);

  const connectToWeb3 = async () => 
  {
    if (typeof window.ethereum !== 'undefined') 
    {
      await window.ethereum.enable();
      const web3 = new Web3(window.ethereum);
      setWeb3(web3);
      const contract = new web3.eth.Contract(periodCalculatorABI, periodCalculatorAddress);
      setContract(contract);
      setIsAuthenticated(true);
    }
  };

  return (
    <div>
      {isAuthenticated ? (
        <Dashboard contract={contract} />
      ) : (
        <MetaMaskLogin onConnect={connectToWeb3} />
      )}
    </div>
  );
};

export default App;
