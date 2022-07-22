contract main {




// =====================  Runtime code  =====================


const HEALTH_FACTOR_LIQUIDATION_THRESHOLD = 10^18


address aAddress;

function a() payable {
    return aAddress
}

function _fallback() payable {
    revert
}

function liquidationBonus(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(aAddress)
    staticcall aAddress.0x79502c55 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x97e30553 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        return 0
    if ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if (ext_call.return_data[0] * arg2) + 5 * 10^17 < 5 * 10^17:
        revert with 0, 'SafeMath: addition overflow'
    return ((ext_call.return_data[0] * arg2) + 5 * 10^17 / 10^18)
}

function applyLiquidationDiscount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(aAddress)
    staticcall aAddress.0x79502c55 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x97e30553 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + 10^18 < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not arg2:
        if ext_call.return_data[0] + 10^18 / 2 < ext_call.return_data[0] + 10^18 / 2:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] + 10^18 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] + 10^18:
            return (ext_call.return_data[0] + 10^18 / 2 / ext_call.return_data[0] + 10^18)
    else:
        if 10^18 * arg2 / arg2 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if (10^18 * arg2) + (ext_call.return_data[0] + 10^18 / 2) < ext_call.return_data[0] + 10^18 / 2:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] + 10^18 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] + 10^18:
            return ((10^18 * arg2) + (ext_call.return_data[0] + 10^18 / 2) / ext_call.return_data[0] + 10^18)
    ('iszero', ('add', 1000000000000000000, ('ext_call.return_data', 0, 32)))
    revert
}

function calculateHealthFactor(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg2:
        return 10^18
    if not arg1:
        if arg2 / 2 < arg2 / 2:
            revert with 0, 'SafeMath: addition overflow'
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if arg2:
            if not arg3:
                return 10^18
            if not arg2 / 2 / arg2:
                if arg3 / 2 < arg3 / 2:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if arg3:
                    return (arg3 / 2 / arg3)
            else:
                if 10^18 * arg2 / 2 / arg2 / arg2 / 2 / arg2 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if (10^18 * arg2 / 2 / arg2) + (arg3 / 2) < arg3 / 2:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if arg3:
                    return ((10^18 * arg2 / 2 / arg2) + (arg3 / 2) / arg3)
            ('iszero', ('param', 'arg3'))
    else:
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if (10^18 * arg1) + (arg2 / 2) < arg2 / 2:
            revert with 0, 'SafeMath: addition overflow'
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if arg2:
            if not arg3:
                return 10^18
            if not (10^18 * arg1) + (arg2 / 2) / arg2:
                if arg3 / 2 < arg3 / 2:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if arg3:
                    return (arg3 / 2 / arg3)
            else:
                if 10^18 * (10^18 * arg1) + (arg2 / 2) / arg2 / (10^18 * arg1) + (arg2 / 2) / arg2 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if (10^18 * (10^18 * arg1) + (arg2 / 2) / arg2) + (arg3 / 2) < arg3 / 2:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if arg3:
                    return ((10^18 * (10^18 * arg1) + (arg2 / 2) / arg2) + (arg3 / 2) / arg3)
            ('iszero', ('param', 'arg3'))
    revert
}

function isHealthy(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg2:
        return 1
    if not arg1:
        if arg2 / 2 < arg2 / 2:
            revert with 0, 'SafeMath: addition overflow'
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if arg2:
            if not arg3:
                return 1
            if not arg2 / 2 / arg2:
                if arg3 / 2 < arg3 / 2:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if arg3:
                    return 10^18 <= arg3 / 2 / arg3
            else:
                if 10^18 * arg2 / 2 / arg2 / arg2 / 2 / arg2 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if (10^18 * arg2 / 2 / arg2) + (arg3 / 2) < arg3 / 2:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if arg3:
                    return 10^18 <= (10^18 * arg2 / 2 / arg2) + (arg3 / 2) / arg3
            ('iszero', ('param', 'arg3'))
    else:
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if (10^18 * arg1) + (arg2 / 2) < arg2 / 2:
            revert with 0, 'SafeMath: addition overflow'
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if arg2:
            if not arg3:
                return 1
            if not (10^18 * arg1) + (arg2 / 2) / arg2:
                if arg3 / 2 < arg3 / 2:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if arg3:
                    return 10^18 <= arg3 / 2 / arg3
            else:
                if 10^18 * (10^18 * arg1) + (arg2 / 2) / arg2 / (10^18 * arg1) + (arg2 / 2) / arg2 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if (10^18 * (10^18 * arg1) + (arg2 / 2) / arg2) + (arg3 / 2) < arg3 / 2:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if arg3:
                    return 10^18 <= (10^18 * (10^18 * arg1) + (arg2 / 2) / arg2) + (arg3 / 2) / arg3
            ('iszero', ('param', 'arg3'))
    revert
}



}
