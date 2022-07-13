contract main {




// =====================  Runtime code  =====================


#
#  - calculateInterestRates(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5)
#
const EXCESS_UTILIZATION_RATE = 200000000 * 10^18

const OPTIMAL_UTILIZATION_RATE = 800000000 * 10^18


address addressesProvider;
uint256 baseVariableBorrowRate;
uint256 variableRateSlope1;
uint256 variableRateSlope2;
uint256 stableRateSlope1;
uint256 stableRateSlope2;
address reserveAddress;

function getVariableRateSlope1() payable {
    return variableRateSlope1
}

function stableRateSlope1() payable {
    return stableRateSlope1
}

function getStableRateSlope2() payable {
    return stableRateSlope2
}

function getBaseVariableBorrowRate() payable {
    return baseVariableBorrowRate
}

function variableRateSlope2() payable {
    return variableRateSlope2
}

function variableRateSlope1() payable {
    return variableRateSlope1
}

function baseVariableBorrowRate() payable {
    return baseVariableBorrowRate
}

function addressesProvider() payable {
    return addressesProvider
}

function stableRateSlope2() payable {
    return stableRateSlope2
}

function reserve() payable {
    return reserveAddress
}

function getStableRateSlope1() payable {
    return stableRateSlope1
}

function getVariableRateSlope2() payable {
    return variableRateSlope2
}

function _fallback() payable {
    revert
}



}
