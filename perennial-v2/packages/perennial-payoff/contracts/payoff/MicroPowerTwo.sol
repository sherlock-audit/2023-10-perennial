// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.19;

import "@equilibria/perennial-v2/contracts/interfaces/IPayoffProvider.sol";

contract MicroPowerTwo is IPayoffProvider {
    Fixed6 private constant DIVISOR = Fixed6.wrap(1e12);

    function payoff(Fixed6 price) external pure override returns (Fixed6) {
        return price.mul(price).div(DIVISOR);
    }
}
