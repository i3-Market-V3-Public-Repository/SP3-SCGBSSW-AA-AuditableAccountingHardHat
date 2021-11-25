// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

contract AuditableAccounting {
  uint256 public currentRoot;
  address public owner;


  event newRegistry(uint256 prevRootHash, uint256 currentRootHash);

  modifier onlyOwner(){ require(msg.sender == owner, "sender must be the contract owner"); _; }

  constructor() { owner = msg.sender; }

  function setNewRegistry(uint256 _newRoot) public onlyOwner {
    emit newRegistry(currentRoot, _newRoot);
    currentRoot = _newRoot;
  }
}



