//SPDX-License-Identifier : MIT 
pragma solidity ^ 0.8.17;

contract eon {
    unit public xdate; 
    function set (unit _xdate) public 
    {
        xdate= _xdate;
    }

    //get the function 

    function get() public view returns(unit _xdate)
    {
        return xdate;
    }
// read the data 
   unit xdate; 
    function viewFunction (unit xdate) public  view  returns (xdate)
    {
        return xdate;
    }
    // setting the date 
   unit xdate; 
    let date = ( new  Data()).getTime();
    let xdateInUnixTimeStamp = date / 1000;
    await xdate.methods.set(xdateInUnixTimeStamo ). send(opts); 


    //function to store age data
      unit  public xage; 
      function set (unit xage) public  
      {
         xage = xage; 
      }
      // get the function 

      function get () public view returns (unit xage);
      {
        returns xage; 
      }
     
     function viewFunction (unit xage) public view return  (xage);
        {
         return xage; 
        }


    constructor(uint memory initxag)
    {
        xage = initxage;
    }




//Start Authnication by requring the public address and initalzing nonce 

const User = sequelize.define('User', {
  nonce: {
    allowNull: false,
    type: Sequelize.INTEGER.UNSIGNED,
    defaultValue: () => Math.floor(Math.random() * 1000000) // Initialize with a random nonce
  },
  publicAddress: {
    allowNull: false,
    type: Sequelize.STRING,
    unique: true,
    validate: { isLowercase: true }
  },
  username: {
    type: Sequelize.STRING,
    unique: true
  }
});


    //When the user clicks the front end login button 
    class Login extends Component {
  handleClick = () => {
    // --snip--
    const publicAddress = web3.eth.coinbase.toLowerCase();

    // Check if user with current publicAddress is already present on back end
    fetch(`${process.env.REACT_APP_BACKEND_URL}/users?publicAddress=${publicAddress}`)
      .then(response => response.json())
      // If yes, retrieve it. If no, create it.
      .then(
        users => (users.length ? users[0] : this.handleSignup(publicAddress))
      )
      // --snip--
  };

  handleSignup = publicAddress =>
    fetch(`${process.env.REACT_APP_BACKEND_URL}/users`, {
      body: JSON.stringify({ publicAddress }),
      headers: {
        'Content-Type': 'application/json'
      },
      method: 'POST'
    }).then(response => response.json());
}

//This uses the handleSignMessage Function using the web3.personal.sign this means we have the cryotographic communication information to match the private key with the nonce.


class Login extends Component {
  handleClick = () => {
    // --snip--
    fetch(`${process.env.REACT_APP_BACKEND_URL}/users?publicAddress=${publicAddress}`)
      .then(response => response.json())
      // If yes, retrieve it. If no, create it.
      .then(
        users => (users.length ? users[0] : this.handleSignup(publicAddress))
      )
      // Popup MetaMask confirmation modal to sign message
      .then(this.handleSignMessage)
      // Send signature to back end on the /auth route
      .then(this.handleAuthenticate)
      // --snip--
  };

  handleSignMessage = ({ publicAddress, nonce }) => {
    return new Promise((resolve, reject) =>
      web3.personal.sign(
        web3.fromUtf8(`I am signing my one-time nonce: ${nonce}`),
        publicAddress,
        (err, signature) => {
          if (err) return reject(err);
          return resolve({ publicAddress, signature });
        }
      )
    );
  };

  handleAuthenticate = ({ publicAddress, signature }) =>
    fetch(`${process.env.REACT_APP_BACKEND_URL}/auth`, {
      body: JSON.stringify({ publicAddress, signature }),
      headers: {
        'Content-Type': 'application/json'
      },
      method: 'POST'
    }).then(response => response.json());
}
//  Verfiying the nonce sigintuare 

User.findOne({ where: { publicAddress } })
  // --snip--
  .then(user => {
    const msg = `I am signing my one-time nonce: ${user.nonce}`;

    // We now are in possession of msg, publicAddress and signature. We
    // can perform an elliptic curve signature verification with ecrecover
    const msgBuffer = ethUtil.toBuffer(msg);
    const msgHash = ethUtil.hashPersonalMessage(msgBuffer);
    const signatureBuffer = ethUtil.toBuffer(signature);
    const signatureParams = ethUtil.fromRpcSig(signatureBuffer);
    const publicKey = ethUtil.ecrecover(
      msgHash,
      signatureParams.v,
      signatureParams.r,
      signatureParams.s
    );
    const addressBuffer = ethUtil.publicToAddress(publicKey);
    const address = ethUtil.bufferToHex(addressBuffer);

    // The signature verification is successful if the address found with
    // ecrecover matches the initial publicAddress
    if (address.toLowerCase() === publicAddress.toLowerCase()) {
      return user;
    } else {
      return res
        .status(401)
        .send({ error: 'Signature verification failed' });
    }
  })
//Create the JSON web token 
hen(user => {
        return new Promise<string>((resolve, reject) =>
          // https://github.com/auth0/node-jsonwebtoken
          jwt.sign(
            {
              payload: {
                id: user.id,
                publicAddress
              }
            },
            config.secret,
            {},
            (err, token) => {
              if (err) {
                return reject(err);
              }
              return resolve(token);
            }
          )
        );
      })
      .then(accessToken => res.json({ accessToken }))
      .catch(next)

//chance the nounce 
// --snip--
.then(user => {
  user.nonce = Math.floor(Math.random() * 1000000);
  return user.save();
})
// --snip--

//Constructor 
function Initialize (unit xdate) public 
{
xdate =xdate;
}

function Initalize  (unit xage) public 
{
    xage = xage; 
}