// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.1/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.1/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@5.0.1/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts@5.0.1/access/Ownable.sol";

/// @custom:security-contact example@email.com
contract Example is ERC20, ERC20Burnable, ERC20Permit, Ownable {
    constructor(address initialOwner)
        ERC20("Example", "EXA")
        ERC20Permit("Example")
        Ownable(initialOwner)
    {
        _mint(msg.sender, 100000 * 10 ** decimals());
    }
}
