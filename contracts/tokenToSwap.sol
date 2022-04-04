// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol';

contract TokenB is ERC20 , Ownable{
    
    //Call to openzeppelin constructor with arguments
    constructor () ERC20("MyToken" , "MTK"){
         
    }
    
    //call to _mint function from OZ

    function mint(uint _amount) external onlyOwner() {
        _mint(msg.sender , _amount*10**decimals());
    }
}