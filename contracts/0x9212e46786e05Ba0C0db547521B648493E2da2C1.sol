contract main {




// =====================  Runtime code  =====================


#
#  - getLpTokenPriceUsdc(address arg1)
#  - getLpTokenTotalLiquidityUsdc(address arg1)
#  - getPriceUsdc(address arg1)
#
address primaryRouterAddress;
address primaryFactoryAddress;
address secondaryRouterAddress;
address secondaryFactoryAddress;
address wethAddress;
address usdcAddress;
address stor6;
address stor7;
address stor8;
address stor9;

function usdcAddress() payable {
    return usdcAddress
}

function secondaryFactoryAddress() payable {
    return secondaryFactoryAddress
}

function secondaryRouterAddress() payable {
    return secondaryRouterAddress
}

function wethAddress() payable {
    return wethAddress
}

function primaryRouterAddress() payable {
    return primaryRouterAddress
}

function primaryFactoryAddress() payable {
    return primaryFactoryAddress
}

function _fallback() payable {
    revert
}

function isLpToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        return 0
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return 1
}

function getRouterForLpToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == primaryFactoryAddress:
        return stor6
    require ext_call.return_data[12 len 20] == secondaryFactoryAddress
    return stor7
}

function getPriceFromRouter(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 != stor8:
        if arg2 != stor8:
            if arg1 == wethAddress:
                mem[96] = 2
                mem[128] = arg1
                mem[160] = arg2
                require ext_code.size(arg1)
                staticcall arg1.decimals() with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = 1
                    mem[ceil32(return_data.size) + 228] = 64
                    mem[ceil32(return_data.size) + 260] = 2
                    if secondaryRouterAddress == stor9:
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1626 = mem[ceil32(return_data.size) + 192 len 4], 0
                        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                        _1690 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                        mem[(2 * ceil32(return_data.size)) + 192] = _1690
                        require _1626 + (32 * _1690) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _1626 + 224
                        t = (2 * ceil32(return_data.size)) + 224
                        while idx < _1690:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1690 < 1:
                            revert with 'NH{q', 17
                        if _1690 - 1 >= _1690:
                            revert with 'NH{q', 50
                        if mem[(32 * _1690 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1690 - 1) + (2 * ceil32(return_data.size)) + 224]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * mem[(32 * _1690 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                    else:
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if ext_call.success:
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1627 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1691 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _1691
                            require _1627 + (32 * _1691) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1627 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _1691:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1691 < 1:
                                revert with 'NH{q', 17
                            if _1691 - 1 >= _1691:
                                revert with 'NH{q', 50
                            if mem[(32 * _1691 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1691 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1691 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = 1
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _2978 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _3044 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _3044
                            require _2978 + (32 * _3044) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _2978 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _3044:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _3044 < 1:
                                revert with 'NH{q', 17
                            if _3044 - 1 >= _3044:
                                revert with 'NH{q', 50
                            if mem[(32 * _3044 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3044 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _3044 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if 10^ext_call.return_data[31 len 1] > -1:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1624 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1688 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _1688
                            require _1624 + (32 * _1688) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1624 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _1688:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1688 < 1:
                                revert with 'NH{q', 17
                            if _1688 - 1 >= _1688:
                                revert with 'NH{q', 50
                            if mem[(32 * _1688 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1688 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1688 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1625 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1689 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _1689
                                require _1625 + (32 * _1689) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1625 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _1689:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1689 < 1:
                                    revert with 'NH{q', 17
                                if _1689 - 1 >= _1689:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1689 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1689 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1689 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2977 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3043 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3043
                                require _2977 + (32 * _3043) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _2977 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3043:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3043 < 1:
                                    revert with 'NH{q', 17
                                if _3043 - 1 >= _3043:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3043 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3043 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3043 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = t * s
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = t * s
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            u = 128
                            v = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _2975 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _3041 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _3041
                            require _2975 + (32 * _3041) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _2975 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _3041:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _3041 < 1:
                                revert with 'NH{q', 17
                            if _3041 - 1 >= _3041:
                                revert with 'NH{q', 50
                            if mem[(32 * _3041 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3041 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _3041 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            idx = 0
                            u = 128
                            v = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2976 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3042 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3042
                                require _2976 + (32 * _3042) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _2976 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3042:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3042 < 1:
                                    revert with 'NH{q', 17
                                if _3042 - 1 >= _3042:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3042 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3042 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3042 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = t * s
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3822 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3844 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3844
                                require _3822 + (32 * _3844) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3822 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3844:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3844 < 1:
                                    revert with 'NH{q', 17
                                if _3844 - 1 >= _3844:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3844 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3844 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3844 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
            else:
                if arg2 == wethAddress:
                    mem[96] = 2
                    mem[128] = arg1
                    mem[160] = arg2
                    require ext_code.size(arg1)
                    staticcall arg1.decimals() with:
                            gas gas_remaining wei
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = 1
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1638 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1698 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _1698
                            require _1638 + (32 * _1698) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1638 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _1698:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1698 < 1:
                                revert with 'NH{q', 17
                            if _1698 - 1 >= _1698:
                                revert with 'NH{q', 50
                            if mem[(32 * _1698 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1698 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1698 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1639 = mem[ceil32(return_data.size) + 192 len 4], 0
                                require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1699 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _1699
                                require _1639 + (32 * _1699) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1639 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _1699:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1699 < 1:
                                    revert with 'NH{q', 17
                                if _1699 - 1 >= _1699:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1699 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1699 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1699 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = 1
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2986 = mem[ceil32(return_data.size) + 192 len 4], 0
                                require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3052 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3052
                                require _2986 + (32 * _3052) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _2986 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3052:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3052 < 1:
                                    revert with 'NH{q', 17
                                if _3052 - 1 >= _3052:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3052 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3052 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3052 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            if 10^ext_call.return_data[31 len 1] > -1:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            if secondaryRouterAddress == stor9:
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1636 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1696 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _1696
                                require _1636 + (32 * _1696) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1636 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _1696:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1696 < 1:
                                    revert with 'NH{q', 17
                                if _1696 - 1 >= _1696:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1696 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1696 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1696 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _1637 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _1697 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _1697
                                    require _1637 + (32 * _1697) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _1637 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _1697:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _1697 < 1:
                                        revert with 'NH{q', 17
                                    if _1697 - 1 >= _1697:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _1697 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1697 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _1697 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                                else:
                                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                                    mem[ceil32(return_data.size) + 228] = 64
                                    mem[ceil32(return_data.size) + 260] = 2
                                    idx = 0
                                    s = 128
                                    t = ceil32(return_data.size) + 292
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _2985 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3051 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _3051
                                    require _2985 + (32 * _3051) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _2985 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _3051:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3051 < 1:
                                        revert with 'NH{q', 17
                                    if _3051 - 1 >= _3051:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3051 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3051 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3051 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 'NH{q', 17
                                if not bool(idx):
                                    s = s * s
                                    t = t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                s = s * s
                                t = t * s
                                idx = uint255(idx) * 0.5
                                continue 
                            if t > -1 / s:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = t * s
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            if secondaryRouterAddress == stor9:
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2983 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3049 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3049
                                require _2983 + (32 * _3049) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _2983 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3049:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3049 < 1:
                                    revert with 'NH{q', 17
                                if _3049 - 1 >= _3049:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3049 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3049 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3049 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _2984 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3050 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _3050
                                    require _2984 + (32 * _3050) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _2984 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _3050:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3050 < 1:
                                        revert with 'NH{q', 17
                                    if _3050 - 1 >= _3050:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3050 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3050 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3050 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                                else:
                                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = t * s
                                    mem[ceil32(return_data.size) + 228] = 64
                                    mem[ceil32(return_data.size) + 260] = 2
                                    idx = 0
                                    u = 128
                                    v = ceil32(return_data.size) + 292
                                    while idx < 2:
                                        mem[v] = mem[u + 12 len 20]
                                        idx = idx + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _3824 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3846 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _3846
                                    require _3824 + (32 * _3846) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _3824 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _3846:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3846 < 1:
                                        revert with 'NH{q', 17
                                    if _3846 - 1 >= _3846:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3846 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3846 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3846 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                else:
                    mem[96] = 3
                    mem[128] = arg1
                    mem[160] = wethAddress
                    mem[192] = arg2
                    require ext_code.size(arg1)
                    staticcall arg1.decimals() with:
                            gas gas_remaining wei
                    mem[224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = 1
                        mem[ceil32(return_data.size) + 260] = 64
                        mem[ceil32(return_data.size) + 292] = 3
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 324
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _1632 = mem[ceil32(return_data.size) + 224 len 4], 0
                            require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                            _1694 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                            mem[(2 * ceil32(return_data.size)) + 224] = _1694
                            require _1632 + (32 * _1694) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1632 + 256
                            t = (2 * ceil32(return_data.size)) + 256
                            while idx < _1694:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1694 < 1:
                                revert with 'NH{q', 17
                            if _1694 - 1 >= _1694:
                                revert with 'NH{q', 50
                            if mem[(32 * _1694 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1694 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1694 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                        else:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 324
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _1633 = mem[ceil32(return_data.size) + 224 len 4], 0
                                require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _1695 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _1695
                                require _1633 + (32 * _1695) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1633 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _1695:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1695 < 1:
                                    revert with 'NH{q', 17
                                if _1695 - 1 >= _1695:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1695 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1695 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1695 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                            else:
                                mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = 1
                                mem[ceil32(return_data.size) + 260] = 64
                                mem[ceil32(return_data.size) + 292] = 3
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _2982 = mem[ceil32(return_data.size) + 224 len 4], 0
                                require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3048 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _3048
                                require _2982 + (32 * _3048) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _2982 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _3048:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3048 < 1:
                                    revert with 'NH{q', 17
                                if _3048 - 1 >= _3048:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3048 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3048 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3048 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            if 10^ext_call.return_data[31 len 1] > -1:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = 10^uint8(ext_call.return_data[0])
                            mem[ceil32(return_data.size) + 260] = 64
                            mem[ceil32(return_data.size) + 292] = 3
                            if secondaryRouterAddress == stor9:
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _1630 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _1692 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _1692
                                require _1630 + (32 * _1692) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1630 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _1692:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1692 < 1:
                                    revert with 'NH{q', 17
                                if _1692 - 1 >= _1692:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1692 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1692 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1692 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                            else:
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _1631 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _1693 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = _1693
                                    require _1631 + (32 * _1693) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _1631 + 256
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < _1693:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _1693 < 1:
                                        revert with 'NH{q', 17
                                    if _1693 - 1 >= _1693:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _1693 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1693 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _1693 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                                else:
                                    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = 10^uint8(ext_call.return_data[0])
                                    mem[ceil32(return_data.size) + 260] = 64
                                    mem[ceil32(return_data.size) + 292] = 3
                                    idx = 0
                                    s = 128
                                    t = ceil32(return_data.size) + 324
                                    while idx < 3:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _2981 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3047 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = _3047
                                    require _2981 + (32 * _3047) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _2981 + 256
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < _3047:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3047 < 1:
                                        revert with 'NH{q', 17
                                    if _3047 - 1 >= _3047:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3047 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3047 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3047 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 'NH{q', 17
                                if not bool(idx):
                                    s = s * s
                                    t = t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                s = s * s
                                t = t * s
                                idx = uint255(idx) * 0.5
                                continue 
                            if t > -1 / s:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = t * s
                            mem[ceil32(return_data.size) + 260] = 64
                            mem[ceil32(return_data.size) + 292] = 3
                            if secondaryRouterAddress == stor9:
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _2979 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3045 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _3045
                                require _2979 + (32 * _3045) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _2979 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _3045:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3045 < 1:
                                    revert with 'NH{q', 17
                                if _3045 - 1 >= _3045:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3045 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3045 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3045 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                            else:
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _2980 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3046 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = _3046
                                    require _2980 + (32 * _3046) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _2980 + 256
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < _3046:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3046 < 1:
                                        revert with 'NH{q', 17
                                    if _3046 - 1 >= _3046:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3046 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3046 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3046 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                                else:
                                    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = t * s
                                    mem[ceil32(return_data.size) + 260] = 64
                                    mem[ceil32(return_data.size) + 292] = 3
                                    idx = 0
                                    u = 128
                                    v = ceil32(return_data.size) + 324
                                    while idx < 3:
                                        mem[v] = mem[u + 12 len 20]
                                        idx = idx + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args t * s, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3823 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3845 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = _3845
                                    require _3823 + (32 * _3845) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _3823 + 256
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < _3845:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3845 < 1:
                                        revert with 'NH{q', 17
                                    if _3845 - 1 >= _3845:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3845 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3845 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3845 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
        else:
            if arg1 == wethAddress:
                mem[96] = 2
                mem[128] = arg1
                mem[160] = wethAddress
                require ext_code.size(arg1)
                staticcall arg1.decimals() with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = 1
                    mem[ceil32(return_data.size) + 228] = 64
                    mem[ceil32(return_data.size) + 260] = 2
                    if secondaryRouterAddress == stor9:
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1644 = mem[ceil32(return_data.size) + 192 len 4], 0
                        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                        _1702 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                        mem[(2 * ceil32(return_data.size)) + 192] = _1702
                        require _1644 + (32 * _1702) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _1644 + 224
                        t = (2 * ceil32(return_data.size)) + 224
                        while idx < _1702:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1702 < 1:
                            revert with 'NH{q', 17
                        if _1702 - 1 >= _1702:
                            revert with 'NH{q', 50
                        if mem[(32 * _1702 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1702 - 1) + (2 * ceil32(return_data.size)) + 224]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * mem[(32 * _1702 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                    else:
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if ext_call.success:
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1645 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1703 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _1703
                            require _1645 + (32 * _1703) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1645 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _1703:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1703 < 1:
                                revert with 'NH{q', 17
                            if _1703 - 1 >= _1703:
                                revert with 'NH{q', 50
                            if mem[(32 * _1703 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1703 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1703 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = 1
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _2990 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _3056 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _3056
                            require _2990 + (32 * _3056) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _2990 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _3056:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _3056 < 1:
                                revert with 'NH{q', 17
                            if _3056 - 1 >= _3056:
                                revert with 'NH{q', 50
                            if mem[(32 * _3056 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3056 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _3056 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if 10^ext_call.return_data[31 len 1] > -1:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1642 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1700 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _1700
                            require _1642 + (32 * _1700) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1642 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _1700:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1700 < 1:
                                revert with 'NH{q', 17
                            if _1700 - 1 >= _1700:
                                revert with 'NH{q', 50
                            if mem[(32 * _1700 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1700 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1700 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1643 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1701 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _1701
                                require _1643 + (32 * _1701) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1643 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _1701:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1701 < 1:
                                    revert with 'NH{q', 17
                                if _1701 - 1 >= _1701:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1701 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1701 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1701 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2989 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3055 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3055
                                require _2989 + (32 * _3055) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _2989 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3055:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3055 < 1:
                                    revert with 'NH{q', 17
                                if _3055 - 1 >= _3055:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3055 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3055 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3055 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = t * s
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = t * s
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            u = 128
                            v = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _2987 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _3053 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _3053
                            require _2987 + (32 * _3053) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _2987 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _3053:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _3053 < 1:
                                revert with 'NH{q', 17
                            if _3053 - 1 >= _3053:
                                revert with 'NH{q', 50
                            if mem[(32 * _3053 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3053 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _3053 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            idx = 0
                            u = 128
                            v = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2988 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3054 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3054
                                require _2988 + (32 * _3054) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _2988 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3054:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3054 < 1:
                                    revert with 'NH{q', 17
                                if _3054 - 1 >= _3054:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3054 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3054 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3054 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = t * s
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3825 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3847 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3847
                                require _3825 + (32 * _3847) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3825 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3847:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3847 < 1:
                                    revert with 'NH{q', 17
                                if _3847 - 1 >= _3847:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3847 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3847 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3847 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
            else:
                if wethAddress == wethAddress:
                    mem[96] = 2
                    mem[128] = arg1
                    mem[160] = wethAddress
                    require ext_code.size(arg1)
                    staticcall arg1.decimals() with:
                            gas gas_remaining wei
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = 1
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1656 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1710 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _1710
                            require _1656 + (32 * _1710) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1656 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _1710:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1710 < 1:
                                revert with 'NH{q', 17
                            if _1710 - 1 >= _1710:
                                revert with 'NH{q', 50
                            if mem[(32 * _1710 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1710 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1710 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1657 = mem[ceil32(return_data.size) + 192 len 4], 0
                                require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1711 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _1711
                                require _1657 + (32 * _1711) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1657 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _1711:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1711 < 1:
                                    revert with 'NH{q', 17
                                if _1711 - 1 >= _1711:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1711 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1711 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1711 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = 1
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2998 = mem[ceil32(return_data.size) + 192 len 4], 0
                                require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3064 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3064
                                require _2998 + (32 * _3064) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _2998 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3064:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3064 < 1:
                                    revert with 'NH{q', 17
                                if _3064 - 1 >= _3064:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3064 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3064 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3064 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            if 10^ext_call.return_data[31 len 1] > -1:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            if secondaryRouterAddress == stor9:
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1654 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1708 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _1708
                                require _1654 + (32 * _1708) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1654 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _1708:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1708 < 1:
                                    revert with 'NH{q', 17
                                if _1708 - 1 >= _1708:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1708 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1708 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1708 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _1655 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _1709 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _1709
                                    require _1655 + (32 * _1709) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _1655 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _1709:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _1709 < 1:
                                        revert with 'NH{q', 17
                                    if _1709 - 1 >= _1709:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _1709 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1709 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _1709 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                                else:
                                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                                    mem[ceil32(return_data.size) + 228] = 64
                                    mem[ceil32(return_data.size) + 260] = 2
                                    idx = 0
                                    s = 128
                                    t = ceil32(return_data.size) + 292
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _2997 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3063 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _3063
                                    require _2997 + (32 * _3063) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _2997 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _3063:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3063 < 1:
                                        revert with 'NH{q', 17
                                    if _3063 - 1 >= _3063:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3063 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3063 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3063 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 'NH{q', 17
                                if not bool(idx):
                                    s = s * s
                                    t = t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                s = s * s
                                t = t * s
                                idx = uint255(idx) * 0.5
                                continue 
                            if t > -1 / s:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = t * s
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            if secondaryRouterAddress == stor9:
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2995 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3061 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3061
                                require _2995 + (32 * _3061) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _2995 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3061:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3061 < 1:
                                    revert with 'NH{q', 17
                                if _3061 - 1 >= _3061:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3061 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3061 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3061 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _2996 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3062 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _3062
                                    require _2996 + (32 * _3062) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _2996 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _3062:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3062 < 1:
                                        revert with 'NH{q', 17
                                    if _3062 - 1 >= _3062:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3062 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3062 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3062 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                                else:
                                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = t * s
                                    mem[ceil32(return_data.size) + 228] = 64
                                    mem[ceil32(return_data.size) + 260] = 2
                                    idx = 0
                                    u = 128
                                    v = ceil32(return_data.size) + 292
                                    while idx < 2:
                                        mem[v] = mem[u + 12 len 20]
                                        idx = idx + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _3827 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3849 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _3849
                                    require _3827 + (32 * _3849) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _3827 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _3849:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3849 < 1:
                                        revert with 'NH{q', 17
                                    if _3849 - 1 >= _3849:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3849 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3849 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3849 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                else:
                    mem[96] = 3
                    mem[128] = arg1
                    mem[160] = wethAddress
                    mem[192] = wethAddress
                    require ext_code.size(arg1)
                    staticcall arg1.decimals() with:
                            gas gas_remaining wei
                    mem[224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = 1
                        mem[ceil32(return_data.size) + 260] = 64
                        mem[ceil32(return_data.size) + 292] = 3
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 324
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _1650 = mem[ceil32(return_data.size) + 224 len 4], 0
                            require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                            _1706 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                            mem[(2 * ceil32(return_data.size)) + 224] = _1706
                            require _1650 + (32 * _1706) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1650 + 256
                            t = (2 * ceil32(return_data.size)) + 256
                            while idx < _1706:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1706 < 1:
                                revert with 'NH{q', 17
                            if _1706 - 1 >= _1706:
                                revert with 'NH{q', 50
                            if mem[(32 * _1706 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1706 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1706 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                        else:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 324
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _1651 = mem[ceil32(return_data.size) + 224 len 4], 0
                                require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _1707 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _1707
                                require _1651 + (32 * _1707) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1651 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _1707:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1707 < 1:
                                    revert with 'NH{q', 17
                                if _1707 - 1 >= _1707:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1707 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1707 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1707 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                            else:
                                mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = 1
                                mem[ceil32(return_data.size) + 260] = 64
                                mem[ceil32(return_data.size) + 292] = 3
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _2994 = mem[ceil32(return_data.size) + 224 len 4], 0
                                require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3060 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _3060
                                require _2994 + (32 * _3060) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _2994 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _3060:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3060 < 1:
                                    revert with 'NH{q', 17
                                if _3060 - 1 >= _3060:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3060 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3060 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3060 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            if 10^ext_call.return_data[31 len 1] > -1:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = 10^uint8(ext_call.return_data[0])
                            mem[ceil32(return_data.size) + 260] = 64
                            mem[ceil32(return_data.size) + 292] = 3
                            if secondaryRouterAddress == stor9:
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _1648 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _1704 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _1704
                                require _1648 + (32 * _1704) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1648 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _1704:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1704 < 1:
                                    revert with 'NH{q', 17
                                if _1704 - 1 >= _1704:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1704 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1704 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1704 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                            else:
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _1649 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _1705 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = _1705
                                    require _1649 + (32 * _1705) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _1649 + 256
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < _1705:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _1705 < 1:
                                        revert with 'NH{q', 17
                                    if _1705 - 1 >= _1705:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _1705 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1705 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _1705 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                                else:
                                    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = 10^uint8(ext_call.return_data[0])
                                    mem[ceil32(return_data.size) + 260] = 64
                                    mem[ceil32(return_data.size) + 292] = 3
                                    idx = 0
                                    s = 128
                                    t = ceil32(return_data.size) + 324
                                    while idx < 3:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _2993 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3059 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = _3059
                                    require _2993 + (32 * _3059) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _2993 + 256
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < _3059:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3059 < 1:
                                        revert with 'NH{q', 17
                                    if _3059 - 1 >= _3059:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3059 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3059 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3059 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 'NH{q', 17
                                if not bool(idx):
                                    s = s * s
                                    t = t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                s = s * s
                                t = t * s
                                idx = uint255(idx) * 0.5
                                continue 
                            if t > -1 / s:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = t * s
                            mem[ceil32(return_data.size) + 260] = 64
                            mem[ceil32(return_data.size) + 292] = 3
                            if secondaryRouterAddress == stor9:
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _2991 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3057 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _3057
                                require _2991 + (32 * _3057) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _2991 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _3057:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3057 < 1:
                                    revert with 'NH{q', 17
                                if _3057 - 1 >= _3057:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3057 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3057 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3057 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                            else:
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _2992 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3058 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = _3058
                                    require _2992 + (32 * _3058) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _2992 + 256
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < _3058:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3058 < 1:
                                        revert with 'NH{q', 17
                                    if _3058 - 1 >= _3058:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3058 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3058 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3058 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                                else:
                                    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = t * s
                                    mem[ceil32(return_data.size) + 260] = 64
                                    mem[ceil32(return_data.size) + 292] = 3
                                    idx = 0
                                    u = 128
                                    v = ceil32(return_data.size) + 324
                                    while idx < 3:
                                        mem[v] = mem[u + 12 len 20]
                                        idx = idx + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args t * s, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3826 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3848 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = _3848
                                    require _3826 + (32 * _3848) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _3826 + 256
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < _3848:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3848 < 1:
                                        revert with 'NH{q', 17
                                    if _3848 - 1 >= _3848:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3848 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3848 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3848 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
    else:
        if arg2 == stor8:
            if wethAddress == wethAddress:
                mem[96] = 2
                mem[128] = wethAddress
                mem[160] = wethAddress
                require ext_code.size(wethAddress)
                staticcall wethAddress.decimals() with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = 1
                    mem[ceil32(return_data.size) + 228] = 64
                    mem[ceil32(return_data.size) + 260] = 2
                    if secondaryRouterAddress == stor9:
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1680 = mem[ceil32(return_data.size) + 192 len 4], 0
                        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                        _1726 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                        mem[(2 * ceil32(return_data.size)) + 192] = _1726
                        require _1680 + (32 * _1726) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _1680 + 224
                        t = (2 * ceil32(return_data.size)) + 224
                        while idx < _1726:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1726 < 1:
                            revert with 'NH{q', 17
                        if _1726 - 1 >= _1726:
                            revert with 'NH{q', 50
                        if mem[(32 * _1726 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1726 - 1) + (2 * ceil32(return_data.size)) + 224]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * mem[(32 * _1726 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                    else:
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if ext_call.success:
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1681 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1727 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _1727
                            require _1681 + (32 * _1727) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1681 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _1727:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1727 < 1:
                                revert with 'NH{q', 17
                            if _1727 - 1 >= _1727:
                                revert with 'NH{q', 50
                            if mem[(32 * _1727 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1727 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1727 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = 1
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _3014 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _3080 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _3080
                            require _3014 + (32 * _3080) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _3014 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _3080:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _3080 < 1:
                                revert with 'NH{q', 17
                            if _3080 - 1 >= _3080:
                                revert with 'NH{q', 50
                            if mem[(32 * _3080 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3080 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _3080 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if 10^ext_call.return_data[31 len 1] > -1:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1678 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1724 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _1724
                            require _1678 + (32 * _1724) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1678 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _1724:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1724 < 1:
                                revert with 'NH{q', 17
                            if _1724 - 1 >= _1724:
                                revert with 'NH{q', 50
                            if mem[(32 * _1724 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1724 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1724 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1679 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1725 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _1725
                                require _1679 + (32 * _1725) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1679 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _1725:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1725 < 1:
                                    revert with 'NH{q', 17
                                if _1725 - 1 >= _1725:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1725 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1725 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1725 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3013 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3079 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3079
                                require _3013 + (32 * _3079) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3013 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3079:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3079 < 1:
                                    revert with 'NH{q', 17
                                if _3079 - 1 >= _3079:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3079 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3079 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3079 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = t * s
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = t * s
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            u = 128
                            v = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _3011 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _3077 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _3077
                            require _3011 + (32 * _3077) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _3011 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _3077:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _3077 < 1:
                                revert with 'NH{q', 17
                            if _3077 - 1 >= _3077:
                                revert with 'NH{q', 50
                            if mem[(32 * _3077 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3077 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _3077 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            idx = 0
                            u = 128
                            v = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3012 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3078 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3078
                                require _3012 + (32 * _3078) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3012 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3078:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3078 < 1:
                                    revert with 'NH{q', 17
                                if _3078 - 1 >= _3078:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3078 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3078 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3078 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = t * s
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3831 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3853 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3853
                                require _3831 + (32 * _3853) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3831 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3853:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3853 < 1:
                                    revert with 'NH{q', 17
                                if _3853 - 1 >= _3853:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3853 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3853 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3853 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
            else:
                mem[96] = 3
                mem[128] = wethAddress
                mem[160] = wethAddress
                mem[192] = wethAddress
                require ext_code.size(wethAddress)
                staticcall wethAddress.decimals() with:
                        gas gas_remaining wei
                mem[224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 228] = 1
                    mem[ceil32(return_data.size) + 260] = 64
                    mem[ceil32(return_data.size) + 292] = 3
                    if secondaryRouterAddress == stor9:
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _1686 = mem[ceil32(return_data.size) + 224 len 4], 0
                        require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                        _1730 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                            revert with 'NH{q', 65
                        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                        mem[(2 * ceil32(return_data.size)) + 224] = _1730
                        require _1686 + (32 * _1730) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _1686 + 256
                        t = (2 * ceil32(return_data.size)) + 256
                        while idx < _1730:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1730 < 1:
                            revert with 'NH{q', 17
                        if _1730 - 1 >= _1730:
                            revert with 'NH{q', 50
                        if mem[(32 * _1730 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1730 - 1) + (2 * ceil32(return_data.size)) + 256]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * mem[(32 * _1730 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                    else:
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                        if ext_call.success:
                            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _1687 = mem[ceil32(return_data.size) + 224 len 4], 0
                            require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                            _1731 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                            mem[(2 * ceil32(return_data.size)) + 224] = _1731
                            require _1687 + (32 * _1731) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1687 + 256
                            t = (2 * ceil32(return_data.size)) + 256
                            while idx < _1731:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1731 < 1:
                                revert with 'NH{q', 17
                            if _1731 - 1 >= _1731:
                                revert with 'NH{q', 50
                            if mem[(32 * _1731 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1731 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1731 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                        else:
                            mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = 1
                            mem[ceil32(return_data.size) + 260] = 64
                            mem[ceil32(return_data.size) + 292] = 3
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 324
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _3018 = mem[ceil32(return_data.size) + 224 len 4], 0
                            require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                            _3084 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                            mem[(2 * ceil32(return_data.size)) + 224] = _3084
                            require _3018 + (32 * _3084) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _3018 + 256
                            t = (2 * ceil32(return_data.size)) + 256
                            while idx < _3084:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _3084 < 1:
                                revert with 'NH{q', 17
                            if _3084 - 1 >= _3084:
                                revert with 'NH{q', 50
                            if mem[(32 * _3084 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3084 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _3084 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if 10^ext_call.return_data[31 len 1] > -1:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = 10^uint8(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 260] = 64
                        mem[ceil32(return_data.size) + 292] = 3
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 324
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _1684 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                            require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                            _1728 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                            mem[(2 * ceil32(return_data.size)) + 224] = _1728
                            require _1684 + (32 * _1728) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1684 + 256
                            t = (2 * ceil32(return_data.size)) + 256
                            while idx < _1728:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1728 < 1:
                                revert with 'NH{q', 17
                            if _1728 - 1 >= _1728:
                                revert with 'NH{q', 50
                            if mem[(32 * _1728 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1728 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1728 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                        else:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 324
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _1685 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _1729 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _1729
                                require _1685 + (32 * _1729) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1685 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _1729:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1729 < 1:
                                    revert with 'NH{q', 17
                                if _1729 - 1 >= _1729:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1729 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1729 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1729 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                            else:
                                mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = 10^uint8(ext_call.return_data[0])
                                mem[ceil32(return_data.size) + 260] = 64
                                mem[ceil32(return_data.size) + 292] = 3
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3017 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3083 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _3083
                                require _3017 + (32 * _3083) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3017 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _3083:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3083 < 1:
                                    revert with 'NH{q', 17
                                if _3083 - 1 >= _3083:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3083 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3083 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3083 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = t * s
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = t * s
                        mem[ceil32(return_data.size) + 260] = 64
                        mem[ceil32(return_data.size) + 292] = 3
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            u = 128
                            v = ceil32(return_data.size) + 324
                            while idx < 3:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args t * s, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _3015 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32
                            require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                            _3081 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225
                            mem[(2 * ceil32(return_data.size)) + 224] = _3081
                            require _3015 + (32 * _3081) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _3015 + 256
                            t = (2 * ceil32(return_data.size)) + 256
                            while idx < _3081:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _3081 < 1:
                                revert with 'NH{q', 17
                            if _3081 - 1 >= _3081:
                                revert with 'NH{q', 50
                            if mem[(32 * _3081 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3081 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _3081 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                        else:
                            idx = 0
                            u = 128
                            v = ceil32(return_data.size) + 324
                            while idx < 3:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args t * s, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3016 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3082 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _3082
                                require _3016 + (32 * _3082) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3016 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _3082:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3082 < 1:
                                    revert with 'NH{q', 17
                                if _3082 - 1 >= _3082:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3082 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3082 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3082 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                            else:
                                mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = t * s
                                mem[ceil32(return_data.size) + 260] = 64
                                mem[ceil32(return_data.size) + 292] = 3
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3832 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3854 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _3854
                                require _3832 + (32 * _3854) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3832 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _3854:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3854 < 1:
                                    revert with 'NH{q', 17
                                if _3854 - 1 >= _3854:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3854 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3854 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3854 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
        else:
            if wethAddress == wethAddress:
                mem[96] = 2
                mem[128] = wethAddress
                mem[160] = arg2
                require ext_code.size(wethAddress)
                staticcall wethAddress.decimals() with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = 1
                    mem[ceil32(return_data.size) + 228] = 64
                    mem[ceil32(return_data.size) + 260] = 2
                    if secondaryRouterAddress == stor9:
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1662 = mem[ceil32(return_data.size) + 192 len 4], 0
                        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                        _1714 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                        mem[(2 * ceil32(return_data.size)) + 192] = _1714
                        require _1662 + (32 * _1714) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _1662 + 224
                        t = (2 * ceil32(return_data.size)) + 224
                        while idx < _1714:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1714 < 1:
                            revert with 'NH{q', 17
                        if _1714 - 1 >= _1714:
                            revert with 'NH{q', 50
                        if mem[(32 * _1714 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1714 - 1) + (2 * ceil32(return_data.size)) + 224]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * mem[(32 * _1714 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                    else:
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if ext_call.success:
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1663 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1715 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _1715
                            require _1663 + (32 * _1715) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1663 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _1715:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1715 < 1:
                                revert with 'NH{q', 17
                            if _1715 - 1 >= _1715:
                                revert with 'NH{q', 50
                            if mem[(32 * _1715 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1715 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1715 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = 1
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _3002 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _3068 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _3068
                            require _3002 + (32 * _3068) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _3002 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _3068:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _3068 < 1:
                                revert with 'NH{q', 17
                            if _3068 - 1 >= _3068:
                                revert with 'NH{q', 50
                            if mem[(32 * _3068 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3068 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _3068 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if 10^ext_call.return_data[31 len 1] > -1:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1660 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1712 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _1712
                            require _1660 + (32 * _1712) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1660 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _1712:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1712 < 1:
                                revert with 'NH{q', 17
                            if _1712 - 1 >= _1712:
                                revert with 'NH{q', 50
                            if mem[(32 * _1712 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1712 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1712 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1661 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1713 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _1713
                                require _1661 + (32 * _1713) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1661 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _1713:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1713 < 1:
                                    revert with 'NH{q', 17
                                if _1713 - 1 >= _1713:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1713 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1713 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1713 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3001 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3067 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3067
                                require _3001 + (32 * _3067) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3001 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3067:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3067 < 1:
                                    revert with 'NH{q', 17
                                if _3067 - 1 >= _3067:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3067 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3067 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3067 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = t * s
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = t * s
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            u = 128
                            v = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _2999 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _3065 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _3065
                            require _2999 + (32 * _3065) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _2999 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _3065:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _3065 < 1:
                                revert with 'NH{q', 17
                            if _3065 - 1 >= _3065:
                                revert with 'NH{q', 50
                            if mem[(32 * _3065 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3065 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _3065 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            idx = 0
                            u = 128
                            v = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3000 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3066 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3066
                                require _3000 + (32 * _3066) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3000 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3066:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3066 < 1:
                                    revert with 'NH{q', 17
                                if _3066 - 1 >= _3066:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3066 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3066 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3066 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = t * s
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3828 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3850 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3850
                                require _3828 + (32 * _3850) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3828 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3850:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3850 < 1:
                                    revert with 'NH{q', 17
                                if _3850 - 1 >= _3850:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3850 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3850 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3850 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
            else:
                if arg2 == wethAddress:
                    mem[96] = 2
                    mem[128] = wethAddress
                    mem[160] = arg2
                    require ext_code.size(wethAddress)
                    staticcall wethAddress.decimals() with:
                            gas gas_remaining wei
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = 1
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1674 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1722 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _1722
                            require _1674 + (32 * _1722) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1674 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _1722:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1722 < 1:
                                revert with 'NH{q', 17
                            if _1722 - 1 >= _1722:
                                revert with 'NH{q', 50
                            if mem[(32 * _1722 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1722 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1722 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1675 = mem[ceil32(return_data.size) + 192 len 4], 0
                                require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1723 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _1723
                                require _1675 + (32 * _1723) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1675 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _1723:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1723 < 1:
                                    revert with 'NH{q', 17
                                if _1723 - 1 >= _1723:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1723 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1723 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1723 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = 1
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3010 = mem[ceil32(return_data.size) + 192 len 4], 0
                                require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3076 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3076
                                require _3010 + (32 * _3076) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3010 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3076:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3076 < 1:
                                    revert with 'NH{q', 17
                                if _3076 - 1 >= _3076:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3076 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3076 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3076 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            if 10^ext_call.return_data[31 len 1] > -1:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            if secondaryRouterAddress == stor9:
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1672 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1720 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _1720
                                require _1672 + (32 * _1720) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1672 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _1720:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1720 < 1:
                                    revert with 'NH{q', 17
                                if _1720 - 1 >= _1720:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1720 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1720 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1720 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _1673 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _1721 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _1721
                                    require _1673 + (32 * _1721) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _1673 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _1721:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _1721 < 1:
                                        revert with 'NH{q', 17
                                    if _1721 - 1 >= _1721:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _1721 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1721 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _1721 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                                else:
                                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                                    mem[ceil32(return_data.size) + 228] = 64
                                    mem[ceil32(return_data.size) + 260] = 2
                                    idx = 0
                                    s = 128
                                    t = ceil32(return_data.size) + 292
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _3009 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3075 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _3075
                                    require _3009 + (32 * _3075) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _3009 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _3075:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3075 < 1:
                                        revert with 'NH{q', 17
                                    if _3075 - 1 >= _3075:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3075 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3075 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3075 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 'NH{q', 17
                                if not bool(idx):
                                    s = s * s
                                    t = t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                s = s * s
                                t = t * s
                                idx = uint255(idx) * 0.5
                                continue 
                            if t > -1 / s:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = t * s
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            if secondaryRouterAddress == stor9:
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3007 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3073 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3073
                                require _3007 + (32 * _3073) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3007 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3073:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3073 < 1:
                                    revert with 'NH{q', 17
                                if _3073 - 1 >= _3073:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3073 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3073 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3073 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _3008 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3074 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _3074
                                    require _3008 + (32 * _3074) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _3008 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _3074:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3074 < 1:
                                        revert with 'NH{q', 17
                                    if _3074 - 1 >= _3074:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3074 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3074 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3074 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                                else:
                                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = t * s
                                    mem[ceil32(return_data.size) + 228] = 64
                                    mem[ceil32(return_data.size) + 260] = 2
                                    idx = 0
                                    u = 128
                                    v = ceil32(return_data.size) + 292
                                    while idx < 2:
                                        mem[v] = mem[u + 12 len 20]
                                        idx = idx + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _3830 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3852 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _3852
                                    require _3830 + (32 * _3852) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _3830 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _3852:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3852 < 1:
                                        revert with 'NH{q', 17
                                    if _3852 - 1 >= _3852:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3852 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3852 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3852 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                else:
                    mem[96] = 3
                    mem[128] = wethAddress
                    mem[160] = wethAddress
                    mem[192] = arg2
                    require ext_code.size(wethAddress)
                    staticcall wethAddress.decimals() with:
                            gas gas_remaining wei
                    mem[224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = 1
                        mem[ceil32(return_data.size) + 260] = 64
                        mem[ceil32(return_data.size) + 292] = 3
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 324
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _1668 = mem[ceil32(return_data.size) + 224 len 4], 0
                            require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                            _1718 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                            mem[(2 * ceil32(return_data.size)) + 224] = _1718
                            require _1668 + (32 * _1718) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1668 + 256
                            t = (2 * ceil32(return_data.size)) + 256
                            while idx < _1718:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1718 < 1:
                                revert with 'NH{q', 17
                            if _1718 - 1 >= _1718:
                                revert with 'NH{q', 50
                            if mem[(32 * _1718 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1718 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1718 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                        else:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 324
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _1669 = mem[ceil32(return_data.size) + 224 len 4], 0
                                require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _1719 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _1719
                                require _1669 + (32 * _1719) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1669 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _1719:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1719 < 1:
                                    revert with 'NH{q', 17
                                if _1719 - 1 >= _1719:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1719 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1719 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1719 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                            else:
                                mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = 1
                                mem[ceil32(return_data.size) + 260] = 64
                                mem[ceil32(return_data.size) + 292] = 3
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3006 = mem[ceil32(return_data.size) + 224 len 4], 0
                                require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3072 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _3072
                                require _3006 + (32 * _3072) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3006 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _3072:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3072 < 1:
                                    revert with 'NH{q', 17
                                if _3072 - 1 >= _3072:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3072 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3072 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3072 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            if 10^ext_call.return_data[31 len 1] > -1:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = 10^uint8(ext_call.return_data[0])
                            mem[ceil32(return_data.size) + 260] = 64
                            mem[ceil32(return_data.size) + 292] = 3
                            if secondaryRouterAddress == stor9:
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _1666 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _1716 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _1716
                                require _1666 + (32 * _1716) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1666 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _1716:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1716 < 1:
                                    revert with 'NH{q', 17
                                if _1716 - 1 >= _1716:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1716 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1716 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1716 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                            else:
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _1667 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _1717 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = _1717
                                    require _1667 + (32 * _1717) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _1667 + 256
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < _1717:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _1717 < 1:
                                        revert with 'NH{q', 17
                                    if _1717 - 1 >= _1717:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _1717 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1717 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _1717 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                                else:
                                    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = 10^uint8(ext_call.return_data[0])
                                    mem[ceil32(return_data.size) + 260] = 64
                                    mem[ceil32(return_data.size) + 292] = 3
                                    idx = 0
                                    s = 128
                                    t = ceil32(return_data.size) + 324
                                    while idx < 3:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3005 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3071 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = _3071
                                    require _3005 + (32 * _3071) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _3005 + 256
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < _3071:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3071 < 1:
                                        revert with 'NH{q', 17
                                    if _3071 - 1 >= _3071:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3071 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3071 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3071 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 'NH{q', 17
                                if not bool(idx):
                                    s = s * s
                                    t = t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                s = s * s
                                t = t * s
                                idx = uint255(idx) * 0.5
                                continue 
                            if t > -1 / s:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = t * s
                            mem[ceil32(return_data.size) + 260] = 64
                            mem[ceil32(return_data.size) + 292] = 3
                            if secondaryRouterAddress == stor9:
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3003 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3069 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _3069
                                require _3003 + (32 * _3069) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3003 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _3069:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3069 < 1:
                                    revert with 'NH{q', 17
                                if _3069 - 1 >= _3069:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3069 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3069 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3069 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                            else:
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3004 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3070 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = _3070
                                    require _3004 + (32 * _3070) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _3004 + 256
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < _3070:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3070 < 1:
                                        revert with 'NH{q', 17
                                    if _3070 - 1 >= _3070:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3070 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3070 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3070 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                                else:
                                    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = t * s
                                    mem[ceil32(return_data.size) + 260] = 64
                                    mem[ceil32(return_data.size) + 292] = 3
                                    idx = 0
                                    u = 128
                                    v = ceil32(return_data.size) + 324
                                    while idx < 3:
                                        mem[v] = mem[u + 12 len 20]
                                        idx = idx + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args t * s, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3829 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3851 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = _3851
                                    require _3829 + (32 * _3851) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _3829 + 256
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < _3851:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3851 < 1:
                                        revert with 'NH{q', 17
                                    if _3851 - 1 >= _3851:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3851 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3851 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3851 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
    return memory
      from mem[64]
       len 32
}

function getPriceFromRouterUsdc(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 != stor8:
        if usdcAddress != stor8:
            if arg1 == wethAddress:
                mem[96] = 2
                mem[128] = arg1
                mem[160] = usdcAddress
                require ext_code.size(arg1)
                staticcall arg1.decimals() with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = 1
                    mem[ceil32(return_data.size) + 228] = 64
                    mem[ceil32(return_data.size) + 260] = 2
                    if secondaryRouterAddress == stor9:
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1626 = mem[ceil32(return_data.size) + 192 len 4], 0
                        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                        _1690 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                        mem[(2 * ceil32(return_data.size)) + 192] = _1690
                        require _1626 + (32 * _1690) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _1626 + 224
                        t = (2 * ceil32(return_data.size)) + 224
                        while idx < _1690:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1690 < 1:
                            revert with 'NH{q', 17
                        if _1690 - 1 >= _1690:
                            revert with 'NH{q', 50
                        if mem[(32 * _1690 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1690 - 1) + (2 * ceil32(return_data.size)) + 224]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * mem[(32 * _1690 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                    else:
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if ext_call.success:
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1627 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1691 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _1691
                            require _1627 + (32 * _1691) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1627 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _1691:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1691 < 1:
                                revert with 'NH{q', 17
                            if _1691 - 1 >= _1691:
                                revert with 'NH{q', 50
                            if mem[(32 * _1691 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1691 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1691 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = 1
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _2978 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _3044 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _3044
                            require _2978 + (32 * _3044) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _2978 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _3044:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _3044 < 1:
                                revert with 'NH{q', 17
                            if _3044 - 1 >= _3044:
                                revert with 'NH{q', 50
                            if mem[(32 * _3044 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3044 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _3044 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if 10^ext_call.return_data[31 len 1] > -1:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1624 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1688 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _1688
                            require _1624 + (32 * _1688) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1624 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _1688:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1688 < 1:
                                revert with 'NH{q', 17
                            if _1688 - 1 >= _1688:
                                revert with 'NH{q', 50
                            if mem[(32 * _1688 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1688 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1688 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1625 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1689 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _1689
                                require _1625 + (32 * _1689) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1625 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _1689:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1689 < 1:
                                    revert with 'NH{q', 17
                                if _1689 - 1 >= _1689:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1689 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1689 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1689 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2977 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3043 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3043
                                require _2977 + (32 * _3043) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _2977 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3043:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3043 < 1:
                                    revert with 'NH{q', 17
                                if _3043 - 1 >= _3043:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3043 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3043 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3043 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = t * s
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = t * s
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            u = 128
                            v = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _2975 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _3041 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _3041
                            require _2975 + (32 * _3041) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _2975 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _3041:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _3041 < 1:
                                revert with 'NH{q', 17
                            if _3041 - 1 >= _3041:
                                revert with 'NH{q', 50
                            if mem[(32 * _3041 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3041 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _3041 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            idx = 0
                            u = 128
                            v = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2976 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3042 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3042
                                require _2976 + (32 * _3042) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _2976 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3042:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3042 < 1:
                                    revert with 'NH{q', 17
                                if _3042 - 1 >= _3042:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3042 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3042 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3042 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = t * s
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3822 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3844 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3844
                                require _3822 + (32 * _3844) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3822 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3844:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3844 < 1:
                                    revert with 'NH{q', 17
                                if _3844 - 1 >= _3844:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3844 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3844 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3844 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
            else:
                if usdcAddress == wethAddress:
                    mem[96] = 2
                    mem[128] = arg1
                    mem[160] = usdcAddress
                    require ext_code.size(arg1)
                    staticcall arg1.decimals() with:
                            gas gas_remaining wei
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = 1
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1638 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1698 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _1698
                            require _1638 + (32 * _1698) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1638 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _1698:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1698 < 1:
                                revert with 'NH{q', 17
                            if _1698 - 1 >= _1698:
                                revert with 'NH{q', 50
                            if mem[(32 * _1698 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1698 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1698 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1639 = mem[ceil32(return_data.size) + 192 len 4], 0
                                require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1699 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _1699
                                require _1639 + (32 * _1699) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1639 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _1699:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1699 < 1:
                                    revert with 'NH{q', 17
                                if _1699 - 1 >= _1699:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1699 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1699 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1699 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = 1
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2986 = mem[ceil32(return_data.size) + 192 len 4], 0
                                require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3052 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3052
                                require _2986 + (32 * _3052) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _2986 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3052:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3052 < 1:
                                    revert with 'NH{q', 17
                                if _3052 - 1 >= _3052:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3052 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3052 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3052 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            if 10^ext_call.return_data[31 len 1] > -1:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            if secondaryRouterAddress == stor9:
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1636 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1696 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _1696
                                require _1636 + (32 * _1696) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1636 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _1696:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1696 < 1:
                                    revert with 'NH{q', 17
                                if _1696 - 1 >= _1696:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1696 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1696 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1696 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _1637 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _1697 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _1697
                                    require _1637 + (32 * _1697) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _1637 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _1697:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _1697 < 1:
                                        revert with 'NH{q', 17
                                    if _1697 - 1 >= _1697:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _1697 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1697 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _1697 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                                else:
                                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                                    mem[ceil32(return_data.size) + 228] = 64
                                    mem[ceil32(return_data.size) + 260] = 2
                                    idx = 0
                                    s = 128
                                    t = ceil32(return_data.size) + 292
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _2985 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3051 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _3051
                                    require _2985 + (32 * _3051) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _2985 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _3051:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3051 < 1:
                                        revert with 'NH{q', 17
                                    if _3051 - 1 >= _3051:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3051 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3051 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3051 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 'NH{q', 17
                                if not bool(idx):
                                    s = s * s
                                    t = t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                s = s * s
                                t = t * s
                                idx = uint255(idx) * 0.5
                                continue 
                            if t > -1 / s:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = t * s
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            if secondaryRouterAddress == stor9:
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2983 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3049 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3049
                                require _2983 + (32 * _3049) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _2983 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3049:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3049 < 1:
                                    revert with 'NH{q', 17
                                if _3049 - 1 >= _3049:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3049 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3049 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3049 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _2984 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3050 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _3050
                                    require _2984 + (32 * _3050) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _2984 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _3050:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3050 < 1:
                                        revert with 'NH{q', 17
                                    if _3050 - 1 >= _3050:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3050 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3050 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3050 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                                else:
                                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = t * s
                                    mem[ceil32(return_data.size) + 228] = 64
                                    mem[ceil32(return_data.size) + 260] = 2
                                    idx = 0
                                    u = 128
                                    v = ceil32(return_data.size) + 292
                                    while idx < 2:
                                        mem[v] = mem[u + 12 len 20]
                                        idx = idx + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _3824 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3846 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _3846
                                    require _3824 + (32 * _3846) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _3824 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _3846:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3846 < 1:
                                        revert with 'NH{q', 17
                                    if _3846 - 1 >= _3846:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3846 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3846 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3846 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                else:
                    mem[96] = 3
                    mem[128] = arg1
                    mem[160] = wethAddress
                    mem[192] = usdcAddress
                    require ext_code.size(arg1)
                    staticcall arg1.decimals() with:
                            gas gas_remaining wei
                    mem[224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = 1
                        mem[ceil32(return_data.size) + 260] = 64
                        mem[ceil32(return_data.size) + 292] = 3
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 324
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _1632 = mem[ceil32(return_data.size) + 224 len 4], 0
                            require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                            _1694 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                            mem[(2 * ceil32(return_data.size)) + 224] = _1694
                            require _1632 + (32 * _1694) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1632 + 256
                            t = (2 * ceil32(return_data.size)) + 256
                            while idx < _1694:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1694 < 1:
                                revert with 'NH{q', 17
                            if _1694 - 1 >= _1694:
                                revert with 'NH{q', 50
                            if mem[(32 * _1694 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1694 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1694 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                        else:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 324
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _1633 = mem[ceil32(return_data.size) + 224 len 4], 0
                                require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _1695 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _1695
                                require _1633 + (32 * _1695) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1633 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _1695:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1695 < 1:
                                    revert with 'NH{q', 17
                                if _1695 - 1 >= _1695:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1695 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1695 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1695 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                            else:
                                mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = 1
                                mem[ceil32(return_data.size) + 260] = 64
                                mem[ceil32(return_data.size) + 292] = 3
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _2982 = mem[ceil32(return_data.size) + 224 len 4], 0
                                require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3048 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _3048
                                require _2982 + (32 * _3048) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _2982 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _3048:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3048 < 1:
                                    revert with 'NH{q', 17
                                if _3048 - 1 >= _3048:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3048 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3048 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3048 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            if 10^ext_call.return_data[31 len 1] > -1:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = 10^uint8(ext_call.return_data[0])
                            mem[ceil32(return_data.size) + 260] = 64
                            mem[ceil32(return_data.size) + 292] = 3
                            if secondaryRouterAddress == stor9:
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _1630 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _1692 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _1692
                                require _1630 + (32 * _1692) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1630 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _1692:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1692 < 1:
                                    revert with 'NH{q', 17
                                if _1692 - 1 >= _1692:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1692 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1692 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1692 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                            else:
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _1631 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _1693 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = _1693
                                    require _1631 + (32 * _1693) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _1631 + 256
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < _1693:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _1693 < 1:
                                        revert with 'NH{q', 17
                                    if _1693 - 1 >= _1693:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _1693 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1693 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _1693 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                                else:
                                    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = 10^uint8(ext_call.return_data[0])
                                    mem[ceil32(return_data.size) + 260] = 64
                                    mem[ceil32(return_data.size) + 292] = 3
                                    idx = 0
                                    s = 128
                                    t = ceil32(return_data.size) + 324
                                    while idx < 3:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _2981 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3047 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = _3047
                                    require _2981 + (32 * _3047) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _2981 + 256
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < _3047:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3047 < 1:
                                        revert with 'NH{q', 17
                                    if _3047 - 1 >= _3047:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3047 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3047 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3047 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 'NH{q', 17
                                if not bool(idx):
                                    s = s * s
                                    t = t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                s = s * s
                                t = t * s
                                idx = uint255(idx) * 0.5
                                continue 
                            if t > -1 / s:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = t * s
                            mem[ceil32(return_data.size) + 260] = 64
                            mem[ceil32(return_data.size) + 292] = 3
                            if secondaryRouterAddress == stor9:
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _2979 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3045 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _3045
                                require _2979 + (32 * _3045) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _2979 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _3045:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3045 < 1:
                                    revert with 'NH{q', 17
                                if _3045 - 1 >= _3045:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3045 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3045 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3045 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                            else:
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _2980 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3046 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = _3046
                                    require _2980 + (32 * _3046) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _2980 + 256
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < _3046:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3046 < 1:
                                        revert with 'NH{q', 17
                                    if _3046 - 1 >= _3046:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3046 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3046 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3046 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                                else:
                                    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = t * s
                                    mem[ceil32(return_data.size) + 260] = 64
                                    mem[ceil32(return_data.size) + 292] = 3
                                    idx = 0
                                    u = 128
                                    v = ceil32(return_data.size) + 324
                                    while idx < 3:
                                        mem[v] = mem[u + 12 len 20]
                                        idx = idx + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args t * s, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3823 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3845 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = _3845
                                    require _3823 + (32 * _3845) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _3823 + 256
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < _3845:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3845 < 1:
                                        revert with 'NH{q', 17
                                    if _3845 - 1 >= _3845:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3845 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3845 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3845 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
        else:
            if arg1 == wethAddress:
                mem[96] = 2
                mem[128] = arg1
                mem[160] = wethAddress
                require ext_code.size(arg1)
                staticcall arg1.decimals() with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = 1
                    mem[ceil32(return_data.size) + 228] = 64
                    mem[ceil32(return_data.size) + 260] = 2
                    if secondaryRouterAddress == stor9:
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1644 = mem[ceil32(return_data.size) + 192 len 4], 0
                        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                        _1702 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                        mem[(2 * ceil32(return_data.size)) + 192] = _1702
                        require _1644 + (32 * _1702) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _1644 + 224
                        t = (2 * ceil32(return_data.size)) + 224
                        while idx < _1702:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1702 < 1:
                            revert with 'NH{q', 17
                        if _1702 - 1 >= _1702:
                            revert with 'NH{q', 50
                        if mem[(32 * _1702 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1702 - 1) + (2 * ceil32(return_data.size)) + 224]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * mem[(32 * _1702 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                    else:
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if ext_call.success:
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1645 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1703 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _1703
                            require _1645 + (32 * _1703) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1645 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _1703:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1703 < 1:
                                revert with 'NH{q', 17
                            if _1703 - 1 >= _1703:
                                revert with 'NH{q', 50
                            if mem[(32 * _1703 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1703 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1703 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = 1
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _2990 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _3056 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _3056
                            require _2990 + (32 * _3056) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _2990 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _3056:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _3056 < 1:
                                revert with 'NH{q', 17
                            if _3056 - 1 >= _3056:
                                revert with 'NH{q', 50
                            if mem[(32 * _3056 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3056 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _3056 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if 10^ext_call.return_data[31 len 1] > -1:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1642 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1700 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _1700
                            require _1642 + (32 * _1700) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1642 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _1700:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1700 < 1:
                                revert with 'NH{q', 17
                            if _1700 - 1 >= _1700:
                                revert with 'NH{q', 50
                            if mem[(32 * _1700 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1700 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1700 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1643 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1701 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _1701
                                require _1643 + (32 * _1701) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1643 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _1701:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1701 < 1:
                                    revert with 'NH{q', 17
                                if _1701 - 1 >= _1701:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1701 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1701 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1701 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2989 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3055 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3055
                                require _2989 + (32 * _3055) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _2989 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3055:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3055 < 1:
                                    revert with 'NH{q', 17
                                if _3055 - 1 >= _3055:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3055 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3055 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3055 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = t * s
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = t * s
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            u = 128
                            v = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _2987 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _3053 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _3053
                            require _2987 + (32 * _3053) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _2987 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _3053:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _3053 < 1:
                                revert with 'NH{q', 17
                            if _3053 - 1 >= _3053:
                                revert with 'NH{q', 50
                            if mem[(32 * _3053 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3053 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _3053 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            idx = 0
                            u = 128
                            v = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2988 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3054 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3054
                                require _2988 + (32 * _3054) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _2988 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3054:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3054 < 1:
                                    revert with 'NH{q', 17
                                if _3054 - 1 >= _3054:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3054 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3054 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3054 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = t * s
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3825 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3847 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3847
                                require _3825 + (32 * _3847) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3825 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3847:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3847 < 1:
                                    revert with 'NH{q', 17
                                if _3847 - 1 >= _3847:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3847 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3847 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3847 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
            else:
                if wethAddress == wethAddress:
                    mem[96] = 2
                    mem[128] = arg1
                    mem[160] = wethAddress
                    require ext_code.size(arg1)
                    staticcall arg1.decimals() with:
                            gas gas_remaining wei
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = 1
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1656 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1710 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _1710
                            require _1656 + (32 * _1710) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1656 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _1710:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1710 < 1:
                                revert with 'NH{q', 17
                            if _1710 - 1 >= _1710:
                                revert with 'NH{q', 50
                            if mem[(32 * _1710 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1710 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1710 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1657 = mem[ceil32(return_data.size) + 192 len 4], 0
                                require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1711 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _1711
                                require _1657 + (32 * _1711) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1657 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _1711:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1711 < 1:
                                    revert with 'NH{q', 17
                                if _1711 - 1 >= _1711:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1711 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1711 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1711 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = 1
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2998 = mem[ceil32(return_data.size) + 192 len 4], 0
                                require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3064 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3064
                                require _2998 + (32 * _3064) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _2998 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3064:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3064 < 1:
                                    revert with 'NH{q', 17
                                if _3064 - 1 >= _3064:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3064 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3064 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3064 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            if 10^ext_call.return_data[31 len 1] > -1:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            if secondaryRouterAddress == stor9:
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1654 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1708 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _1708
                                require _1654 + (32 * _1708) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1654 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _1708:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1708 < 1:
                                    revert with 'NH{q', 17
                                if _1708 - 1 >= _1708:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1708 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1708 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1708 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _1655 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _1709 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _1709
                                    require _1655 + (32 * _1709) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _1655 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _1709:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _1709 < 1:
                                        revert with 'NH{q', 17
                                    if _1709 - 1 >= _1709:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _1709 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1709 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _1709 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                                else:
                                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                                    mem[ceil32(return_data.size) + 228] = 64
                                    mem[ceil32(return_data.size) + 260] = 2
                                    idx = 0
                                    s = 128
                                    t = ceil32(return_data.size) + 292
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _2997 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3063 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _3063
                                    require _2997 + (32 * _3063) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _2997 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _3063:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3063 < 1:
                                        revert with 'NH{q', 17
                                    if _3063 - 1 >= _3063:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3063 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3063 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3063 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 'NH{q', 17
                                if not bool(idx):
                                    s = s * s
                                    t = t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                s = s * s
                                t = t * s
                                idx = uint255(idx) * 0.5
                                continue 
                            if t > -1 / s:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = t * s
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            if secondaryRouterAddress == stor9:
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2995 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3061 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3061
                                require _2995 + (32 * _3061) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _2995 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3061:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3061 < 1:
                                    revert with 'NH{q', 17
                                if _3061 - 1 >= _3061:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3061 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3061 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3061 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _2996 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3062 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _3062
                                    require _2996 + (32 * _3062) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _2996 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _3062:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3062 < 1:
                                        revert with 'NH{q', 17
                                    if _3062 - 1 >= _3062:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3062 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3062 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3062 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                                else:
                                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = t * s
                                    mem[ceil32(return_data.size) + 228] = 64
                                    mem[ceil32(return_data.size) + 260] = 2
                                    idx = 0
                                    u = 128
                                    v = ceil32(return_data.size) + 292
                                    while idx < 2:
                                        mem[v] = mem[u + 12 len 20]
                                        idx = idx + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _3827 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3849 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _3849
                                    require _3827 + (32 * _3849) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _3827 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _3849:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3849 < 1:
                                        revert with 'NH{q', 17
                                    if _3849 - 1 >= _3849:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3849 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3849 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3849 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                else:
                    mem[96] = 3
                    mem[128] = arg1
                    mem[160] = wethAddress
                    mem[192] = wethAddress
                    require ext_code.size(arg1)
                    staticcall arg1.decimals() with:
                            gas gas_remaining wei
                    mem[224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = 1
                        mem[ceil32(return_data.size) + 260] = 64
                        mem[ceil32(return_data.size) + 292] = 3
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 324
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _1650 = mem[ceil32(return_data.size) + 224 len 4], 0
                            require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                            _1706 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                            mem[(2 * ceil32(return_data.size)) + 224] = _1706
                            require _1650 + (32 * _1706) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1650 + 256
                            t = (2 * ceil32(return_data.size)) + 256
                            while idx < _1706:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1706 < 1:
                                revert with 'NH{q', 17
                            if _1706 - 1 >= _1706:
                                revert with 'NH{q', 50
                            if mem[(32 * _1706 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1706 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1706 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                        else:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 324
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _1651 = mem[ceil32(return_data.size) + 224 len 4], 0
                                require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _1707 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _1707
                                require _1651 + (32 * _1707) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1651 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _1707:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1707 < 1:
                                    revert with 'NH{q', 17
                                if _1707 - 1 >= _1707:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1707 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1707 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1707 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                            else:
                                mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = 1
                                mem[ceil32(return_data.size) + 260] = 64
                                mem[ceil32(return_data.size) + 292] = 3
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _2994 = mem[ceil32(return_data.size) + 224 len 4], 0
                                require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3060 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _3060
                                require _2994 + (32 * _3060) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _2994 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _3060:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3060 < 1:
                                    revert with 'NH{q', 17
                                if _3060 - 1 >= _3060:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3060 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3060 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3060 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            if 10^ext_call.return_data[31 len 1] > -1:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = 10^uint8(ext_call.return_data[0])
                            mem[ceil32(return_data.size) + 260] = 64
                            mem[ceil32(return_data.size) + 292] = 3
                            if secondaryRouterAddress == stor9:
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _1648 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _1704 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _1704
                                require _1648 + (32 * _1704) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1648 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _1704:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1704 < 1:
                                    revert with 'NH{q', 17
                                if _1704 - 1 >= _1704:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1704 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1704 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1704 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                            else:
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _1649 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _1705 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = _1705
                                    require _1649 + (32 * _1705) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _1649 + 256
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < _1705:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _1705 < 1:
                                        revert with 'NH{q', 17
                                    if _1705 - 1 >= _1705:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _1705 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1705 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _1705 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                                else:
                                    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = 10^uint8(ext_call.return_data[0])
                                    mem[ceil32(return_data.size) + 260] = 64
                                    mem[ceil32(return_data.size) + 292] = 3
                                    idx = 0
                                    s = 128
                                    t = ceil32(return_data.size) + 324
                                    while idx < 3:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _2993 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3059 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = _3059
                                    require _2993 + (32 * _3059) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _2993 + 256
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < _3059:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3059 < 1:
                                        revert with 'NH{q', 17
                                    if _3059 - 1 >= _3059:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3059 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3059 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3059 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 'NH{q', 17
                                if not bool(idx):
                                    s = s * s
                                    t = t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                s = s * s
                                t = t * s
                                idx = uint255(idx) * 0.5
                                continue 
                            if t > -1 / s:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = t * s
                            mem[ceil32(return_data.size) + 260] = 64
                            mem[ceil32(return_data.size) + 292] = 3
                            if secondaryRouterAddress == stor9:
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _2991 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3057 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _3057
                                require _2991 + (32 * _3057) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _2991 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _3057:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3057 < 1:
                                    revert with 'NH{q', 17
                                if _3057 - 1 >= _3057:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3057 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3057 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3057 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                            else:
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _2992 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3058 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = _3058
                                    require _2992 + (32 * _3058) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _2992 + 256
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < _3058:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3058 < 1:
                                        revert with 'NH{q', 17
                                    if _3058 - 1 >= _3058:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3058 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3058 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3058 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                                else:
                                    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = t * s
                                    mem[ceil32(return_data.size) + 260] = 64
                                    mem[ceil32(return_data.size) + 292] = 3
                                    idx = 0
                                    u = 128
                                    v = ceil32(return_data.size) + 324
                                    while idx < 3:
                                        mem[v] = mem[u + 12 len 20]
                                        idx = idx + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args t * s, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3826 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3848 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = _3848
                                    require _3826 + (32 * _3848) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _3826 + 256
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < _3848:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3848 < 1:
                                        revert with 'NH{q', 17
                                    if _3848 - 1 >= _3848:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3848 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3848 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3848 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
    else:
        if usdcAddress == stor8:
            if wethAddress == wethAddress:
                mem[96] = 2
                mem[128] = wethAddress
                mem[160] = wethAddress
                require ext_code.size(wethAddress)
                staticcall wethAddress.decimals() with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = 1
                    mem[ceil32(return_data.size) + 228] = 64
                    mem[ceil32(return_data.size) + 260] = 2
                    if secondaryRouterAddress == stor9:
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1680 = mem[ceil32(return_data.size) + 192 len 4], 0
                        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                        _1726 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                        mem[(2 * ceil32(return_data.size)) + 192] = _1726
                        require _1680 + (32 * _1726) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _1680 + 224
                        t = (2 * ceil32(return_data.size)) + 224
                        while idx < _1726:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1726 < 1:
                            revert with 'NH{q', 17
                        if _1726 - 1 >= _1726:
                            revert with 'NH{q', 50
                        if mem[(32 * _1726 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1726 - 1) + (2 * ceil32(return_data.size)) + 224]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * mem[(32 * _1726 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                    else:
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if ext_call.success:
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1681 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1727 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _1727
                            require _1681 + (32 * _1727) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1681 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _1727:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1727 < 1:
                                revert with 'NH{q', 17
                            if _1727 - 1 >= _1727:
                                revert with 'NH{q', 50
                            if mem[(32 * _1727 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1727 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1727 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = 1
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _3014 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _3080 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _3080
                            require _3014 + (32 * _3080) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _3014 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _3080:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _3080 < 1:
                                revert with 'NH{q', 17
                            if _3080 - 1 >= _3080:
                                revert with 'NH{q', 50
                            if mem[(32 * _3080 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3080 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _3080 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if 10^ext_call.return_data[31 len 1] > -1:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1678 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1724 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _1724
                            require _1678 + (32 * _1724) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1678 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _1724:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1724 < 1:
                                revert with 'NH{q', 17
                            if _1724 - 1 >= _1724:
                                revert with 'NH{q', 50
                            if mem[(32 * _1724 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1724 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1724 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1679 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1725 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _1725
                                require _1679 + (32 * _1725) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1679 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _1725:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1725 < 1:
                                    revert with 'NH{q', 17
                                if _1725 - 1 >= _1725:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1725 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1725 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1725 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3013 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3079 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3079
                                require _3013 + (32 * _3079) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3013 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3079:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3079 < 1:
                                    revert with 'NH{q', 17
                                if _3079 - 1 >= _3079:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3079 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3079 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3079 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = t * s
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = t * s
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            u = 128
                            v = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _3011 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _3077 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _3077
                            require _3011 + (32 * _3077) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _3011 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _3077:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _3077 < 1:
                                revert with 'NH{q', 17
                            if _3077 - 1 >= _3077:
                                revert with 'NH{q', 50
                            if mem[(32 * _3077 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3077 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _3077 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            idx = 0
                            u = 128
                            v = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3012 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3078 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3078
                                require _3012 + (32 * _3078) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3012 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3078:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3078 < 1:
                                    revert with 'NH{q', 17
                                if _3078 - 1 >= _3078:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3078 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3078 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3078 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = t * s
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3831 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3853 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3853
                                require _3831 + (32 * _3853) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3831 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3853:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3853 < 1:
                                    revert with 'NH{q', 17
                                if _3853 - 1 >= _3853:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3853 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3853 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3853 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
            else:
                mem[96] = 3
                mem[128] = wethAddress
                mem[160] = wethAddress
                mem[192] = wethAddress
                require ext_code.size(wethAddress)
                staticcall wethAddress.decimals() with:
                        gas gas_remaining wei
                mem[224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 228] = 1
                    mem[ceil32(return_data.size) + 260] = 64
                    mem[ceil32(return_data.size) + 292] = 3
                    if secondaryRouterAddress == stor9:
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _1686 = mem[ceil32(return_data.size) + 224 len 4], 0
                        require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                        _1730 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                            revert with 'NH{q', 65
                        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                        mem[(2 * ceil32(return_data.size)) + 224] = _1730
                        require _1686 + (32 * _1730) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _1686 + 256
                        t = (2 * ceil32(return_data.size)) + 256
                        while idx < _1730:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1730 < 1:
                            revert with 'NH{q', 17
                        if _1730 - 1 >= _1730:
                            revert with 'NH{q', 50
                        if mem[(32 * _1730 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1730 - 1) + (2 * ceil32(return_data.size)) + 256]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * mem[(32 * _1730 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                    else:
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                        if ext_call.success:
                            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _1687 = mem[ceil32(return_data.size) + 224 len 4], 0
                            require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                            _1731 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                            mem[(2 * ceil32(return_data.size)) + 224] = _1731
                            require _1687 + (32 * _1731) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1687 + 256
                            t = (2 * ceil32(return_data.size)) + 256
                            while idx < _1731:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1731 < 1:
                                revert with 'NH{q', 17
                            if _1731 - 1 >= _1731:
                                revert with 'NH{q', 50
                            if mem[(32 * _1731 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1731 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1731 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                        else:
                            mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = 1
                            mem[ceil32(return_data.size) + 260] = 64
                            mem[ceil32(return_data.size) + 292] = 3
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 324
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _3018 = mem[ceil32(return_data.size) + 224 len 4], 0
                            require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                            _3084 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                            mem[(2 * ceil32(return_data.size)) + 224] = _3084
                            require _3018 + (32 * _3084) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _3018 + 256
                            t = (2 * ceil32(return_data.size)) + 256
                            while idx < _3084:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _3084 < 1:
                                revert with 'NH{q', 17
                            if _3084 - 1 >= _3084:
                                revert with 'NH{q', 50
                            if mem[(32 * _3084 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3084 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _3084 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if 10^ext_call.return_data[31 len 1] > -1:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = 10^uint8(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 260] = 64
                        mem[ceil32(return_data.size) + 292] = 3
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 324
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _1684 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                            require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                            _1728 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                            mem[(2 * ceil32(return_data.size)) + 224] = _1728
                            require _1684 + (32 * _1728) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1684 + 256
                            t = (2 * ceil32(return_data.size)) + 256
                            while idx < _1728:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1728 < 1:
                                revert with 'NH{q', 17
                            if _1728 - 1 >= _1728:
                                revert with 'NH{q', 50
                            if mem[(32 * _1728 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1728 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1728 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                        else:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 324
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _1685 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _1729 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _1729
                                require _1685 + (32 * _1729) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1685 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _1729:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1729 < 1:
                                    revert with 'NH{q', 17
                                if _1729 - 1 >= _1729:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1729 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1729 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1729 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                            else:
                                mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = 10^uint8(ext_call.return_data[0])
                                mem[ceil32(return_data.size) + 260] = 64
                                mem[ceil32(return_data.size) + 292] = 3
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3017 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3083 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _3083
                                require _3017 + (32 * _3083) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3017 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _3083:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3083 < 1:
                                    revert with 'NH{q', 17
                                if _3083 - 1 >= _3083:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3083 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3083 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3083 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = t * s
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = t * s
                        mem[ceil32(return_data.size) + 260] = 64
                        mem[ceil32(return_data.size) + 292] = 3
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            u = 128
                            v = ceil32(return_data.size) + 324
                            while idx < 3:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args t * s, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _3015 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32
                            require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                            _3081 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225
                            mem[(2 * ceil32(return_data.size)) + 224] = _3081
                            require _3015 + (32 * _3081) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _3015 + 256
                            t = (2 * ceil32(return_data.size)) + 256
                            while idx < _3081:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _3081 < 1:
                                revert with 'NH{q', 17
                            if _3081 - 1 >= _3081:
                                revert with 'NH{q', 50
                            if mem[(32 * _3081 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3081 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _3081 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                        else:
                            idx = 0
                            u = 128
                            v = ceil32(return_data.size) + 324
                            while idx < 3:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args t * s, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3016 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3082 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _3082
                                require _3016 + (32 * _3082) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3016 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _3082:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3082 < 1:
                                    revert with 'NH{q', 17
                                if _3082 - 1 >= _3082:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3082 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3082 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3082 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                            else:
                                mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = t * s
                                mem[ceil32(return_data.size) + 260] = 64
                                mem[ceil32(return_data.size) + 292] = 3
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3832 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3854 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _3854
                                require _3832 + (32 * _3854) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3832 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _3854:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3854 < 1:
                                    revert with 'NH{q', 17
                                if _3854 - 1 >= _3854:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3854 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3854 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3854 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
        else:
            if wethAddress == wethAddress:
                mem[96] = 2
                mem[128] = wethAddress
                mem[160] = usdcAddress
                require ext_code.size(wethAddress)
                staticcall wethAddress.decimals() with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = 1
                    mem[ceil32(return_data.size) + 228] = 64
                    mem[ceil32(return_data.size) + 260] = 2
                    if secondaryRouterAddress == stor9:
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1662 = mem[ceil32(return_data.size) + 192 len 4], 0
                        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                        _1714 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                        mem[(2 * ceil32(return_data.size)) + 192] = _1714
                        require _1662 + (32 * _1714) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _1662 + 224
                        t = (2 * ceil32(return_data.size)) + 224
                        while idx < _1714:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1714 < 1:
                            revert with 'NH{q', 17
                        if _1714 - 1 >= _1714:
                            revert with 'NH{q', 50
                        if mem[(32 * _1714 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1714 - 1) + (2 * ceil32(return_data.size)) + 224]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * mem[(32 * _1714 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                    else:
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if ext_call.success:
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1663 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1715 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _1715
                            require _1663 + (32 * _1715) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1663 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _1715:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1715 < 1:
                                revert with 'NH{q', 17
                            if _1715 - 1 >= _1715:
                                revert with 'NH{q', 50
                            if mem[(32 * _1715 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1715 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1715 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = 1
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _3002 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _3068 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _3068
                            require _3002 + (32 * _3068) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _3002 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _3068:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _3068 < 1:
                                revert with 'NH{q', 17
                            if _3068 - 1 >= _3068:
                                revert with 'NH{q', 50
                            if mem[(32 * _3068 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3068 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _3068 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if 10^ext_call.return_data[31 len 1] > -1:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1660 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1712 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _1712
                            require _1660 + (32 * _1712) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1660 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _1712:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1712 < 1:
                                revert with 'NH{q', 17
                            if _1712 - 1 >= _1712:
                                revert with 'NH{q', 50
                            if mem[(32 * _1712 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1712 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1712 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1661 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1713 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _1713
                                require _1661 + (32 * _1713) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1661 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _1713:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1713 < 1:
                                    revert with 'NH{q', 17
                                if _1713 - 1 >= _1713:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1713 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1713 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1713 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3001 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3067 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3067
                                require _3001 + (32 * _3067) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3001 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3067:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3067 < 1:
                                    revert with 'NH{q', 17
                                if _3067 - 1 >= _3067:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3067 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3067 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3067 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 'NH{q', 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = t * s
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = t * s
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            u = 128
                            v = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _2999 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _3065 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _3065
                            require _2999 + (32 * _3065) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _2999 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _3065:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _3065 < 1:
                                revert with 'NH{q', 17
                            if _3065 - 1 >= _3065:
                                revert with 'NH{q', 50
                            if mem[(32 * _3065 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3065 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _3065 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            idx = 0
                            u = 128
                            v = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3000 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3066 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3066
                                require _3000 + (32 * _3066) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3000 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3066:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3066 < 1:
                                    revert with 'NH{q', 17
                                if _3066 - 1 >= _3066:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3066 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3066 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3066 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = t * s
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3828 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3850 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3850
                                require _3828 + (32 * _3850) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3828 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3850:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3850 < 1:
                                    revert with 'NH{q', 17
                                if _3850 - 1 >= _3850:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3850 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3850 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3850 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
            else:
                if usdcAddress == wethAddress:
                    mem[96] = 2
                    mem[128] = wethAddress
                    mem[160] = usdcAddress
                    require ext_code.size(wethAddress)
                    staticcall wethAddress.decimals() with:
                            gas gas_remaining wei
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = 1
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1674 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1722 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = _1722
                            require _1674 + (32 * _1722) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1674 + 224
                            t = (2 * ceil32(return_data.size)) + 224
                            while idx < _1722:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1722 < 1:
                                revert with 'NH{q', 17
                            if _1722 - 1 >= _1722:
                                revert with 'NH{q', 50
                            if mem[(32 * _1722 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1722 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1722 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1675 = mem[ceil32(return_data.size) + 192 len 4], 0
                                require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1723 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _1723
                                require _1675 + (32 * _1723) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1675 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _1723:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1723 < 1:
                                    revert with 'NH{q', 17
                                if _1723 - 1 >= _1723:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1723 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1723 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1723 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = 1
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3010 = mem[ceil32(return_data.size) + 192 len 4], 0
                                require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3076 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3076
                                require _3010 + (32 * _3076) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3010 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3076:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3076 < 1:
                                    revert with 'NH{q', 17
                                if _3076 - 1 >= _3076:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3076 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3076 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3076 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            if 10^ext_call.return_data[31 len 1] > -1:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            if secondaryRouterAddress == stor9:
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1672 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1720 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _1720
                                require _1672 + (32 * _1720) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1672 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _1720:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1720 < 1:
                                    revert with 'NH{q', 17
                                if _1720 - 1 >= _1720:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1720 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1720 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1720 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _1673 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _1721 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _1721
                                    require _1673 + (32 * _1721) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _1673 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _1721:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _1721 < 1:
                                        revert with 'NH{q', 17
                                    if _1721 - 1 >= _1721:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _1721 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _1721 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _1721 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                                else:
                                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                                    mem[ceil32(return_data.size) + 228] = 64
                                    mem[ceil32(return_data.size) + 260] = 2
                                    idx = 0
                                    s = 128
                                    t = ceil32(return_data.size) + 292
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _3009 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3075 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _3075
                                    require _3009 + (32 * _3075) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _3009 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _3075:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3075 < 1:
                                        revert with 'NH{q', 17
                                    if _3075 - 1 >= _3075:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3075 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3075 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3075 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 'NH{q', 17
                                if not bool(idx):
                                    s = s * s
                                    t = t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                s = s * s
                                t = t * s
                                idx = uint255(idx) * 0.5
                                continue 
                            if t > -1 / s:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = t * s
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            if secondaryRouterAddress == stor9:
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3007 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3073 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = _3073
                                require _3007 + (32 * _3073) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3007 + 224
                                t = (2 * ceil32(return_data.size)) + 224
                                while idx < _3073:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3073 < 1:
                                    revert with 'NH{q', 17
                                if _3073 - 1 >= _3073:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3073 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3073 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3073 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                            else:
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 292
                                while idx < 2:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _3008 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3074 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _3074
                                    require _3008 + (32 * _3074) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _3008 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _3074:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3074 < 1:
                                        revert with 'NH{q', 17
                                    if _3074 - 1 >= _3074:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3074 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3074 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3074 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                                else:
                                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = t * s
                                    mem[ceil32(return_data.size) + 228] = 64
                                    mem[ceil32(return_data.size) + 260] = 2
                                    idx = 0
                                    u = 128
                                    v = ceil32(return_data.size) + 292
                                    while idx < 2:
                                        mem[v] = mem[u + 12 len 20]
                                        idx = idx + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args t * s, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _3830 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3852 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, t * s) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = _3852
                                    require _3830 + (32 * _3852) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _3830 + 224
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < _3852:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3852 < 1:
                                        revert with 'NH{q', 17
                                    if _3852 - 1 >= _3852:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3852 - 1) + (2 * ceil32(return_data.size)) + 224] and 10000 > -1 / mem[(32 * _3852 - 1) + (2 * ceil32(return_data.size)) + 224]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3852 - 1) + (2 * ceil32(return_data.size)) + 224] / 9980
                else:
                    mem[96] = 3
                    mem[128] = wethAddress
                    mem[160] = wethAddress
                    mem[192] = usdcAddress
                    require ext_code.size(wethAddress)
                    staticcall wethAddress.decimals() with:
                            gas gas_remaining wei
                    mem[224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = 1
                        mem[ceil32(return_data.size) + 260] = 64
                        mem[ceil32(return_data.size) + 292] = 3
                        if secondaryRouterAddress == stor9:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 324
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _1668 = mem[ceil32(return_data.size) + 224 len 4], 0
                            require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                            _1718 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                            mem[(2 * ceil32(return_data.size)) + 224] = _1718
                            require _1668 + (32 * _1718) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _1668 + 256
                            t = (2 * ceil32(return_data.size)) + 256
                            while idx < _1718:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1718 < 1:
                                revert with 'NH{q', 17
                            if _1718 - 1 >= _1718:
                                revert with 'NH{q', 50
                            if mem[(32 * _1718 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1718 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1718 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                        else:
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 324
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _1669 = mem[ceil32(return_data.size) + 224 len 4], 0
                                require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _1719 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _1719
                                require _1669 + (32 * _1719) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1669 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _1719:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1719 < 1:
                                    revert with 'NH{q', 17
                                if _1719 - 1 >= _1719:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1719 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1719 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1719 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                            else:
                                mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = 1
                                mem[ceil32(return_data.size) + 260] = 64
                                mem[ceil32(return_data.size) + 292] = 3
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3006 = mem[ceil32(return_data.size) + 224 len 4], 0
                                require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3072 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _3072
                                require _3006 + (32 * _3072) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3006 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _3072:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3072 < 1:
                                    revert with 'NH{q', 17
                                if _3072 - 1 >= _3072:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3072 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3072 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3072 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            if 10^ext_call.return_data[31 len 1] > -1:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = 10^uint8(ext_call.return_data[0])
                            mem[ceil32(return_data.size) + 260] = 64
                            mem[ceil32(return_data.size) + 292] = 3
                            if secondaryRouterAddress == stor9:
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _1666 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _1716 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _1716
                                require _1666 + (32 * _1716) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _1666 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _1716:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _1716 < 1:
                                    revert with 'NH{q', 17
                                if _1716 - 1 >= _1716:
                                    revert with 'NH{q', 50
                                if mem[(32 * _1716 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1716 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1716 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                            else:
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _1667 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _1717 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = _1717
                                    require _1667 + (32 * _1717) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _1667 + 256
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < _1717:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _1717 < 1:
                                        revert with 'NH{q', 17
                                    if _1717 - 1 >= _1717:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _1717 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _1717 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _1717 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                                else:
                                    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = 10^uint8(ext_call.return_data[0])
                                    mem[ceil32(return_data.size) + 260] = 64
                                    mem[ceil32(return_data.size) + 292] = 3
                                    idx = 0
                                    s = 128
                                    t = ceil32(return_data.size) + 324
                                    while idx < 3:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3005 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3071 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = _3071
                                    require _3005 + (32 * _3071) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _3005 + 256
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < _3071:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3071 < 1:
                                        revert with 'NH{q', 17
                                    if _3071 - 1 >= _3071:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3071 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3071 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3071 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 'NH{q', 17
                                if not bool(idx):
                                    s = s * s
                                    t = t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                s = s * s
                                t = t * s
                                idx = uint255(idx) * 0.5
                                continue 
                            if t > -1 / s:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = t * s
                            mem[ceil32(return_data.size) + 260] = 64
                            mem[ceil32(return_data.size) + 292] = 3
                            if secondaryRouterAddress == stor9:
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3003 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3069 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224] > test266151307():
                                    revert with 'NH{q', 65
                                if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = _3069
                                require _3003 + (32 * _3069) + 32 <= return_data.size
                                idx = 0
                                s = ceil32(return_data.size) + _3003 + 256
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < _3069:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                if _3069 < 1:
                                    revert with 'NH{q', 17
                                if _3069 - 1 >= _3069:
                                    revert with 'NH{q', 50
                                if mem[(32 * _3069 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3069 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _3069 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                            else:
                                idx = 0
                                u = 128
                                v = ceil32(return_data.size) + 324
                                while idx < 3:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args t * s, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3004 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3070 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = _3070
                                    require _3004 + (32 * _3070) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _3004 + 256
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < _3070:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3070 < 1:
                                        revert with 'NH{q', 17
                                    if _3070 - 1 >= _3070:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3070 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3070 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3070 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
                                else:
                                    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = t * s
                                    mem[ceil32(return_data.size) + 260] = 64
                                    mem[ceil32(return_data.size) + 292] = 3
                                    idx = 0
                                    u = 128
                                    v = ceil32(return_data.size) + 324
                                    while idx < 3:
                                        mem[v] = mem[u + 12 len 20]
                                        idx = idx + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 rg1, address[] rg2) with:
                                            gas gas_remaining wei
                                           args t * s, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3829 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3851 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224] > test266151307():
                                        revert with 'NH{q', 65
                                    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, t * s) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = _3851
                                    require _3829 + (32 * _3851) + 32 <= return_data.size
                                    idx = 0
                                    s = ceil32(return_data.size) + _3829 + 256
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < _3851:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    if _3851 < 1:
                                        revert with 'NH{q', 17
                                    if _3851 - 1 >= _3851:
                                        revert with 'NH{q', 50
                                    if mem[(32 * _3851 - 1) + (2 * ceil32(return_data.size)) + 256] and 10000 > -1 / mem[(32 * _3851 - 1) + (2 * ceil32(return_data.size)) + 256]:
                                        revert with 'NH{q', 17
                                    mem[mem[64]] = 10000 * mem[(32 * _3851 - 1) + (2 * ceil32(return_data.size)) + 256] / 9960
    return memory
      from mem[64]
       len 32
}



}
