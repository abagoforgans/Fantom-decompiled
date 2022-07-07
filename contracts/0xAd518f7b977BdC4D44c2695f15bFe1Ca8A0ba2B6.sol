contract main {




// =====================  Runtime code  =====================


#
#  - getLpTokenPriceUsdc(address arg1)
#  - getLpTokenTotalLiquidityUsdc(address arg1)
#  - getPriceFromRouterUsdc(address arg1)
#  - getPriceUsdc(address arg1)
#
address primaryRouterAddress;
address primaryFactoryAddress;
address secondaryRouterAddress;
address secondaryFactoryAddress;
address sub_7edd3da5Address;
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

function primaryRouterAddress() payable {
    return primaryRouterAddress
}

function sub_7edd3da5(?) payable {
    return sub_7edd3da5Address
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
    if stor8 == arg1:
        return 0
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
    if primaryFactoryAddress == ext_call.return_data[12 len 20]:
        return stor6
    require secondaryFactoryAddress == ext_call.return_data[12 len 20]
    return stor7
}

function getPriceFromRouter(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor8 != arg1:
        if stor8 != arg2:
            if sub_7edd3da5Address == arg1:
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
                    if stor9 == secondaryRouterAddress:
                        idx = 0
                        s = ceil32(return_data.size) + 292
                        t = 128
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1627 = mem[ceil32(return_data.size) + 192 len 4], 0
                        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                        _1735 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                            revert with 0, 65
                        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                        require return_data.size >= _1627 + (32 * _1735) + 32
                        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1735] = mem[ceil32(return_data.size) + _1627 + 224 len 32 * _1735]
                        if _1735 < 1:
                            revert with 0, 17
                        if _1735 - 1 >= _1735:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _1735 - 1) + (2 * ceil32(return_data.size)) + 224]
                    else:
                        idx = 0
                        s = ceil32(return_data.size) + 292
                        t = 128
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if ext_call.success:
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1629 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1737 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            require return_data.size >= _1629 + (32 * _1737) + 32
                            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1737] = mem[ceil32(return_data.size) + _1629 + 224 len 32 * _1737]
                            if _1737 < 1:
                                revert with 0, 17
                            if _1737 - 1 >= _1737:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _1737 - 1) + (2 * ceil32(return_data.size)) + 224]
                        else:
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = 1
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 292
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _3003 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _3101 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            require return_data.size >= _3003 + (32 * _3101) + 32
                            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3101] = mem[ceil32(return_data.size) + _3003 + 224 len 32 * _3101]
                            if _3101 < 1:
                                revert with 0, 17
                            if _3101 - 1 >= _3101:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _3101 - 1) + (2 * ceil32(return_data.size)) + 224]
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if stor9 == secondaryRouterAddress:
                            idx = 0
                            s = ceil32(return_data.size) + 292
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                            _1732 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                            require return_data.size >= _1624 + (32 * _1732) + 32
                            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1732] = mem[ceil32(return_data.size) + _1624 + 224 len 32 * _1732]
                            if _1732 < 1:
                                revert with 0, 17
                            if _1732 - 1 >= _1732:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _1732 - 1) + (2 * ceil32(return_data.size)) + 224]
                        else:
                            idx = 0
                            s = ceil32(return_data.size) + 292
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1626 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1734 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                require return_data.size >= _1626 + (32 * _1734) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1734] = mem[ceil32(return_data.size) + _1626 + 224 len 32 * _1734]
                                if _1734 < 1:
                                    revert with 0, 17
                                if _1734 - 1 >= _1734:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _1734 - 1) + (2 * ceil32(return_data.size)) + 224]
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 292
                                t = 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                                _3099 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                require return_data.size >= _3001 + (32 * _3099) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3099] = mem[ceil32(return_data.size) + _3001 + 224 len 32 * _3099]
                                if _3099 < 1:
                                    revert with 0, 17
                                if _3099 - 1 >= _3099:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3099 - 1) + (2 * ceil32(return_data.size)) + 224]
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = s * t
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if stor9 == secondaryRouterAddress:
                            idx = 0
                            u = ceil32(return_data.size) + 292
                            v = 128
                            while idx < 2:
                                mem[u] = mem[v + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _2997 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _3096 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                            require return_data.size >= _2997 + (32 * _3096) + 32
                            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3096] = mem[ceil32(return_data.size) + _2997 + 224 len 32 * _3096]
                            if _3096 < 1:
                                revert with 0, 17
                            if _3096 - 1 >= _3096:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _3096 - 1) + (2 * ceil32(return_data.size)) + 224]
                        else:
                            idx = 0
                            u = ceil32(return_data.size) + 292
                            v = 128
                            while idx < 2:
                                mem[u] = mem[v + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2999 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3098 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                require return_data.size >= _2999 + (32 * _3098) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3098] = mem[ceil32(return_data.size) + _2999 + 224 len 32 * _3098]
                                if _3098 < 1:
                                    revert with 0, 17
                                if _3098 - 1 >= _3098:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3098 - 1) + (2 * ceil32(return_data.size)) + 224]
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = s * t
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                u = ceil32(return_data.size) + 292
                                v = 128
                                while idx < 2:
                                    mem[u] = mem[v + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3834 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3910 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                require return_data.size >= _3834 + (32 * _3910) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3910] = mem[ceil32(return_data.size) + _3834 + 224 len 32 * _3910]
                                if _3910 < 1:
                                    revert with 0, 17
                                if _3910 - 1 >= _3910:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3910 - 1) + (2 * ceil32(return_data.size)) + 224]
            else:
                if sub_7edd3da5Address == arg2:
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
                        if stor9 == secondaryRouterAddress:
                            idx = 0
                            s = ceil32(return_data.size) + 292
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1643 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1747 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            require return_data.size >= _1643 + (32 * _1747) + 32
                            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1747] = mem[ceil32(return_data.size) + _1643 + 224 len 32 * _1747]
                            if _1747 < 1:
                                revert with 0, 17
                            if _1747 - 1 >= _1747:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _1747 - 1) + (2 * ceil32(return_data.size)) + 224]
                        else:
                            idx = 0
                            s = ceil32(return_data.size) + 292
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1645 = mem[ceil32(return_data.size) + 192 len 4], 0
                                require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1749 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                                require return_data.size >= _1645 + (32 * _1749) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1749] = mem[ceil32(return_data.size) + _1645 + 224 len 32 * _1749]
                                if _1749 < 1:
                                    revert with 0, 17
                                if _1749 - 1 >= _1749:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _1749 - 1) + (2 * ceil32(return_data.size)) + 224]
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = 1
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 292
                                t = 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3017 = mem[ceil32(return_data.size) + 192 len 4], 0
                                require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3115 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                                require return_data.size >= _3017 + (32 * _3115) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3115] = mem[ceil32(return_data.size) + _3017 + 224 len 32 * _3115]
                                if _3115 < 1:
                                    revert with 0, 17
                                if _3115 - 1 >= _3115:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3115 - 1) + (2 * ceil32(return_data.size)) + 224]
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            if stor9 == secondaryRouterAddress:
                                idx = 0
                                s = ceil32(return_data.size) + 292
                                t = 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1640 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1744 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                require return_data.size >= _1640 + (32 * _1744) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1744] = mem[ceil32(return_data.size) + _1640 + 224 len 32 * _1744]
                                if _1744 < 1:
                                    revert with 0, 17
                                if _1744 - 1 >= _1744:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _1744 - 1) + (2 * ceil32(return_data.size)) + 224]
                            else:
                                idx = 0
                                s = ceil32(return_data.size) + 292
                                t = 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _1642 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _1746 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                    require return_data.size >= _1642 + (32 * _1746) + 32
                                    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1746] = mem[ceil32(return_data.size) + _1642 + 224 len 32 * _1746]
                                    if _1746 < 1:
                                        revert with 0, 17
                                    if _1746 - 1 >= _1746:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[(32 * _1746 - 1) + (2 * ceil32(return_data.size)) + 224]
                                else:
                                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                                    mem[ceil32(return_data.size) + 228] = 64
                                    mem[ceil32(return_data.size) + 260] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 292
                                    t = 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _3015 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3113 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                    require return_data.size >= _3015 + (32 * _3113) + 32
                                    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3113] = mem[ceil32(return_data.size) + _3015 + 224 len 32 * _3113]
                                    if _3113 < 1:
                                        revert with 0, 17
                                    if _3113 - 1 >= _3113:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[(32 * _3113 - 1) + (2 * ceil32(return_data.size)) + 224]
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 0, 17
                                if not bool(idx):
                                    s = s * s
                                    t = t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                s = s * s
                                t = s * t
                                idx = uint255(idx) * 0.5
                                continue 
                            if t > -1 / s:
                                revert with 0, 17
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = s * t
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            if stor9 == secondaryRouterAddress:
                                idx = 0
                                u = ceil32(return_data.size) + 292
                                v = 128
                                while idx < 2:
                                    mem[u] = mem[v + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3011 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3110 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                require return_data.size >= _3011 + (32 * _3110) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3110] = mem[ceil32(return_data.size) + _3011 + 224 len 32 * _3110]
                                if _3110 < 1:
                                    revert with 0, 17
                                if _3110 - 1 >= _3110:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3110 - 1) + (2 * ceil32(return_data.size)) + 224]
                            else:
                                idx = 0
                                u = ceil32(return_data.size) + 292
                                v = 128
                                while idx < 2:
                                    mem[u] = mem[v + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _3013 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3112 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                    require return_data.size >= _3013 + (32 * _3112) + 32
                                    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3112] = mem[ceil32(return_data.size) + _3013 + 224 len 32 * _3112]
                                    if _3112 < 1:
                                        revert with 0, 17
                                    if _3112 - 1 >= _3112:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[(32 * _3112 - 1) + (2 * ceil32(return_data.size)) + 224]
                                else:
                                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = s * t
                                    mem[ceil32(return_data.size) + 228] = 64
                                    mem[ceil32(return_data.size) + 260] = 2
                                    idx = 0
                                    u = ceil32(return_data.size) + 292
                                    v = 128
                                    while idx < 2:
                                        mem[u] = mem[v + 12 len 20]
                                        idx = idx + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _3842 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3914 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                    require return_data.size >= _3842 + (32 * _3914) + 32
                                    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3914] = mem[ceil32(return_data.size) + _3842 + 224 len 32 * _3914]
                                    if _3914 < 1:
                                        revert with 0, 17
                                    if _3914 - 1 >= _3914:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[(32 * _3914 - 1) + (2 * ceil32(return_data.size)) + 224]
                else:
                    mem[96] = 3
                    mem[128] = arg1
                    mem[160] = sub_7edd3da5Address
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
                        if stor9 == secondaryRouterAddress:
                            idx = 0
                            s = ceil32(return_data.size) + 324
                            t = 128
                            while idx < 3:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _1635 = mem[ceil32(return_data.size) + 224 len 4], 0
                            require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                            _1741 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                            mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                            require return_data.size >= _1635 + (32 * _1741) + 32
                            mem[(2 * ceil32(return_data.size)) + 256 len 32 * _1741] = mem[ceil32(return_data.size) + _1635 + 256 len 32 * _1741]
                            if _1741 < 1:
                                revert with 0, 17
                            if _1741 - 1 >= _1741:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _1741 - 1) + (2 * ceil32(return_data.size)) + 256]
                        else:
                            idx = 0
                            s = ceil32(return_data.size) + 324
                            t = 128
                            while idx < 3:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _1637 = mem[ceil32(return_data.size) + 224 len 4], 0
                                require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _1743 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                                require return_data.size >= _1637 + (32 * _1743) + 32
                                mem[(2 * ceil32(return_data.size)) + 256 len 32 * _1743] = mem[ceil32(return_data.size) + _1637 + 256 len 32 * _1743]
                                if _1743 < 1:
                                    revert with 0, 17
                                if _1743 - 1 >= _1743:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _1743 - 1) + (2 * ceil32(return_data.size)) + 256]
                            else:
                                mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = 1
                                mem[ceil32(return_data.size) + 260] = 64
                                mem[ceil32(return_data.size) + 292] = 3
                                idx = 0
                                s = ceil32(return_data.size) + 324
                                t = 128
                                while idx < 3:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3010 = mem[ceil32(return_data.size) + 224 len 4], 0
                                require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3108 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                                require return_data.size >= _3010 + (32 * _3108) + 32
                                mem[(2 * ceil32(return_data.size)) + 256 len 32 * _3108] = mem[ceil32(return_data.size) + _3010 + 256 len 32 * _3108]
                                if _3108 < 1:
                                    revert with 0, 17
                                if _3108 - 1 >= _3108:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3108 - 1) + (2 * ceil32(return_data.size)) + 256]
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = 10^uint8(ext_call.return_data[0])
                            mem[ceil32(return_data.size) + 260] = 64
                            mem[ceil32(return_data.size) + 292] = 3
                            if stor9 == secondaryRouterAddress:
                                idx = 0
                                s = ceil32(return_data.size) + 324
                                t = 128
                                while idx < 3:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _1632 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _1738 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                require return_data.size >= _1632 + (32 * _1738) + 32
                                mem[(2 * ceil32(return_data.size)) + 256 len 32 * _1738] = mem[ceil32(return_data.size) + _1632 + 256 len 32 * _1738]
                                if _1738 < 1:
                                    revert with 0, 17
                                if _1738 - 1 >= _1738:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _1738 - 1) + (2 * ceil32(return_data.size)) + 256]
                            else:
                                idx = 0
                                s = ceil32(return_data.size) + 324
                                t = 128
                                while idx < 3:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _1634 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _1740 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                    require return_data.size >= _1634 + (32 * _1740) + 32
                                    mem[(2 * ceil32(return_data.size)) + 256 len 32 * _1740] = mem[ceil32(return_data.size) + _1634 + 256 len 32 * _1740]
                                    if _1740 < 1:
                                        revert with 0, 17
                                    if _1740 - 1 >= _1740:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[(32 * _1740 - 1) + (2 * ceil32(return_data.size)) + 256]
                                else:
                                    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = 10^uint8(ext_call.return_data[0])
                                    mem[ceil32(return_data.size) + 260] = 64
                                    mem[ceil32(return_data.size) + 292] = 3
                                    idx = 0
                                    s = ceil32(return_data.size) + 324
                                    t = 128
                                    while idx < 3:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3008 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3106 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                    require return_data.size >= _3008 + (32 * _3106) + 32
                                    mem[(2 * ceil32(return_data.size)) + 256 len 32 * _3106] = mem[ceil32(return_data.size) + _3008 + 256 len 32 * _3106]
                                    if _3106 < 1:
                                        revert with 0, 17
                                    if _3106 - 1 >= _3106:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[(32 * _3106 - 1) + (2 * ceil32(return_data.size)) + 256]
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 0, 17
                                if not bool(idx):
                                    s = s * s
                                    t = t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                s = s * s
                                t = s * t
                                idx = uint255(idx) * 0.5
                                continue 
                            if t > -1 / s:
                                revert with 0, 17
                            mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = s * t
                            mem[ceil32(return_data.size) + 260] = 64
                            mem[ceil32(return_data.size) + 292] = 3
                            if stor9 == secondaryRouterAddress:
                                idx = 0
                                u = ceil32(return_data.size) + 324
                                v = 128
                                while idx < 3:
                                    mem[u] = mem[v + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args s * t, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3004 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3103 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]
                                require return_data.size >= _3004 + (32 * _3103) + 32
                                mem[(2 * ceil32(return_data.size)) + 256 len 32 * _3103] = mem[ceil32(return_data.size) + _3004 + 256 len 32 * _3103]
                                if _3103 < 1:
                                    revert with 0, 17
                                if _3103 - 1 >= _3103:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3103 - 1) + (2 * ceil32(return_data.size)) + 256]
                            else:
                                idx = 0
                                u = ceil32(return_data.size) + 324
                                v = 128
                                while idx < 3:
                                    mem[u] = mem[v + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args s * t, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3006 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3105 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]
                                    require return_data.size >= _3006 + (32 * _3105) + 32
                                    mem[(2 * ceil32(return_data.size)) + 256 len 32 * _3105] = mem[ceil32(return_data.size) + _3006 + 256 len 32 * _3105]
                                    if _3105 < 1:
                                        revert with 0, 17
                                    if _3105 - 1 >= _3105:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[(32 * _3105 - 1) + (2 * ceil32(return_data.size)) + 256]
                                else:
                                    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = s * t
                                    mem[ceil32(return_data.size) + 260] = 64
                                    mem[ceil32(return_data.size) + 292] = 3
                                    idx = 0
                                    u = ceil32(return_data.size) + 324
                                    v = 128
                                    while idx < 3:
                                        mem[u] = mem[v + 12 len 20]
                                        idx = idx + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args s * t, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3838 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3912 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]
                                    require return_data.size >= _3838 + (32 * _3912) + 32
                                    mem[(2 * ceil32(return_data.size)) + 256 len 32 * _3912] = mem[ceil32(return_data.size) + _3838 + 256 len 32 * _3912]
                                    if _3912 < 1:
                                        revert with 0, 17
                                    if _3912 - 1 >= _3912:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[(32 * _3912 - 1) + (2 * ceil32(return_data.size)) + 256]
        else:
            if sub_7edd3da5Address == arg1:
                mem[96] = 2
                mem[128] = arg1
                mem[160] = sub_7edd3da5Address
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
                    if stor9 == secondaryRouterAddress:
                        idx = 0
                        s = ceil32(return_data.size) + 292
                        t = 128
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1651 = mem[ceil32(return_data.size) + 192 len 4], 0
                        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                        _1753 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                            revert with 0, 65
                        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                        require return_data.size >= _1651 + (32 * _1753) + 32
                        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1753] = mem[ceil32(return_data.size) + _1651 + 224 len 32 * _1753]
                        if _1753 < 1:
                            revert with 0, 17
                        if _1753 - 1 >= _1753:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _1753 - 1) + (2 * ceil32(return_data.size)) + 224]
                    else:
                        idx = 0
                        s = ceil32(return_data.size) + 292
                        t = 128
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if ext_call.success:
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1653 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1755 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            require return_data.size >= _1653 + (32 * _1755) + 32
                            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1755] = mem[ceil32(return_data.size) + _1653 + 224 len 32 * _1755]
                            if _1755 < 1:
                                revert with 0, 17
                            if _1755 - 1 >= _1755:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _1755 - 1) + (2 * ceil32(return_data.size)) + 224]
                        else:
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = 1
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 292
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _3024 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _3122 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            require return_data.size >= _3024 + (32 * _3122) + 32
                            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3122] = mem[ceil32(return_data.size) + _3024 + 224 len 32 * _3122]
                            if _3122 < 1:
                                revert with 0, 17
                            if _3122 - 1 >= _3122:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _3122 - 1) + (2 * ceil32(return_data.size)) + 224]
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if stor9 == secondaryRouterAddress:
                            idx = 0
                            s = ceil32(return_data.size) + 292
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1648 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1750 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                            require return_data.size >= _1648 + (32 * _1750) + 32
                            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1750] = mem[ceil32(return_data.size) + _1648 + 224 len 32 * _1750]
                            if _1750 < 1:
                                revert with 0, 17
                            if _1750 - 1 >= _1750:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _1750 - 1) + (2 * ceil32(return_data.size)) + 224]
                        else:
                            idx = 0
                            s = ceil32(return_data.size) + 292
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1650 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1752 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                require return_data.size >= _1650 + (32 * _1752) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1752] = mem[ceil32(return_data.size) + _1650 + 224 len 32 * _1752]
                                if _1752 < 1:
                                    revert with 0, 17
                                if _1752 - 1 >= _1752:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _1752 - 1) + (2 * ceil32(return_data.size)) + 224]
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 292
                                t = 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3022 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3120 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                require return_data.size >= _3022 + (32 * _3120) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3120] = mem[ceil32(return_data.size) + _3022 + 224 len 32 * _3120]
                                if _3120 < 1:
                                    revert with 0, 17
                                if _3120 - 1 >= _3120:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3120 - 1) + (2 * ceil32(return_data.size)) + 224]
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = s * t
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if stor9 == secondaryRouterAddress:
                            idx = 0
                            u = ceil32(return_data.size) + 292
                            v = 128
                            while idx < 2:
                                mem[u] = mem[v + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _3018 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _3117 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                            require return_data.size >= _3018 + (32 * _3117) + 32
                            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3117] = mem[ceil32(return_data.size) + _3018 + 224 len 32 * _3117]
                            if _3117 < 1:
                                revert with 0, 17
                            if _3117 - 1 >= _3117:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _3117 - 1) + (2 * ceil32(return_data.size)) + 224]
                        else:
                            idx = 0
                            u = ceil32(return_data.size) + 292
                            v = 128
                            while idx < 2:
                                mem[u] = mem[v + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3020 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3119 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                require return_data.size >= _3020 + (32 * _3119) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3119] = mem[ceil32(return_data.size) + _3020 + 224 len 32 * _3119]
                                if _3119 < 1:
                                    revert with 0, 17
                                if _3119 - 1 >= _3119:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3119 - 1) + (2 * ceil32(return_data.size)) + 224]
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = s * t
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                u = ceil32(return_data.size) + 292
                                v = 128
                                while idx < 2:
                                    mem[u] = mem[v + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3846 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3916 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                require return_data.size >= _3846 + (32 * _3916) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3916] = mem[ceil32(return_data.size) + _3846 + 224 len 32 * _3916]
                                if _3916 < 1:
                                    revert with 0, 17
                                if _3916 - 1 >= _3916:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3916 - 1) + (2 * ceil32(return_data.size)) + 224]
            else:
                if sub_7edd3da5Address == sub_7edd3da5Address:
                    mem[96] = 2
                    mem[128] = arg1
                    mem[160] = sub_7edd3da5Address
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
                        if stor9 == secondaryRouterAddress:
                            idx = 0
                            s = ceil32(return_data.size) + 292
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1667 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1765 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            require return_data.size >= _1667 + (32 * _1765) + 32
                            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1765] = mem[ceil32(return_data.size) + _1667 + 224 len 32 * _1765]
                            if _1765 < 1:
                                revert with 0, 17
                            if _1765 - 1 >= _1765:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _1765 - 1) + (2 * ceil32(return_data.size)) + 224]
                        else:
                            idx = 0
                            s = ceil32(return_data.size) + 292
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1669 = mem[ceil32(return_data.size) + 192 len 4], 0
                                require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1767 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                                require return_data.size >= _1669 + (32 * _1767) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1767] = mem[ceil32(return_data.size) + _1669 + 224 len 32 * _1767]
                                if _1767 < 1:
                                    revert with 0, 17
                                if _1767 - 1 >= _1767:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _1767 - 1) + (2 * ceil32(return_data.size)) + 224]
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = 1
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 292
                                t = 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3038 = mem[ceil32(return_data.size) + 192 len 4], 0
                                require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3136 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                                require return_data.size >= _3038 + (32 * _3136) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3136] = mem[ceil32(return_data.size) + _3038 + 224 len 32 * _3136]
                                if _3136 < 1:
                                    revert with 0, 17
                                if _3136 - 1 >= _3136:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3136 - 1) + (2 * ceil32(return_data.size)) + 224]
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            if stor9 == secondaryRouterAddress:
                                idx = 0
                                s = ceil32(return_data.size) + 292
                                t = 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1664 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1762 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                require return_data.size >= _1664 + (32 * _1762) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1762] = mem[ceil32(return_data.size) + _1664 + 224 len 32 * _1762]
                                if _1762 < 1:
                                    revert with 0, 17
                                if _1762 - 1 >= _1762:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _1762 - 1) + (2 * ceil32(return_data.size)) + 224]
                            else:
                                idx = 0
                                s = ceil32(return_data.size) + 292
                                t = 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _1666 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _1764 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                    require return_data.size >= _1666 + (32 * _1764) + 32
                                    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1764] = mem[ceil32(return_data.size) + _1666 + 224 len 32 * _1764]
                                    if _1764 < 1:
                                        revert with 0, 17
                                    if _1764 - 1 >= _1764:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[(32 * _1764 - 1) + (2 * ceil32(return_data.size)) + 224]
                                else:
                                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                                    mem[ceil32(return_data.size) + 228] = 64
                                    mem[ceil32(return_data.size) + 260] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 292
                                    t = 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _3036 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3134 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                    require return_data.size >= _3036 + (32 * _3134) + 32
                                    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3134] = mem[ceil32(return_data.size) + _3036 + 224 len 32 * _3134]
                                    if _3134 < 1:
                                        revert with 0, 17
                                    if _3134 - 1 >= _3134:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[(32 * _3134 - 1) + (2 * ceil32(return_data.size)) + 224]
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 0, 17
                                if not bool(idx):
                                    s = s * s
                                    t = t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                s = s * s
                                t = s * t
                                idx = uint255(idx) * 0.5
                                continue 
                            if t > -1 / s:
                                revert with 0, 17
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = s * t
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            if stor9 == secondaryRouterAddress:
                                idx = 0
                                u = ceil32(return_data.size) + 292
                                v = 128
                                while idx < 2:
                                    mem[u] = mem[v + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3032 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3131 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                require return_data.size >= _3032 + (32 * _3131) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3131] = mem[ceil32(return_data.size) + _3032 + 224 len 32 * _3131]
                                if _3131 < 1:
                                    revert with 0, 17
                                if _3131 - 1 >= _3131:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3131 - 1) + (2 * ceil32(return_data.size)) + 224]
                            else:
                                idx = 0
                                u = ceil32(return_data.size) + 292
                                v = 128
                                while idx < 2:
                                    mem[u] = mem[v + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _3034 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3133 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                    require return_data.size >= _3034 + (32 * _3133) + 32
                                    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3133] = mem[ceil32(return_data.size) + _3034 + 224 len 32 * _3133]
                                    if _3133 < 1:
                                        revert with 0, 17
                                    if _3133 - 1 >= _3133:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[(32 * _3133 - 1) + (2 * ceil32(return_data.size)) + 224]
                                else:
                                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = s * t
                                    mem[ceil32(return_data.size) + 228] = 64
                                    mem[ceil32(return_data.size) + 260] = 2
                                    idx = 0
                                    u = ceil32(return_data.size) + 292
                                    v = 128
                                    while idx < 2:
                                        mem[u] = mem[v + 12 len 20]
                                        idx = idx + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _3854 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3920 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                    require return_data.size >= _3854 + (32 * _3920) + 32
                                    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3920] = mem[ceil32(return_data.size) + _3854 + 224 len 32 * _3920]
                                    if _3920 < 1:
                                        revert with 0, 17
                                    if _3920 - 1 >= _3920:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[(32 * _3920 - 1) + (2 * ceil32(return_data.size)) + 224]
                else:
                    mem[96] = 3
                    mem[128] = arg1
                    mem[160] = sub_7edd3da5Address
                    mem[192] = sub_7edd3da5Address
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
                        if stor9 == secondaryRouterAddress:
                            idx = 0
                            s = ceil32(return_data.size) + 324
                            t = 128
                            while idx < 3:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _1659 = mem[ceil32(return_data.size) + 224 len 4], 0
                            require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                            _1759 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                            mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                            require return_data.size >= _1659 + (32 * _1759) + 32
                            mem[(2 * ceil32(return_data.size)) + 256 len 32 * _1759] = mem[ceil32(return_data.size) + _1659 + 256 len 32 * _1759]
                            if _1759 < 1:
                                revert with 0, 17
                            if _1759 - 1 >= _1759:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _1759 - 1) + (2 * ceil32(return_data.size)) + 256]
                        else:
                            idx = 0
                            s = ceil32(return_data.size) + 324
                            t = 128
                            while idx < 3:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _1661 = mem[ceil32(return_data.size) + 224 len 4], 0
                                require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _1761 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                                require return_data.size >= _1661 + (32 * _1761) + 32
                                mem[(2 * ceil32(return_data.size)) + 256 len 32 * _1761] = mem[ceil32(return_data.size) + _1661 + 256 len 32 * _1761]
                                if _1761 < 1:
                                    revert with 0, 17
                                if _1761 - 1 >= _1761:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _1761 - 1) + (2 * ceil32(return_data.size)) + 256]
                            else:
                                mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = 1
                                mem[ceil32(return_data.size) + 260] = 64
                                mem[ceil32(return_data.size) + 292] = 3
                                idx = 0
                                s = ceil32(return_data.size) + 324
                                t = 128
                                while idx < 3:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3031 = mem[ceil32(return_data.size) + 224 len 4], 0
                                require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3129 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                                require return_data.size >= _3031 + (32 * _3129) + 32
                                mem[(2 * ceil32(return_data.size)) + 256 len 32 * _3129] = mem[ceil32(return_data.size) + _3031 + 256 len 32 * _3129]
                                if _3129 < 1:
                                    revert with 0, 17
                                if _3129 - 1 >= _3129:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3129 - 1) + (2 * ceil32(return_data.size)) + 256]
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = 10^uint8(ext_call.return_data[0])
                            mem[ceil32(return_data.size) + 260] = 64
                            mem[ceil32(return_data.size) + 292] = 3
                            if stor9 == secondaryRouterAddress:
                                idx = 0
                                s = ceil32(return_data.size) + 324
                                t = 128
                                while idx < 3:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _1656 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _1756 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                require return_data.size >= _1656 + (32 * _1756) + 32
                                mem[(2 * ceil32(return_data.size)) + 256 len 32 * _1756] = mem[ceil32(return_data.size) + _1656 + 256 len 32 * _1756]
                                if _1756 < 1:
                                    revert with 0, 17
                                if _1756 - 1 >= _1756:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _1756 - 1) + (2 * ceil32(return_data.size)) + 256]
                            else:
                                idx = 0
                                s = ceil32(return_data.size) + 324
                                t = 128
                                while idx < 3:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _1658 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _1758 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                    require return_data.size >= _1658 + (32 * _1758) + 32
                                    mem[(2 * ceil32(return_data.size)) + 256 len 32 * _1758] = mem[ceil32(return_data.size) + _1658 + 256 len 32 * _1758]
                                    if _1758 < 1:
                                        revert with 0, 17
                                    if _1758 - 1 >= _1758:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[(32 * _1758 - 1) + (2 * ceil32(return_data.size)) + 256]
                                else:
                                    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = 10^uint8(ext_call.return_data[0])
                                    mem[ceil32(return_data.size) + 260] = 64
                                    mem[ceil32(return_data.size) + 292] = 3
                                    idx = 0
                                    s = ceil32(return_data.size) + 324
                                    t = 128
                                    while idx < 3:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3029 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3127 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                    require return_data.size >= _3029 + (32 * _3127) + 32
                                    mem[(2 * ceil32(return_data.size)) + 256 len 32 * _3127] = mem[ceil32(return_data.size) + _3029 + 256 len 32 * _3127]
                                    if _3127 < 1:
                                        revert with 0, 17
                                    if _3127 - 1 >= _3127:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[(32 * _3127 - 1) + (2 * ceil32(return_data.size)) + 256]
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 0, 17
                                if not bool(idx):
                                    s = s * s
                                    t = t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                s = s * s
                                t = s * t
                                idx = uint255(idx) * 0.5
                                continue 
                            if t > -1 / s:
                                revert with 0, 17
                            mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = s * t
                            mem[ceil32(return_data.size) + 260] = 64
                            mem[ceil32(return_data.size) + 292] = 3
                            if stor9 == secondaryRouterAddress:
                                idx = 0
                                u = ceil32(return_data.size) + 324
                                v = 128
                                while idx < 3:
                                    mem[u] = mem[v + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args s * t, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3025 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3124 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]
                                require return_data.size >= _3025 + (32 * _3124) + 32
                                mem[(2 * ceil32(return_data.size)) + 256 len 32 * _3124] = mem[ceil32(return_data.size) + _3025 + 256 len 32 * _3124]
                                if _3124 < 1:
                                    revert with 0, 17
                                if _3124 - 1 >= _3124:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3124 - 1) + (2 * ceil32(return_data.size)) + 256]
                            else:
                                idx = 0
                                u = ceil32(return_data.size) + 324
                                v = 128
                                while idx < 3:
                                    mem[u] = mem[v + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args s * t, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3027 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3126 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]
                                    require return_data.size >= _3027 + (32 * _3126) + 32
                                    mem[(2 * ceil32(return_data.size)) + 256 len 32 * _3126] = mem[ceil32(return_data.size) + _3027 + 256 len 32 * _3126]
                                    if _3126 < 1:
                                        revert with 0, 17
                                    if _3126 - 1 >= _3126:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[(32 * _3126 - 1) + (2 * ceil32(return_data.size)) + 256]
                                else:
                                    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = s * t
                                    mem[ceil32(return_data.size) + 260] = 64
                                    mem[ceil32(return_data.size) + 292] = 3
                                    idx = 0
                                    u = ceil32(return_data.size) + 324
                                    v = 128
                                    while idx < 3:
                                        mem[u] = mem[v + 12 len 20]
                                        idx = idx + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args s * t, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3850 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3918 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]
                                    require return_data.size >= _3850 + (32 * _3918) + 32
                                    mem[(2 * ceil32(return_data.size)) + 256 len 32 * _3918] = mem[ceil32(return_data.size) + _3850 + 256 len 32 * _3918]
                                    if _3918 < 1:
                                        revert with 0, 17
                                    if _3918 - 1 >= _3918:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[(32 * _3918 - 1) + (2 * ceil32(return_data.size)) + 256]
    else:
        if stor8 == arg2:
            if sub_7edd3da5Address == sub_7edd3da5Address:
                mem[96] = 2
                mem[128] = sub_7edd3da5Address
                mem[160] = sub_7edd3da5Address
                require ext_code.size(sub_7edd3da5Address)
                staticcall sub_7edd3da5Address.decimals() with:
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
                    if stor9 == secondaryRouterAddress:
                        idx = 0
                        s = ceil32(return_data.size) + 292
                        t = 128
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1699 = mem[ceil32(return_data.size) + 192 len 4], 0
                        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                        _1789 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                            revert with 0, 65
                        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                        require return_data.size >= _1699 + (32 * _1789) + 32
                        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1789] = mem[ceil32(return_data.size) + _1699 + 224 len 32 * _1789]
                        if _1789 < 1:
                            revert with 0, 17
                        if _1789 - 1 >= _1789:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _1789 - 1) + (2 * ceil32(return_data.size)) + 224]
                    else:
                        idx = 0
                        s = ceil32(return_data.size) + 292
                        t = 128
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if ext_call.success:
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1701 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1791 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            require return_data.size >= _1701 + (32 * _1791) + 32
                            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1791] = mem[ceil32(return_data.size) + _1701 + 224 len 32 * _1791]
                            if _1791 < 1:
                                revert with 0, 17
                            if _1791 - 1 >= _1791:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _1791 - 1) + (2 * ceil32(return_data.size)) + 224]
                        else:
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = 1
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 292
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _3066 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _3164 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            require return_data.size >= _3066 + (32 * _3164) + 32
                            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3164] = mem[ceil32(return_data.size) + _3066 + 224 len 32 * _3164]
                            if _3164 < 1:
                                revert with 0, 17
                            if _3164 - 1 >= _3164:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _3164 - 1) + (2 * ceil32(return_data.size)) + 224]
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if stor9 == secondaryRouterAddress:
                            idx = 0
                            s = ceil32(return_data.size) + 292
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1696 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1786 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                            require return_data.size >= _1696 + (32 * _1786) + 32
                            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1786] = mem[ceil32(return_data.size) + _1696 + 224 len 32 * _1786]
                            if _1786 < 1:
                                revert with 0, 17
                            if _1786 - 1 >= _1786:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _1786 - 1) + (2 * ceil32(return_data.size)) + 224]
                        else:
                            idx = 0
                            s = ceil32(return_data.size) + 292
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1698 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1788 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                require return_data.size >= _1698 + (32 * _1788) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1788] = mem[ceil32(return_data.size) + _1698 + 224 len 32 * _1788]
                                if _1788 < 1:
                                    revert with 0, 17
                                if _1788 - 1 >= _1788:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _1788 - 1) + (2 * ceil32(return_data.size)) + 224]
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 292
                                t = 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3064 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3162 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                require return_data.size >= _3064 + (32 * _3162) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3162] = mem[ceil32(return_data.size) + _3064 + 224 len 32 * _3162]
                                if _3162 < 1:
                                    revert with 0, 17
                                if _3162 - 1 >= _3162:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3162 - 1) + (2 * ceil32(return_data.size)) + 224]
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = s * t
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if stor9 == secondaryRouterAddress:
                            idx = 0
                            u = ceil32(return_data.size) + 292
                            v = 128
                            while idx < 2:
                                mem[u] = mem[v + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _3060 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _3159 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                            require return_data.size >= _3060 + (32 * _3159) + 32
                            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3159] = mem[ceil32(return_data.size) + _3060 + 224 len 32 * _3159]
                            if _3159 < 1:
                                revert with 0, 17
                            if _3159 - 1 >= _3159:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _3159 - 1) + (2 * ceil32(return_data.size)) + 224]
                        else:
                            idx = 0
                            u = ceil32(return_data.size) + 292
                            v = 128
                            while idx < 2:
                                mem[u] = mem[v + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3062 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3161 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                require return_data.size >= _3062 + (32 * _3161) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3161] = mem[ceil32(return_data.size) + _3062 + 224 len 32 * _3161]
                                if _3161 < 1:
                                    revert with 0, 17
                                if _3161 - 1 >= _3161:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3161 - 1) + (2 * ceil32(return_data.size)) + 224]
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = s * t
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                u = ceil32(return_data.size) + 292
                                v = 128
                                while idx < 2:
                                    mem[u] = mem[v + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3870 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3928 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                require return_data.size >= _3870 + (32 * _3928) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3928] = mem[ceil32(return_data.size) + _3870 + 224 len 32 * _3928]
                                if _3928 < 1:
                                    revert with 0, 17
                                if _3928 - 1 >= _3928:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3928 - 1) + (2 * ceil32(return_data.size)) + 224]
            else:
                mem[96] = 3
                mem[128] = sub_7edd3da5Address
                mem[160] = sub_7edd3da5Address
                mem[192] = sub_7edd3da5Address
                require ext_code.size(sub_7edd3da5Address)
                staticcall sub_7edd3da5Address.decimals() with:
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
                    if stor9 == secondaryRouterAddress:
                        idx = 0
                        s = ceil32(return_data.size) + 324
                        t = 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _1707 = mem[ceil32(return_data.size) + 224 len 4], 0
                        require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                        _1795 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                            revert with 0, 65
                        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                        mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                        require return_data.size >= _1707 + (32 * _1795) + 32
                        mem[(2 * ceil32(return_data.size)) + 256 len 32 * _1795] = mem[ceil32(return_data.size) + _1707 + 256 len 32 * _1795]
                        if _1795 < 1:
                            revert with 0, 17
                        if _1795 - 1 >= _1795:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _1795 - 1) + (2 * ceil32(return_data.size)) + 256]
                    else:
                        idx = 0
                        s = ceil32(return_data.size) + 324
                        t = 128
                        while idx < 3:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                        if ext_call.success:
                            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _1709 = mem[ceil32(return_data.size) + 224 len 4], 0
                            require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                            _1797 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                            mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                            require return_data.size >= _1709 + (32 * _1797) + 32
                            mem[(2 * ceil32(return_data.size)) + 256 len 32 * _1797] = mem[ceil32(return_data.size) + _1709 + 256 len 32 * _1797]
                            if _1797 < 1:
                                revert with 0, 17
                            if _1797 - 1 >= _1797:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _1797 - 1) + (2 * ceil32(return_data.size)) + 256]
                        else:
                            mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = 1
                            mem[ceil32(return_data.size) + 260] = 64
                            mem[ceil32(return_data.size) + 292] = 3
                            idx = 0
                            s = ceil32(return_data.size) + 324
                            t = 128
                            while idx < 3:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _3073 = mem[ceil32(return_data.size) + 224 len 4], 0
                            require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                            _3171 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                            mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                            require return_data.size >= _3073 + (32 * _3171) + 32
                            mem[(2 * ceil32(return_data.size)) + 256 len 32 * _3171] = mem[ceil32(return_data.size) + _3073 + 256 len 32 * _3171]
                            if _3171 < 1:
                                revert with 0, 17
                            if _3171 - 1 >= _3171:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _3171 - 1) + (2 * ceil32(return_data.size)) + 256]
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = 10^uint8(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 260] = 64
                        mem[ceil32(return_data.size) + 292] = 3
                        if stor9 == secondaryRouterAddress:
                            idx = 0
                            s = ceil32(return_data.size) + 324
                            t = 128
                            while idx < 3:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _1704 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                            require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                            _1792 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                            mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                            require return_data.size >= _1704 + (32 * _1792) + 32
                            mem[(2 * ceil32(return_data.size)) + 256 len 32 * _1792] = mem[ceil32(return_data.size) + _1704 + 256 len 32 * _1792]
                            if _1792 < 1:
                                revert with 0, 17
                            if _1792 - 1 >= _1792:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _1792 - 1) + (2 * ceil32(return_data.size)) + 256]
                        else:
                            idx = 0
                            s = ceil32(return_data.size) + 324
                            t = 128
                            while idx < 3:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _1706 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _1794 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                require return_data.size >= _1706 + (32 * _1794) + 32
                                mem[(2 * ceil32(return_data.size)) + 256 len 32 * _1794] = mem[ceil32(return_data.size) + _1706 + 256 len 32 * _1794]
                                if _1794 < 1:
                                    revert with 0, 17
                                if _1794 - 1 >= _1794:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _1794 - 1) + (2 * ceil32(return_data.size)) + 256]
                            else:
                                mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = 10^uint8(ext_call.return_data[0])
                                mem[ceil32(return_data.size) + 260] = 64
                                mem[ceil32(return_data.size) + 292] = 3
                                idx = 0
                                s = ceil32(return_data.size) + 324
                                t = 128
                                while idx < 3:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3071 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3169 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                require return_data.size >= _3071 + (32 * _3169) + 32
                                mem[(2 * ceil32(return_data.size)) + 256 len 32 * _3169] = mem[ceil32(return_data.size) + _3071 + 256 len 32 * _3169]
                                if _3169 < 1:
                                    revert with 0, 17
                                if _3169 - 1 >= _3169:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3169 - 1) + (2 * ceil32(return_data.size)) + 256]
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = s * t
                        mem[ceil32(return_data.size) + 260] = 64
                        mem[ceil32(return_data.size) + 292] = 3
                        if stor9 == secondaryRouterAddress:
                            idx = 0
                            u = ceil32(return_data.size) + 324
                            v = 128
                            while idx < 3:
                                mem[u] = mem[v + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args s * t, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _3067 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32
                            require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                            _3166 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 225
                            mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]
                            require return_data.size >= _3067 + (32 * _3166) + 32
                            mem[(2 * ceil32(return_data.size)) + 256 len 32 * _3166] = mem[ceil32(return_data.size) + _3067 + 256 len 32 * _3166]
                            if _3166 < 1:
                                revert with 0, 17
                            if _3166 - 1 >= _3166:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _3166 - 1) + (2 * ceil32(return_data.size)) + 256]
                        else:
                            idx = 0
                            u = ceil32(return_data.size) + 324
                            v = 128
                            while idx < 3:
                                mem[u] = mem[v + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args s * t, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3069 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3168 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]
                                require return_data.size >= _3069 + (32 * _3168) + 32
                                mem[(2 * ceil32(return_data.size)) + 256 len 32 * _3168] = mem[ceil32(return_data.size) + _3069 + 256 len 32 * _3168]
                                if _3168 < 1:
                                    revert with 0, 17
                                if _3168 - 1 >= _3168:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3168 - 1) + (2 * ceil32(return_data.size)) + 256]
                            else:
                                mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = s * t
                                mem[ceil32(return_data.size) + 260] = 64
                                mem[ceil32(return_data.size) + 292] = 3
                                idx = 0
                                u = ceil32(return_data.size) + 324
                                v = 128
                                while idx < 3:
                                    mem[u] = mem[v + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args s * t, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3874 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3930 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]
                                require return_data.size >= _3874 + (32 * _3930) + 32
                                mem[(2 * ceil32(return_data.size)) + 256 len 32 * _3930] = mem[ceil32(return_data.size) + _3874 + 256 len 32 * _3930]
                                if _3930 < 1:
                                    revert with 0, 17
                                if _3930 - 1 >= _3930:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3930 - 1) + (2 * ceil32(return_data.size)) + 256]
        else:
            if sub_7edd3da5Address == sub_7edd3da5Address:
                mem[96] = 2
                mem[128] = sub_7edd3da5Address
                mem[160] = arg2
                require ext_code.size(sub_7edd3da5Address)
                staticcall sub_7edd3da5Address.decimals() with:
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
                    if stor9 == secondaryRouterAddress:
                        idx = 0
                        s = ceil32(return_data.size) + 292
                        t = 128
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1675 = mem[ceil32(return_data.size) + 192 len 4], 0
                        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                        _1771 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                            revert with 0, 65
                        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                        require return_data.size >= _1675 + (32 * _1771) + 32
                        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1771] = mem[ceil32(return_data.size) + _1675 + 224 len 32 * _1771]
                        if _1771 < 1:
                            revert with 0, 17
                        if _1771 - 1 >= _1771:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * _1771 - 1) + (2 * ceil32(return_data.size)) + 224]
                    else:
                        idx = 0
                        s = ceil32(return_data.size) + 292
                        t = 128
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if ext_call.success:
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1677 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1773 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            require return_data.size >= _1677 + (32 * _1773) + 32
                            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1773] = mem[ceil32(return_data.size) + _1677 + 224 len 32 * _1773]
                            if _1773 < 1:
                                revert with 0, 17
                            if _1773 - 1 >= _1773:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _1773 - 1) + (2 * ceil32(return_data.size)) + 224]
                        else:
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = 1
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 292
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _3045 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _3143 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            require return_data.size >= _3045 + (32 * _3143) + 32
                            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3143] = mem[ceil32(return_data.size) + _3045 + 224 len 32 * _3143]
                            if _3143 < 1:
                                revert with 0, 17
                            if _3143 - 1 >= _3143:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _3143 - 1) + (2 * ceil32(return_data.size)) + 224]
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if stor9 == secondaryRouterAddress:
                            idx = 0
                            s = ceil32(return_data.size) + 292
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                            _1768 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                            require return_data.size >= _1672 + (32 * _1768) + 32
                            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1768] = mem[ceil32(return_data.size) + _1672 + 224 len 32 * _1768]
                            if _1768 < 1:
                                revert with 0, 17
                            if _1768 - 1 >= _1768:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _1768 - 1) + (2 * ceil32(return_data.size)) + 224]
                        else:
                            idx = 0
                            s = ceil32(return_data.size) + 292
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1674 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1770 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                require return_data.size >= _1674 + (32 * _1770) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1770] = mem[ceil32(return_data.size) + _1674 + 224 len 32 * _1770]
                                if _1770 < 1:
                                    revert with 0, 17
                                if _1770 - 1 >= _1770:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _1770 - 1) + (2 * ceil32(return_data.size)) + 224]
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 292
                                t = 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3043 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3141 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                require return_data.size >= _3043 + (32 * _3141) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3141] = mem[ceil32(return_data.size) + _3043 + 224 len 32 * _3141]
                                if _3141 < 1:
                                    revert with 0, 17
                                if _3141 - 1 >= _3141:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3141 - 1) + (2 * ceil32(return_data.size)) + 224]
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = s * t
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        if stor9 == secondaryRouterAddress:
                            idx = 0
                            u = ceil32(return_data.size) + 292
                            v = 128
                            while idx < 2:
                                mem[u] = mem[v + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _3039 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
                            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _3138 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                            require return_data.size >= _3039 + (32 * _3138) + 32
                            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3138] = mem[ceil32(return_data.size) + _3039 + 224 len 32 * _3138]
                            if _3138 < 1:
                                revert with 0, 17
                            if _3138 - 1 >= _3138:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _3138 - 1) + (2 * ceil32(return_data.size)) + 224]
                        else:
                            idx = 0
                            u = ceil32(return_data.size) + 292
                            v = 128
                            while idx < 2:
                                mem[u] = mem[v + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3041 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3140 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                require return_data.size >= _3041 + (32 * _3140) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3140] = mem[ceil32(return_data.size) + _3041 + 224 len 32 * _3140]
                                if _3140 < 1:
                                    revert with 0, 17
                                if _3140 - 1 >= _3140:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3140 - 1) + (2 * ceil32(return_data.size)) + 224]
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = s * t
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                u = ceil32(return_data.size) + 292
                                v = 128
                                while idx < 2:
                                    mem[u] = mem[v + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3858 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3922 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                require return_data.size >= _3858 + (32 * _3922) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3922] = mem[ceil32(return_data.size) + _3858 + 224 len 32 * _3922]
                                if _3922 < 1:
                                    revert with 0, 17
                                if _3922 - 1 >= _3922:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3922 - 1) + (2 * ceil32(return_data.size)) + 224]
            else:
                if sub_7edd3da5Address == arg2:
                    mem[96] = 2
                    mem[128] = sub_7edd3da5Address
                    mem[160] = arg2
                    require ext_code.size(sub_7edd3da5Address)
                    staticcall sub_7edd3da5Address.decimals() with:
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
                        if stor9 == secondaryRouterAddress:
                            idx = 0
                            s = ceil32(return_data.size) + 292
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1691 = mem[ceil32(return_data.size) + 192 len 4], 0
                            require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                            _1783 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                            require return_data.size >= _1691 + (32 * _1783) + 32
                            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1783] = mem[ceil32(return_data.size) + _1691 + 224 len 32 * _1783]
                            if _1783 < 1:
                                revert with 0, 17
                            if _1783 - 1 >= _1783:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _1783 - 1) + (2 * ceil32(return_data.size)) + 224]
                        else:
                            idx = 0
                            s = ceil32(return_data.size) + 292
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1693 = mem[ceil32(return_data.size) + 192 len 4], 0
                                require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1785 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                                require return_data.size >= _1693 + (32 * _1785) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1785] = mem[ceil32(return_data.size) + _1693 + 224 len 32 * _1785]
                                if _1785 < 1:
                                    revert with 0, 17
                                if _1785 - 1 >= _1785:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _1785 - 1) + (2 * ceil32(return_data.size)) + 224]
                            else:
                                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = 1
                                mem[ceil32(return_data.size) + 228] = 64
                                mem[ceil32(return_data.size) + 260] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 292
                                t = 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3059 = mem[ceil32(return_data.size) + 192 len 4], 0
                                require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3157 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
                                require return_data.size >= _3059 + (32 * _3157) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3157] = mem[ceil32(return_data.size) + _3059 + 224 len 32 * _3157]
                                if _3157 < 1:
                                    revert with 0, 17
                                if _3157 - 1 >= _3157:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3157 - 1) + (2 * ceil32(return_data.size)) + 224]
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            if stor9 == secondaryRouterAddress:
                                idx = 0
                                s = ceil32(return_data.size) + 292
                                t = 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1688 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _1780 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                require return_data.size >= _1688 + (32 * _1780) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1780] = mem[ceil32(return_data.size) + _1688 + 224 len 32 * _1780]
                                if _1780 < 1:
                                    revert with 0, 17
                                if _1780 - 1 >= _1780:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _1780 - 1) + (2 * ceil32(return_data.size)) + 224]
                            else:
                                idx = 0
                                s = ceil32(return_data.size) + 292
                                t = 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _1690 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _1782 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                    require return_data.size >= _1690 + (32 * _1782) + 32
                                    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _1782] = mem[ceil32(return_data.size) + _1690 + 224 len 32 * _1782]
                                    if _1782 < 1:
                                        revert with 0, 17
                                    if _1782 - 1 >= _1782:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[(32 * _1782 - 1) + (2 * ceil32(return_data.size)) + 224]
                                else:
                                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
                                    mem[ceil32(return_data.size) + 228] = 64
                                    mem[ceil32(return_data.size) + 260] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 292
                                    t = 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _3057 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3155 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
                                    require return_data.size >= _3057 + (32 * _3155) + 32
                                    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3155] = mem[ceil32(return_data.size) + _3057 + 224 len 32 * _3155]
                                    if _3155 < 1:
                                        revert with 0, 17
                                    if _3155 - 1 >= _3155:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[(32 * _3155 - 1) + (2 * ceil32(return_data.size)) + 224]
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 0, 17
                                if not bool(idx):
                                    s = s * s
                                    t = t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                s = s * s
                                t = s * t
                                idx = uint255(idx) * 0.5
                                continue 
                            if t > -1 / s:
                                revert with 0, 17
                            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = s * t
                            mem[ceil32(return_data.size) + 228] = 64
                            mem[ceil32(return_data.size) + 260] = 2
                            if stor9 == secondaryRouterAddress:
                                idx = 0
                                u = ceil32(return_data.size) + 292
                                v = 128
                                while idx < 2:
                                    mem[u] = mem[v + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _3053 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
                                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                _3152 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                require return_data.size >= _3053 + (32 * _3152) + 32
                                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3152] = mem[ceil32(return_data.size) + _3053 + 224 len 32 * _3152]
                                if _3152 < 1:
                                    revert with 0, 17
                                if _3152 - 1 >= _3152:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3152 - 1) + (2 * ceil32(return_data.size)) + 224]
                            else:
                                idx = 0
                                u = ceil32(return_data.size) + 292
                                v = 128
                                while idx < 2:
                                    mem[u] = mem[v + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _3055 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3154 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                    require return_data.size >= _3055 + (32 * _3154) + 32
                                    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3154] = mem[ceil32(return_data.size) + _3055 + 224 len 32 * _3154]
                                    if _3154 < 1:
                                        revert with 0, 17
                                    if _3154 - 1 >= _3154:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[(32 * _3154 - 1) + (2 * ceil32(return_data.size)) + 224]
                                else:
                                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = s * t
                                    mem[ceil32(return_data.size) + 228] = 64
                                    mem[ceil32(return_data.size) + 260] = 2
                                    idx = 0
                                    u = ceil32(return_data.size) + 292
                                    v = 128
                                    while idx < 2:
                                        mem[u] = mem[v + 12 len 20]
                                        idx = idx + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _3866 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
                                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                                    _3926 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
                                    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
                                    require return_data.size >= _3866 + (32 * _3926) + 32
                                    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _3926] = mem[ceil32(return_data.size) + _3866 + 224 len 32 * _3926]
                                    if _3926 < 1:
                                        revert with 0, 17
                                    if _3926 - 1 >= _3926:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[(32 * _3926 - 1) + (2 * ceil32(return_data.size)) + 224]
                else:
                    mem[96] = 3
                    mem[128] = sub_7edd3da5Address
                    mem[160] = sub_7edd3da5Address
                    mem[192] = arg2
                    require ext_code.size(sub_7edd3da5Address)
                    staticcall sub_7edd3da5Address.decimals() with:
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
                        if stor9 == secondaryRouterAddress:
                            idx = 0
                            s = ceil32(return_data.size) + 324
                            t = 128
                            while idx < 3:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _1683 = mem[ceil32(return_data.size) + 224 len 4], 0
                            require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                            _1777 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                revert with 0, 65
                            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                            mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                            require return_data.size >= _1683 + (32 * _1777) + 32
                            mem[(2 * ceil32(return_data.size)) + 256 len 32 * _1777] = mem[ceil32(return_data.size) + _1683 + 256 len 32 * _1777]
                            if _1777 < 1:
                                revert with 0, 17
                            if _1777 - 1 >= _1777:
                                revert with 0, 50
                            mem[mem[64]] = mem[(32 * _1777 - 1) + (2 * ceil32(return_data.size)) + 256]
                        else:
                            idx = 0
                            s = ceil32(return_data.size) + 324
                            t = 128
                            while idx < 3:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor6)
                            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                            if ext_call.success:
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _1685 = mem[ceil32(return_data.size) + 224 len 4], 0
                                require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _1779 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                                require return_data.size >= _1685 + (32 * _1779) + 32
                                mem[(2 * ceil32(return_data.size)) + 256 len 32 * _1779] = mem[ceil32(return_data.size) + _1685 + 256 len 32 * _1779]
                                if _1779 < 1:
                                    revert with 0, 17
                                if _1779 - 1 >= _1779:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _1779 - 1) + (2 * ceil32(return_data.size)) + 256]
                            else:
                                mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = 1
                                mem[ceil32(return_data.size) + 260] = 64
                                mem[ceil32(return_data.size) + 292] = 3
                                idx = 0
                                s = ceil32(return_data.size) + 324
                                t = 128
                                while idx < 3:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor7)
                                staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3052 = mem[ceil32(return_data.size) + 224 len 4], 0
                                require mem[ceil32(return_data.size) + 224 len 4], 0 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3150 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], 0 + 224]
                                require return_data.size >= _3052 + (32 * _3150) + 32
                                mem[(2 * ceil32(return_data.size)) + 256 len 32 * _3150] = mem[ceil32(return_data.size) + _3052 + 256 len 32 * _3150]
                                if _3150 < 1:
                                    revert with 0, 17
                                if _3150 - 1 >= _3150:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3150 - 1) + (2 * ceil32(return_data.size)) + 256]
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = 10^uint8(ext_call.return_data[0])
                            mem[ceil32(return_data.size) + 260] = 64
                            mem[ceil32(return_data.size) + 292] = 3
                            if stor9 == secondaryRouterAddress:
                                idx = 0
                                s = ceil32(return_data.size) + 324
                                t = 128
                                while idx < 3:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _1680 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _1774 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                require return_data.size >= _1680 + (32 * _1774) + 32
                                mem[(2 * ceil32(return_data.size)) + 256 len 32 * _1774] = mem[ceil32(return_data.size) + _1680 + 256 len 32 * _1774]
                                if _1774 < 1:
                                    revert with 0, 17
                                if _1774 - 1 >= _1774:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _1774 - 1) + (2 * ceil32(return_data.size)) + 256]
                            else:
                                idx = 0
                                s = ceil32(return_data.size) + 324
                                t = 128
                                while idx < 3:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _1682 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _1776 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                    require return_data.size >= _1682 + (32 * _1776) + 32
                                    mem[(2 * ceil32(return_data.size)) + 256 len 32 * _1776] = mem[ceil32(return_data.size) + _1682 + 256 len 32 * _1776]
                                    if _1776 < 1:
                                        revert with 0, 17
                                    if _1776 - 1 >= _1776:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[(32 * _1776 - 1) + (2 * ceil32(return_data.size)) + 256]
                                else:
                                    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = 10^uint8(ext_call.return_data[0])
                                    mem[ceil32(return_data.size) + 260] = 64
                                    mem[ceil32(return_data.size) + 292] = 3
                                    idx = 0
                                    s = ceil32(return_data.size) + 324
                                    t = 128
                                    while idx < 3:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args 10^uint8(ext_call.return_data[0]), Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3050 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3148 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 224]
                                    require return_data.size >= _3050 + (32 * _3148) + 32
                                    mem[(2 * ceil32(return_data.size)) + 256 len 32 * _3148] = mem[ceil32(return_data.size) + _3050 + 256 len 32 * _3148]
                                    if _3148 < 1:
                                        revert with 0, 17
                                    if _3148 - 1 >= _3148:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[(32 * _3148 - 1) + (2 * ceil32(return_data.size)) + 256]
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 0, 17
                                if not bool(idx):
                                    s = s * s
                                    t = t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                s = s * s
                                t = s * t
                                idx = uint255(idx) * 0.5
                                continue 
                            if t > -1 / s:
                                revert with 0, 17
                            mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = s * t
                            mem[ceil32(return_data.size) + 260] = 64
                            mem[ceil32(return_data.size) + 292] = 3
                            if stor9 == secondaryRouterAddress:
                                idx = 0
                                u = ceil32(return_data.size) + 324
                                v = 128
                                while idx < 3:
                                    mem[u] = mem[v + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args s * t, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3046 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32
                                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                _3145 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]
                                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224] > test266151307():
                                    revert with 0, 65
                                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 225
                                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]
                                require return_data.size >= _3046 + (32 * _3145) + 32
                                mem[(2 * ceil32(return_data.size)) + 256 len 32 * _3145] = mem[ceil32(return_data.size) + _3046 + 256 len 32 * _3145]
                                if _3145 < 1:
                                    revert with 0, 17
                                if _3145 - 1 >= _3145:
                                    revert with 0, 50
                                mem[mem[64]] = mem[(32 * _3145 - 1) + (2 * ceil32(return_data.size)) + 256]
                            else:
                                idx = 0
                                u = ceil32(return_data.size) + 324
                                v = 128
                                while idx < 3:
                                    mem[u] = mem[v + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(stor6)
                                staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args s * t, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                if ext_call.success:
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3048 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3147 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]
                                    require return_data.size >= _3048 + (32 * _3147) + 32
                                    mem[(2 * ceil32(return_data.size)) + 256 len 32 * _3147] = mem[ceil32(return_data.size) + _3048 + 256 len 32 * _3147]
                                    if _3147 < 1:
                                        revert with 0, 17
                                    if _3147 - 1 >= _3147:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[(32 * _3147 - 1) + (2 * ceil32(return_data.size)) + 256]
                                else:
                                    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = s * t
                                    mem[ceil32(return_data.size) + 260] = 64
                                    mem[ceil32(return_data.size) + 292] = 3
                                    idx = 0
                                    u = ceil32(return_data.size) + 324
                                    v = 128
                                    while idx < 3:
                                        mem[u] = mem[v + 12 len 20]
                                        idx = idx + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    require ext_code.size(stor7)
                                    staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args s * t, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3862 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32
                                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                                    _3924 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]
                                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224] > test266151307():
                                        revert with 0, 65
                                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]) + 225
                                    mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, s * t) >> 32 + 224]
                                    require return_data.size >= _3862 + (32 * _3924) + 32
                                    mem[(2 * ceil32(return_data.size)) + 256 len 32 * _3924] = mem[ceil32(return_data.size) + _3862 + 256 len 32 * _3924]
                                    if _3924 < 1:
                                        revert with 0, 17
                                    if _3924 - 1 >= _3924:
                                        revert with 0, 50
                                    mem[mem[64]] = mem[(32 * _3924 - 1) + (2 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}



}
