// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.19;

import { ERC20, IERC20, IERC4626 } from "openzeppelin/token/ERC20/extensions/ERC4626.sol";
import { BrokenToken } from "brokentoken/BrokenToken.sol";

import { ERC20PermitMock } from "../contracts/mock/ERC20PermitMock.sol";
import { UnitBaseSetup } from "../utils/UnitBaseSetup.t.sol";

contract UnitBrokenTokenBaseSetup is UnitBaseSetup, BrokenToken {
  /* ============ Setup ============ */
  function setUpUnderlyingAsset() public view override returns (ERC20PermitMock) {
    return ERC20PermitMock(address(brokenERC20));
  }
}
