// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

import { ERC20Mock } from "openzeppelin/mocks/ERC20Mock.sol";
import { ERC20Permit } from "openzeppelin/token/ERC20/extensions/draft-ERC20Permit.sol";

contract ERC20PermitMock is ERC20Mock, ERC20Permit {
  constructor(
    string memory _name,
    string memory _symbol,
    address _initialAccount,
    uint256 _initialBalance
  ) ERC20Mock(_name, _symbol, _initialAccount, _initialBalance) ERC20Permit(_name) {}
}
