contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_1b251141(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).totalBalance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_code.size(address(arg2))
        staticcall address(arg2).borrowable0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg2))
        staticcall address(arg2).borrowable1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        require ext_code.size(address(arg2))
        staticcall address(arg2).safetyMarginSqrt() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0x36df0a76a124d8b2205fa11766ec2eff8ce38a35)
        staticcall 0x36df0a76a124d8b2205fa11766ec2eff8ce38a35.getPair(address arg1) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_call.return_data[96] == ext_call.return_data[124 len 4]
        require ext_call.return_data[128] == bool(ext_call.return_data[128])
        require ext_call.return_data[160] == bool(ext_call.return_data[160])
        if not ext_call.return_data[92 len 4]:
            if not ext_call.return_data[124 len 4]:
                if ext_call.return_data[0]:
                    if False and ext_call.return_data[0] > 0:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(address(arg2))
                staticcall address(arg2).liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if 0 > -(0 / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    if 10^18 * ext_call.return_data[0] >= 0:
                        return 10^18 * ext_call.return_data[0], 0
                    if 0 < 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    return 0, -1 * 10^18 * ext_call.return_data[0]
                if 0 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 0 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10^18 * ext_call.return_data[0] >= 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return (10^18 * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 0
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                return 0, (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (10^18 * ext_call.return_data[0])
            if ext_call.return_data[0] and ext_call.return_data[124 len 4] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[124 len 4]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * ext_call.return_data[124 len 4] / ext_call.return_data[124 len 4] != ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 0 < ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).liquidationIncentive() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if 0 > -(0 / ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'ds-math-add-overflow'
                    if not ext_call.return_data[0]:
                        if 10^18 * ext_call.return_data[0] >= 0:
                            return 10^18 * ext_call.return_data[0], 0
                        if 0 < 10^18 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        return 0, -1 * 10^18 * ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 0 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10^18 * ext_call.return_data[0] >= 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        return (10^18 * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 0
                    if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    return 0, (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (10^18 * ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(address(arg2))
                staticcall address(arg2).liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 > -(0 / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) < ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    if 10^18 * ext_call.return_data[0] >= 0:
                        return 10^18 * ext_call.return_data[0], 0
                    if 0 < 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    return 0, -1 * 10^18 * ext_call.return_data[0]
                if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 10^18 * ext_call.return_data[0] >= (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                    return (10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
                           0
                if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 < 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                return 0, 
                       ((ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (10^18 * ext_call.return_data[0])
            if ext_call.return_data[0]:
                if False and ext_call.return_data[0] > 0:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 0 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(address(arg2))
            staticcall address(arg2).liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if 0 > -(10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] < 0:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if 10^18 * ext_call.return_data[0] >= 0:
                    return 10^18 * ext_call.return_data[0], 0
                if 0 < 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                return 0, -1 * 10^18 * ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 10^18 * ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                       0
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 10^18 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            return 0, 
                   (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (10^18 * ext_call.return_data[0])
        if ext_call.return_data[0] and ext_call.return_data[92 len 4] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[92 len 4]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * ext_call.return_data[92 len 4] / ext_call.return_data[92 len 4] != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[124 len 4]:
            if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 >= 0:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).liquidationIncentive() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if 0 > -(0 / ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'ds-math-add-overflow'
                    if not ext_call.return_data[0]:
                        if 10^18 * ext_call.return_data[0] >= 0:
                            return 10^18 * ext_call.return_data[0], 0
                        if 0 < 10^18 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        return 0, -1 * 10^18 * ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 0 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10^18 * ext_call.return_data[0] >= 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        return (10^18 * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 0
                    if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    return 0, (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (10^18 * ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(address(arg2))
                staticcall address(arg2).liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 > -(0 / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) < ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    if 10^18 * ext_call.return_data[0] >= 0:
                        return 10^18 * ext_call.return_data[0], 0
                    if 0 < 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    return 0, -1 * 10^18 * ext_call.return_data[0]
                if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 10^18 * ext_call.return_data[0] >= (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                    return (10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
                           0
                if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 < 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                return 0, 
                       ((ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (10^18 * ext_call.return_data[0])
            if ext_call.return_data[0]:
                if False and ext_call.return_data[0] > 0:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 0 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(address(arg2))
            staticcall address(arg2).liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if 0 > -(10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] < 0:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if 10^18 * ext_call.return_data[0] >= 0:
                    return 10^18 * ext_call.return_data[0], 0
                if 0 < 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                return 0, -1 * 10^18 * ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 10^18 * ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                       0
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 10^18 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            return 0, 
                   (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (10^18 * ext_call.return_data[0])
        if ext_call.return_data[0] and ext_call.return_data[124 len 4] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[124 len 4]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * ext_call.return_data[124 len 4] / ext_call.return_data[124 len 4] != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 >= ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                    revert with 'NH{q', 17
                if 10^18 * ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(address(arg2))
                staticcall address(arg2).liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if 0 > -(10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] < 0:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    if 10^18 * ext_call.return_data[0] >= 0:
                        return 10^18 * ext_call.return_data[0], 0
                    if 0 < 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    return 0, -1 * 10^18 * ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10^18 * ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                           0
                if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                return 0, 
                       (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (10^18 * ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(address(arg2))
            staticcall address(arg2).liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 > -(10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]) < ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if 10^18 * ext_call.return_data[0] >= 0:
                    return 10^18 * ext_call.return_data[0], 0
                if 0 < 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                return 0, -1 * 10^18 * ext_call.return_data[0]
            if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]):
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if 10^18 * ext_call.return_data[0] >= (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                return (10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
                       0
            if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 < 10^18 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            return 0, 
                   ((ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (10^18 * ext_call.return_data[0])
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(address(arg2))
            staticcall address(arg2).liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if 0 > -(10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] < 0:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if 10^18 * ext_call.return_data[0] >= 0:
                    return 10^18 * ext_call.return_data[0], 0
                if 0 < 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                return 0, -1 * 10^18 * ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 10^18 * ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                       0
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 10^18 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            return 0, 
                   (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (10^18 * ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
            revert with 0, 'ds-math-mul-overflow'
        if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
            revert with 'NH{q', 17
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        require ext_code.size(address(arg2))
        staticcall address(arg2).liquidationIncentive() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 > -(10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]) < ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18:
            revert with 0, 'ds-math-add-overflow'
        if not ext_call.return_data[0]:
            if 10^18 * ext_call.return_data[0] >= 0:
                return 10^18 * ext_call.return_data[0], 0
            if 0 < 10^18 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            return 0, -1 * 10^18 * ext_call.return_data[0]
        if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]):
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]):
            revert with 0, 'ds-math-mul-overflow'
        if 10^18 * ext_call.return_data[0] >= (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
            return (10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
                   0
        if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 < 10^18 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        return 0, 
               ((ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (10^18 * ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(address(arg2))
        staticcall address(arg2).borrowable0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg2))
        staticcall address(arg2).borrowable1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        require ext_code.size(address(arg2))
        staticcall address(arg2).safetyMarginSqrt() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0x36df0a76a124d8b2205fa11766ec2eff8ce38a35)
        staticcall 0x36df0a76a124d8b2205fa11766ec2eff8ce38a35.getPair(address arg1) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_call.return_data[96] == ext_call.return_data[124 len 4]
        require ext_call.return_data[128] == bool(ext_call.return_data[128])
        require ext_call.return_data[160] == bool(ext_call.return_data[160])
        if not ext_call.return_data[92 len 4]:
            if not ext_call.return_data[124 len 4]:
                if ext_call.return_data[0]:
                    if False and ext_call.return_data[0] > 0:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(address(arg2))
                staticcall address(arg2).liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if 0 > -(0 / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    if 10^18 * ext_call.return_data[0] >= 0:
                        return 10^18 * ext_call.return_data[0], 0
                    if 0 < 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    return 0, -1 * 10^18 * ext_call.return_data[0]
                if 0 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 0 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10^18 * ext_call.return_data[0] >= 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return (10^18 * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 0
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                return 0, (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (10^18 * ext_call.return_data[0])
            if ext_call.return_data[0] and ext_call.return_data[124 len 4] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[124 len 4]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * ext_call.return_data[124 len 4] / ext_call.return_data[124 len 4] != ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 0 < ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).liquidationIncentive() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if 0 > -(0 / ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'ds-math-add-overflow'
                    if not ext_call.return_data[0]:
                        if 10^18 * ext_call.return_data[0] >= 0:
                            return 10^18 * ext_call.return_data[0], 0
                        if 0 < 10^18 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        return 0, -1 * 10^18 * ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 0 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10^18 * ext_call.return_data[0] >= 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        return (10^18 * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 0
                    if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    return 0, (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (10^18 * ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(address(arg2))
                staticcall address(arg2).liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 > -(0 / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) < ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    if 10^18 * ext_call.return_data[0] >= 0:
                        return 10^18 * ext_call.return_data[0], 0
                    if 0 < 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    return 0, -1 * 10^18 * ext_call.return_data[0]
                if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 10^18 * ext_call.return_data[0] >= (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                    return (10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
                           0
                if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 < 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                return 0, 
                       ((ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (10^18 * ext_call.return_data[0])
            if ext_call.return_data[0]:
                if False and ext_call.return_data[0] > 0:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 0 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(address(arg2))
            staticcall address(arg2).liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if 0 > -(10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] < 0:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if 10^18 * ext_call.return_data[0] >= 0:
                    return 10^18 * ext_call.return_data[0], 0
                if 0 < 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                return 0, -1 * 10^18 * ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 10^18 * ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                       0
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 10^18 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            return 0, 
                   (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (10^18 * ext_call.return_data[0])
        if ext_call.return_data[0] and ext_call.return_data[92 len 4] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[92 len 4]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * ext_call.return_data[92 len 4] / ext_call.return_data[92 len 4] != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[124 len 4]:
            if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 >= 0:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).liquidationIncentive() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if 0 > -(0 / ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'ds-math-add-overflow'
                    if not ext_call.return_data[0]:
                        if 10^18 * ext_call.return_data[0] >= 0:
                            return 10^18 * ext_call.return_data[0], 0
                        if 0 < 10^18 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        return 0, -1 * 10^18 * ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 0 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 10^18 * ext_call.return_data[0] >= 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        return (10^18 * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 0
                    if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    return 0, (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (10^18 * ext_call.return_data[0])
                if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(address(arg2))
                staticcall address(arg2).liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 > -(0 / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) < ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    if 10^18 * ext_call.return_data[0] >= 0:
                        return 10^18 * ext_call.return_data[0], 0
                    if 0 < 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    return 0, -1 * 10^18 * ext_call.return_data[0]
                if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 10^18 * ext_call.return_data[0] >= (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                    return (10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
                           0
                if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 < 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                return 0, 
                       ((ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (10^18 * ext_call.return_data[0])
            if ext_call.return_data[0]:
                if False and ext_call.return_data[0] > 0:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 0 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(address(arg2))
            staticcall address(arg2).liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if 0 > -(10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] < 0:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if 10^18 * ext_call.return_data[0] >= 0:
                    return 10^18 * ext_call.return_data[0], 0
                if 0 < 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                return 0, -1 * 10^18 * ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 10^18 * ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                       0
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 10^18 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            return 0, 
                   (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (10^18 * ext_call.return_data[0])
        if ext_call.return_data[0] and ext_call.return_data[124 len 4] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[124 len 4]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * ext_call.return_data[124 len 4] / ext_call.return_data[124 len 4] != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 >= ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                    revert with 'NH{q', 17
                if 10^18 * ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(address(arg2))
                staticcall address(arg2).liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if 0 > -(10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] < 0:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    if 10^18 * ext_call.return_data[0] >= 0:
                        return 10^18 * ext_call.return_data[0], 0
                    if 0 < 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    return 0, -1 * 10^18 * ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if 10^18 * ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                           0
                if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                return 0, 
                       (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (10^18 * ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(address(arg2))
            staticcall address(arg2).liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 > -(10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]) < ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if 10^18 * ext_call.return_data[0] >= 0:
                    return 10^18 * ext_call.return_data[0], 0
                if 0 < 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                return 0, -1 * 10^18 * ext_call.return_data[0]
            if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]):
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if 10^18 * ext_call.return_data[0] >= (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                return (10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
                       0
            if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 < 10^18 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            return 0, 
                   ((ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (10^18 * ext_call.return_data[0])
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(address(arg2))
            staticcall address(arg2).liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if 0 > -(10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] < 0:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if 10^18 * ext_call.return_data[0] >= 0:
                    return 10^18 * ext_call.return_data[0], 0
                if 0 < 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                return 0, -1 * 10^18 * ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 10^18 * ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return (10^18 * ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                       0
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 10^18 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            return 0, 
                   (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (10^18 * ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
            revert with 0, 'ds-math-mul-overflow'
        if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
            revert with 'NH{q', 17
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        require ext_code.size(address(arg2))
        staticcall address(arg2).liquidationIncentive() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 > -(10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]) < ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18:
            revert with 0, 'ds-math-add-overflow'
        if not ext_call.return_data[0]:
            if 10^18 * ext_call.return_data[0] >= 0:
                return 10^18 * ext_call.return_data[0], 0
            if 0 < 10^18 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            return 0, -1 * 10^18 * ext_call.return_data[0]
        if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]):
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]):
            revert with 0, 'ds-math-mul-overflow'
        if 10^18 * ext_call.return_data[0] >= (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
            return (10^18 * ext_call.return_data[0]) - ((ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
                   0
        if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 < 10^18 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        return 0, 
               ((ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (10^18 * ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(address(arg2))
    staticcall address(arg2).borrowable0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg2))
    staticcall address(arg2).borrowable1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).borrowBalance(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0] / ext_call.return_data[0]:
        require ext_code.size(address(arg2))
        staticcall address(arg2).safetyMarginSqrt() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0x36df0a76a124d8b2205fa11766ec2eff8ce38a35)
        staticcall 0x36df0a76a124d8b2205fa11766ec2eff8ce38a35.getPair(address arg1) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_call.return_data[96] == ext_call.return_data[124 len 4]
        require ext_call.return_data[128] == bool(ext_call.return_data[128])
        require ext_call.return_data[160] == bool(ext_call.return_data[160])
        if not ext_call.return_data[92 len 4]:
            if not ext_call.return_data[124 len 4]:
                if ext_call.return_data[0]:
                    if False and ext_call.return_data[0] > 0:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(address(arg2))
                staticcall address(arg2).liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if 0 > -(0 / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    return 0
                if 0 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 0 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if 0 >= 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return -0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18, 0
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                    revert with 'NH{q', 17
                return 0, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18
            if ext_call.return_data[0] and ext_call.return_data[124 len 4] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[124 len 4]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * ext_call.return_data[124 len 4] / ext_call.return_data[124 len 4] != ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 0 < ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).liquidationIncentive() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if 0 > -(0 / ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'ds-math-add-overflow'
                    if not ext_call.return_data[0]:
                        return 0
                    if 0 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 0 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 0 >= 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        return -0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18, 0
                    if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                        revert with 'NH{q', 17
                    return 0, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18
                if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(address(arg2))
                staticcall address(arg2).liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 > -(0 / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) < ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    return 0
                if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 0 >= (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                    return -(ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18, 
                           0
                if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 < 0:
                    revert with 'NH{q', 17
                return 0, 
                       (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
            if ext_call.return_data[0]:
                if False and ext_call.return_data[0] > 0:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 0 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(address(arg2))
            staticcall address(arg2).liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if 0 > -(10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] < 0:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                return 0
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 0 >= 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return -10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18, 
                       0
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                revert with 'NH{q', 17
            return 0, 
                   10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        if ext_call.return_data[0] and ext_call.return_data[92 len 4] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[92 len 4]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * ext_call.return_data[92 len 4] / ext_call.return_data[92 len 4] != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[124 len 4]:
            if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 >= 0:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).liquidationIncentive() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if 0 > -(0 / ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    if 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'ds-math-add-overflow'
                    if not ext_call.return_data[0]:
                        return 0
                    if 0 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 0 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 0 >= 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        return -0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18, 0
                    if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                        revert with 'NH{q', 17
                    return 0, 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18
                if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(address(arg2))
                staticcall address(arg2).liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 > -(0 / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) < ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    return 0
                if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 0 >= (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                    return -(ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18, 
                           0
                if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 < 0:
                    revert with 'NH{q', 17
                return 0, 
                       (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
            if ext_call.return_data[0]:
                if False and ext_call.return_data[0] > 0:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 0 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(address(arg2))
            staticcall address(arg2).liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if 0 > -(10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] < 0:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                return 0
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 0 >= 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return -10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18, 
                       0
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                revert with 'NH{q', 17
            return 0, 
                   10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        if ext_call.return_data[0] and ext_call.return_data[124 len 4] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[124 len 4]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * ext_call.return_data[124 len 4] / ext_call.return_data[124 len 4] != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 >= ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                    revert with 'NH{q', 17
                if 10^18 * ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(address(arg2))
                staticcall address(arg2).liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if 0 > -(10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] < 0:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    return 0
                if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if 0 >= 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return -10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18, 
                           0
                if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                    revert with 'NH{q', 17
                return 0, 
                       10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18
            if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(address(arg2))
            staticcall address(arg2).liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 > -(10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]) < ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                return 0
            if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]):
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if 0 >= (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                return -(ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18, 
                       0
            if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 < 0:
                revert with 'NH{q', 17
            return 0, 
                   (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(address(arg2))
            staticcall address(arg2).liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if 0 > -(10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] < 0:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                return 0
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 0 >= 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return -10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18, 
                       0
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                revert with 'NH{q', 17
            return 0, 
                   10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
            revert with 0, 'ds-math-mul-overflow'
        if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
            revert with 'NH{q', 17
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        require ext_code.size(address(arg2))
        staticcall address(arg2).liquidationIncentive() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 > -(10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]) < ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18:
            revert with 0, 'ds-math-add-overflow'
        if not ext_call.return_data[0]:
            return 0
        if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]):
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]):
            revert with 0, 'ds-math-mul-overflow'
        if 0 >= (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
            return -(ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18, 
                   0
        if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 < 0:
            revert with 'NH{q', 17
        return 0, 
               (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
    if ext_call.return_data[0] and ext_call.return_data[0] / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'ds-math-mul-overflow'
    require ext_code.size(address(arg2))
    staticcall address(arg2).safetyMarginSqrt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x36df0a76a124d8b2205fa11766ec2eff8ce38a35)
    staticcall 0x36df0a76a124d8b2205fa11766ec2eff8ce38a35.getPair(address arg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == bool(ext_call.return_data[128])
    require ext_call.return_data[160] == bool(ext_call.return_data[160])
    if not ext_call.return_data[92 len 4]:
        if not ext_call.return_data[124 len 4]:
            if ext_call.return_data[0]:
                if False and ext_call.return_data[0] > 0:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 0 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(address(arg2))
            staticcall address(arg2).liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if 0 > -(0 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if 0 / ext_call.return_data[0] < 0:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] >= 0:
                    return ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
                if 0 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                return 0, -1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            if 0 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 0 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] >= 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                       0
            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 'NH{q', 17
            return 0, 
                   (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
        if ext_call.return_data[0] and ext_call.return_data[124 len 4] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[124 len 4]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * ext_call.return_data[124 len 4] / ext_call.return_data[124 len 4] != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if 0 < ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(address(arg2))
                staticcall address(arg2).liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if 0 > -(0 / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] >= 0:
                        return ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
                    if 0 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    return 0, -1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                if 0 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 0 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] >= 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                           0
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                return 0, 
                       (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(address(arg2))
            staticcall address(arg2).liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 > -(0 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) < ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] >= 0:
                    return ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
                if 0 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                return 0, -1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] >= (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - ((ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
                       0
            if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 'NH{q', 17
            return 0, 
                   ((ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
        if ext_call.return_data[0]:
            if False and ext_call.return_data[0] > 0:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 0 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
        if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
            revert with 'NH{q', 17
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        require ext_code.size(address(arg2))
        staticcall address(arg2).liquidationIncentive() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if 0 > -(10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] < 0:
            revert with 0, 'ds-math-add-overflow'
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] >= 0:
                return ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
            if 0 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 'NH{q', 17
            return 0, -1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                   0
        if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 'NH{q', 17
        return 0, 
               (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
    if ext_call.return_data[0] and ext_call.return_data[92 len 4] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[92 len 4]:
        revert with 'NH{q', 18
    if ext_call.return_data[0] * ext_call.return_data[92 len 4] / ext_call.return_data[92 len 4] != ext_call.return_data[0]:
        revert with 0, 'ds-math-mul-overflow'
    if not ext_call.return_data[124 len 4]:
        if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 >= 0:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                require ext_code.size(address(arg2))
                staticcall address(arg2).liquidationIncentive() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if 0 > -(0 / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if 0 / ext_call.return_data[0] < 0:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] >= 0:
                        return ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
                    if 0 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    return 0, -1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                if 0 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 0 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] >= 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                           0
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                return 0, 
                       (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(address(arg2))
            staticcall address(arg2).liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 > -(0 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) < ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] >= 0:
                    return ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
                if 0 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                return 0, -1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (0 / ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] >= (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
                return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - ((ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
                       0
            if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 'NH{q', 17
            return 0, 
                   ((ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
        if ext_call.return_data[0]:
            if False and ext_call.return_data[0] > 0:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 0 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
        if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
            revert with 'NH{q', 17
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        require ext_code.size(address(arg2))
        staticcall address(arg2).liquidationIncentive() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if 0 > -(10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] < 0:
            revert with 0, 'ds-math-add-overflow'
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] >= 0:
                return ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
            if 0 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 'NH{q', 17
            return 0, -1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                   0
        if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 'NH{q', 17
        return 0, 
               (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
    if ext_call.return_data[0] and ext_call.return_data[124 len 4] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[124 len 4]:
        revert with 'NH{q', 18
    if ext_call.return_data[0] * ext_call.return_data[124 len 4] / ext_call.return_data[124 len 4] != ext_call.return_data[0]:
        revert with 0, 'ds-math-mul-overflow'
    if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 >= ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            require ext_code.size(address(arg2))
            staticcall address(arg2).liquidationIncentive() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if 0 > -(10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] < 0:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] >= 0:
                    return ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
                if 0 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                return 0, -1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                       0
            if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 'NH{q', 17
            return 0, 
                   (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
            revert with 0, 'ds-math-mul-overflow'
        if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
            revert with 'NH{q', 17
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        require ext_code.size(address(arg2))
        staticcall address(arg2).liquidationIncentive() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 > -(10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]) < ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18:
            revert with 0, 'ds-math-add-overflow'
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] >= 0:
                return ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
            if 0 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 'NH{q', 17
            return 0, -1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]):
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0]):
            revert with 0, 'ds-math-mul-overflow'
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] >= (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
            return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - ((ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
                   0
        if (ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 'NH{q', 17
        return 0, 
               ((ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
            revert with 'NH{q', 17
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        require ext_code.size(address(arg2))
        staticcall address(arg2).liquidationIncentive() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if 0 > -(10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] < 0:
            revert with 0, 'ds-math-add-overflow'
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] >= 0:
                return ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
            if 0 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 'NH{q', 17
            return 0, -1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
        if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 
                   0
        if 10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 'NH{q', 17
        return 0, 
               (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] * ext_call.return_data[124 len 4] / 10^18:
        revert with 0, 'ds-math-mul-overflow'
    if ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
        revert with 'NH{q', 17
    if 10^18 * ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18 / 10^18 != ext_call.return_data[0] * ext_call.return_data[92 len 4] / 10^18:
        revert with 0, 'ds-math-mul-overflow'
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(address(arg2))
    staticcall address(arg2).liquidationIncentive() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 > -(10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]) < ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18:
        revert with 0, 'ds-math-add-overflow'
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] >= 0:
            return ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0
        if 0 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 'NH{q', 17
        return 0, -1 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]):
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0]):
        revert with 0, 'ds-math-mul-overflow'
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] >= (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
        return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - ((ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
               0
    if (ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 < ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 'NH{q', 17
    return 0, 
           ((ext_call.return_data[0] * uint32(ext_call.return_data[96]) / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * uint32(ext_call.return_data[64]) / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
}



}
