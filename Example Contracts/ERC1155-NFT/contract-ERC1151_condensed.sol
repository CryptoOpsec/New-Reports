// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.1/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts@5.0.1/access/Ownable.sol";
import "@openzeppelin/contracts@5.0.1/token/ERC1155/extensions/ERC1155Burnable.sol";

contract ExampleNFT is ERC1155, Ownable, ERC1155Burnable {
    constructor(address initialOwner)
        ERC1155("https://example.com/1.jpg")
        Ownable(initialOwner)
    {}

    function setURI(string memory newuri) public onlyOwner {
        _setURI(newuri);
    }
}
