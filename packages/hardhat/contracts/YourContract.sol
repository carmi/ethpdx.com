pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
//import "@openzeppelin/contracts/access/Ownable.sol"; //https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol
//import "./YourCollectible.sol";

contract YourContract {


  uint256 nextEmptySlot = 0;
  address[25] public slots;


  constructor() {
    // what should we do on deploy?
  }

  function addCommunityDefinition(string memory definition) public {
      console.log(msg.sender,"adding definition:", definition);

      // validation
      require(true, "no slots available");


      // addSlot
      slots[nextEmptySlot] = msg.sender;
      nextEmptySlot += 1;

      // emit events
      // definition = newDefinition;
      // function addCommunityDefinition(string memory newDefinition) public {
      // emit NewDefinition(msg.sender, definition);
  }
}



//import "hardhat/console.sol";
//import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
//import "@openzeppelin/contracts/utils/Counters.sol";
//import "@openzeppelin/contracts/access/Ownable.sol";
////learn more: https://docs.openzeppelin.com/contracts/3.x/erc721
//
//// GET LISTED ON OPENSEA: https://testnets.opensea.io/get-listed/step-two
//
//contract YourCollectible is ERC721, Ownable {
//
//  using Counters for Counters.Counter;
//  Counters.Counter private _tokenIds;
//
//  constructor() public ERC721("CommunityTokenDefinition", "ETHPDX") {
//    _setBaseURI("https://ipfs.io/ipfs/");
//  }
//
//  function mintItem(address to, string memory tokenURI)
//      public
//      onlyOwner
//      returns (uint256)
//  {
//      _tokenIds.increment();
//
//      uint256 id = _tokenIds.current();
//      _mint(to, id);
//      _setTokenURI(id, tokenURI);
//
//      return id;
//  }
//}
//
