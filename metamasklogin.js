import React from 'react';
import MetaMaskLoginButton from './MetaMaskLoginButton';

const MetaMaskLogin = () => 
{
  const handleConnect = (account) => 
  {
    console.log('Connected account:', account);
  };

  return (
    <div>
      <h1>MetaMask Login</h1>
      <MetaMaskLoginButton onConnect={handleConnect} />
    </div>
  );
};