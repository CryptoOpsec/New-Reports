// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.1/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@5.0.1/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts@5.0.1/access/Ownable.sol";

contract ExampleNFT is ERC721, ERC721Burnable, Ownable {
    constructor(address initialOwner)
        ERC721("Example NFT", "EXNFT")
        Ownable(initialOwner)
    {}
}
