 //SPDX-License-Identifier : UNLICENCED 

pragma solidity ^ 0.8.17;

contract base  
{
    uint256 public xdate; 
    function setDate(uint256 _xdate) public 
    {
        xdate= _xdate;
    }

    //get the function 

    function getDate () public view returns(uint256)
    {
        return xdate;
    }
// read the data 
   
    
}
 contract A {
    // This is for calculationg ore ovulation 
    address addressB; 
 
    function setAddressB(address _addressB) external 
    {
        
        addressB= _addressB; 
    }
 function callAdd()external view returns(uint ) 
 {

    B b = B(addressB); 
    return b.add ();
 }


     function preov() external  view  returns (uint)
    {uint n =9; 
     uint result  = this.callAdd()  + n ; 


     return result  ; 
 }
}

// Based on the date return value I will get in contract eon this calculation will be performed which will calculate the 
contract B {
    function add () external pure returns (uint) 
{
uint  date ;
uint  cycle = 28 ;

    uint sum = date + cycle ;

    return sum; 
}

    
}

//Calculating ferility window and Ovulation 
contract C {
    // This is for calculationg ore ovulation 
    address addressA; 
 
    function setAddressA(address __addressA) external 
    {
        
        addressA= __addressA; 
    }
 function callpreov ()external view returns(uint ) 
 {

     A= a(addressA); 
    return a.result ();
 }


     function fwov() external  view  returns (uint)
    {uint s =7; 
     uint result  = this.callpreov()  + s ; 


     return result  ; 
 }
}

contract D{
    address addressB; 
 
    function setAddressB(address _addressB) external 
    {
        
        addressB= _addressB; 
    }
 function callAdd()external view returns(uint ) 
 {

    B b = B(addressB); 
    return b.add ();
 }


     function post() external  view  returns (uint)
    {uint k= 12; 
     uint result  = this.callAdd()  + k ; 


     return result  ; 
 }
}