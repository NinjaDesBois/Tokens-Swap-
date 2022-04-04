// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import './tokenToSwap.sol';
import './tokenA.sol';

contract Swap {
     
    address a = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; 
    address b = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2; 

    function swap(TokenA _a,TokenB _b, uint amount1 , uint amount2) external {

      _a.transferFrom(a, b, amount1);
      _b.transferFrom(b, a, amount2);
    }

}