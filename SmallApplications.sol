// SPDX-License-Identifier:MIT
pragma solidity ^0.8;

// -------------------Ether Wallet ---------------------
    contract EtherWallet{
        address payable public owner;
        constructor(){
          owner=payable(msg.sender);
        }
        receive()external payable{}
        function withdraw(uint _amt)public payable {
            require(msg.sender==owner,"not a owner");
            payable(msg.sender).transfer(_amt);
        }
        function getbalance()public view returns(uint){
           return address(this).balance;
        }
}