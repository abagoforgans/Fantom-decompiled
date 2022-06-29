contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_1b251141(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    staticcall arg2.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).totalBalance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(arg2)
        staticcall arg2.borrowable0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        staticcall arg2.borrowable1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        staticcall arg2.balanceOf(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        require ext_code.size(arg2)
        staticcall arg2.safetyMarginSqrt() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x36df0a76a124d8b2205fa11766ec2eff8ce38a35)
        staticcall 0x36df0a76a124d8b2205fa11766ec2eff8ce38a35.getPair(address arg1) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        if not ext_call.return_data[0] / 10^18:
            if not ext_call.return_data[32] / 10^18:
                require ext_call.return_data[0]
                if ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 != 10^18 * ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                require ext_code.size(arg2)
                staticcall arg2.liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0:
                        return 0, -1000000000000000000 * 10^18 * ext_call.return_data[0]
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0], 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return 0, 
                           (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) - (1000000000000000000 * 10^18 * ext_call.return_data[0])
                return (1000000000000000000 * 10^18 * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                       0
            require ext_call.return_data[32] / 10^18
            if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / ext_call.return_data[32] / 10^18 != ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 0 < ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
                require ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 != 10^18 * ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    require ext_code.size(arg2)
                    staticcall arg2.liquidationIncentive() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'ds-math-add-overflow'
                    if not ext_call.return_data[0]:
                        if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0:
                            return 0, -1000000000000000000 * 10^18 * ext_call.return_data[0]
                        return 1000000000000000000 * 10^18 * ext_call.return_data[0], 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        return 0, 
                               (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) - (1000000000000000000 * 10^18 * ext_call.return_data[0])
                    return (1000000000000000000 * 10^18 * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                           0
                if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
                    revert with 0, 'ds-math-mul-overflow'
                require ext_call.return_data[0]
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 != 10^18 * ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                require ext_code.size(arg2)
                staticcall arg2.liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0:
                        return 0, -1000000000000000000 * 10^18 * ext_call.return_data[0]
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0], 0
                require ext_call.return_data[0]
                if (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] < (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                    return 0, 
                           ((ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 10^18) - (1000000000000000000 * 10^18 * ext_call.return_data[0])
                return (1000000000000000000 * 10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
                       0
            if ext_call.return_data[0]:
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            require ext_call.return_data[0]
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 != 10^18 * ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            require ext_code.size(arg2)
            staticcall arg2.liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] < 0:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0:
                    return 0, -1000000000000000000 * 10^18 * ext_call.return_data[0]
                return 1000000000000000000 * 10^18 * ext_call.return_data[0], 0
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return 0, 
                       (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) - (1000000000000000000 * 10^18 * ext_call.return_data[0])
            return (1000000000000000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                   0
        require ext_call.return_data[0] / 10^18
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[32] / 10^18:
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 >= 0:
                require ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 != 10^18 * ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    require ext_code.size(arg2)
                    staticcall arg2.liquidationIncentive() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'ds-math-add-overflow'
                    if not ext_call.return_data[0]:
                        if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0:
                            return 0, -1000000000000000000 * 10^18 * ext_call.return_data[0]
                        return 1000000000000000000 * 10^18 * ext_call.return_data[0], 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        return 0, 
                               (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) - (1000000000000000000 * 10^18 * ext_call.return_data[0])
                    return (1000000000000000000 * 10^18 * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                           0
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
                    revert with 0, 'ds-math-mul-overflow'
                require ext_call.return_data[0]
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 != 10^18 * ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                require ext_code.size(arg2)
                staticcall arg2.liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0:
                        return 0, -1000000000000000000 * 10^18 * ext_call.return_data[0]
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0], 0
                require ext_call.return_data[0]
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] < (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                    return 0, 
                           ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 10^18) - (1000000000000000000 * 10^18 * ext_call.return_data[0])
                return (1000000000000000000 * 10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
                       0
            if ext_call.return_data[0]:
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            require ext_call.return_data[0]
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 != 10^18 * ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            require ext_code.size(arg2)
            staticcall arg2.liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] < 0:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0:
                    return 0, -1000000000000000000 * 10^18 * ext_call.return_data[0]
                return 1000000000000000000 * 10^18 * ext_call.return_data[0], 0
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return 0, 
                       (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) - (1000000000000000000 * 10^18 * ext_call.return_data[0])
            return (1000000000000000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                   0
        require ext_call.return_data[32] / 10^18
        if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / ext_call.return_data[32] / 10^18 != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 >= ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
            if not ext_call.return_data[0]:
                if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
                    revert with 0, 'ds-math-mul-overflow'
                require ext_call.return_data[0]
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 != 10^18 * ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                require ext_code.size(arg2)
                staticcall arg2.liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] < 0:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0:
                        return 0, -1000000000000000000 * 10^18 * ext_call.return_data[0]
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0], 0
                require ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return 0, 
                           (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) - (1000000000000000000 * 10^18 * ext_call.return_data[0])
                return (1000000000000000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                       0
            require ext_call.return_data[0]
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            require ext_call.return_data[0]
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 != 10^18 * ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            require ext_code.size(arg2)
            staticcall arg2.liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0:
                    return 0, -1000000000000000000 * 10^18 * ext_call.return_data[0]
                return 1000000000000000000 * 10^18 * ext_call.return_data[0], 0
            require ext_call.return_data[0]
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] < (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                return 0, 
                       ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 10^18) - (1000000000000000000 * 10^18 * ext_call.return_data[0])
            return (1000000000000000000 * 10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
                   0
        if not ext_call.return_data[0]:
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            require ext_call.return_data[0]
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 != 10^18 * ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            require ext_code.size(arg2)
            staticcall arg2.liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] < 0:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0:
                    return 0, -1000000000000000000 * 10^18 * ext_call.return_data[0]
                return 1000000000000000000 * 10^18 * ext_call.return_data[0], 0
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return 0, 
                       (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) - (1000000000000000000 * 10^18 * ext_call.return_data[0])
            return (1000000000000000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                   0
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
            revert with 0, 'ds-math-mul-overflow'
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
            revert with 0, 'ds-math-mul-overflow'
        require ext_call.return_data[0]
        if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 != 10^18 * ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        require ext_code.size(arg2)
        staticcall arg2.liquidationIncentive() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18:
            revert with 0, 'ds-math-add-overflow'
        if not ext_call.return_data[0]:
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0:
                return 0, -1000000000000000000 * 10^18 * ext_call.return_data[0]
            return 1000000000000000000 * 10^18 * ext_call.return_data[0], 0
        require ext_call.return_data[0]
        if (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0]):
            revert with 0, 'ds-math-mul-overflow'
        if 1000000000000000000 * 10^18 * ext_call.return_data[0] < (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
            return 0, 
                   ((ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 10^18) - (1000000000000000000 * 10^18 * ext_call.return_data[0])
        return (1000000000000000000 * 10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
               0
    if not ext_call.return_data[0]:
        require ext_code.size(arg2)
        staticcall arg2.borrowable0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        staticcall arg2.borrowable1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        staticcall arg2.balanceOf(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        require ext_code.size(arg2)
        staticcall arg2.safetyMarginSqrt() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x36df0a76a124d8b2205fa11766ec2eff8ce38a35)
        staticcall 0x36df0a76a124d8b2205fa11766ec2eff8ce38a35.getPair(address arg1) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        if not ext_call.return_data[0] / 10^18:
            if not ext_call.return_data[32] / 10^18:
                require ext_call.return_data[0]
                if ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 != 10^18 * ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                require ext_code.size(arg2)
                staticcall arg2.liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0:
                        return 0, -1000000000000000000 * 10^18 * ext_call.return_data[0]
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0], 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return 0, 
                           (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) - (1000000000000000000 * 10^18 * ext_call.return_data[0])
                return (1000000000000000000 * 10^18 * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                       0
            require ext_call.return_data[32] / 10^18
            if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / ext_call.return_data[32] / 10^18 != ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 0 < ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
                require ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 != 10^18 * ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    require ext_code.size(arg2)
                    staticcall arg2.liquidationIncentive() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'ds-math-add-overflow'
                    if not ext_call.return_data[0]:
                        if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0:
                            return 0, -1000000000000000000 * 10^18 * ext_call.return_data[0]
                        return 1000000000000000000 * 10^18 * ext_call.return_data[0], 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        return 0, 
                               (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) - (1000000000000000000 * 10^18 * ext_call.return_data[0])
                    return (1000000000000000000 * 10^18 * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                           0
                if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
                    revert with 0, 'ds-math-mul-overflow'
                require ext_call.return_data[0]
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 != 10^18 * ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                require ext_code.size(arg2)
                staticcall arg2.liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0:
                        return 0, -1000000000000000000 * 10^18 * ext_call.return_data[0]
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0], 0
                require ext_call.return_data[0]
                if (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] < (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                    return 0, 
                           ((ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 10^18) - (1000000000000000000 * 10^18 * ext_call.return_data[0])
                return (1000000000000000000 * 10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
                       0
            if ext_call.return_data[0]:
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            require ext_call.return_data[0]
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 != 10^18 * ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            require ext_code.size(arg2)
            staticcall arg2.liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] < 0:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0:
                    return 0, -1000000000000000000 * 10^18 * ext_call.return_data[0]
                return 1000000000000000000 * 10^18 * ext_call.return_data[0], 0
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return 0, 
                       (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) - (1000000000000000000 * 10^18 * ext_call.return_data[0])
            return (1000000000000000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                   0
        require ext_call.return_data[0] / 10^18
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[32] / 10^18:
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 >= 0:
                require ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 != 10^18 * ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    require ext_code.size(arg2)
                    staticcall arg2.liquidationIncentive() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'ds-math-add-overflow'
                    if not ext_call.return_data[0]:
                        if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0:
                            return 0, -1000000000000000000 * 10^18 * ext_call.return_data[0]
                        return 1000000000000000000 * 10^18 * ext_call.return_data[0], 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        return 0, 
                               (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) - (1000000000000000000 * 10^18 * ext_call.return_data[0])
                    return (1000000000000000000 * 10^18 * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                           0
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
                    revert with 0, 'ds-math-mul-overflow'
                require ext_call.return_data[0]
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 != 10^18 * ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                require ext_code.size(arg2)
                staticcall arg2.liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0:
                        return 0, -1000000000000000000 * 10^18 * ext_call.return_data[0]
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0], 0
                require ext_call.return_data[0]
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] < (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                    return 0, 
                           ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 10^18) - (1000000000000000000 * 10^18 * ext_call.return_data[0])
                return (1000000000000000000 * 10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
                       0
            if ext_call.return_data[0]:
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            require ext_call.return_data[0]
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 != 10^18 * ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            require ext_code.size(arg2)
            staticcall arg2.liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] < 0:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0:
                    return 0, -1000000000000000000 * 10^18 * ext_call.return_data[0]
                return 1000000000000000000 * 10^18 * ext_call.return_data[0], 0
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return 0, 
                       (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) - (1000000000000000000 * 10^18 * ext_call.return_data[0])
            return (1000000000000000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                   0
        require ext_call.return_data[32] / 10^18
        if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / ext_call.return_data[32] / 10^18 != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 >= ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
            if not ext_call.return_data[0]:
                if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
                    revert with 0, 'ds-math-mul-overflow'
                require ext_call.return_data[0]
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 != 10^18 * ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                require ext_code.size(arg2)
                staticcall arg2.liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] < 0:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0:
                        return 0, -1000000000000000000 * 10^18 * ext_call.return_data[0]
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0], 0
                require ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return 0, 
                           (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) - (1000000000000000000 * 10^18 * ext_call.return_data[0])
                return (1000000000000000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                       0
            require ext_call.return_data[0]
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            require ext_call.return_data[0]
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 != 10^18 * ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            require ext_code.size(arg2)
            staticcall arg2.liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0:
                    return 0, -1000000000000000000 * 10^18 * ext_call.return_data[0]
                return 1000000000000000000 * 10^18 * ext_call.return_data[0], 0
            require ext_call.return_data[0]
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] < (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                return 0, 
                       ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 10^18) - (1000000000000000000 * 10^18 * ext_call.return_data[0])
            return (1000000000000000000 * 10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
                   0
        if not ext_call.return_data[0]:
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            require ext_call.return_data[0]
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 != 10^18 * ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            require ext_code.size(arg2)
            staticcall arg2.liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] < 0:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0:
                    return 0, -1000000000000000000 * 10^18 * ext_call.return_data[0]
                return 1000000000000000000 * 10^18 * ext_call.return_data[0], 0
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return 0, 
                       (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) - (1000000000000000000 * 10^18 * ext_call.return_data[0])
            return (1000000000000000000 * 10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                   0
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
            revert with 0, 'ds-math-mul-overflow'
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
            revert with 0, 'ds-math-mul-overflow'
        require ext_call.return_data[0]
        if 1000000000000000000 * 10^18 * ext_call.return_data[0] / 10^18 != 10^18 * ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        require ext_code.size(arg2)
        staticcall arg2.liquidationIncentive() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18:
            revert with 0, 'ds-math-add-overflow'
        if not ext_call.return_data[0]:
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] < 0:
                return 0, -1000000000000000000 * 10^18 * ext_call.return_data[0]
            return 1000000000000000000 * 10^18 * ext_call.return_data[0], 0
        require ext_call.return_data[0]
        if (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0]):
            revert with 0, 'ds-math-mul-overflow'
        if 1000000000000000000 * 10^18 * ext_call.return_data[0] < (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
            return 0, 
                   ((ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 10^18) - (1000000000000000000 * 10^18 * ext_call.return_data[0])
        return (1000000000000000000 * 10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
               0
    require ext_call.return_data[0]
    require ext_code.size(arg2)
    staticcall arg2.borrowable0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.borrowable1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.balanceOf(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0] / ext_call.return_data[0]:
        require ext_code.size(arg2)
        staticcall arg2.safetyMarginSqrt() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x36df0a76a124d8b2205fa11766ec2eff8ce38a35)
        staticcall 0x36df0a76a124d8b2205fa11766ec2eff8ce38a35.getPair(address arg1) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        if not ext_call.return_data[0] / 10^18:
            if not ext_call.return_data[32] / 10^18:
                require ext_call.return_data[0]
                if ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                require ext_code.size(arg2)
                staticcall arg2.liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    return 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if 0 < 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return 0, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18
                return -0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18, 0
            require ext_call.return_data[32] / 10^18
            if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / ext_call.return_data[32] / 10^18 != ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 0 < ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
                require ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    require ext_code.size(arg2)
                    staticcall arg2.liquidationIncentive() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'ds-math-add-overflow'
                    if not ext_call.return_data[0]:
                        return 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 0 < 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        return 0, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18
                    return -0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18, 0
                if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
                    revert with 0, 'ds-math-mul-overflow'
                require ext_call.return_data[0]
                require ext_code.size(arg2)
                staticcall arg2.liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    return 0
                require ext_call.return_data[0]
                if (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 0 < (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                    return 0, 
                           (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 10^18
                return -(ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18, 
                       0
            if ext_call.return_data[0]:
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            require ext_call.return_data[0]
            require ext_code.size(arg2)
            staticcall arg2.liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] < 0:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                return 0
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 0 < 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return 0, 
                       10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18
            return -10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18, 
                   0
        require ext_call.return_data[0] / 10^18
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[32] / 10^18:
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 >= 0:
                require ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    require ext_code.size(arg2)
                    staticcall arg2.liquidationIncentive() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'ds-math-add-overflow'
                    if not ext_call.return_data[0]:
                        return 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 0 < 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        return 0, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18
                    return -0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18, 0
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
                    revert with 0, 'ds-math-mul-overflow'
                require ext_call.return_data[0]
                require ext_code.size(arg2)
                staticcall arg2.liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    return 0
                require ext_call.return_data[0]
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 0 < (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                    return 0, 
                           (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 10^18
                return -(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18, 
                       0
            if ext_call.return_data[0]:
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            require ext_call.return_data[0]
            require ext_code.size(arg2)
            staticcall arg2.liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] < 0:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                return 0
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 0 < 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return 0, 
                       10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18
            return -10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18, 
                   0
        require ext_call.return_data[32] / 10^18
        if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / ext_call.return_data[32] / 10^18 != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 >= ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
            if not ext_call.return_data[0]:
                if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
                    revert with 0, 'ds-math-mul-overflow'
                require ext_call.return_data[0]
                require ext_code.size(arg2)
                staticcall arg2.liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] < 0:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    return 0
                require ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if 0 < 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return 0, 
                           10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18
                return -10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18, 
                       0
            require ext_call.return_data[0]
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            require ext_call.return_data[0]
            require ext_code.size(arg2)
            staticcall arg2.liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                return 0
            require ext_call.return_data[0]
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if 0 < (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                return 0, 
                       (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 10^18
            return -(ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18, 
                   0
        if not ext_call.return_data[0]:
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            require ext_call.return_data[0]
            require ext_code.size(arg2)
            staticcall arg2.liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] < 0:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                return 0
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 0 < 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return 0, 
                       10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18
            return -10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18, 
                   0
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
            revert with 0, 'ds-math-mul-overflow'
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
            revert with 0, 'ds-math-mul-overflow'
        require ext_call.return_data[0]
        require ext_code.size(arg2)
        staticcall arg2.liquidationIncentive() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18:
            revert with 0, 'ds-math-add-overflow'
        if not ext_call.return_data[0]:
            return 0
        require ext_call.return_data[0]
        if (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0]):
            revert with 0, 'ds-math-mul-overflow'
        if 0 < (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
            return 0, 
                   (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 10^18
        return -(ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18, 
               0
    require ext_call.return_data[0] / ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'ds-math-mul-overflow'
    require ext_code.size(arg2)
    staticcall arg2.safetyMarginSqrt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x36df0a76a124d8b2205fa11766ec2eff8ce38a35)
    staticcall 0x36df0a76a124d8b2205fa11766ec2eff8ce38a35.getPair(address arg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if not ext_call.return_data[0] / 10^18:
        if not ext_call.return_data[32] / 10^18:
            require ext_call.return_data[0]
            if ext_call.return_data[0]:
                if 0 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            require ext_code.size(arg2)
            staticcall arg2.liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 / ext_call.return_data[0] < 0:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < 0:
                    return 0, -1 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                return 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return 0, 
                       (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
            return (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                   0
        require ext_call.return_data[32] / 10^18
        if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / ext_call.return_data[32] / 10^18 != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if 0 < ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
            require ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                require ext_code.size(arg2)
                staticcall arg2.liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < 0:
                        return 0, -1 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                    return 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return 0, 
                           (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                return (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                       0
            if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            require ext_code.size(arg2)
            staticcall arg2.liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < 0:
                    return 0, -1 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                return 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
            require ext_call.return_data[0]
            if (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                return 0, 
                       ((ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 10^18) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
            return (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - ((ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
                   0
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
            revert with 0, 'ds-math-mul-overflow'
        require ext_call.return_data[0]
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        require ext_code.size(arg2)
        staticcall arg2.liquidationIncentive() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] < 0:
            revert with 0, 'ds-math-add-overflow'
        if not ext_call.return_data[0]:
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < 0:
                return 0, -1 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            return 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
        require ext_call.return_data[0]
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            return 0, 
                   (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
        return (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
               0
    require ext_call.return_data[0] / 10^18
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
        revert with 0, 'ds-math-mul-overflow'
    if not ext_call.return_data[32] / 10^18:
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 >= 0:
            require ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                require ext_code.size(arg2)
                staticcall arg2.liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < 0:
                        return 0, -1 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                    return 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return 0, 
                           (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                return (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                       0
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            require ext_code.size(arg2)
            staticcall arg2.liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < 0:
                    return 0, -1 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                return 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
            require ext_call.return_data[0]
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                return 0, 
                       ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 10^18) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
            return (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
                   0
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
            revert with 0, 'ds-math-mul-overflow'
        require ext_call.return_data[0]
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        require ext_code.size(arg2)
        staticcall arg2.liquidationIncentive() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] < 0:
            revert with 0, 'ds-math-add-overflow'
        if not ext_call.return_data[0]:
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < 0:
                return 0, -1 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            return 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
        require ext_call.return_data[0]
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            return 0, 
                   (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
        return (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
               0
    require ext_call.return_data[32] / 10^18
    if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / ext_call.return_data[32] / 10^18 != ext_call.return_data[0]:
        revert with 0, 'ds-math-mul-overflow'
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 >= ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
        if not ext_call.return_data[0]:
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            require ext_code.size(arg2)
            staticcall arg2.liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] < 0:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < 0:
                    return 0, -1 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                return 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return 0, 
                       (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
            return (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                   0
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
            revert with 0, 'ds-math-mul-overflow'
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
            revert with 0, 'ds-math-mul-overflow'
        require ext_call.return_data[0]
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        require ext_code.size(arg2)
        staticcall arg2.liquidationIncentive() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18:
            revert with 0, 'ds-math-add-overflow'
        if not ext_call.return_data[0]:
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < 0:
                return 0, -1 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            return 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
        require ext_call.return_data[0]
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0]):
            revert with 0, 'ds-math-mul-overflow'
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
            return 0, 
                   ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 10^18) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
        return (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
               0
    if not ext_call.return_data[0]:
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
            revert with 0, 'ds-math-mul-overflow'
        require ext_call.return_data[0]
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        require ext_code.size(arg2)
        staticcall arg2.liquidationIncentive() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] < 0:
            revert with 0, 'ds-math-add-overflow'
        if not ext_call.return_data[0]:
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < 0:
                return 0, -1 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            return 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
        require ext_call.return_data[0]
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            return 0, 
                   (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
        return (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
               0
    require ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18:
        revert with 0, 'ds-math-mul-overflow'
    if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18:
        revert with 0, 'ds-math-mul-overflow'
    require ext_call.return_data[0]
    if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 != ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0, 'ds-math-mul-overflow'
    require ext_code.size(arg2)
    staticcall arg2.liquidationIncentive() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0]) < ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18:
        revert with 0, 'ds-math-add-overflow'
    if not ext_call.return_data[0]:
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < 0:
            return 0, -1 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        return 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
    require ext_call.return_data[0]
    if (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0]):
        revert with 0, 'ds-math-mul-overflow'
    if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
        return 0, 
               ((ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 10^18) - (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
    return (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - ((ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
           0
}



}
