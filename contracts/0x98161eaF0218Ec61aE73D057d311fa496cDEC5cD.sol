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
    if arg1 == stor8:
        if arg2 == stor8:
            if wethAddress == wethAddress:
                mem[96] = 2
                mem[128] = wethAddress
                mem[160] = wethAddress
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 1
                mem[228] = 64
                mem[260] = 2
                if secondaryRouterAddress == stor9:
                    idx = 0
                    s = 128
                    t = 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _1057 = mem[192 len 4], 0
                    require mem[192 len 4], 0 <= test266151307()
                    require mem[192 len 4], 0 + 223 < return_data.size + 192
                    _1079 = mem[mem[192 len 4], 0 + 192]
                    if mem[mem[192 len 4], 0 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                    require _1057 + (32 * _1079) + 32 <= return_data.size
                    idx = 0
                    s = _1057 + 224
                    t = ceil32(return_data.size) + 224
                    while idx < _1079:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if _1079 < 1:
                        revert with 'NH{q', 17
                    if _1079 - 1 >= _1079:
                        revert with 'NH{q', 50
                    require ext_code.size(wethAddress)
                    staticcall wethAddress.decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2003 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2003] == mem[_2003 + 31 len 1]
                    if not mem[_2003 + 31 len 1]:
                        return 1
                    if not mem[(32 * _1079 - 1) + ceil32(return_data.size) + 224]:
                        return 0
                    if mem[(32 * _1079 - 1) + ceil32(return_data.size) + 224] == 1:
                        return 1
                    if mem[(32 * _1079 - 1) + ceil32(return_data.size) + 224] == 2:
                        if mem[_2003 + 31 len 1] > 255:
                            revert with 'NH{q', 17
                        if 2^mem[_2003 + 31 len 1] > -1:
                            revert with 'NH{q', 17
                        if 2^mem[_2003 + 31 len 1] and 10000 > -1 / 2^mem[_2003 + 31 len 1]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * 2^mem[_2003 + 31 len 1] / 9980
                    else:
                        if mem[(32 * _1079 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2003 + 31 len 1] >= 78 and mem[(32 * _1079 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2003 + 31 len 1] >= 32:
                            s = mem[(32 * _1079 - 1) + ceil32(return_data.size) + 224]
                            t = 1
                            idx = mem[_2003 + 31 len 1]
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
                            if t * s and 10000 > -1 / t * s:
                                revert with 'NH{q', 17
                            return (10000 * t * s / 9980)
                        if mem[(32 * _1079 - 1) + ceil32(return_data.size) + 224]^mem[_2003 + 31 len 1] > -1:
                            revert with 'NH{q', 17
                        if mem[(32 * _1079 - 1) + ceil32(return_data.size) + 224]^mem[_2003 + 31 len 1] and 10000 > -1 / mem[(32 * _1079 - 1) + ceil32(return_data.size) + 224]^mem[_2003 + 31 len 1]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * mem[(32 * _1079 - 1) + ceil32(return_data.size) + 224]^mem[_2003 + 31 len 1] / 9980
                else:
                    idx = 0
                    s = 128
                    t = 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=2, data=mem[292 len 64])
                    if ext_call.success:
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1058 = mem[192 len 4], 0
                        require mem[192 len 4], 0 <= test266151307()
                        require mem[192 len 4], 0 + 223 < return_data.size + 192
                        _1080 = mem[mem[192 len 4], 0 + 192]
                        if mem[mem[192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                        require _1058 + (32 * _1080) + 32 <= return_data.size
                        idx = 0
                        s = _1058 + 224
                        t = ceil32(return_data.size) + 224
                        while idx < _1080:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1080 < 1:
                            revert with 'NH{q', 17
                        if _1080 - 1 >= _1080:
                            revert with 'NH{q', 50
                        _2044 = mem[(32 * _1080 - 1) + ceil32(return_data.size) + 224]
                        require ext_code.size(wethAddress)
                        staticcall wethAddress.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2070 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2070] == mem[_2070 + 31 len 1]
                        if not mem[_2070 + 31 len 1]:
                            return 1
                        if not _2044:
                            return 0
                        if _2044 == 1:
                            return 1
                        if _2044 == 2:
                            if mem[_2070 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_2070 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_2070 + 31 len 1] and 10000 > -1 / 2^mem[_2070 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_2070 + 31 len 1] / 9980
                        else:
                            if _2044 >= 11 or mem[_2070 + 31 len 1] >= 78 and _2044 >= 307 or mem[_2070 + 31 len 1] >= 32:
                                s = _2044
                                t = 1
                                idx = mem[_2070 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9980)
                            if _2044^mem[_2070 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if _2044^mem[_2070 + 31 len 1] and 10000 > -1 / _2044^mem[_2070 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * _2044^mem[_2070 + 31 len 1] / 9980
                    else:
                        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[196] = 1
                        mem[228] = 64
                        mem[260] = 2
                        idx = 0
                        s = 128
                        t = 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor7)
                        staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1917 = mem[192 len 4], 0
                        require mem[192 len 4], 0 <= test266151307()
                        require mem[192 len 4], 0 + 223 < return_data.size + 192
                        _1939 = mem[mem[192 len 4], 0 + 192]
                        if mem[mem[192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                        require _1917 + (32 * _1939) + 32 <= return_data.size
                        idx = 0
                        s = _1917 + 224
                        t = ceil32(return_data.size) + 224
                        while idx < _1939:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1939 < 1:
                            revert with 'NH{q', 17
                        if _1939 - 1 >= _1939:
                            revert with 'NH{q', 50
                        require ext_code.size(wethAddress)
                        staticcall wethAddress.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2643 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2643] == mem[_2643 + 31 len 1]
                        if not mem[_2643 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1939 - 1) + ceil32(return_data.size) + 224]:
                            return 0
                        if mem[(32 * _1939 - 1) + ceil32(return_data.size) + 224] == 1:
                            return 1
                        if mem[(32 * _1939 - 1) + ceil32(return_data.size) + 224] == 2:
                            if mem[_2643 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_2643 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_2643 + 31 len 1] and 10000 > -1 / 2^mem[_2643 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_2643 + 31 len 1] / 9980
                        else:
                            if mem[(32 * _1939 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2643 + 31 len 1] >= 78 and mem[(32 * _1939 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2643 + 31 len 1] >= 32:
                                s = mem[(32 * _1939 - 1) + ceil32(return_data.size) + 224]
                                t = 1
                                idx = mem[_2643 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9980)
                            if mem[(32 * _1939 - 1) + ceil32(return_data.size) + 224]^mem[_2643 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1939 - 1) + ceil32(return_data.size) + 224]^mem[_2643 + 31 len 1] and 10000 > -1 / mem[(32 * _1939 - 1) + ceil32(return_data.size) + 224]^mem[_2643 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1939 - 1) + ceil32(return_data.size) + 224]^mem[_2643 + 31 len 1] / 9980
            else:
                mem[96] = 3
                mem[128] = wethAddress
                mem[160] = wethAddress
                mem[192] = wethAddress
                mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[228] = 1
                mem[260] = 64
                mem[292] = 3
                if secondaryRouterAddress == stor9:
                    idx = 0
                    s = 128
                    t = 324
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=3, data=mem[324 len 96])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1059 = mem[224 len 4], 0
                    require mem[224 len 4], 0 <= test266151307()
                    require mem[224 len 4], 0 + 255 < return_data.size + 224
                    _1081 = mem[mem[224 len 4], 0 + 224]
                    if mem[mem[224 len 4], 0 + 224] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                    require _1059 + (32 * _1081) + 32 <= return_data.size
                    idx = 0
                    s = _1059 + 256
                    t = ceil32(return_data.size) + 256
                    while idx < _1081:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if _1081 < 1:
                        revert with 'NH{q', 17
                    if _1081 - 1 >= _1081:
                        revert with 'NH{q', 50
                    require ext_code.size(wethAddress)
                    staticcall wethAddress.decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2005 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2005] == mem[_2005 + 31 len 1]
                    if not mem[_2005 + 31 len 1]:
                        return 1
                    if not mem[(32 * _1081 - 1) + ceil32(return_data.size) + 256]:
                        return 0
                    if mem[(32 * _1081 - 1) + ceil32(return_data.size) + 256] == 1:
                        return 1
                    if mem[(32 * _1081 - 1) + ceil32(return_data.size) + 256] == 2:
                        if mem[_2005 + 31 len 1] > 255:
                            revert with 'NH{q', 17
                        if 2^mem[_2005 + 31 len 1] > -1:
                            revert with 'NH{q', 17
                        if 2^mem[_2005 + 31 len 1] and 10000 > -1 / 2^mem[_2005 + 31 len 1]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * 2^mem[_2005 + 31 len 1] / 9960
                    else:
                        if mem[(32 * _1081 - 1) + ceil32(return_data.size) + 256] >= 11 or mem[_2005 + 31 len 1] >= 78 and mem[(32 * _1081 - 1) + ceil32(return_data.size) + 256] >= 307 or mem[_2005 + 31 len 1] >= 32:
                            s = mem[(32 * _1081 - 1) + ceil32(return_data.size) + 256]
                            t = 1
                            idx = mem[_2005 + 31 len 1]
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
                            if t * s and 10000 > -1 / t * s:
                                revert with 'NH{q', 17
                            return (10000 * t * s / 9960)
                        if mem[(32 * _1081 - 1) + ceil32(return_data.size) + 256]^mem[_2005 + 31 len 1] > -1:
                            revert with 'NH{q', 17
                        if mem[(32 * _1081 - 1) + ceil32(return_data.size) + 256]^mem[_2005 + 31 len 1] and 10000 > -1 / mem[(32 * _1081 - 1) + ceil32(return_data.size) + 256]^mem[_2005 + 31 len 1]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * mem[(32 * _1081 - 1) + ceil32(return_data.size) + 256]^mem[_2005 + 31 len 1] / 9960
                else:
                    idx = 0
                    s = 128
                    t = 324
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=3, data=mem[324 len 96])
                    if ext_call.success:
                        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1060 = mem[224 len 4], 0
                        require mem[224 len 4], 0 <= test266151307()
                        require mem[224 len 4], 0 + 255 < return_data.size + 224
                        _1082 = mem[mem[224 len 4], 0 + 224]
                        if mem[mem[224 len 4], 0 + 224] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                        require _1060 + (32 * _1082) + 32 <= return_data.size
                        idx = 0
                        s = _1060 + 256
                        t = ceil32(return_data.size) + 256
                        while idx < _1082:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1082 < 1:
                            revert with 'NH{q', 17
                        if _1082 - 1 >= _1082:
                            revert with 'NH{q', 50
                        require ext_code.size(wethAddress)
                        staticcall wethAddress.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2072 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2072] == mem[_2072 + 31 len 1]
                        if not mem[_2072 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1082 - 1) + ceil32(return_data.size) + 256]:
                            return 0
                        if mem[(32 * _1082 - 1) + ceil32(return_data.size) + 256] == 1:
                            return 1
                        if mem[(32 * _1082 - 1) + ceil32(return_data.size) + 256] == 2:
                            if mem[_2072 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_2072 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_2072 + 31 len 1] and 10000 > -1 / 2^mem[_2072 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_2072 + 31 len 1] / 9960
                        else:
                            if mem[(32 * _1082 - 1) + ceil32(return_data.size) + 256] >= 11 or mem[_2072 + 31 len 1] >= 78 and mem[(32 * _1082 - 1) + ceil32(return_data.size) + 256] >= 307 or mem[_2072 + 31 len 1] >= 32:
                                s = mem[(32 * _1082 - 1) + ceil32(return_data.size) + 256]
                                t = 1
                                idx = mem[_2072 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9960)
                            if mem[(32 * _1082 - 1) + ceil32(return_data.size) + 256]^mem[_2072 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1082 - 1) + ceil32(return_data.size) + 256]^mem[_2072 + 31 len 1] and 10000 > -1 / mem[(32 * _1082 - 1) + ceil32(return_data.size) + 256]^mem[_2072 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1082 - 1) + ceil32(return_data.size) + 256]^mem[_2072 + 31 len 1] / 9960
                    else:
                        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[228] = 1
                        mem[260] = 64
                        mem[292] = 3
                        idx = 0
                        s = 128
                        t = 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor7)
                        staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=3, data=mem[324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1918 = mem[224 len 4], 0
                        require mem[224 len 4], 0 <= test266151307()
                        require mem[224 len 4], 0 + 255 < return_data.size + 224
                        _1940 = mem[mem[224 len 4], 0 + 224]
                        if mem[mem[224 len 4], 0 + 224] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                        require _1918 + (32 * _1940) + 32 <= return_data.size
                        idx = 0
                        s = _1918 + 256
                        t = ceil32(return_data.size) + 256
                        while idx < _1940:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1940 < 1:
                            revert with 'NH{q', 17
                        if _1940 - 1 >= _1940:
                            revert with 'NH{q', 50
                        require ext_code.size(wethAddress)
                        staticcall wethAddress.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2644 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2644] == mem[_2644 + 31 len 1]
                        if not mem[_2644 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1940 - 1) + ceil32(return_data.size) + 256]:
                            return 0
                        if mem[(32 * _1940 - 1) + ceil32(return_data.size) + 256] == 1:
                            return 1
                        if mem[(32 * _1940 - 1) + ceil32(return_data.size) + 256] == 2:
                            if mem[_2644 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_2644 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_2644 + 31 len 1] and 10000 > -1 / 2^mem[_2644 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_2644 + 31 len 1] / 9960
                        else:
                            if mem[(32 * _1940 - 1) + ceil32(return_data.size) + 256] >= 11 or mem[_2644 + 31 len 1] >= 78 and mem[(32 * _1940 - 1) + ceil32(return_data.size) + 256] >= 307 or mem[_2644 + 31 len 1] >= 32:
                                s = mem[(32 * _1940 - 1) + ceil32(return_data.size) + 256]
                                t = 1
                                idx = mem[_2644 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9960)
                            if mem[(32 * _1940 - 1) + ceil32(return_data.size) + 256]^mem[_2644 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1940 - 1) + ceil32(return_data.size) + 256]^mem[_2644 + 31 len 1] and 10000 > -1 / mem[(32 * _1940 - 1) + ceil32(return_data.size) + 256]^mem[_2644 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1940 - 1) + ceil32(return_data.size) + 256]^mem[_2644 + 31 len 1] / 9960
        else:
            if wethAddress == wethAddress:
                mem[96] = 2
                mem[128] = wethAddress
                mem[160] = arg2
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 1
                mem[228] = 64
                mem[260] = 2
                if secondaryRouterAddress == stor9:
                    idx = 0
                    s = 128
                    t = 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _1051 = mem[192 len 4], 0
                    require mem[192 len 4], 0 <= test266151307()
                    require mem[192 len 4], 0 + 223 < return_data.size + 192
                    _1073 = mem[mem[192 len 4], 0 + 192]
                    if mem[mem[192 len 4], 0 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                    require _1051 + (32 * _1073) + 32 <= return_data.size
                    idx = 0
                    s = _1051 + 224
                    t = ceil32(return_data.size) + 224
                    while idx < _1073:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if _1073 < 1:
                        revert with 'NH{q', 17
                    if _1073 - 1 >= _1073:
                        revert with 'NH{q', 50
                    require ext_code.size(wethAddress)
                    staticcall wethAddress.decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1997 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1997] == mem[_1997 + 31 len 1]
                    if not mem[_1997 + 31 len 1]:
                        return 1
                    if not mem[(32 * _1073 - 1) + ceil32(return_data.size) + 224]:
                        return 0
                    if mem[(32 * _1073 - 1) + ceil32(return_data.size) + 224] == 1:
                        return 1
                    if mem[(32 * _1073 - 1) + ceil32(return_data.size) + 224] == 2:
                        if mem[_1997 + 31 len 1] > 255:
                            revert with 'NH{q', 17
                        if 2^mem[_1997 + 31 len 1] > -1:
                            revert with 'NH{q', 17
                        if 2^mem[_1997 + 31 len 1] and 10000 > -1 / 2^mem[_1997 + 31 len 1]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * 2^mem[_1997 + 31 len 1] / 9980
                    else:
                        if mem[(32 * _1073 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_1997 + 31 len 1] >= 78 and mem[(32 * _1073 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_1997 + 31 len 1] >= 32:
                            s = mem[(32 * _1073 - 1) + ceil32(return_data.size) + 224]
                            t = 1
                            idx = mem[_1997 + 31 len 1]
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
                            if t * s and 10000 > -1 / t * s:
                                revert with 'NH{q', 17
                            return (10000 * t * s / 9980)
                        if mem[(32 * _1073 - 1) + ceil32(return_data.size) + 224]^mem[_1997 + 31 len 1] > -1:
                            revert with 'NH{q', 17
                        if mem[(32 * _1073 - 1) + ceil32(return_data.size) + 224]^mem[_1997 + 31 len 1] and 10000 > -1 / mem[(32 * _1073 - 1) + ceil32(return_data.size) + 224]^mem[_1997 + 31 len 1]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * mem[(32 * _1073 - 1) + ceil32(return_data.size) + 224]^mem[_1997 + 31 len 1] / 9980
                else:
                    idx = 0
                    s = 128
                    t = 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=2, data=mem[292 len 64])
                    if ext_call.success:
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1052 = mem[192 len 4], 0
                        require mem[192 len 4], 0 <= test266151307()
                        require mem[192 len 4], 0 + 223 < return_data.size + 192
                        _1074 = mem[mem[192 len 4], 0 + 192]
                        if mem[mem[192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                        require _1052 + (32 * _1074) + 32 <= return_data.size
                        idx = 0
                        s = _1052 + 224
                        t = ceil32(return_data.size) + 224
                        while idx < _1074:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1074 < 1:
                            revert with 'NH{q', 17
                        if _1074 - 1 >= _1074:
                            revert with 'NH{q', 50
                        require ext_code.size(wethAddress)
                        staticcall wethAddress.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2064 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2064] == mem[_2064 + 31 len 1]
                        if not mem[_2064 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1074 - 1) + ceil32(return_data.size) + 224]:
                            return 0
                        if mem[(32 * _1074 - 1) + ceil32(return_data.size) + 224] == 1:
                            return 1
                        if mem[(32 * _1074 - 1) + ceil32(return_data.size) + 224] == 2:
                            if mem[_2064 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_2064 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_2064 + 31 len 1] and 10000 > -1 / 2^mem[_2064 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_2064 + 31 len 1] / 9980
                        else:
                            if mem[(32 * _1074 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2064 + 31 len 1] >= 78 and mem[(32 * _1074 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2064 + 31 len 1] >= 32:
                                s = mem[(32 * _1074 - 1) + ceil32(return_data.size) + 224]
                                t = 1
                                idx = mem[_2064 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9980)
                            if mem[(32 * _1074 - 1) + ceil32(return_data.size) + 224]^mem[_2064 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1074 - 1) + ceil32(return_data.size) + 224]^mem[_2064 + 31 len 1] and 10000 > -1 / mem[(32 * _1074 - 1) + ceil32(return_data.size) + 224]^mem[_2064 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1074 - 1) + ceil32(return_data.size) + 224]^mem[_2064 + 31 len 1] / 9980
                    else:
                        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[196] = 1
                        mem[228] = 64
                        mem[260] = 2
                        idx = 0
                        s = 128
                        t = 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor7)
                        staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1914 = mem[192 len 4], 0
                        require mem[192 len 4], 0 <= test266151307()
                        require mem[192 len 4], 0 + 223 < return_data.size + 192
                        _1936 = mem[mem[192 len 4], 0 + 192]
                        if mem[mem[192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                        require _1914 + (32 * _1936) + 32 <= return_data.size
                        idx = 0
                        s = _1914 + 224
                        t = ceil32(return_data.size) + 224
                        while idx < _1936:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1936 < 1:
                            revert with 'NH{q', 17
                        if _1936 - 1 >= _1936:
                            revert with 'NH{q', 50
                        _2619 = mem[(32 * _1936 - 1) + ceil32(return_data.size) + 224]
                        require ext_code.size(wethAddress)
                        staticcall wethAddress.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2640 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2640] == mem[_2640 + 31 len 1]
                        if not mem[_2640 + 31 len 1]:
                            return 1
                        if not _2619:
                            return 0
                        if _2619 == 1:
                            return 1
                        if _2619 == 2:
                            if mem[_2640 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_2640 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_2640 + 31 len 1] and 10000 > -1 / 2^mem[_2640 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_2640 + 31 len 1] / 9980
                        else:
                            if _2619 >= 11 or mem[_2640 + 31 len 1] >= 78 and _2619 >= 307 or mem[_2640 + 31 len 1] >= 32:
                                s = _2619
                                t = 1
                                idx = mem[_2640 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9980)
                            if _2619^mem[_2640 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if _2619^mem[_2640 + 31 len 1] and 10000 > -1 / _2619^mem[_2640 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * _2619^mem[_2640 + 31 len 1] / 9980
            else:
                if arg2 == wethAddress:
                    mem[96] = 2
                    mem[128] = wethAddress
                    mem[160] = arg2
                    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[196] = 1
                    mem[228] = 64
                    mem[260] = 2
                    if secondaryRouterAddress == stor9:
                        idx = 0
                        s = 128
                        t = 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1055 = mem[192 len 4], 0
                        require mem[192 len 4], 0 <= test266151307()
                        require mem[192 len 4], 0 + 223 < return_data.size + 192
                        _1077 = mem[mem[192 len 4], 0 + 192]
                        if mem[mem[192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                        require _1055 + (32 * _1077) + 32 <= return_data.size
                        idx = 0
                        s = _1055 + 224
                        t = ceil32(return_data.size) + 224
                        while idx < _1077:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1077 < 1:
                            revert with 'NH{q', 17
                        if _1077 - 1 >= _1077:
                            revert with 'NH{q', 50
                        require ext_code.size(wethAddress)
                        staticcall wethAddress.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2001 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2001] == mem[_2001 + 31 len 1]
                        if not mem[_2001 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1077 - 1) + ceil32(return_data.size) + 224]:
                            return 0
                        if mem[(32 * _1077 - 1) + ceil32(return_data.size) + 224] == 1:
                            return 1
                        if mem[(32 * _1077 - 1) + ceil32(return_data.size) + 224] == 2:
                            if mem[_2001 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_2001 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_2001 + 31 len 1] and 10000 > -1 / 2^mem[_2001 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_2001 + 31 len 1] / 9980
                        else:
                            if mem[(32 * _1077 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2001 + 31 len 1] >= 78 and mem[(32 * _1077 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2001 + 31 len 1] >= 32:
                                s = mem[(32 * _1077 - 1) + ceil32(return_data.size) + 224]
                                t = 1
                                idx = mem[_2001 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9980)
                            if mem[(32 * _1077 - 1) + ceil32(return_data.size) + 224]^mem[_2001 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1077 - 1) + ceil32(return_data.size) + 224]^mem[_2001 + 31 len 1] and 10000 > -1 / mem[(32 * _1077 - 1) + ceil32(return_data.size) + 224]^mem[_2001 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1077 - 1) + ceil32(return_data.size) + 224]^mem[_2001 + 31 len 1] / 9980
                    else:
                        idx = 0
                        s = 128
                        t = 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[292 len 64])
                        if ext_call.success:
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _1056 = mem[192 len 4], 0
                            require mem[192 len 4], 0 <= test266151307()
                            require mem[192 len 4], 0 + 223 < return_data.size + 192
                            _1078 = mem[mem[192 len 4], 0 + 192]
                            if mem[mem[192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                            require _1056 + (32 * _1078) + 32 <= return_data.size
                            idx = 0
                            s = _1056 + 224
                            t = ceil32(return_data.size) + 224
                            while idx < _1078:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1078 < 1:
                                revert with 'NH{q', 17
                            if _1078 - 1 >= _1078:
                                revert with 'NH{q', 50
                            require ext_code.size(wethAddress)
                            staticcall wethAddress.decimals() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2068 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2068] == mem[_2068 + 31 len 1]
                            if not mem[_2068 + 31 len 1]:
                                return 1
                            if not mem[(32 * _1078 - 1) + ceil32(return_data.size) + 224]:
                                return 0
                            if mem[(32 * _1078 - 1) + ceil32(return_data.size) + 224] == 1:
                                return 1
                            if mem[(32 * _1078 - 1) + ceil32(return_data.size) + 224] == 2:
                                if mem[_2068 + 31 len 1] > 255:
                                    revert with 'NH{q', 17
                                if 2^mem[_2068 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if 2^mem[_2068 + 31 len 1] and 10000 > -1 / 2^mem[_2068 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * 2^mem[_2068 + 31 len 1] / 9980
                            else:
                                if mem[(32 * _1078 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2068 + 31 len 1] >= 78 and mem[(32 * _1078 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2068 + 31 len 1] >= 32:
                                    s = mem[(32 * _1078 - 1) + ceil32(return_data.size) + 224]
                                    t = 1
                                    idx = mem[_2068 + 31 len 1]
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
                                    if t * s and 10000 > -1 / t * s:
                                        revert with 'NH{q', 17
                                    return (10000 * t * s / 9980)
                                if mem[(32 * _1078 - 1) + ceil32(return_data.size) + 224]^mem[_2068 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if mem[(32 * _1078 - 1) + ceil32(return_data.size) + 224]^mem[_2068 + 31 len 1] and 10000 > -1 / mem[(32 * _1078 - 1) + ceil32(return_data.size) + 224]^mem[_2068 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1078 - 1) + ceil32(return_data.size) + 224]^mem[_2068 + 31 len 1] / 9980
                        else:
                            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[196] = 1
                            mem[228] = 64
                            mem[260] = 2
                            idx = 0
                            s = 128
                            t = 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _1916 = mem[192 len 4], 0
                            require mem[192 len 4], 0 <= test266151307()
                            require mem[192 len 4], 0 + 223 < return_data.size + 192
                            _1938 = mem[mem[192 len 4], 0 + 192]
                            if mem[mem[192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                            require _1916 + (32 * _1938) + 32 <= return_data.size
                            idx = 0
                            s = _1916 + 224
                            t = ceil32(return_data.size) + 224
                            while idx < _1938:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1938 < 1:
                                revert with 'NH{q', 17
                            if _1938 - 1 >= _1938:
                                revert with 'NH{q', 50
                            require ext_code.size(wethAddress)
                            staticcall wethAddress.decimals() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2642 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2642] == mem[_2642 + 31 len 1]
                            if not mem[_2642 + 31 len 1]:
                                return 1
                            if not mem[(32 * _1938 - 1) + ceil32(return_data.size) + 224]:
                                return 0
                            if mem[(32 * _1938 - 1) + ceil32(return_data.size) + 224] == 1:
                                return 1
                            if mem[(32 * _1938 - 1) + ceil32(return_data.size) + 224] == 2:
                                if mem[_2642 + 31 len 1] > 255:
                                    revert with 'NH{q', 17
                                if 2^mem[_2642 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if 2^mem[_2642 + 31 len 1] and 10000 > -1 / 2^mem[_2642 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * 2^mem[_2642 + 31 len 1] / 9980
                            else:
                                if mem[(32 * _1938 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2642 + 31 len 1] >= 78 and mem[(32 * _1938 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2642 + 31 len 1] >= 32:
                                    s = mem[(32 * _1938 - 1) + ceil32(return_data.size) + 224]
                                    t = 1
                                    idx = mem[_2642 + 31 len 1]
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
                                    if t * s and 10000 > -1 / t * s:
                                        revert with 'NH{q', 17
                                    return (10000 * t * s / 9980)
                                if mem[(32 * _1938 - 1) + ceil32(return_data.size) + 224]^mem[_2642 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if mem[(32 * _1938 - 1) + ceil32(return_data.size) + 224]^mem[_2642 + 31 len 1] and 10000 > -1 / mem[(32 * _1938 - 1) + ceil32(return_data.size) + 224]^mem[_2642 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1938 - 1) + ceil32(return_data.size) + 224]^mem[_2642 + 31 len 1] / 9980
                else:
                    mem[96] = 3
                    mem[128] = wethAddress
                    mem[160] = wethAddress
                    mem[192] = arg2
                    mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[228] = 1
                    mem[260] = 64
                    mem[292] = 3
                    if secondaryRouterAddress == stor9:
                        idx = 0
                        s = 128
                        t = 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=3, data=mem[324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1053 = mem[224 len 4], 0
                        require mem[224 len 4], 0 <= test266151307()
                        require mem[224 len 4], 0 + 255 < return_data.size + 224
                        _1075 = mem[mem[224 len 4], 0 + 224]
                        if mem[mem[224 len 4], 0 + 224] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                        require _1053 + (32 * _1075) + 32 <= return_data.size
                        idx = 0
                        s = _1053 + 256
                        t = ceil32(return_data.size) + 256
                        while idx < _1075:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1075 < 1:
                            revert with 'NH{q', 17
                        if _1075 - 1 >= _1075:
                            revert with 'NH{q', 50
                        require ext_code.size(wethAddress)
                        staticcall wethAddress.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1999 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1999] == mem[_1999 + 31 len 1]
                        if not mem[_1999 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1075 - 1) + ceil32(return_data.size) + 256]:
                            return 0
                        if mem[(32 * _1075 - 1) + ceil32(return_data.size) + 256] == 1:
                            return 1
                        if mem[(32 * _1075 - 1) + ceil32(return_data.size) + 256] == 2:
                            if mem[_1999 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_1999 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_1999 + 31 len 1] and 10000 > -1 / 2^mem[_1999 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_1999 + 31 len 1] / 9960
                        else:
                            if mem[(32 * _1075 - 1) + ceil32(return_data.size) + 256] >= 11 or mem[_1999 + 31 len 1] >= 78 and mem[(32 * _1075 - 1) + ceil32(return_data.size) + 256] >= 307 or mem[_1999 + 31 len 1] >= 32:
                                s = mem[(32 * _1075 - 1) + ceil32(return_data.size) + 256]
                                t = 1
                                idx = mem[_1999 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9960)
                            if mem[(32 * _1075 - 1) + ceil32(return_data.size) + 256]^mem[_1999 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1075 - 1) + ceil32(return_data.size) + 256]^mem[_1999 + 31 len 1] and 10000 > -1 / mem[(32 * _1075 - 1) + ceil32(return_data.size) + 256]^mem[_1999 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1075 - 1) + ceil32(return_data.size) + 256]^mem[_1999 + 31 len 1] / 9960
                    else:
                        idx = 0
                        s = 128
                        t = 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=3, data=mem[324 len 96])
                        if ext_call.success:
                            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 224
                            require return_data.size >= 32
                            _1054 = mem[224 len 4], 0
                            require mem[224 len 4], 0 <= test266151307()
                            require mem[224 len 4], 0 + 255 < return_data.size + 224
                            _1076 = mem[mem[224 len 4], 0 + 224]
                            if mem[mem[224 len 4], 0 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                            require _1054 + (32 * _1076) + 32 <= return_data.size
                            idx = 0
                            s = _1054 + 256
                            t = ceil32(return_data.size) + 256
                            while idx < _1076:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1076 < 1:
                                revert with 'NH{q', 17
                            if _1076 - 1 >= _1076:
                                revert with 'NH{q', 50
                            require ext_code.size(wethAddress)
                            staticcall wethAddress.decimals() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2066 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2066] == mem[_2066 + 31 len 1]
                            if not mem[_2066 + 31 len 1]:
                                return 1
                            if not mem[(32 * _1076 - 1) + ceil32(return_data.size) + 256]:
                                return 0
                            if mem[(32 * _1076 - 1) + ceil32(return_data.size) + 256] == 1:
                                return 1
                            if mem[(32 * _1076 - 1) + ceil32(return_data.size) + 256] == 2:
                                if mem[_2066 + 31 len 1] > 255:
                                    revert with 'NH{q', 17
                                if 2^mem[_2066 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if 2^mem[_2066 + 31 len 1] and 10000 > -1 / 2^mem[_2066 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * 2^mem[_2066 + 31 len 1] / 9960
                            else:
                                if mem[(32 * _1076 - 1) + ceil32(return_data.size) + 256] >= 11 or mem[_2066 + 31 len 1] >= 78 and mem[(32 * _1076 - 1) + ceil32(return_data.size) + 256] >= 307 or mem[_2066 + 31 len 1] >= 32:
                                    s = mem[(32 * _1076 - 1) + ceil32(return_data.size) + 256]
                                    t = 1
                                    idx = mem[_2066 + 31 len 1]
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
                                    if t * s and 10000 > -1 / t * s:
                                        revert with 'NH{q', 17
                                    return (10000 * t * s / 9960)
                                if mem[(32 * _1076 - 1) + ceil32(return_data.size) + 256]^mem[_2066 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if mem[(32 * _1076 - 1) + ceil32(return_data.size) + 256]^mem[_2066 + 31 len 1] and 10000 > -1 / mem[(32 * _1076 - 1) + ceil32(return_data.size) + 256]^mem[_2066 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1076 - 1) + ceil32(return_data.size) + 256]^mem[_2066 + 31 len 1] / 9960
                        else:
                            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[228] = 1
                            mem[260] = 64
                            mem[292] = 3
                            idx = 0
                            s = 128
                            t = 324
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[324 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 224
                            require return_data.size >= 32
                            _1915 = mem[224 len 4], 0
                            require mem[224 len 4], 0 <= test266151307()
                            require mem[224 len 4], 0 + 255 < return_data.size + 224
                            _1937 = mem[mem[224 len 4], 0 + 224]
                            if mem[mem[224 len 4], 0 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                            require _1915 + (32 * _1937) + 32 <= return_data.size
                            idx = 0
                            s = _1915 + 256
                            t = ceil32(return_data.size) + 256
                            while idx < _1937:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1937 < 1:
                                revert with 'NH{q', 17
                            if _1937 - 1 >= _1937:
                                revert with 'NH{q', 50
                            require ext_code.size(wethAddress)
                            staticcall wethAddress.decimals() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2641 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2641] == mem[_2641 + 31 len 1]
                            if not mem[_2641 + 31 len 1]:
                                return 1
                            if not mem[(32 * _1937 - 1) + ceil32(return_data.size) + 256]:
                                return 0
                            if mem[(32 * _1937 - 1) + ceil32(return_data.size) + 256] == 1:
                                return 1
                            if mem[(32 * _1937 - 1) + ceil32(return_data.size) + 256] == 2:
                                if mem[_2641 + 31 len 1] > 255:
                                    revert with 'NH{q', 17
                                if 2^mem[_2641 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if 2^mem[_2641 + 31 len 1] and 10000 > -1 / 2^mem[_2641 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * 2^mem[_2641 + 31 len 1] / 9960
                            else:
                                if mem[(32 * _1937 - 1) + ceil32(return_data.size) + 256] >= 11 or mem[_2641 + 31 len 1] >= 78 and mem[(32 * _1937 - 1) + ceil32(return_data.size) + 256] >= 307 or mem[_2641 + 31 len 1] >= 32:
                                    s = mem[(32 * _1937 - 1) + ceil32(return_data.size) + 256]
                                    t = 1
                                    idx = mem[_2641 + 31 len 1]
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
                                    if t * s and 10000 > -1 / t * s:
                                        revert with 'NH{q', 17
                                    return (10000 * t * s / 9960)
                                if mem[(32 * _1937 - 1) + ceil32(return_data.size) + 256]^mem[_2641 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if mem[(32 * _1937 - 1) + ceil32(return_data.size) + 256]^mem[_2641 + 31 len 1] and 10000 > -1 / mem[(32 * _1937 - 1) + ceil32(return_data.size) + 256]^mem[_2641 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1937 - 1) + ceil32(return_data.size) + 256]^mem[_2641 + 31 len 1] / 9960
    else:
        if arg2 != stor8:
            if arg1 == wethAddress:
                mem[96] = 2
                mem[128] = arg1
                mem[160] = arg2
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 1
                mem[228] = 64
                mem[260] = 2
                if secondaryRouterAddress == stor9:
                    idx = 0
                    s = 128
                    t = 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _1039 = mem[192 len 4], 0
                    require mem[192 len 4], 0 <= test266151307()
                    require mem[192 len 4], 0 + 223 < return_data.size + 192
                    _1061 = mem[mem[192 len 4], 0 + 192]
                    if mem[mem[192 len 4], 0 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                    require _1039 + (32 * _1061) + 32 <= return_data.size
                    idx = 0
                    s = _1039 + 224
                    t = ceil32(return_data.size) + 224
                    while idx < _1061:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if _1061 < 1:
                        revert with 'NH{q', 17
                    if _1061 - 1 >= _1061:
                        revert with 'NH{q', 50
                    require ext_code.size(arg1)
                    staticcall arg1.decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1985 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1985] == mem[_1985 + 31 len 1]
                    if not mem[_1985 + 31 len 1]:
                        return 1
                    if not mem[(32 * _1061 - 1) + ceil32(return_data.size) + 224]:
                        return 0
                    if mem[(32 * _1061 - 1) + ceil32(return_data.size) + 224] == 1:
                        return 1
                    if mem[(32 * _1061 - 1) + ceil32(return_data.size) + 224] == 2:
                        if mem[_1985 + 31 len 1] > 255:
                            revert with 'NH{q', 17
                        if 2^mem[_1985 + 31 len 1] > -1:
                            revert with 'NH{q', 17
                        if 2^mem[_1985 + 31 len 1] and 10000 > -1 / 2^mem[_1985 + 31 len 1]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * 2^mem[_1985 + 31 len 1] / 9980
                    else:
                        if mem[(32 * _1061 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_1985 + 31 len 1] >= 78 and mem[(32 * _1061 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_1985 + 31 len 1] >= 32:
                            s = mem[(32 * _1061 - 1) + ceil32(return_data.size) + 224]
                            t = 1
                            idx = mem[_1985 + 31 len 1]
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
                            if t * s and 10000 > -1 / t * s:
                                revert with 'NH{q', 17
                            return (10000 * t * s / 9980)
                        if mem[(32 * _1061 - 1) + ceil32(return_data.size) + 224]^mem[_1985 + 31 len 1] > -1:
                            revert with 'NH{q', 17
                        if mem[(32 * _1061 - 1) + ceil32(return_data.size) + 224]^mem[_1985 + 31 len 1] and 10000 > -1 / mem[(32 * _1061 - 1) + ceil32(return_data.size) + 224]^mem[_1985 + 31 len 1]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * mem[(32 * _1061 - 1) + ceil32(return_data.size) + 224]^mem[_1985 + 31 len 1] / 9980
                else:
                    idx = 0
                    s = 128
                    t = 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=2, data=mem[292 len 64])
                    if ext_call.success:
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1040 = mem[192 len 4], 0
                        require mem[192 len 4], 0 <= test266151307()
                        require mem[192 len 4], 0 + 223 < return_data.size + 192
                        _1062 = mem[mem[192 len 4], 0 + 192]
                        if mem[mem[192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                        require _1040 + (32 * _1062) + 32 <= return_data.size
                        idx = 0
                        s = _1040 + 224
                        t = ceil32(return_data.size) + 224
                        while idx < _1062:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1062 < 1:
                            revert with 'NH{q', 17
                        if _1062 - 1 >= _1062:
                            revert with 'NH{q', 50
                        require ext_code.size(arg1)
                        staticcall arg1.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2052 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2052] == mem[_2052 + 31 len 1]
                        if not mem[_2052 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1062 - 1) + ceil32(return_data.size) + 224]:
                            return 0
                        if mem[(32 * _1062 - 1) + ceil32(return_data.size) + 224] == 1:
                            return 1
                        if mem[(32 * _1062 - 1) + ceil32(return_data.size) + 224] == 2:
                            if mem[_2052 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_2052 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_2052 + 31 len 1] and 10000 > -1 / 2^mem[_2052 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_2052 + 31 len 1] / 9980
                        else:
                            if mem[(32 * _1062 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2052 + 31 len 1] >= 78 and mem[(32 * _1062 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2052 + 31 len 1] >= 32:
                                s = mem[(32 * _1062 - 1) + ceil32(return_data.size) + 224]
                                t = 1
                                idx = mem[_2052 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9980)
                            if mem[(32 * _1062 - 1) + ceil32(return_data.size) + 224]^mem[_2052 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1062 - 1) + ceil32(return_data.size) + 224]^mem[_2052 + 31 len 1] and 10000 > -1 / mem[(32 * _1062 - 1) + ceil32(return_data.size) + 224]^mem[_2052 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1062 - 1) + ceil32(return_data.size) + 224]^mem[_2052 + 31 len 1] / 9980
                    else:
                        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[196] = 1
                        mem[228] = 64
                        mem[260] = 2
                        idx = 0
                        s = 128
                        t = 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor7)
                        staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1908 = mem[192 len 4], 0
                        require mem[192 len 4], 0 <= test266151307()
                        require mem[192 len 4], 0 + 223 < return_data.size + 192
                        _1930 = mem[mem[192 len 4], 0 + 192]
                        if mem[mem[192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                        require _1908 + (32 * _1930) + 32 <= return_data.size
                        idx = 0
                        s = _1908 + 224
                        t = ceil32(return_data.size) + 224
                        while idx < _1930:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1930 < 1:
                            revert with 'NH{q', 17
                        if _1930 - 1 >= _1930:
                            revert with 'NH{q', 50
                        require ext_code.size(arg1)
                        staticcall arg1.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2634 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2634] == mem[_2634 + 31 len 1]
                        if not mem[_2634 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1930 - 1) + ceil32(return_data.size) + 224]:
                            return 0
                        if mem[(32 * _1930 - 1) + ceil32(return_data.size) + 224] == 1:
                            return 1
                        if mem[(32 * _1930 - 1) + ceil32(return_data.size) + 224] == 2:
                            if mem[_2634 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_2634 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_2634 + 31 len 1] and 10000 > -1 / 2^mem[_2634 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_2634 + 31 len 1] / 9980
                        else:
                            if mem[(32 * _1930 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2634 + 31 len 1] >= 78 and mem[(32 * _1930 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2634 + 31 len 1] >= 32:
                                s = mem[(32 * _1930 - 1) + ceil32(return_data.size) + 224]
                                t = 1
                                idx = mem[_2634 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9980)
                            if mem[(32 * _1930 - 1) + ceil32(return_data.size) + 224]^mem[_2634 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1930 - 1) + ceil32(return_data.size) + 224]^mem[_2634 + 31 len 1] and 10000 > -1 / mem[(32 * _1930 - 1) + ceil32(return_data.size) + 224]^mem[_2634 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1930 - 1) + ceil32(return_data.size) + 224]^mem[_2634 + 31 len 1] / 9980
            else:
                if arg2 == wethAddress:
                    mem[96] = 2
                    mem[128] = arg1
                    mem[160] = arg2
                    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[196] = 1
                    mem[228] = 64
                    mem[260] = 2
                    if secondaryRouterAddress == stor9:
                        idx = 0
                        s = 128
                        t = 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1043 = mem[192 len 4], 0
                        require mem[192 len 4], 0 <= test266151307()
                        require mem[192 len 4], 0 + 223 < return_data.size + 192
                        _1065 = mem[mem[192 len 4], 0 + 192]
                        if mem[mem[192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                        require _1043 + (32 * _1065) + 32 <= return_data.size
                        idx = 0
                        s = _1043 + 224
                        t = ceil32(return_data.size) + 224
                        while idx < _1065:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1065 < 1:
                            revert with 'NH{q', 17
                        if _1065 - 1 >= _1065:
                            revert with 'NH{q', 50
                        require ext_code.size(arg1)
                        staticcall arg1.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1989 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1989] == mem[_1989 + 31 len 1]
                        if not mem[_1989 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1065 - 1) + ceil32(return_data.size) + 224]:
                            return 0
                        if mem[(32 * _1065 - 1) + ceil32(return_data.size) + 224] == 1:
                            return 1
                        if mem[(32 * _1065 - 1) + ceil32(return_data.size) + 224] == 2:
                            if mem[_1989 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_1989 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_1989 + 31 len 1] and 10000 > -1 / 2^mem[_1989 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_1989 + 31 len 1] / 9980
                        else:
                            if mem[(32 * _1065 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_1989 + 31 len 1] >= 78 and mem[(32 * _1065 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_1989 + 31 len 1] >= 32:
                                s = mem[(32 * _1065 - 1) + ceil32(return_data.size) + 224]
                                t = 1
                                idx = mem[_1989 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9980)
                            if mem[(32 * _1065 - 1) + ceil32(return_data.size) + 224]^mem[_1989 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1065 - 1) + ceil32(return_data.size) + 224]^mem[_1989 + 31 len 1] and 10000 > -1 / mem[(32 * _1065 - 1) + ceil32(return_data.size) + 224]^mem[_1989 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1065 - 1) + ceil32(return_data.size) + 224]^mem[_1989 + 31 len 1] / 9980
                    else:
                        idx = 0
                        s = 128
                        t = 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[292 len 64])
                        if ext_call.success:
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _1044 = mem[192 len 4], 0
                            require mem[192 len 4], 0 <= test266151307()
                            require mem[192 len 4], 0 + 223 < return_data.size + 192
                            _1066 = mem[mem[192 len 4], 0 + 192]
                            if mem[mem[192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                            require _1044 + (32 * _1066) + 32 <= return_data.size
                            idx = 0
                            s = _1044 + 224
                            t = ceil32(return_data.size) + 224
                            while idx < _1066:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1066 < 1:
                                revert with 'NH{q', 17
                            if _1066 - 1 >= _1066:
                                revert with 'NH{q', 50
                            require ext_code.size(arg1)
                            staticcall arg1.decimals() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2056 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2056] == mem[_2056 + 31 len 1]
                            if not mem[_2056 + 31 len 1]:
                                return 1
                            if not mem[(32 * _1066 - 1) + ceil32(return_data.size) + 224]:
                                return 0
                            if mem[(32 * _1066 - 1) + ceil32(return_data.size) + 224] == 1:
                                return 1
                            if mem[(32 * _1066 - 1) + ceil32(return_data.size) + 224] == 2:
                                if mem[_2056 + 31 len 1] > 255:
                                    revert with 'NH{q', 17
                                if 2^mem[_2056 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if 2^mem[_2056 + 31 len 1] and 10000 > -1 / 2^mem[_2056 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * 2^mem[_2056 + 31 len 1] / 9980
                            else:
                                if mem[(32 * _1066 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2056 + 31 len 1] >= 78 and mem[(32 * _1066 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2056 + 31 len 1] >= 32:
                                    s = mem[(32 * _1066 - 1) + ceil32(return_data.size) + 224]
                                    t = 1
                                    idx = mem[_2056 + 31 len 1]
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
                                    if t * s and 10000 > -1 / t * s:
                                        revert with 'NH{q', 17
                                    return (10000 * t * s / 9980)
                                if mem[(32 * _1066 - 1) + ceil32(return_data.size) + 224]^mem[_2056 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if mem[(32 * _1066 - 1) + ceil32(return_data.size) + 224]^mem[_2056 + 31 len 1] and 10000 > -1 / mem[(32 * _1066 - 1) + ceil32(return_data.size) + 224]^mem[_2056 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1066 - 1) + ceil32(return_data.size) + 224]^mem[_2056 + 31 len 1] / 9980
                        else:
                            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[196] = 1
                            mem[228] = 64
                            mem[260] = 2
                            idx = 0
                            s = 128
                            t = 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _1910 = mem[192 len 4], 0
                            require mem[192 len 4], 0 <= test266151307()
                            require mem[192 len 4], 0 + 223 < return_data.size + 192
                            _1932 = mem[mem[192 len 4], 0 + 192]
                            if mem[mem[192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                            require _1910 + (32 * _1932) + 32 <= return_data.size
                            idx = 0
                            s = _1910 + 224
                            t = ceil32(return_data.size) + 224
                            while idx < _1932:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1932 < 1:
                                revert with 'NH{q', 17
                            if _1932 - 1 >= _1932:
                                revert with 'NH{q', 50
                            require ext_code.size(arg1)
                            staticcall arg1.decimals() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2636 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2636] == mem[_2636 + 31 len 1]
                            if not mem[_2636 + 31 len 1]:
                                return 1
                            if not mem[(32 * _1932 - 1) + ceil32(return_data.size) + 224]:
                                return 0
                            if mem[(32 * _1932 - 1) + ceil32(return_data.size) + 224] == 1:
                                return 1
                            if mem[(32 * _1932 - 1) + ceil32(return_data.size) + 224] == 2:
                                if mem[_2636 + 31 len 1] > 255:
                                    revert with 'NH{q', 17
                                if 2^mem[_2636 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if 2^mem[_2636 + 31 len 1] and 10000 > -1 / 2^mem[_2636 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * 2^mem[_2636 + 31 len 1] / 9980
                            else:
                                if mem[(32 * _1932 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2636 + 31 len 1] >= 78 and mem[(32 * _1932 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2636 + 31 len 1] >= 32:
                                    s = mem[(32 * _1932 - 1) + ceil32(return_data.size) + 224]
                                    t = 1
                                    idx = mem[_2636 + 31 len 1]
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
                                    if t * s and 10000 > -1 / t * s:
                                        revert with 'NH{q', 17
                                    return (10000 * t * s / 9980)
                                if mem[(32 * _1932 - 1) + ceil32(return_data.size) + 224]^mem[_2636 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if mem[(32 * _1932 - 1) + ceil32(return_data.size) + 224]^mem[_2636 + 31 len 1] and 10000 > -1 / mem[(32 * _1932 - 1) + ceil32(return_data.size) + 224]^mem[_2636 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1932 - 1) + ceil32(return_data.size) + 224]^mem[_2636 + 31 len 1] / 9980
                else:
                    mem[96] = 3
                    mem[128] = arg1
                    mem[160] = wethAddress
                    mem[192] = arg2
                    mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[228] = 1
                    mem[260] = 64
                    mem[292] = 3
                    if secondaryRouterAddress == stor9:
                        idx = 0
                        s = 128
                        t = 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=3, data=mem[324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1041 = mem[224 len 4], 0
                        require mem[224 len 4], 0 <= test266151307()
                        require mem[224 len 4], 0 + 255 < return_data.size + 224
                        _1063 = mem[mem[224 len 4], 0 + 224]
                        if mem[mem[224 len 4], 0 + 224] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                        require _1041 + (32 * _1063) + 32 <= return_data.size
                        idx = 0
                        s = _1041 + 256
                        t = ceil32(return_data.size) + 256
                        while idx < _1063:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1063 < 1:
                            revert with 'NH{q', 17
                        if _1063 - 1 >= _1063:
                            revert with 'NH{q', 50
                        require ext_code.size(arg1)
                        staticcall arg1.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1987 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1987] == mem[_1987 + 31 len 1]
                        if not mem[_1987 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1063 - 1) + ceil32(return_data.size) + 256]:
                            return 0
                        if mem[(32 * _1063 - 1) + ceil32(return_data.size) + 256] == 1:
                            return 1
                        if mem[(32 * _1063 - 1) + ceil32(return_data.size) + 256] == 2:
                            if mem[_1987 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_1987 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_1987 + 31 len 1] and 10000 > -1 / 2^mem[_1987 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_1987 + 31 len 1] / 9960
                        else:
                            if mem[(32 * _1063 - 1) + ceil32(return_data.size) + 256] >= 11 or mem[_1987 + 31 len 1] >= 78 and mem[(32 * _1063 - 1) + ceil32(return_data.size) + 256] >= 307 or mem[_1987 + 31 len 1] >= 32:
                                s = mem[(32 * _1063 - 1) + ceil32(return_data.size) + 256]
                                t = 1
                                idx = mem[_1987 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9960)
                            if mem[(32 * _1063 - 1) + ceil32(return_data.size) + 256]^mem[_1987 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1063 - 1) + ceil32(return_data.size) + 256]^mem[_1987 + 31 len 1] and 10000 > -1 / mem[(32 * _1063 - 1) + ceil32(return_data.size) + 256]^mem[_1987 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1063 - 1) + ceil32(return_data.size) + 256]^mem[_1987 + 31 len 1] / 9960
                    else:
                        idx = 0
                        s = 128
                        t = 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=3, data=mem[324 len 96])
                        if ext_call.success:
                            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 224
                            require return_data.size >= 32
                            _1042 = mem[224 len 4], 0
                            require mem[224 len 4], 0 <= test266151307()
                            require mem[224 len 4], 0 + 255 < return_data.size + 224
                            _1064 = mem[mem[224 len 4], 0 + 224]
                            if mem[mem[224 len 4], 0 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                            require _1042 + (32 * _1064) + 32 <= return_data.size
                            idx = 0
                            s = _1042 + 256
                            t = ceil32(return_data.size) + 256
                            while idx < _1064:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1064 < 1:
                                revert with 'NH{q', 17
                            if _1064 - 1 >= _1064:
                                revert with 'NH{q', 50
                            _2012 = mem[(32 * _1064 - 1) + ceil32(return_data.size) + 256]
                            require ext_code.size(arg1)
                            staticcall arg1.decimals() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2054 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2054] == mem[_2054 + 31 len 1]
                            if not mem[_2054 + 31 len 1]:
                                return 1
                            if not _2012:
                                return 0
                            if _2012 == 1:
                                return 1
                            if _2012 == 2:
                                if mem[_2054 + 31 len 1] > 255:
                                    revert with 'NH{q', 17
                                if 2^mem[_2054 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if 2^mem[_2054 + 31 len 1] and 10000 > -1 / 2^mem[_2054 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * 2^mem[_2054 + 31 len 1] / 9960
                            else:
                                if _2012 >= 11 or mem[_2054 + 31 len 1] >= 78 and _2012 >= 307 or mem[_2054 + 31 len 1] >= 32:
                                    s = _2012
                                    t = 1
                                    idx = mem[_2054 + 31 len 1]
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
                                    if t * s and 10000 > -1 / t * s:
                                        revert with 'NH{q', 17
                                    return (10000 * t * s / 9960)
                                if _2012^mem[_2054 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if _2012^mem[_2054 + 31 len 1] and 10000 > -1 / _2012^mem[_2054 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * _2012^mem[_2054 + 31 len 1] / 9960
                        else:
                            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[228] = 1
                            mem[260] = 64
                            mem[292] = 3
                            idx = 0
                            s = 128
                            t = 324
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[324 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 224
                            require return_data.size >= 32
                            _1909 = mem[224 len 4], 0
                            require mem[224 len 4], 0 <= test266151307()
                            require mem[224 len 4], 0 + 255 < return_data.size + 224
                            _1931 = mem[mem[224 len 4], 0 + 224]
                            if mem[mem[224 len 4], 0 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                            require _1909 + (32 * _1931) + 32 <= return_data.size
                            idx = 0
                            s = _1909 + 256
                            t = ceil32(return_data.size) + 256
                            while idx < _1931:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1931 < 1:
                                revert with 'NH{q', 17
                            if _1931 - 1 >= _1931:
                                revert with 'NH{q', 50
                            _2604 = mem[(32 * _1931 - 1) + ceil32(return_data.size) + 256]
                            require ext_code.size(arg1)
                            staticcall arg1.decimals() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2635 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2635] == mem[_2635 + 31 len 1]
                            if not mem[_2635 + 31 len 1]:
                                return 1
                            if not _2604:
                                return 0
                            if _2604 == 1:
                                return 1
                            if _2604 == 2:
                                if mem[_2635 + 31 len 1] > 255:
                                    revert with 'NH{q', 17
                                if 2^mem[_2635 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if 2^mem[_2635 + 31 len 1] and 10000 > -1 / 2^mem[_2635 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * 2^mem[_2635 + 31 len 1] / 9960
                            else:
                                if _2604 >= 11 or mem[_2635 + 31 len 1] >= 78 and _2604 >= 307 or mem[_2635 + 31 len 1] >= 32:
                                    s = _2604
                                    t = 1
                                    idx = mem[_2635 + 31 len 1]
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
                                    if t * s and 10000 > -1 / t * s:
                                        revert with 'NH{q', 17
                                    return (10000 * t * s / 9960)
                                if _2604^mem[_2635 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if _2604^mem[_2635 + 31 len 1] and 10000 > -1 / _2604^mem[_2635 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * _2604^mem[_2635 + 31 len 1] / 9960
        else:
            if arg1 == wethAddress:
                mem[96] = 2
                mem[128] = arg1
                mem[160] = wethAddress
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 1
                mem[228] = 64
                mem[260] = 2
                if secondaryRouterAddress == stor9:
                    idx = 0
                    s = 128
                    t = 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _1045 = mem[192 len 4], 0
                    require mem[192 len 4], 0 <= test266151307()
                    require mem[192 len 4], 0 + 223 < return_data.size + 192
                    _1067 = mem[mem[192 len 4], 0 + 192]
                    if mem[mem[192 len 4], 0 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                    require _1045 + (32 * _1067) + 32 <= return_data.size
                    idx = 0
                    s = _1045 + 224
                    t = ceil32(return_data.size) + 224
                    while idx < _1067:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if _1067 < 1:
                        revert with 'NH{q', 17
                    if _1067 - 1 >= _1067:
                        revert with 'NH{q', 50
                    require ext_code.size(arg1)
                    staticcall arg1.decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1991 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1991] == mem[_1991 + 31 len 1]
                    if not mem[_1991 + 31 len 1]:
                        return 1
                    if not mem[(32 * _1067 - 1) + ceil32(return_data.size) + 224]:
                        return 0
                    if mem[(32 * _1067 - 1) + ceil32(return_data.size) + 224] == 1:
                        return 1
                    if mem[(32 * _1067 - 1) + ceil32(return_data.size) + 224] == 2:
                        if mem[_1991 + 31 len 1] > 255:
                            revert with 'NH{q', 17
                        if 2^mem[_1991 + 31 len 1] > -1:
                            revert with 'NH{q', 17
                        if 2^mem[_1991 + 31 len 1] and 10000 > -1 / 2^mem[_1991 + 31 len 1]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * 2^mem[_1991 + 31 len 1] / 9980
                    else:
                        if mem[(32 * _1067 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_1991 + 31 len 1] >= 78 and mem[(32 * _1067 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_1991 + 31 len 1] >= 32:
                            s = mem[(32 * _1067 - 1) + ceil32(return_data.size) + 224]
                            t = 1
                            idx = mem[_1991 + 31 len 1]
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
                            if t * s and 10000 > -1 / t * s:
                                revert with 'NH{q', 17
                            return (10000 * t * s / 9980)
                        if mem[(32 * _1067 - 1) + ceil32(return_data.size) + 224]^mem[_1991 + 31 len 1] > -1:
                            revert with 'NH{q', 17
                        if mem[(32 * _1067 - 1) + ceil32(return_data.size) + 224]^mem[_1991 + 31 len 1] and 10000 > -1 / mem[(32 * _1067 - 1) + ceil32(return_data.size) + 224]^mem[_1991 + 31 len 1]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * mem[(32 * _1067 - 1) + ceil32(return_data.size) + 224]^mem[_1991 + 31 len 1] / 9980
                else:
                    idx = 0
                    s = 128
                    t = 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=2, data=mem[292 len 64])
                    if ext_call.success:
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1046 = mem[192 len 4], 0
                        require mem[192 len 4], 0 <= test266151307()
                        require mem[192 len 4], 0 + 223 < return_data.size + 192
                        _1068 = mem[mem[192 len 4], 0 + 192]
                        if mem[mem[192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                        require _1046 + (32 * _1068) + 32 <= return_data.size
                        idx = 0
                        s = _1046 + 224
                        t = ceil32(return_data.size) + 224
                        while idx < _1068:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1068 < 1:
                            revert with 'NH{q', 17
                        if _1068 - 1 >= _1068:
                            revert with 'NH{q', 50
                        require ext_code.size(arg1)
                        staticcall arg1.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2058 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2058] == mem[_2058 + 31 len 1]
                        if not mem[_2058 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1068 - 1) + ceil32(return_data.size) + 224]:
                            return 0
                        if mem[(32 * _1068 - 1) + ceil32(return_data.size) + 224] == 1:
                            return 1
                        if mem[(32 * _1068 - 1) + ceil32(return_data.size) + 224] == 2:
                            if mem[_2058 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_2058 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_2058 + 31 len 1] and 10000 > -1 / 2^mem[_2058 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_2058 + 31 len 1] / 9980
                        else:
                            if mem[(32 * _1068 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2058 + 31 len 1] >= 78 and mem[(32 * _1068 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2058 + 31 len 1] >= 32:
                                s = mem[(32 * _1068 - 1) + ceil32(return_data.size) + 224]
                                t = 1
                                idx = mem[_2058 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9980)
                            if mem[(32 * _1068 - 1) + ceil32(return_data.size) + 224]^mem[_2058 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1068 - 1) + ceil32(return_data.size) + 224]^mem[_2058 + 31 len 1] and 10000 > -1 / mem[(32 * _1068 - 1) + ceil32(return_data.size) + 224]^mem[_2058 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1068 - 1) + ceil32(return_data.size) + 224]^mem[_2058 + 31 len 1] / 9980
                    else:
                        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[196] = 1
                        mem[228] = 64
                        mem[260] = 2
                        idx = 0
                        s = 128
                        t = 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor7)
                        staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1911 = mem[192 len 4], 0
                        require mem[192 len 4], 0 <= test266151307()
                        require mem[192 len 4], 0 + 223 < return_data.size + 192
                        _1933 = mem[mem[192 len 4], 0 + 192]
                        if mem[mem[192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                        require _1911 + (32 * _1933) + 32 <= return_data.size
                        idx = 0
                        s = _1911 + 224
                        t = ceil32(return_data.size) + 224
                        while idx < _1933:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1933 < 1:
                            revert with 'NH{q', 17
                        if _1933 - 1 >= _1933:
                            revert with 'NH{q', 50
                        require ext_code.size(arg1)
                        staticcall arg1.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2637 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2637] == mem[_2637 + 31 len 1]
                        if not mem[_2637 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1933 - 1) + ceil32(return_data.size) + 224]:
                            return 0
                        if mem[(32 * _1933 - 1) + ceil32(return_data.size) + 224] == 1:
                            return 1
                        if mem[(32 * _1933 - 1) + ceil32(return_data.size) + 224] == 2:
                            if mem[_2637 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_2637 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_2637 + 31 len 1] and 10000 > -1 / 2^mem[_2637 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_2637 + 31 len 1] / 9980
                        else:
                            if mem[(32 * _1933 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2637 + 31 len 1] >= 78 and mem[(32 * _1933 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2637 + 31 len 1] >= 32:
                                s = mem[(32 * _1933 - 1) + ceil32(return_data.size) + 224]
                                t = 1
                                idx = mem[_2637 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9980)
                            if mem[(32 * _1933 - 1) + ceil32(return_data.size) + 224]^mem[_2637 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1933 - 1) + ceil32(return_data.size) + 224]^mem[_2637 + 31 len 1] and 10000 > -1 / mem[(32 * _1933 - 1) + ceil32(return_data.size) + 224]^mem[_2637 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1933 - 1) + ceil32(return_data.size) + 224]^mem[_2637 + 31 len 1] / 9980
            else:
                if wethAddress == wethAddress:
                    mem[96] = 2
                    mem[128] = arg1
                    mem[160] = wethAddress
                    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[196] = 1
                    mem[228] = 64
                    mem[260] = 2
                    if secondaryRouterAddress == stor9:
                        idx = 0
                        s = 128
                        t = 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1049 = mem[192 len 4], 0
                        require mem[192 len 4], 0 <= test266151307()
                        require mem[192 len 4], 0 + 223 < return_data.size + 192
                        _1071 = mem[mem[192 len 4], 0 + 192]
                        if mem[mem[192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                        require _1049 + (32 * _1071) + 32 <= return_data.size
                        idx = 0
                        s = _1049 + 224
                        t = ceil32(return_data.size) + 224
                        while idx < _1071:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1071 < 1:
                            revert with 'NH{q', 17
                        if _1071 - 1 >= _1071:
                            revert with 'NH{q', 50
                        require ext_code.size(arg1)
                        staticcall arg1.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1995 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1995] == mem[_1995 + 31 len 1]
                        if not mem[_1995 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1071 - 1) + ceil32(return_data.size) + 224]:
                            return 0
                        if mem[(32 * _1071 - 1) + ceil32(return_data.size) + 224] == 1:
                            return 1
                        if mem[(32 * _1071 - 1) + ceil32(return_data.size) + 224] == 2:
                            if mem[_1995 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_1995 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_1995 + 31 len 1] and 10000 > -1 / 2^mem[_1995 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_1995 + 31 len 1] / 9980
                        else:
                            if mem[(32 * _1071 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_1995 + 31 len 1] >= 78 and mem[(32 * _1071 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_1995 + 31 len 1] >= 32:
                                s = mem[(32 * _1071 - 1) + ceil32(return_data.size) + 224]
                                t = 1
                                idx = mem[_1995 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9980)
                            if mem[(32 * _1071 - 1) + ceil32(return_data.size) + 224]^mem[_1995 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1071 - 1) + ceil32(return_data.size) + 224]^mem[_1995 + 31 len 1] and 10000 > -1 / mem[(32 * _1071 - 1) + ceil32(return_data.size) + 224]^mem[_1995 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1071 - 1) + ceil32(return_data.size) + 224]^mem[_1995 + 31 len 1] / 9980
                    else:
                        idx = 0
                        s = 128
                        t = 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[292 len 64])
                        if ext_call.success:
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _1050 = mem[192 len 4], 0
                            require mem[192 len 4], 0 <= test266151307()
                            require mem[192 len 4], 0 + 223 < return_data.size + 192
                            _1072 = mem[mem[192 len 4], 0 + 192]
                            if mem[mem[192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                            require _1050 + (32 * _1072) + 32 <= return_data.size
                            idx = 0
                            s = _1050 + 224
                            t = ceil32(return_data.size) + 224
                            while idx < _1072:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1072 < 1:
                                revert with 'NH{q', 17
                            if _1072 - 1 >= _1072:
                                revert with 'NH{q', 50
                            require ext_code.size(arg1)
                            staticcall arg1.decimals() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2062 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2062] == mem[_2062 + 31 len 1]
                            if not mem[_2062 + 31 len 1]:
                                return 1
                            if not mem[(32 * _1072 - 1) + ceil32(return_data.size) + 224]:
                                return 0
                            if mem[(32 * _1072 - 1) + ceil32(return_data.size) + 224] == 1:
                                return 1
                            if mem[(32 * _1072 - 1) + ceil32(return_data.size) + 224] == 2:
                                if mem[_2062 + 31 len 1] > 255:
                                    revert with 'NH{q', 17
                                if 2^mem[_2062 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if 2^mem[_2062 + 31 len 1] and 10000 > -1 / 2^mem[_2062 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * 2^mem[_2062 + 31 len 1] / 9980
                            else:
                                if mem[(32 * _1072 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2062 + 31 len 1] >= 78 and mem[(32 * _1072 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2062 + 31 len 1] >= 32:
                                    s = mem[(32 * _1072 - 1) + ceil32(return_data.size) + 224]
                                    t = 1
                                    idx = mem[_2062 + 31 len 1]
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
                                    if t * s and 10000 > -1 / t * s:
                                        revert with 'NH{q', 17
                                    return (10000 * t * s / 9980)
                                if mem[(32 * _1072 - 1) + ceil32(return_data.size) + 224]^mem[_2062 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if mem[(32 * _1072 - 1) + ceil32(return_data.size) + 224]^mem[_2062 + 31 len 1] and 10000 > -1 / mem[(32 * _1072 - 1) + ceil32(return_data.size) + 224]^mem[_2062 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1072 - 1) + ceil32(return_data.size) + 224]^mem[_2062 + 31 len 1] / 9980
                        else:
                            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[196] = 1
                            mem[228] = 64
                            mem[260] = 2
                            idx = 0
                            s = 128
                            t = 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _1913 = mem[192 len 4], 0
                            require mem[192 len 4], 0 <= test266151307()
                            require mem[192 len 4], 0 + 223 < return_data.size + 192
                            _1935 = mem[mem[192 len 4], 0 + 192]
                            if mem[mem[192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                            require _1913 + (32 * _1935) + 32 <= return_data.size
                            idx = 0
                            s = _1913 + 224
                            t = ceil32(return_data.size) + 224
                            while idx < _1935:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1935 < 1:
                                revert with 'NH{q', 17
                            if _1935 - 1 >= _1935:
                                revert with 'NH{q', 50
                            require ext_code.size(arg1)
                            staticcall arg1.decimals() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2639 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2639] == mem[_2639 + 31 len 1]
                            if not mem[_2639 + 31 len 1]:
                                return 1
                            if not mem[(32 * _1935 - 1) + ceil32(return_data.size) + 224]:
                                return 0
                            if mem[(32 * _1935 - 1) + ceil32(return_data.size) + 224] == 1:
                                return 1
                            if mem[(32 * _1935 - 1) + ceil32(return_data.size) + 224] == 2:
                                if mem[_2639 + 31 len 1] > 255:
                                    revert with 'NH{q', 17
                                if 2^mem[_2639 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if 2^mem[_2639 + 31 len 1] and 10000 > -1 / 2^mem[_2639 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * 2^mem[_2639 + 31 len 1] / 9980
                            else:
                                if mem[(32 * _1935 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2639 + 31 len 1] >= 78 and mem[(32 * _1935 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2639 + 31 len 1] >= 32:
                                    s = mem[(32 * _1935 - 1) + ceil32(return_data.size) + 224]
                                    t = 1
                                    idx = mem[_2639 + 31 len 1]
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
                                    if t * s and 10000 > -1 / t * s:
                                        revert with 'NH{q', 17
                                    return (10000 * t * s / 9980)
                                if mem[(32 * _1935 - 1) + ceil32(return_data.size) + 224]^mem[_2639 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if mem[(32 * _1935 - 1) + ceil32(return_data.size) + 224]^mem[_2639 + 31 len 1] and 10000 > -1 / mem[(32 * _1935 - 1) + ceil32(return_data.size) + 224]^mem[_2639 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1935 - 1) + ceil32(return_data.size) + 224]^mem[_2639 + 31 len 1] / 9980
                else:
                    mem[96] = 3
                    mem[128] = arg1
                    mem[160] = wethAddress
                    mem[192] = wethAddress
                    mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[228] = 1
                    mem[260] = 64
                    mem[292] = 3
                    if secondaryRouterAddress == stor9:
                        idx = 0
                        s = 128
                        t = 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=3, data=mem[324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1047 = mem[224 len 4], 0
                        require mem[224 len 4], 0 <= test266151307()
                        require mem[224 len 4], 0 + 255 < return_data.size + 224
                        _1069 = mem[mem[224 len 4], 0 + 224]
                        if mem[mem[224 len 4], 0 + 224] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                        require _1047 + (32 * _1069) + 32 <= return_data.size
                        idx = 0
                        s = _1047 + 256
                        t = ceil32(return_data.size) + 256
                        while idx < _1069:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1069 < 1:
                            revert with 'NH{q', 17
                        if _1069 - 1 >= _1069:
                            revert with 'NH{q', 50
                        require ext_code.size(arg1)
                        staticcall arg1.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1993 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1993] == mem[_1993 + 31 len 1]
                        if not mem[_1993 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1069 - 1) + ceil32(return_data.size) + 256]:
                            return 0
                        if mem[(32 * _1069 - 1) + ceil32(return_data.size) + 256] == 1:
                            return 1
                        if mem[(32 * _1069 - 1) + ceil32(return_data.size) + 256] == 2:
                            if mem[_1993 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_1993 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_1993 + 31 len 1] and 10000 > -1 / 2^mem[_1993 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_1993 + 31 len 1] / 9960
                        else:
                            if mem[(32 * _1069 - 1) + ceil32(return_data.size) + 256] >= 11 or mem[_1993 + 31 len 1] >= 78 and mem[(32 * _1069 - 1) + ceil32(return_data.size) + 256] >= 307 or mem[_1993 + 31 len 1] >= 32:
                                s = mem[(32 * _1069 - 1) + ceil32(return_data.size) + 256]
                                t = 1
                                idx = mem[_1993 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9960)
                            if mem[(32 * _1069 - 1) + ceil32(return_data.size) + 256]^mem[_1993 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1069 - 1) + ceil32(return_data.size) + 256]^mem[_1993 + 31 len 1] and 10000 > -1 / mem[(32 * _1069 - 1) + ceil32(return_data.size) + 256]^mem[_1993 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1069 - 1) + ceil32(return_data.size) + 256]^mem[_1993 + 31 len 1] / 9960
                    else:
                        idx = 0
                        s = 128
                        t = 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=3, data=mem[324 len 96])
                        if ext_call.success:
                            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 224
                            require return_data.size >= 32
                            _1048 = mem[224 len 4], 0
                            require mem[224 len 4], 0 <= test266151307()
                            require mem[224 len 4], 0 + 255 < return_data.size + 224
                            _1070 = mem[mem[224 len 4], 0 + 224]
                            if mem[mem[224 len 4], 0 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                            require _1048 + (32 * _1070) + 32 <= return_data.size
                            idx = 0
                            s = _1048 + 256
                            t = ceil32(return_data.size) + 256
                            while idx < _1070:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1070 < 1:
                                revert with 'NH{q', 17
                            if _1070 - 1 >= _1070:
                                revert with 'NH{q', 50
                            require ext_code.size(arg1)
                            staticcall arg1.decimals() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2060 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2060] == mem[_2060 + 31 len 1]
                            if not mem[_2060 + 31 len 1]:
                                return 1
                            if not mem[(32 * _1070 - 1) + ceil32(return_data.size) + 256]:
                                return 0
                            if mem[(32 * _1070 - 1) + ceil32(return_data.size) + 256] == 1:
                                return 1
                            if mem[(32 * _1070 - 1) + ceil32(return_data.size) + 256] == 2:
                                if mem[_2060 + 31 len 1] > 255:
                                    revert with 'NH{q', 17
                                if 2^mem[_2060 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if 2^mem[_2060 + 31 len 1] and 10000 > -1 / 2^mem[_2060 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * 2^mem[_2060 + 31 len 1] / 9960
                            else:
                                if mem[(32 * _1070 - 1) + ceil32(return_data.size) + 256] >= 11 or mem[_2060 + 31 len 1] >= 78 and mem[(32 * _1070 - 1) + ceil32(return_data.size) + 256] >= 307 or mem[_2060 + 31 len 1] >= 32:
                                    s = mem[(32 * _1070 - 1) + ceil32(return_data.size) + 256]
                                    t = 1
                                    idx = mem[_2060 + 31 len 1]
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
                                    if t * s and 10000 > -1 / t * s:
                                        revert with 'NH{q', 17
                                    return (10000 * t * s / 9960)
                                if mem[(32 * _1070 - 1) + ceil32(return_data.size) + 256]^mem[_2060 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if mem[(32 * _1070 - 1) + ceil32(return_data.size) + 256]^mem[_2060 + 31 len 1] and 10000 > -1 / mem[(32 * _1070 - 1) + ceil32(return_data.size) + 256]^mem[_2060 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1070 - 1) + ceil32(return_data.size) + 256]^mem[_2060 + 31 len 1] / 9960
                        else:
                            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[228] = 1
                            mem[260] = 64
                            mem[292] = 3
                            idx = 0
                            s = 128
                            t = 324
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[324 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 224
                            require return_data.size >= 32
                            _1912 = mem[224 len 4], 0
                            require mem[224 len 4], 0 <= test266151307()
                            require mem[224 len 4], 0 + 255 < return_data.size + 224
                            _1934 = mem[mem[224 len 4], 0 + 224]
                            if mem[mem[224 len 4], 0 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                            require _1912 + (32 * _1934) + 32 <= return_data.size
                            idx = 0
                            s = _1912 + 256
                            t = ceil32(return_data.size) + 256
                            while idx < _1934:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1934 < 1:
                                revert with 'NH{q', 17
                            if _1934 - 1 >= _1934:
                                revert with 'NH{q', 50
                            _2613 = mem[(32 * _1934 - 1) + ceil32(return_data.size) + 256]
                            require ext_code.size(arg1)
                            staticcall arg1.decimals() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2638 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2638] == mem[_2638 + 31 len 1]
                            if not mem[_2638 + 31 len 1]:
                                return 1
                            if not _2613:
                                return 0
                            if _2613 == 1:
                                return 1
                            if _2613 == 2:
                                if mem[_2638 + 31 len 1] > 255:
                                    revert with 'NH{q', 17
                                if 2^mem[_2638 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if 2^mem[_2638 + 31 len 1] and 10000 > -1 / 2^mem[_2638 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * 2^mem[_2638 + 31 len 1] / 9960
                            else:
                                if _2613 >= 11 or mem[_2638 + 31 len 1] >= 78 and _2613 >= 307 or mem[_2638 + 31 len 1] >= 32:
                                    s = _2613
                                    t = 1
                                    idx = mem[_2638 + 31 len 1]
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
                                    if t * s and 10000 > -1 / t * s:
                                        revert with 'NH{q', 17
                                    return (10000 * t * s / 9960)
                                if _2613^mem[_2638 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if _2613^mem[_2638 + 31 len 1] and 10000 > -1 / _2613^mem[_2638 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * _2613^mem[_2638 + 31 len 1] / 9960
    return memory
      from mem[64]
       len 32
}

function getPriceFromRouterUsdc(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == stor8:
        if usdcAddress == stor8:
            if wethAddress == wethAddress:
                mem[96] = 2
                mem[128] = wethAddress
                mem[160] = wethAddress
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 1
                mem[228] = 64
                mem[260] = 2
                if secondaryRouterAddress == stor9:
                    idx = 0
                    s = 128
                    t = 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _1057 = mem[192 len 4], 0
                    require mem[192 len 4], 0 <= test266151307()
                    require mem[192 len 4], 0 + 223 < return_data.size + 192
                    _1079 = mem[mem[192 len 4], 0 + 192]
                    if mem[mem[192 len 4], 0 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                    require _1057 + (32 * _1079) + 32 <= return_data.size
                    idx = 0
                    s = _1057 + 224
                    t = ceil32(return_data.size) + 224
                    while idx < _1079:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if _1079 < 1:
                        revert with 'NH{q', 17
                    if _1079 - 1 >= _1079:
                        revert with 'NH{q', 50
                    require ext_code.size(wethAddress)
                    staticcall wethAddress.decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2003 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2003] == mem[_2003 + 31 len 1]
                    if not mem[_2003 + 31 len 1]:
                        return 1
                    if not mem[(32 * _1079 - 1) + ceil32(return_data.size) + 224]:
                        return 0
                    if mem[(32 * _1079 - 1) + ceil32(return_data.size) + 224] == 1:
                        return 1
                    if mem[(32 * _1079 - 1) + ceil32(return_data.size) + 224] == 2:
                        if mem[_2003 + 31 len 1] > 255:
                            revert with 'NH{q', 17
                        if 2^mem[_2003 + 31 len 1] > -1:
                            revert with 'NH{q', 17
                        if 2^mem[_2003 + 31 len 1] and 10000 > -1 / 2^mem[_2003 + 31 len 1]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * 2^mem[_2003 + 31 len 1] / 9980
                    else:
                        if mem[(32 * _1079 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2003 + 31 len 1] >= 78 and mem[(32 * _1079 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2003 + 31 len 1] >= 32:
                            s = mem[(32 * _1079 - 1) + ceil32(return_data.size) + 224]
                            t = 1
                            idx = mem[_2003 + 31 len 1]
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
                            if t * s and 10000 > -1 / t * s:
                                revert with 'NH{q', 17
                            return (10000 * t * s / 9980)
                        if mem[(32 * _1079 - 1) + ceil32(return_data.size) + 224]^mem[_2003 + 31 len 1] > -1:
                            revert with 'NH{q', 17
                        if mem[(32 * _1079 - 1) + ceil32(return_data.size) + 224]^mem[_2003 + 31 len 1] and 10000 > -1 / mem[(32 * _1079 - 1) + ceil32(return_data.size) + 224]^mem[_2003 + 31 len 1]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * mem[(32 * _1079 - 1) + ceil32(return_data.size) + 224]^mem[_2003 + 31 len 1] / 9980
                else:
                    idx = 0
                    s = 128
                    t = 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=2, data=mem[292 len 64])
                    if ext_call.success:
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1058 = mem[192 len 4], 0
                        require mem[192 len 4], 0 <= test266151307()
                        require mem[192 len 4], 0 + 223 < return_data.size + 192
                        _1080 = mem[mem[192 len 4], 0 + 192]
                        if mem[mem[192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                        require _1058 + (32 * _1080) + 32 <= return_data.size
                        idx = 0
                        s = _1058 + 224
                        t = ceil32(return_data.size) + 224
                        while idx < _1080:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1080 < 1:
                            revert with 'NH{q', 17
                        if _1080 - 1 >= _1080:
                            revert with 'NH{q', 50
                        _2044 = mem[(32 * _1080 - 1) + ceil32(return_data.size) + 224]
                        require ext_code.size(wethAddress)
                        staticcall wethAddress.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2070 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2070] == mem[_2070 + 31 len 1]
                        if not mem[_2070 + 31 len 1]:
                            return 1
                        if not _2044:
                            return 0
                        if _2044 == 1:
                            return 1
                        if _2044 == 2:
                            if mem[_2070 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_2070 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_2070 + 31 len 1] and 10000 > -1 / 2^mem[_2070 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_2070 + 31 len 1] / 9980
                        else:
                            if _2044 >= 11 or mem[_2070 + 31 len 1] >= 78 and _2044 >= 307 or mem[_2070 + 31 len 1] >= 32:
                                s = _2044
                                t = 1
                                idx = mem[_2070 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9980)
                            if _2044^mem[_2070 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if _2044^mem[_2070 + 31 len 1] and 10000 > -1 / _2044^mem[_2070 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * _2044^mem[_2070 + 31 len 1] / 9980
                    else:
                        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[196] = 1
                        mem[228] = 64
                        mem[260] = 2
                        idx = 0
                        s = 128
                        t = 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor7)
                        staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1917 = mem[192 len 4], 0
                        require mem[192 len 4], 0 <= test266151307()
                        require mem[192 len 4], 0 + 223 < return_data.size + 192
                        _1939 = mem[mem[192 len 4], 0 + 192]
                        if mem[mem[192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                        require _1917 + (32 * _1939) + 32 <= return_data.size
                        idx = 0
                        s = _1917 + 224
                        t = ceil32(return_data.size) + 224
                        while idx < _1939:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1939 < 1:
                            revert with 'NH{q', 17
                        if _1939 - 1 >= _1939:
                            revert with 'NH{q', 50
                        require ext_code.size(wethAddress)
                        staticcall wethAddress.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2643 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2643] == mem[_2643 + 31 len 1]
                        if not mem[_2643 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1939 - 1) + ceil32(return_data.size) + 224]:
                            return 0
                        if mem[(32 * _1939 - 1) + ceil32(return_data.size) + 224] == 1:
                            return 1
                        if mem[(32 * _1939 - 1) + ceil32(return_data.size) + 224] == 2:
                            if mem[_2643 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_2643 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_2643 + 31 len 1] and 10000 > -1 / 2^mem[_2643 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_2643 + 31 len 1] / 9980
                        else:
                            if mem[(32 * _1939 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2643 + 31 len 1] >= 78 and mem[(32 * _1939 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2643 + 31 len 1] >= 32:
                                s = mem[(32 * _1939 - 1) + ceil32(return_data.size) + 224]
                                t = 1
                                idx = mem[_2643 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9980)
                            if mem[(32 * _1939 - 1) + ceil32(return_data.size) + 224]^mem[_2643 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1939 - 1) + ceil32(return_data.size) + 224]^mem[_2643 + 31 len 1] and 10000 > -1 / mem[(32 * _1939 - 1) + ceil32(return_data.size) + 224]^mem[_2643 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1939 - 1) + ceil32(return_data.size) + 224]^mem[_2643 + 31 len 1] / 9980
            else:
                mem[96] = 3
                mem[128] = wethAddress
                mem[160] = wethAddress
                mem[192] = wethAddress
                mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[228] = 1
                mem[260] = 64
                mem[292] = 3
                if secondaryRouterAddress == stor9:
                    idx = 0
                    s = 128
                    t = 324
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=3, data=mem[324 len 96])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _1059 = mem[224 len 4], 0
                    require mem[224 len 4], 0 <= test266151307()
                    require mem[224 len 4], 0 + 255 < return_data.size + 224
                    _1081 = mem[mem[224 len 4], 0 + 224]
                    if mem[mem[224 len 4], 0 + 224] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                    require _1059 + (32 * _1081) + 32 <= return_data.size
                    idx = 0
                    s = _1059 + 256
                    t = ceil32(return_data.size) + 256
                    while idx < _1081:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if _1081 < 1:
                        revert with 'NH{q', 17
                    if _1081 - 1 >= _1081:
                        revert with 'NH{q', 50
                    require ext_code.size(wethAddress)
                    staticcall wethAddress.decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2005 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2005] == mem[_2005 + 31 len 1]
                    if not mem[_2005 + 31 len 1]:
                        return 1
                    if not mem[(32 * _1081 - 1) + ceil32(return_data.size) + 256]:
                        return 0
                    if mem[(32 * _1081 - 1) + ceil32(return_data.size) + 256] == 1:
                        return 1
                    if mem[(32 * _1081 - 1) + ceil32(return_data.size) + 256] == 2:
                        if mem[_2005 + 31 len 1] > 255:
                            revert with 'NH{q', 17
                        if 2^mem[_2005 + 31 len 1] > -1:
                            revert with 'NH{q', 17
                        if 2^mem[_2005 + 31 len 1] and 10000 > -1 / 2^mem[_2005 + 31 len 1]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * 2^mem[_2005 + 31 len 1] / 9960
                    else:
                        if mem[(32 * _1081 - 1) + ceil32(return_data.size) + 256] >= 11 or mem[_2005 + 31 len 1] >= 78 and mem[(32 * _1081 - 1) + ceil32(return_data.size) + 256] >= 307 or mem[_2005 + 31 len 1] >= 32:
                            s = mem[(32 * _1081 - 1) + ceil32(return_data.size) + 256]
                            t = 1
                            idx = mem[_2005 + 31 len 1]
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
                            if t * s and 10000 > -1 / t * s:
                                revert with 'NH{q', 17
                            return (10000 * t * s / 9960)
                        if mem[(32 * _1081 - 1) + ceil32(return_data.size) + 256]^mem[_2005 + 31 len 1] > -1:
                            revert with 'NH{q', 17
                        if mem[(32 * _1081 - 1) + ceil32(return_data.size) + 256]^mem[_2005 + 31 len 1] and 10000 > -1 / mem[(32 * _1081 - 1) + ceil32(return_data.size) + 256]^mem[_2005 + 31 len 1]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * mem[(32 * _1081 - 1) + ceil32(return_data.size) + 256]^mem[_2005 + 31 len 1] / 9960
                else:
                    idx = 0
                    s = 128
                    t = 324
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=3, data=mem[324 len 96])
                    if ext_call.success:
                        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1060 = mem[224 len 4], 0
                        require mem[224 len 4], 0 <= test266151307()
                        require mem[224 len 4], 0 + 255 < return_data.size + 224
                        _1082 = mem[mem[224 len 4], 0 + 224]
                        if mem[mem[224 len 4], 0 + 224] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                        require _1060 + (32 * _1082) + 32 <= return_data.size
                        idx = 0
                        s = _1060 + 256
                        t = ceil32(return_data.size) + 256
                        while idx < _1082:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1082 < 1:
                            revert with 'NH{q', 17
                        if _1082 - 1 >= _1082:
                            revert with 'NH{q', 50
                        require ext_code.size(wethAddress)
                        staticcall wethAddress.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2072 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2072] == mem[_2072 + 31 len 1]
                        if not mem[_2072 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1082 - 1) + ceil32(return_data.size) + 256]:
                            return 0
                        if mem[(32 * _1082 - 1) + ceil32(return_data.size) + 256] == 1:
                            return 1
                        if mem[(32 * _1082 - 1) + ceil32(return_data.size) + 256] == 2:
                            if mem[_2072 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_2072 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_2072 + 31 len 1] and 10000 > -1 / 2^mem[_2072 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_2072 + 31 len 1] / 9960
                        else:
                            if mem[(32 * _1082 - 1) + ceil32(return_data.size) + 256] >= 11 or mem[_2072 + 31 len 1] >= 78 and mem[(32 * _1082 - 1) + ceil32(return_data.size) + 256] >= 307 or mem[_2072 + 31 len 1] >= 32:
                                s = mem[(32 * _1082 - 1) + ceil32(return_data.size) + 256]
                                t = 1
                                idx = mem[_2072 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9960)
                            if mem[(32 * _1082 - 1) + ceil32(return_data.size) + 256]^mem[_2072 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1082 - 1) + ceil32(return_data.size) + 256]^mem[_2072 + 31 len 1] and 10000 > -1 / mem[(32 * _1082 - 1) + ceil32(return_data.size) + 256]^mem[_2072 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1082 - 1) + ceil32(return_data.size) + 256]^mem[_2072 + 31 len 1] / 9960
                    else:
                        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[228] = 1
                        mem[260] = 64
                        mem[292] = 3
                        idx = 0
                        s = 128
                        t = 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor7)
                        staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=3, data=mem[324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1918 = mem[224 len 4], 0
                        require mem[224 len 4], 0 <= test266151307()
                        require mem[224 len 4], 0 + 255 < return_data.size + 224
                        _1940 = mem[mem[224 len 4], 0 + 224]
                        if mem[mem[224 len 4], 0 + 224] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                        require _1918 + (32 * _1940) + 32 <= return_data.size
                        idx = 0
                        s = _1918 + 256
                        t = ceil32(return_data.size) + 256
                        while idx < _1940:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1940 < 1:
                            revert with 'NH{q', 17
                        if _1940 - 1 >= _1940:
                            revert with 'NH{q', 50
                        require ext_code.size(wethAddress)
                        staticcall wethAddress.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2644 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2644] == mem[_2644 + 31 len 1]
                        if not mem[_2644 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1940 - 1) + ceil32(return_data.size) + 256]:
                            return 0
                        if mem[(32 * _1940 - 1) + ceil32(return_data.size) + 256] == 1:
                            return 1
                        if mem[(32 * _1940 - 1) + ceil32(return_data.size) + 256] == 2:
                            if mem[_2644 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_2644 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_2644 + 31 len 1] and 10000 > -1 / 2^mem[_2644 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_2644 + 31 len 1] / 9960
                        else:
                            if mem[(32 * _1940 - 1) + ceil32(return_data.size) + 256] >= 11 or mem[_2644 + 31 len 1] >= 78 and mem[(32 * _1940 - 1) + ceil32(return_data.size) + 256] >= 307 or mem[_2644 + 31 len 1] >= 32:
                                s = mem[(32 * _1940 - 1) + ceil32(return_data.size) + 256]
                                t = 1
                                idx = mem[_2644 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9960)
                            if mem[(32 * _1940 - 1) + ceil32(return_data.size) + 256]^mem[_2644 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1940 - 1) + ceil32(return_data.size) + 256]^mem[_2644 + 31 len 1] and 10000 > -1 / mem[(32 * _1940 - 1) + ceil32(return_data.size) + 256]^mem[_2644 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1940 - 1) + ceil32(return_data.size) + 256]^mem[_2644 + 31 len 1] / 9960
        else:
            if wethAddress == wethAddress:
                mem[96] = 2
                mem[128] = wethAddress
                mem[160] = usdcAddress
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 1
                mem[228] = 64
                mem[260] = 2
                if secondaryRouterAddress == stor9:
                    idx = 0
                    s = 128
                    t = 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _1051 = mem[192 len 4], 0
                    require mem[192 len 4], 0 <= test266151307()
                    require mem[192 len 4], 0 + 223 < return_data.size + 192
                    _1073 = mem[mem[192 len 4], 0 + 192]
                    if mem[mem[192 len 4], 0 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                    require _1051 + (32 * _1073) + 32 <= return_data.size
                    idx = 0
                    s = _1051 + 224
                    t = ceil32(return_data.size) + 224
                    while idx < _1073:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if _1073 < 1:
                        revert with 'NH{q', 17
                    if _1073 - 1 >= _1073:
                        revert with 'NH{q', 50
                    require ext_code.size(wethAddress)
                    staticcall wethAddress.decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1997 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1997] == mem[_1997 + 31 len 1]
                    if not mem[_1997 + 31 len 1]:
                        return 1
                    if not mem[(32 * _1073 - 1) + ceil32(return_data.size) + 224]:
                        return 0
                    if mem[(32 * _1073 - 1) + ceil32(return_data.size) + 224] == 1:
                        return 1
                    if mem[(32 * _1073 - 1) + ceil32(return_data.size) + 224] == 2:
                        if mem[_1997 + 31 len 1] > 255:
                            revert with 'NH{q', 17
                        if 2^mem[_1997 + 31 len 1] > -1:
                            revert with 'NH{q', 17
                        if 2^mem[_1997 + 31 len 1] and 10000 > -1 / 2^mem[_1997 + 31 len 1]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * 2^mem[_1997 + 31 len 1] / 9980
                    else:
                        if mem[(32 * _1073 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_1997 + 31 len 1] >= 78 and mem[(32 * _1073 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_1997 + 31 len 1] >= 32:
                            s = mem[(32 * _1073 - 1) + ceil32(return_data.size) + 224]
                            t = 1
                            idx = mem[_1997 + 31 len 1]
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
                            if t * s and 10000 > -1 / t * s:
                                revert with 'NH{q', 17
                            return (10000 * t * s / 9980)
                        if mem[(32 * _1073 - 1) + ceil32(return_data.size) + 224]^mem[_1997 + 31 len 1] > -1:
                            revert with 'NH{q', 17
                        if mem[(32 * _1073 - 1) + ceil32(return_data.size) + 224]^mem[_1997 + 31 len 1] and 10000 > -1 / mem[(32 * _1073 - 1) + ceil32(return_data.size) + 224]^mem[_1997 + 31 len 1]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * mem[(32 * _1073 - 1) + ceil32(return_data.size) + 224]^mem[_1997 + 31 len 1] / 9980
                else:
                    idx = 0
                    s = 128
                    t = 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=2, data=mem[292 len 64])
                    if ext_call.success:
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1052 = mem[192 len 4], 0
                        require mem[192 len 4], 0 <= test266151307()
                        require mem[192 len 4], 0 + 223 < return_data.size + 192
                        _1074 = mem[mem[192 len 4], 0 + 192]
                        if mem[mem[192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                        require _1052 + (32 * _1074) + 32 <= return_data.size
                        idx = 0
                        s = _1052 + 224
                        t = ceil32(return_data.size) + 224
                        while idx < _1074:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1074 < 1:
                            revert with 'NH{q', 17
                        if _1074 - 1 >= _1074:
                            revert with 'NH{q', 50
                        require ext_code.size(wethAddress)
                        staticcall wethAddress.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2064 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2064] == mem[_2064 + 31 len 1]
                        if not mem[_2064 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1074 - 1) + ceil32(return_data.size) + 224]:
                            return 0
                        if mem[(32 * _1074 - 1) + ceil32(return_data.size) + 224] == 1:
                            return 1
                        if mem[(32 * _1074 - 1) + ceil32(return_data.size) + 224] == 2:
                            if mem[_2064 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_2064 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_2064 + 31 len 1] and 10000 > -1 / 2^mem[_2064 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_2064 + 31 len 1] / 9980
                        else:
                            if mem[(32 * _1074 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2064 + 31 len 1] >= 78 and mem[(32 * _1074 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2064 + 31 len 1] >= 32:
                                s = mem[(32 * _1074 - 1) + ceil32(return_data.size) + 224]
                                t = 1
                                idx = mem[_2064 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9980)
                            if mem[(32 * _1074 - 1) + ceil32(return_data.size) + 224]^mem[_2064 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1074 - 1) + ceil32(return_data.size) + 224]^mem[_2064 + 31 len 1] and 10000 > -1 / mem[(32 * _1074 - 1) + ceil32(return_data.size) + 224]^mem[_2064 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1074 - 1) + ceil32(return_data.size) + 224]^mem[_2064 + 31 len 1] / 9980
                    else:
                        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[196] = 1
                        mem[228] = 64
                        mem[260] = 2
                        idx = 0
                        s = 128
                        t = 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor7)
                        staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1914 = mem[192 len 4], 0
                        require mem[192 len 4], 0 <= test266151307()
                        require mem[192 len 4], 0 + 223 < return_data.size + 192
                        _1936 = mem[mem[192 len 4], 0 + 192]
                        if mem[mem[192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                        require _1914 + (32 * _1936) + 32 <= return_data.size
                        idx = 0
                        s = _1914 + 224
                        t = ceil32(return_data.size) + 224
                        while idx < _1936:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1936 < 1:
                            revert with 'NH{q', 17
                        if _1936 - 1 >= _1936:
                            revert with 'NH{q', 50
                        _2619 = mem[(32 * _1936 - 1) + ceil32(return_data.size) + 224]
                        require ext_code.size(wethAddress)
                        staticcall wethAddress.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2640 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2640] == mem[_2640 + 31 len 1]
                        if not mem[_2640 + 31 len 1]:
                            return 1
                        if not _2619:
                            return 0
                        if _2619 == 1:
                            return 1
                        if _2619 == 2:
                            if mem[_2640 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_2640 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_2640 + 31 len 1] and 10000 > -1 / 2^mem[_2640 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_2640 + 31 len 1] / 9980
                        else:
                            if _2619 >= 11 or mem[_2640 + 31 len 1] >= 78 and _2619 >= 307 or mem[_2640 + 31 len 1] >= 32:
                                s = _2619
                                t = 1
                                idx = mem[_2640 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9980)
                            if _2619^mem[_2640 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if _2619^mem[_2640 + 31 len 1] and 10000 > -1 / _2619^mem[_2640 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * _2619^mem[_2640 + 31 len 1] / 9980
            else:
                if usdcAddress == wethAddress:
                    mem[96] = 2
                    mem[128] = wethAddress
                    mem[160] = usdcAddress
                    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[196] = 1
                    mem[228] = 64
                    mem[260] = 2
                    if secondaryRouterAddress == stor9:
                        idx = 0
                        s = 128
                        t = 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1055 = mem[192 len 4], 0
                        require mem[192 len 4], 0 <= test266151307()
                        require mem[192 len 4], 0 + 223 < return_data.size + 192
                        _1077 = mem[mem[192 len 4], 0 + 192]
                        if mem[mem[192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                        require _1055 + (32 * _1077) + 32 <= return_data.size
                        idx = 0
                        s = _1055 + 224
                        t = ceil32(return_data.size) + 224
                        while idx < _1077:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1077 < 1:
                            revert with 'NH{q', 17
                        if _1077 - 1 >= _1077:
                            revert with 'NH{q', 50
                        require ext_code.size(wethAddress)
                        staticcall wethAddress.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2001 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2001] == mem[_2001 + 31 len 1]
                        if not mem[_2001 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1077 - 1) + ceil32(return_data.size) + 224]:
                            return 0
                        if mem[(32 * _1077 - 1) + ceil32(return_data.size) + 224] == 1:
                            return 1
                        if mem[(32 * _1077 - 1) + ceil32(return_data.size) + 224] == 2:
                            if mem[_2001 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_2001 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_2001 + 31 len 1] and 10000 > -1 / 2^mem[_2001 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_2001 + 31 len 1] / 9980
                        else:
                            if mem[(32 * _1077 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2001 + 31 len 1] >= 78 and mem[(32 * _1077 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2001 + 31 len 1] >= 32:
                                s = mem[(32 * _1077 - 1) + ceil32(return_data.size) + 224]
                                t = 1
                                idx = mem[_2001 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9980)
                            if mem[(32 * _1077 - 1) + ceil32(return_data.size) + 224]^mem[_2001 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1077 - 1) + ceil32(return_data.size) + 224]^mem[_2001 + 31 len 1] and 10000 > -1 / mem[(32 * _1077 - 1) + ceil32(return_data.size) + 224]^mem[_2001 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1077 - 1) + ceil32(return_data.size) + 224]^mem[_2001 + 31 len 1] / 9980
                    else:
                        idx = 0
                        s = 128
                        t = 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[292 len 64])
                        if ext_call.success:
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _1056 = mem[192 len 4], 0
                            require mem[192 len 4], 0 <= test266151307()
                            require mem[192 len 4], 0 + 223 < return_data.size + 192
                            _1078 = mem[mem[192 len 4], 0 + 192]
                            if mem[mem[192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                            require _1056 + (32 * _1078) + 32 <= return_data.size
                            idx = 0
                            s = _1056 + 224
                            t = ceil32(return_data.size) + 224
                            while idx < _1078:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1078 < 1:
                                revert with 'NH{q', 17
                            if _1078 - 1 >= _1078:
                                revert with 'NH{q', 50
                            require ext_code.size(wethAddress)
                            staticcall wethAddress.decimals() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2068 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2068] == mem[_2068 + 31 len 1]
                            if not mem[_2068 + 31 len 1]:
                                return 1
                            if not mem[(32 * _1078 - 1) + ceil32(return_data.size) + 224]:
                                return 0
                            if mem[(32 * _1078 - 1) + ceil32(return_data.size) + 224] == 1:
                                return 1
                            if mem[(32 * _1078 - 1) + ceil32(return_data.size) + 224] == 2:
                                if mem[_2068 + 31 len 1] > 255:
                                    revert with 'NH{q', 17
                                if 2^mem[_2068 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if 2^mem[_2068 + 31 len 1] and 10000 > -1 / 2^mem[_2068 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * 2^mem[_2068 + 31 len 1] / 9980
                            else:
                                if mem[(32 * _1078 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2068 + 31 len 1] >= 78 and mem[(32 * _1078 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2068 + 31 len 1] >= 32:
                                    s = mem[(32 * _1078 - 1) + ceil32(return_data.size) + 224]
                                    t = 1
                                    idx = mem[_2068 + 31 len 1]
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
                                    if t * s and 10000 > -1 / t * s:
                                        revert with 'NH{q', 17
                                    return (10000 * t * s / 9980)
                                if mem[(32 * _1078 - 1) + ceil32(return_data.size) + 224]^mem[_2068 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if mem[(32 * _1078 - 1) + ceil32(return_data.size) + 224]^mem[_2068 + 31 len 1] and 10000 > -1 / mem[(32 * _1078 - 1) + ceil32(return_data.size) + 224]^mem[_2068 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1078 - 1) + ceil32(return_data.size) + 224]^mem[_2068 + 31 len 1] / 9980
                        else:
                            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[196] = 1
                            mem[228] = 64
                            mem[260] = 2
                            idx = 0
                            s = 128
                            t = 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _1916 = mem[192 len 4], 0
                            require mem[192 len 4], 0 <= test266151307()
                            require mem[192 len 4], 0 + 223 < return_data.size + 192
                            _1938 = mem[mem[192 len 4], 0 + 192]
                            if mem[mem[192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                            require _1916 + (32 * _1938) + 32 <= return_data.size
                            idx = 0
                            s = _1916 + 224
                            t = ceil32(return_data.size) + 224
                            while idx < _1938:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1938 < 1:
                                revert with 'NH{q', 17
                            if _1938 - 1 >= _1938:
                                revert with 'NH{q', 50
                            require ext_code.size(wethAddress)
                            staticcall wethAddress.decimals() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2642 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2642] == mem[_2642 + 31 len 1]
                            if not mem[_2642 + 31 len 1]:
                                return 1
                            if not mem[(32 * _1938 - 1) + ceil32(return_data.size) + 224]:
                                return 0
                            if mem[(32 * _1938 - 1) + ceil32(return_data.size) + 224] == 1:
                                return 1
                            if mem[(32 * _1938 - 1) + ceil32(return_data.size) + 224] == 2:
                                if mem[_2642 + 31 len 1] > 255:
                                    revert with 'NH{q', 17
                                if 2^mem[_2642 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if 2^mem[_2642 + 31 len 1] and 10000 > -1 / 2^mem[_2642 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * 2^mem[_2642 + 31 len 1] / 9980
                            else:
                                if mem[(32 * _1938 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2642 + 31 len 1] >= 78 and mem[(32 * _1938 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2642 + 31 len 1] >= 32:
                                    s = mem[(32 * _1938 - 1) + ceil32(return_data.size) + 224]
                                    t = 1
                                    idx = mem[_2642 + 31 len 1]
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
                                    if t * s and 10000 > -1 / t * s:
                                        revert with 'NH{q', 17
                                    return (10000 * t * s / 9980)
                                if mem[(32 * _1938 - 1) + ceil32(return_data.size) + 224]^mem[_2642 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if mem[(32 * _1938 - 1) + ceil32(return_data.size) + 224]^mem[_2642 + 31 len 1] and 10000 > -1 / mem[(32 * _1938 - 1) + ceil32(return_data.size) + 224]^mem[_2642 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1938 - 1) + ceil32(return_data.size) + 224]^mem[_2642 + 31 len 1] / 9980
                else:
                    mem[96] = 3
                    mem[128] = wethAddress
                    mem[160] = wethAddress
                    mem[192] = usdcAddress
                    mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[228] = 1
                    mem[260] = 64
                    mem[292] = 3
                    if secondaryRouterAddress == stor9:
                        idx = 0
                        s = 128
                        t = 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=3, data=mem[324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1053 = mem[224 len 4], 0
                        require mem[224 len 4], 0 <= test266151307()
                        require mem[224 len 4], 0 + 255 < return_data.size + 224
                        _1075 = mem[mem[224 len 4], 0 + 224]
                        if mem[mem[224 len 4], 0 + 224] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                        require _1053 + (32 * _1075) + 32 <= return_data.size
                        idx = 0
                        s = _1053 + 256
                        t = ceil32(return_data.size) + 256
                        while idx < _1075:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1075 < 1:
                            revert with 'NH{q', 17
                        if _1075 - 1 >= _1075:
                            revert with 'NH{q', 50
                        require ext_code.size(wethAddress)
                        staticcall wethAddress.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1999 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1999] == mem[_1999 + 31 len 1]
                        if not mem[_1999 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1075 - 1) + ceil32(return_data.size) + 256]:
                            return 0
                        if mem[(32 * _1075 - 1) + ceil32(return_data.size) + 256] == 1:
                            return 1
                        if mem[(32 * _1075 - 1) + ceil32(return_data.size) + 256] == 2:
                            if mem[_1999 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_1999 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_1999 + 31 len 1] and 10000 > -1 / 2^mem[_1999 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_1999 + 31 len 1] / 9960
                        else:
                            if mem[(32 * _1075 - 1) + ceil32(return_data.size) + 256] >= 11 or mem[_1999 + 31 len 1] >= 78 and mem[(32 * _1075 - 1) + ceil32(return_data.size) + 256] >= 307 or mem[_1999 + 31 len 1] >= 32:
                                s = mem[(32 * _1075 - 1) + ceil32(return_data.size) + 256]
                                t = 1
                                idx = mem[_1999 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9960)
                            if mem[(32 * _1075 - 1) + ceil32(return_data.size) + 256]^mem[_1999 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1075 - 1) + ceil32(return_data.size) + 256]^mem[_1999 + 31 len 1] and 10000 > -1 / mem[(32 * _1075 - 1) + ceil32(return_data.size) + 256]^mem[_1999 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1075 - 1) + ceil32(return_data.size) + 256]^mem[_1999 + 31 len 1] / 9960
                    else:
                        idx = 0
                        s = 128
                        t = 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=3, data=mem[324 len 96])
                        if ext_call.success:
                            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 224
                            require return_data.size >= 32
                            _1054 = mem[224 len 4], 0
                            require mem[224 len 4], 0 <= test266151307()
                            require mem[224 len 4], 0 + 255 < return_data.size + 224
                            _1076 = mem[mem[224 len 4], 0 + 224]
                            if mem[mem[224 len 4], 0 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                            require _1054 + (32 * _1076) + 32 <= return_data.size
                            idx = 0
                            s = _1054 + 256
                            t = ceil32(return_data.size) + 256
                            while idx < _1076:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1076 < 1:
                                revert with 'NH{q', 17
                            if _1076 - 1 >= _1076:
                                revert with 'NH{q', 50
                            require ext_code.size(wethAddress)
                            staticcall wethAddress.decimals() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2066 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2066] == mem[_2066 + 31 len 1]
                            if not mem[_2066 + 31 len 1]:
                                return 1
                            if not mem[(32 * _1076 - 1) + ceil32(return_data.size) + 256]:
                                return 0
                            if mem[(32 * _1076 - 1) + ceil32(return_data.size) + 256] == 1:
                                return 1
                            if mem[(32 * _1076 - 1) + ceil32(return_data.size) + 256] == 2:
                                if mem[_2066 + 31 len 1] > 255:
                                    revert with 'NH{q', 17
                                if 2^mem[_2066 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if 2^mem[_2066 + 31 len 1] and 10000 > -1 / 2^mem[_2066 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * 2^mem[_2066 + 31 len 1] / 9960
                            else:
                                if mem[(32 * _1076 - 1) + ceil32(return_data.size) + 256] >= 11 or mem[_2066 + 31 len 1] >= 78 and mem[(32 * _1076 - 1) + ceil32(return_data.size) + 256] >= 307 or mem[_2066 + 31 len 1] >= 32:
                                    s = mem[(32 * _1076 - 1) + ceil32(return_data.size) + 256]
                                    t = 1
                                    idx = mem[_2066 + 31 len 1]
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
                                    if t * s and 10000 > -1 / t * s:
                                        revert with 'NH{q', 17
                                    return (10000 * t * s / 9960)
                                if mem[(32 * _1076 - 1) + ceil32(return_data.size) + 256]^mem[_2066 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if mem[(32 * _1076 - 1) + ceil32(return_data.size) + 256]^mem[_2066 + 31 len 1] and 10000 > -1 / mem[(32 * _1076 - 1) + ceil32(return_data.size) + 256]^mem[_2066 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1076 - 1) + ceil32(return_data.size) + 256]^mem[_2066 + 31 len 1] / 9960
                        else:
                            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[228] = 1
                            mem[260] = 64
                            mem[292] = 3
                            idx = 0
                            s = 128
                            t = 324
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[324 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 224
                            require return_data.size >= 32
                            _1915 = mem[224 len 4], 0
                            require mem[224 len 4], 0 <= test266151307()
                            require mem[224 len 4], 0 + 255 < return_data.size + 224
                            _1937 = mem[mem[224 len 4], 0 + 224]
                            if mem[mem[224 len 4], 0 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                            require _1915 + (32 * _1937) + 32 <= return_data.size
                            idx = 0
                            s = _1915 + 256
                            t = ceil32(return_data.size) + 256
                            while idx < _1937:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1937 < 1:
                                revert with 'NH{q', 17
                            if _1937 - 1 >= _1937:
                                revert with 'NH{q', 50
                            require ext_code.size(wethAddress)
                            staticcall wethAddress.decimals() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2641 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2641] == mem[_2641 + 31 len 1]
                            if not mem[_2641 + 31 len 1]:
                                return 1
                            if not mem[(32 * _1937 - 1) + ceil32(return_data.size) + 256]:
                                return 0
                            if mem[(32 * _1937 - 1) + ceil32(return_data.size) + 256] == 1:
                                return 1
                            if mem[(32 * _1937 - 1) + ceil32(return_data.size) + 256] == 2:
                                if mem[_2641 + 31 len 1] > 255:
                                    revert with 'NH{q', 17
                                if 2^mem[_2641 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if 2^mem[_2641 + 31 len 1] and 10000 > -1 / 2^mem[_2641 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * 2^mem[_2641 + 31 len 1] / 9960
                            else:
                                if mem[(32 * _1937 - 1) + ceil32(return_data.size) + 256] >= 11 or mem[_2641 + 31 len 1] >= 78 and mem[(32 * _1937 - 1) + ceil32(return_data.size) + 256] >= 307 or mem[_2641 + 31 len 1] >= 32:
                                    s = mem[(32 * _1937 - 1) + ceil32(return_data.size) + 256]
                                    t = 1
                                    idx = mem[_2641 + 31 len 1]
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
                                    if t * s and 10000 > -1 / t * s:
                                        revert with 'NH{q', 17
                                    return (10000 * t * s / 9960)
                                if mem[(32 * _1937 - 1) + ceil32(return_data.size) + 256]^mem[_2641 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if mem[(32 * _1937 - 1) + ceil32(return_data.size) + 256]^mem[_2641 + 31 len 1] and 10000 > -1 / mem[(32 * _1937 - 1) + ceil32(return_data.size) + 256]^mem[_2641 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1937 - 1) + ceil32(return_data.size) + 256]^mem[_2641 + 31 len 1] / 9960
    else:
        if usdcAddress != stor8:
            if arg1 == wethAddress:
                mem[96] = 2
                mem[128] = arg1
                mem[160] = usdcAddress
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 1
                mem[228] = 64
                mem[260] = 2
                if secondaryRouterAddress == stor9:
                    idx = 0
                    s = 128
                    t = 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _1039 = mem[192 len 4], 0
                    require mem[192 len 4], 0 <= test266151307()
                    require mem[192 len 4], 0 + 223 < return_data.size + 192
                    _1061 = mem[mem[192 len 4], 0 + 192]
                    if mem[mem[192 len 4], 0 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                    require _1039 + (32 * _1061) + 32 <= return_data.size
                    idx = 0
                    s = _1039 + 224
                    t = ceil32(return_data.size) + 224
                    while idx < _1061:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if _1061 < 1:
                        revert with 'NH{q', 17
                    if _1061 - 1 >= _1061:
                        revert with 'NH{q', 50
                    require ext_code.size(arg1)
                    staticcall arg1.decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1985 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1985] == mem[_1985 + 31 len 1]
                    if not mem[_1985 + 31 len 1]:
                        return 1
                    if not mem[(32 * _1061 - 1) + ceil32(return_data.size) + 224]:
                        return 0
                    if mem[(32 * _1061 - 1) + ceil32(return_data.size) + 224] == 1:
                        return 1
                    if mem[(32 * _1061 - 1) + ceil32(return_data.size) + 224] == 2:
                        if mem[_1985 + 31 len 1] > 255:
                            revert with 'NH{q', 17
                        if 2^mem[_1985 + 31 len 1] > -1:
                            revert with 'NH{q', 17
                        if 2^mem[_1985 + 31 len 1] and 10000 > -1 / 2^mem[_1985 + 31 len 1]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * 2^mem[_1985 + 31 len 1] / 9980
                    else:
                        if mem[(32 * _1061 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_1985 + 31 len 1] >= 78 and mem[(32 * _1061 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_1985 + 31 len 1] >= 32:
                            s = mem[(32 * _1061 - 1) + ceil32(return_data.size) + 224]
                            t = 1
                            idx = mem[_1985 + 31 len 1]
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
                            if t * s and 10000 > -1 / t * s:
                                revert with 'NH{q', 17
                            return (10000 * t * s / 9980)
                        if mem[(32 * _1061 - 1) + ceil32(return_data.size) + 224]^mem[_1985 + 31 len 1] > -1:
                            revert with 'NH{q', 17
                        if mem[(32 * _1061 - 1) + ceil32(return_data.size) + 224]^mem[_1985 + 31 len 1] and 10000 > -1 / mem[(32 * _1061 - 1) + ceil32(return_data.size) + 224]^mem[_1985 + 31 len 1]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * mem[(32 * _1061 - 1) + ceil32(return_data.size) + 224]^mem[_1985 + 31 len 1] / 9980
                else:
                    idx = 0
                    s = 128
                    t = 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=2, data=mem[292 len 64])
                    if ext_call.success:
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1040 = mem[192 len 4], 0
                        require mem[192 len 4], 0 <= test266151307()
                        require mem[192 len 4], 0 + 223 < return_data.size + 192
                        _1062 = mem[mem[192 len 4], 0 + 192]
                        if mem[mem[192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                        require _1040 + (32 * _1062) + 32 <= return_data.size
                        idx = 0
                        s = _1040 + 224
                        t = ceil32(return_data.size) + 224
                        while idx < _1062:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1062 < 1:
                            revert with 'NH{q', 17
                        if _1062 - 1 >= _1062:
                            revert with 'NH{q', 50
                        require ext_code.size(arg1)
                        staticcall arg1.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2052 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2052] == mem[_2052 + 31 len 1]
                        if not mem[_2052 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1062 - 1) + ceil32(return_data.size) + 224]:
                            return 0
                        if mem[(32 * _1062 - 1) + ceil32(return_data.size) + 224] == 1:
                            return 1
                        if mem[(32 * _1062 - 1) + ceil32(return_data.size) + 224] == 2:
                            if mem[_2052 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_2052 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_2052 + 31 len 1] and 10000 > -1 / 2^mem[_2052 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_2052 + 31 len 1] / 9980
                        else:
                            if mem[(32 * _1062 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2052 + 31 len 1] >= 78 and mem[(32 * _1062 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2052 + 31 len 1] >= 32:
                                s = mem[(32 * _1062 - 1) + ceil32(return_data.size) + 224]
                                t = 1
                                idx = mem[_2052 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9980)
                            if mem[(32 * _1062 - 1) + ceil32(return_data.size) + 224]^mem[_2052 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1062 - 1) + ceil32(return_data.size) + 224]^mem[_2052 + 31 len 1] and 10000 > -1 / mem[(32 * _1062 - 1) + ceil32(return_data.size) + 224]^mem[_2052 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1062 - 1) + ceil32(return_data.size) + 224]^mem[_2052 + 31 len 1] / 9980
                    else:
                        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[196] = 1
                        mem[228] = 64
                        mem[260] = 2
                        idx = 0
                        s = 128
                        t = 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor7)
                        staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1908 = mem[192 len 4], 0
                        require mem[192 len 4], 0 <= test266151307()
                        require mem[192 len 4], 0 + 223 < return_data.size + 192
                        _1930 = mem[mem[192 len 4], 0 + 192]
                        if mem[mem[192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                        require _1908 + (32 * _1930) + 32 <= return_data.size
                        idx = 0
                        s = _1908 + 224
                        t = ceil32(return_data.size) + 224
                        while idx < _1930:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1930 < 1:
                            revert with 'NH{q', 17
                        if _1930 - 1 >= _1930:
                            revert with 'NH{q', 50
                        require ext_code.size(arg1)
                        staticcall arg1.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2634 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2634] == mem[_2634 + 31 len 1]
                        if not mem[_2634 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1930 - 1) + ceil32(return_data.size) + 224]:
                            return 0
                        if mem[(32 * _1930 - 1) + ceil32(return_data.size) + 224] == 1:
                            return 1
                        if mem[(32 * _1930 - 1) + ceil32(return_data.size) + 224] == 2:
                            if mem[_2634 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_2634 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_2634 + 31 len 1] and 10000 > -1 / 2^mem[_2634 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_2634 + 31 len 1] / 9980
                        else:
                            if mem[(32 * _1930 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2634 + 31 len 1] >= 78 and mem[(32 * _1930 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2634 + 31 len 1] >= 32:
                                s = mem[(32 * _1930 - 1) + ceil32(return_data.size) + 224]
                                t = 1
                                idx = mem[_2634 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9980)
                            if mem[(32 * _1930 - 1) + ceil32(return_data.size) + 224]^mem[_2634 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1930 - 1) + ceil32(return_data.size) + 224]^mem[_2634 + 31 len 1] and 10000 > -1 / mem[(32 * _1930 - 1) + ceil32(return_data.size) + 224]^mem[_2634 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1930 - 1) + ceil32(return_data.size) + 224]^mem[_2634 + 31 len 1] / 9980
            else:
                if usdcAddress == wethAddress:
                    mem[96] = 2
                    mem[128] = arg1
                    mem[160] = usdcAddress
                    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[196] = 1
                    mem[228] = 64
                    mem[260] = 2
                    if secondaryRouterAddress == stor9:
                        idx = 0
                        s = 128
                        t = 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1043 = mem[192 len 4], 0
                        require mem[192 len 4], 0 <= test266151307()
                        require mem[192 len 4], 0 + 223 < return_data.size + 192
                        _1065 = mem[mem[192 len 4], 0 + 192]
                        if mem[mem[192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                        require _1043 + (32 * _1065) + 32 <= return_data.size
                        idx = 0
                        s = _1043 + 224
                        t = ceil32(return_data.size) + 224
                        while idx < _1065:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1065 < 1:
                            revert with 'NH{q', 17
                        if _1065 - 1 >= _1065:
                            revert with 'NH{q', 50
                        require ext_code.size(arg1)
                        staticcall arg1.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1989 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1989] == mem[_1989 + 31 len 1]
                        if not mem[_1989 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1065 - 1) + ceil32(return_data.size) + 224]:
                            return 0
                        if mem[(32 * _1065 - 1) + ceil32(return_data.size) + 224] == 1:
                            return 1
                        if mem[(32 * _1065 - 1) + ceil32(return_data.size) + 224] == 2:
                            if mem[_1989 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_1989 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_1989 + 31 len 1] and 10000 > -1 / 2^mem[_1989 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_1989 + 31 len 1] / 9980
                        else:
                            if mem[(32 * _1065 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_1989 + 31 len 1] >= 78 and mem[(32 * _1065 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_1989 + 31 len 1] >= 32:
                                s = mem[(32 * _1065 - 1) + ceil32(return_data.size) + 224]
                                t = 1
                                idx = mem[_1989 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9980)
                            if mem[(32 * _1065 - 1) + ceil32(return_data.size) + 224]^mem[_1989 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1065 - 1) + ceil32(return_data.size) + 224]^mem[_1989 + 31 len 1] and 10000 > -1 / mem[(32 * _1065 - 1) + ceil32(return_data.size) + 224]^mem[_1989 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1065 - 1) + ceil32(return_data.size) + 224]^mem[_1989 + 31 len 1] / 9980
                    else:
                        idx = 0
                        s = 128
                        t = 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[292 len 64])
                        if ext_call.success:
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _1044 = mem[192 len 4], 0
                            require mem[192 len 4], 0 <= test266151307()
                            require mem[192 len 4], 0 + 223 < return_data.size + 192
                            _1066 = mem[mem[192 len 4], 0 + 192]
                            if mem[mem[192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                            require _1044 + (32 * _1066) + 32 <= return_data.size
                            idx = 0
                            s = _1044 + 224
                            t = ceil32(return_data.size) + 224
                            while idx < _1066:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1066 < 1:
                                revert with 'NH{q', 17
                            if _1066 - 1 >= _1066:
                                revert with 'NH{q', 50
                            require ext_code.size(arg1)
                            staticcall arg1.decimals() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2056 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2056] == mem[_2056 + 31 len 1]
                            if not mem[_2056 + 31 len 1]:
                                return 1
                            if not mem[(32 * _1066 - 1) + ceil32(return_data.size) + 224]:
                                return 0
                            if mem[(32 * _1066 - 1) + ceil32(return_data.size) + 224] == 1:
                                return 1
                            if mem[(32 * _1066 - 1) + ceil32(return_data.size) + 224] == 2:
                                if mem[_2056 + 31 len 1] > 255:
                                    revert with 'NH{q', 17
                                if 2^mem[_2056 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if 2^mem[_2056 + 31 len 1] and 10000 > -1 / 2^mem[_2056 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * 2^mem[_2056 + 31 len 1] / 9980
                            else:
                                if mem[(32 * _1066 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2056 + 31 len 1] >= 78 and mem[(32 * _1066 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2056 + 31 len 1] >= 32:
                                    s = mem[(32 * _1066 - 1) + ceil32(return_data.size) + 224]
                                    t = 1
                                    idx = mem[_2056 + 31 len 1]
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
                                    if t * s and 10000 > -1 / t * s:
                                        revert with 'NH{q', 17
                                    return (10000 * t * s / 9980)
                                if mem[(32 * _1066 - 1) + ceil32(return_data.size) + 224]^mem[_2056 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if mem[(32 * _1066 - 1) + ceil32(return_data.size) + 224]^mem[_2056 + 31 len 1] and 10000 > -1 / mem[(32 * _1066 - 1) + ceil32(return_data.size) + 224]^mem[_2056 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1066 - 1) + ceil32(return_data.size) + 224]^mem[_2056 + 31 len 1] / 9980
                        else:
                            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[196] = 1
                            mem[228] = 64
                            mem[260] = 2
                            idx = 0
                            s = 128
                            t = 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _1910 = mem[192 len 4], 0
                            require mem[192 len 4], 0 <= test266151307()
                            require mem[192 len 4], 0 + 223 < return_data.size + 192
                            _1932 = mem[mem[192 len 4], 0 + 192]
                            if mem[mem[192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                            require _1910 + (32 * _1932) + 32 <= return_data.size
                            idx = 0
                            s = _1910 + 224
                            t = ceil32(return_data.size) + 224
                            while idx < _1932:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1932 < 1:
                                revert with 'NH{q', 17
                            if _1932 - 1 >= _1932:
                                revert with 'NH{q', 50
                            require ext_code.size(arg1)
                            staticcall arg1.decimals() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2636 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2636] == mem[_2636 + 31 len 1]
                            if not mem[_2636 + 31 len 1]:
                                return 1
                            if not mem[(32 * _1932 - 1) + ceil32(return_data.size) + 224]:
                                return 0
                            if mem[(32 * _1932 - 1) + ceil32(return_data.size) + 224] == 1:
                                return 1
                            if mem[(32 * _1932 - 1) + ceil32(return_data.size) + 224] == 2:
                                if mem[_2636 + 31 len 1] > 255:
                                    revert with 'NH{q', 17
                                if 2^mem[_2636 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if 2^mem[_2636 + 31 len 1] and 10000 > -1 / 2^mem[_2636 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * 2^mem[_2636 + 31 len 1] / 9980
                            else:
                                if mem[(32 * _1932 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2636 + 31 len 1] >= 78 and mem[(32 * _1932 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2636 + 31 len 1] >= 32:
                                    s = mem[(32 * _1932 - 1) + ceil32(return_data.size) + 224]
                                    t = 1
                                    idx = mem[_2636 + 31 len 1]
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
                                    if t * s and 10000 > -1 / t * s:
                                        revert with 'NH{q', 17
                                    return (10000 * t * s / 9980)
                                if mem[(32 * _1932 - 1) + ceil32(return_data.size) + 224]^mem[_2636 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if mem[(32 * _1932 - 1) + ceil32(return_data.size) + 224]^mem[_2636 + 31 len 1] and 10000 > -1 / mem[(32 * _1932 - 1) + ceil32(return_data.size) + 224]^mem[_2636 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1932 - 1) + ceil32(return_data.size) + 224]^mem[_2636 + 31 len 1] / 9980
                else:
                    mem[96] = 3
                    mem[128] = arg1
                    mem[160] = wethAddress
                    mem[192] = usdcAddress
                    mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[228] = 1
                    mem[260] = 64
                    mem[292] = 3
                    if secondaryRouterAddress == stor9:
                        idx = 0
                        s = 128
                        t = 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=3, data=mem[324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1041 = mem[224 len 4], 0
                        require mem[224 len 4], 0 <= test266151307()
                        require mem[224 len 4], 0 + 255 < return_data.size + 224
                        _1063 = mem[mem[224 len 4], 0 + 224]
                        if mem[mem[224 len 4], 0 + 224] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                        require _1041 + (32 * _1063) + 32 <= return_data.size
                        idx = 0
                        s = _1041 + 256
                        t = ceil32(return_data.size) + 256
                        while idx < _1063:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1063 < 1:
                            revert with 'NH{q', 17
                        if _1063 - 1 >= _1063:
                            revert with 'NH{q', 50
                        require ext_code.size(arg1)
                        staticcall arg1.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1987 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1987] == mem[_1987 + 31 len 1]
                        if not mem[_1987 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1063 - 1) + ceil32(return_data.size) + 256]:
                            return 0
                        if mem[(32 * _1063 - 1) + ceil32(return_data.size) + 256] == 1:
                            return 1
                        if mem[(32 * _1063 - 1) + ceil32(return_data.size) + 256] == 2:
                            if mem[_1987 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_1987 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_1987 + 31 len 1] and 10000 > -1 / 2^mem[_1987 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_1987 + 31 len 1] / 9960
                        else:
                            if mem[(32 * _1063 - 1) + ceil32(return_data.size) + 256] >= 11 or mem[_1987 + 31 len 1] >= 78 and mem[(32 * _1063 - 1) + ceil32(return_data.size) + 256] >= 307 or mem[_1987 + 31 len 1] >= 32:
                                s = mem[(32 * _1063 - 1) + ceil32(return_data.size) + 256]
                                t = 1
                                idx = mem[_1987 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9960)
                            if mem[(32 * _1063 - 1) + ceil32(return_data.size) + 256]^mem[_1987 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1063 - 1) + ceil32(return_data.size) + 256]^mem[_1987 + 31 len 1] and 10000 > -1 / mem[(32 * _1063 - 1) + ceil32(return_data.size) + 256]^mem[_1987 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1063 - 1) + ceil32(return_data.size) + 256]^mem[_1987 + 31 len 1] / 9960
                    else:
                        idx = 0
                        s = 128
                        t = 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=3, data=mem[324 len 96])
                        if ext_call.success:
                            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 224
                            require return_data.size >= 32
                            _1042 = mem[224 len 4], 0
                            require mem[224 len 4], 0 <= test266151307()
                            require mem[224 len 4], 0 + 255 < return_data.size + 224
                            _1064 = mem[mem[224 len 4], 0 + 224]
                            if mem[mem[224 len 4], 0 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                            require _1042 + (32 * _1064) + 32 <= return_data.size
                            idx = 0
                            s = _1042 + 256
                            t = ceil32(return_data.size) + 256
                            while idx < _1064:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1064 < 1:
                                revert with 'NH{q', 17
                            if _1064 - 1 >= _1064:
                                revert with 'NH{q', 50
                            _2012 = mem[(32 * _1064 - 1) + ceil32(return_data.size) + 256]
                            require ext_code.size(arg1)
                            staticcall arg1.decimals() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2054 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2054] == mem[_2054 + 31 len 1]
                            if not mem[_2054 + 31 len 1]:
                                return 1
                            if not _2012:
                                return 0
                            if _2012 == 1:
                                return 1
                            if _2012 == 2:
                                if mem[_2054 + 31 len 1] > 255:
                                    revert with 'NH{q', 17
                                if 2^mem[_2054 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if 2^mem[_2054 + 31 len 1] and 10000 > -1 / 2^mem[_2054 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * 2^mem[_2054 + 31 len 1] / 9960
                            else:
                                if _2012 >= 11 or mem[_2054 + 31 len 1] >= 78 and _2012 >= 307 or mem[_2054 + 31 len 1] >= 32:
                                    s = _2012
                                    t = 1
                                    idx = mem[_2054 + 31 len 1]
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
                                    if t * s and 10000 > -1 / t * s:
                                        revert with 'NH{q', 17
                                    return (10000 * t * s / 9960)
                                if _2012^mem[_2054 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if _2012^mem[_2054 + 31 len 1] and 10000 > -1 / _2012^mem[_2054 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * _2012^mem[_2054 + 31 len 1] / 9960
                        else:
                            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[228] = 1
                            mem[260] = 64
                            mem[292] = 3
                            idx = 0
                            s = 128
                            t = 324
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[324 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 224
                            require return_data.size >= 32
                            _1909 = mem[224 len 4], 0
                            require mem[224 len 4], 0 <= test266151307()
                            require mem[224 len 4], 0 + 255 < return_data.size + 224
                            _1931 = mem[mem[224 len 4], 0 + 224]
                            if mem[mem[224 len 4], 0 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                            require _1909 + (32 * _1931) + 32 <= return_data.size
                            idx = 0
                            s = _1909 + 256
                            t = ceil32(return_data.size) + 256
                            while idx < _1931:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1931 < 1:
                                revert with 'NH{q', 17
                            if _1931 - 1 >= _1931:
                                revert with 'NH{q', 50
                            _2604 = mem[(32 * _1931 - 1) + ceil32(return_data.size) + 256]
                            require ext_code.size(arg1)
                            staticcall arg1.decimals() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2635 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2635] == mem[_2635 + 31 len 1]
                            if not mem[_2635 + 31 len 1]:
                                return 1
                            if not _2604:
                                return 0
                            if _2604 == 1:
                                return 1
                            if _2604 == 2:
                                if mem[_2635 + 31 len 1] > 255:
                                    revert with 'NH{q', 17
                                if 2^mem[_2635 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if 2^mem[_2635 + 31 len 1] and 10000 > -1 / 2^mem[_2635 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * 2^mem[_2635 + 31 len 1] / 9960
                            else:
                                if _2604 >= 11 or mem[_2635 + 31 len 1] >= 78 and _2604 >= 307 or mem[_2635 + 31 len 1] >= 32:
                                    s = _2604
                                    t = 1
                                    idx = mem[_2635 + 31 len 1]
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
                                    if t * s and 10000 > -1 / t * s:
                                        revert with 'NH{q', 17
                                    return (10000 * t * s / 9960)
                                if _2604^mem[_2635 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if _2604^mem[_2635 + 31 len 1] and 10000 > -1 / _2604^mem[_2635 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * _2604^mem[_2635 + 31 len 1] / 9960
        else:
            if arg1 == wethAddress:
                mem[96] = 2
                mem[128] = arg1
                mem[160] = wethAddress
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 1
                mem[228] = 64
                mem[260] = 2
                if secondaryRouterAddress == stor9:
                    idx = 0
                    s = 128
                    t = 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _1045 = mem[192 len 4], 0
                    require mem[192 len 4], 0 <= test266151307()
                    require mem[192 len 4], 0 + 223 < return_data.size + 192
                    _1067 = mem[mem[192 len 4], 0 + 192]
                    if mem[mem[192 len 4], 0 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                    require _1045 + (32 * _1067) + 32 <= return_data.size
                    idx = 0
                    s = _1045 + 224
                    t = ceil32(return_data.size) + 224
                    while idx < _1067:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if _1067 < 1:
                        revert with 'NH{q', 17
                    if _1067 - 1 >= _1067:
                        revert with 'NH{q', 50
                    require ext_code.size(arg1)
                    staticcall arg1.decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1991 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1991] == mem[_1991 + 31 len 1]
                    if not mem[_1991 + 31 len 1]:
                        return 1
                    if not mem[(32 * _1067 - 1) + ceil32(return_data.size) + 224]:
                        return 0
                    if mem[(32 * _1067 - 1) + ceil32(return_data.size) + 224] == 1:
                        return 1
                    if mem[(32 * _1067 - 1) + ceil32(return_data.size) + 224] == 2:
                        if mem[_1991 + 31 len 1] > 255:
                            revert with 'NH{q', 17
                        if 2^mem[_1991 + 31 len 1] > -1:
                            revert with 'NH{q', 17
                        if 2^mem[_1991 + 31 len 1] and 10000 > -1 / 2^mem[_1991 + 31 len 1]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * 2^mem[_1991 + 31 len 1] / 9980
                    else:
                        if mem[(32 * _1067 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_1991 + 31 len 1] >= 78 and mem[(32 * _1067 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_1991 + 31 len 1] >= 32:
                            s = mem[(32 * _1067 - 1) + ceil32(return_data.size) + 224]
                            t = 1
                            idx = mem[_1991 + 31 len 1]
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
                            if t * s and 10000 > -1 / t * s:
                                revert with 'NH{q', 17
                            return (10000 * t * s / 9980)
                        if mem[(32 * _1067 - 1) + ceil32(return_data.size) + 224]^mem[_1991 + 31 len 1] > -1:
                            revert with 'NH{q', 17
                        if mem[(32 * _1067 - 1) + ceil32(return_data.size) + 224]^mem[_1991 + 31 len 1] and 10000 > -1 / mem[(32 * _1067 - 1) + ceil32(return_data.size) + 224]^mem[_1991 + 31 len 1]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 10000 * mem[(32 * _1067 - 1) + ceil32(return_data.size) + 224]^mem[_1991 + 31 len 1] / 9980
                else:
                    idx = 0
                    s = 128
                    t = 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor6)
                    staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 1, Array(len=2, data=mem[292 len 64])
                    if ext_call.success:
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1046 = mem[192 len 4], 0
                        require mem[192 len 4], 0 <= test266151307()
                        require mem[192 len 4], 0 + 223 < return_data.size + 192
                        _1068 = mem[mem[192 len 4], 0 + 192]
                        if mem[mem[192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                        require _1046 + (32 * _1068) + 32 <= return_data.size
                        idx = 0
                        s = _1046 + 224
                        t = ceil32(return_data.size) + 224
                        while idx < _1068:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1068 < 1:
                            revert with 'NH{q', 17
                        if _1068 - 1 >= _1068:
                            revert with 'NH{q', 50
                        require ext_code.size(arg1)
                        staticcall arg1.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2058 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2058] == mem[_2058 + 31 len 1]
                        if not mem[_2058 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1068 - 1) + ceil32(return_data.size) + 224]:
                            return 0
                        if mem[(32 * _1068 - 1) + ceil32(return_data.size) + 224] == 1:
                            return 1
                        if mem[(32 * _1068 - 1) + ceil32(return_data.size) + 224] == 2:
                            if mem[_2058 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_2058 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_2058 + 31 len 1] and 10000 > -1 / 2^mem[_2058 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_2058 + 31 len 1] / 9980
                        else:
                            if mem[(32 * _1068 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2058 + 31 len 1] >= 78 and mem[(32 * _1068 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2058 + 31 len 1] >= 32:
                                s = mem[(32 * _1068 - 1) + ceil32(return_data.size) + 224]
                                t = 1
                                idx = mem[_2058 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9980)
                            if mem[(32 * _1068 - 1) + ceil32(return_data.size) + 224]^mem[_2058 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1068 - 1) + ceil32(return_data.size) + 224]^mem[_2058 + 31 len 1] and 10000 > -1 / mem[(32 * _1068 - 1) + ceil32(return_data.size) + 224]^mem[_2058 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1068 - 1) + ceil32(return_data.size) + 224]^mem[_2058 + 31 len 1] / 9980
                    else:
                        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[196] = 1
                        mem[228] = 64
                        mem[260] = 2
                        idx = 0
                        s = 128
                        t = 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor7)
                        staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1911 = mem[192 len 4], 0
                        require mem[192 len 4], 0 <= test266151307()
                        require mem[192 len 4], 0 + 223 < return_data.size + 192
                        _1933 = mem[mem[192 len 4], 0 + 192]
                        if mem[mem[192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                        require _1911 + (32 * _1933) + 32 <= return_data.size
                        idx = 0
                        s = _1911 + 224
                        t = ceil32(return_data.size) + 224
                        while idx < _1933:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1933 < 1:
                            revert with 'NH{q', 17
                        if _1933 - 1 >= _1933:
                            revert with 'NH{q', 50
                        require ext_code.size(arg1)
                        staticcall arg1.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2637 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2637] == mem[_2637 + 31 len 1]
                        if not mem[_2637 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1933 - 1) + ceil32(return_data.size) + 224]:
                            return 0
                        if mem[(32 * _1933 - 1) + ceil32(return_data.size) + 224] == 1:
                            return 1
                        if mem[(32 * _1933 - 1) + ceil32(return_data.size) + 224] == 2:
                            if mem[_2637 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_2637 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_2637 + 31 len 1] and 10000 > -1 / 2^mem[_2637 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_2637 + 31 len 1] / 9980
                        else:
                            if mem[(32 * _1933 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2637 + 31 len 1] >= 78 and mem[(32 * _1933 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2637 + 31 len 1] >= 32:
                                s = mem[(32 * _1933 - 1) + ceil32(return_data.size) + 224]
                                t = 1
                                idx = mem[_2637 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9980)
                            if mem[(32 * _1933 - 1) + ceil32(return_data.size) + 224]^mem[_2637 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1933 - 1) + ceil32(return_data.size) + 224]^mem[_2637 + 31 len 1] and 10000 > -1 / mem[(32 * _1933 - 1) + ceil32(return_data.size) + 224]^mem[_2637 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1933 - 1) + ceil32(return_data.size) + 224]^mem[_2637 + 31 len 1] / 9980
            else:
                if wethAddress == wethAddress:
                    mem[96] = 2
                    mem[128] = arg1
                    mem[160] = wethAddress
                    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[196] = 1
                    mem[228] = 64
                    mem[260] = 2
                    if secondaryRouterAddress == stor9:
                        idx = 0
                        s = 128
                        t = 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _1049 = mem[192 len 4], 0
                        require mem[192 len 4], 0 <= test266151307()
                        require mem[192 len 4], 0 + 223 < return_data.size + 192
                        _1071 = mem[mem[192 len 4], 0 + 192]
                        if mem[mem[192 len 4], 0 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                        require _1049 + (32 * _1071) + 32 <= return_data.size
                        idx = 0
                        s = _1049 + 224
                        t = ceil32(return_data.size) + 224
                        while idx < _1071:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1071 < 1:
                            revert with 'NH{q', 17
                        if _1071 - 1 >= _1071:
                            revert with 'NH{q', 50
                        require ext_code.size(arg1)
                        staticcall arg1.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1995 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1995] == mem[_1995 + 31 len 1]
                        if not mem[_1995 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1071 - 1) + ceil32(return_data.size) + 224]:
                            return 0
                        if mem[(32 * _1071 - 1) + ceil32(return_data.size) + 224] == 1:
                            return 1
                        if mem[(32 * _1071 - 1) + ceil32(return_data.size) + 224] == 2:
                            if mem[_1995 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_1995 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_1995 + 31 len 1] and 10000 > -1 / 2^mem[_1995 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_1995 + 31 len 1] / 9980
                        else:
                            if mem[(32 * _1071 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_1995 + 31 len 1] >= 78 and mem[(32 * _1071 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_1995 + 31 len 1] >= 32:
                                s = mem[(32 * _1071 - 1) + ceil32(return_data.size) + 224]
                                t = 1
                                idx = mem[_1995 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9980)
                            if mem[(32 * _1071 - 1) + ceil32(return_data.size) + 224]^mem[_1995 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1071 - 1) + ceil32(return_data.size) + 224]^mem[_1995 + 31 len 1] and 10000 > -1 / mem[(32 * _1071 - 1) + ceil32(return_data.size) + 224]^mem[_1995 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1071 - 1) + ceil32(return_data.size) + 224]^mem[_1995 + 31 len 1] / 9980
                    else:
                        idx = 0
                        s = 128
                        t = 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=2, data=mem[292 len 64])
                        if ext_call.success:
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _1050 = mem[192 len 4], 0
                            require mem[192 len 4], 0 <= test266151307()
                            require mem[192 len 4], 0 + 223 < return_data.size + 192
                            _1072 = mem[mem[192 len 4], 0 + 192]
                            if mem[mem[192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                            require _1050 + (32 * _1072) + 32 <= return_data.size
                            idx = 0
                            s = _1050 + 224
                            t = ceil32(return_data.size) + 224
                            while idx < _1072:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1072 < 1:
                                revert with 'NH{q', 17
                            if _1072 - 1 >= _1072:
                                revert with 'NH{q', 50
                            require ext_code.size(arg1)
                            staticcall arg1.decimals() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2062 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2062] == mem[_2062 + 31 len 1]
                            if not mem[_2062 + 31 len 1]:
                                return 1
                            if not mem[(32 * _1072 - 1) + ceil32(return_data.size) + 224]:
                                return 0
                            if mem[(32 * _1072 - 1) + ceil32(return_data.size) + 224] == 1:
                                return 1
                            if mem[(32 * _1072 - 1) + ceil32(return_data.size) + 224] == 2:
                                if mem[_2062 + 31 len 1] > 255:
                                    revert with 'NH{q', 17
                                if 2^mem[_2062 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if 2^mem[_2062 + 31 len 1] and 10000 > -1 / 2^mem[_2062 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * 2^mem[_2062 + 31 len 1] / 9980
                            else:
                                if mem[(32 * _1072 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2062 + 31 len 1] >= 78 and mem[(32 * _1072 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2062 + 31 len 1] >= 32:
                                    s = mem[(32 * _1072 - 1) + ceil32(return_data.size) + 224]
                                    t = 1
                                    idx = mem[_2062 + 31 len 1]
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
                                    if t * s and 10000 > -1 / t * s:
                                        revert with 'NH{q', 17
                                    return (10000 * t * s / 9980)
                                if mem[(32 * _1072 - 1) + ceil32(return_data.size) + 224]^mem[_2062 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if mem[(32 * _1072 - 1) + ceil32(return_data.size) + 224]^mem[_2062 + 31 len 1] and 10000 > -1 / mem[(32 * _1072 - 1) + ceil32(return_data.size) + 224]^mem[_2062 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1072 - 1) + ceil32(return_data.size) + 224]^mem[_2062 + 31 len 1] / 9980
                        else:
                            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[196] = 1
                            mem[228] = 64
                            mem[260] = 2
                            idx = 0
                            s = 128
                            t = 292
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=2, data=mem[292 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _1913 = mem[192 len 4], 0
                            require mem[192 len 4], 0 <= test266151307()
                            require mem[192 len 4], 0 + 223 < return_data.size + 192
                            _1935 = mem[mem[192 len 4], 0 + 192]
                            if mem[mem[192 len 4], 0 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                            require _1913 + (32 * _1935) + 32 <= return_data.size
                            idx = 0
                            s = _1913 + 224
                            t = ceil32(return_data.size) + 224
                            while idx < _1935:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1935 < 1:
                                revert with 'NH{q', 17
                            if _1935 - 1 >= _1935:
                                revert with 'NH{q', 50
                            require ext_code.size(arg1)
                            staticcall arg1.decimals() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2639 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2639] == mem[_2639 + 31 len 1]
                            if not mem[_2639 + 31 len 1]:
                                return 1
                            if not mem[(32 * _1935 - 1) + ceil32(return_data.size) + 224]:
                                return 0
                            if mem[(32 * _1935 - 1) + ceil32(return_data.size) + 224] == 1:
                                return 1
                            if mem[(32 * _1935 - 1) + ceil32(return_data.size) + 224] == 2:
                                if mem[_2639 + 31 len 1] > 255:
                                    revert with 'NH{q', 17
                                if 2^mem[_2639 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if 2^mem[_2639 + 31 len 1] and 10000 > -1 / 2^mem[_2639 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * 2^mem[_2639 + 31 len 1] / 9980
                            else:
                                if mem[(32 * _1935 - 1) + ceil32(return_data.size) + 224] >= 11 or mem[_2639 + 31 len 1] >= 78 and mem[(32 * _1935 - 1) + ceil32(return_data.size) + 224] >= 307 or mem[_2639 + 31 len 1] >= 32:
                                    s = mem[(32 * _1935 - 1) + ceil32(return_data.size) + 224]
                                    t = 1
                                    idx = mem[_2639 + 31 len 1]
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
                                    if t * s and 10000 > -1 / t * s:
                                        revert with 'NH{q', 17
                                    return (10000 * t * s / 9980)
                                if mem[(32 * _1935 - 1) + ceil32(return_data.size) + 224]^mem[_2639 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if mem[(32 * _1935 - 1) + ceil32(return_data.size) + 224]^mem[_2639 + 31 len 1] and 10000 > -1 / mem[(32 * _1935 - 1) + ceil32(return_data.size) + 224]^mem[_2639 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1935 - 1) + ceil32(return_data.size) + 224]^mem[_2639 + 31 len 1] / 9980
                else:
                    mem[96] = 3
                    mem[128] = arg1
                    mem[160] = wethAddress
                    mem[192] = wethAddress
                    mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[228] = 1
                    mem[260] = 64
                    mem[292] = 3
                    if secondaryRouterAddress == stor9:
                        idx = 0
                        s = 128
                        t = 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=3, data=mem[324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 224
                        require return_data.size >= 32
                        _1047 = mem[224 len 4], 0
                        require mem[224 len 4], 0 <= test266151307()
                        require mem[224 len 4], 0 + 255 < return_data.size + 224
                        _1069 = mem[mem[224 len 4], 0 + 224]
                        if mem[mem[224 len 4], 0 + 224] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                        require _1047 + (32 * _1069) + 32 <= return_data.size
                        idx = 0
                        s = _1047 + 256
                        t = ceil32(return_data.size) + 256
                        while idx < _1069:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if _1069 < 1:
                            revert with 'NH{q', 17
                        if _1069 - 1 >= _1069:
                            revert with 'NH{q', 50
                        require ext_code.size(arg1)
                        staticcall arg1.decimals() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1993 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1993] == mem[_1993 + 31 len 1]
                        if not mem[_1993 + 31 len 1]:
                            return 1
                        if not mem[(32 * _1069 - 1) + ceil32(return_data.size) + 256]:
                            return 0
                        if mem[(32 * _1069 - 1) + ceil32(return_data.size) + 256] == 1:
                            return 1
                        if mem[(32 * _1069 - 1) + ceil32(return_data.size) + 256] == 2:
                            if mem[_1993 + 31 len 1] > 255:
                                revert with 'NH{q', 17
                            if 2^mem[_1993 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if 2^mem[_1993 + 31 len 1] and 10000 > -1 / 2^mem[_1993 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * 2^mem[_1993 + 31 len 1] / 9960
                        else:
                            if mem[(32 * _1069 - 1) + ceil32(return_data.size) + 256] >= 11 or mem[_1993 + 31 len 1] >= 78 and mem[(32 * _1069 - 1) + ceil32(return_data.size) + 256] >= 307 or mem[_1993 + 31 len 1] >= 32:
                                s = mem[(32 * _1069 - 1) + ceil32(return_data.size) + 256]
                                t = 1
                                idx = mem[_1993 + 31 len 1]
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
                                if t * s and 10000 > -1 / t * s:
                                    revert with 'NH{q', 17
                                return (10000 * t * s / 9960)
                            if mem[(32 * _1069 - 1) + ceil32(return_data.size) + 256]^mem[_1993 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if mem[(32 * _1069 - 1) + ceil32(return_data.size) + 256]^mem[_1993 + 31 len 1] and 10000 > -1 / mem[(32 * _1069 - 1) + ceil32(return_data.size) + 256]^mem[_1993 + 31 len 1]:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 10000 * mem[(32 * _1069 - 1) + ceil32(return_data.size) + 256]^mem[_1993 + 31 len 1] / 9960
                    else:
                        idx = 0
                        s = 128
                        t = 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor6)
                        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args 1, Array(len=3, data=mem[324 len 96])
                        if ext_call.success:
                            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 224
                            require return_data.size >= 32
                            _1048 = mem[224 len 4], 0
                            require mem[224 len 4], 0 <= test266151307()
                            require mem[224 len 4], 0 + 255 < return_data.size + 224
                            _1070 = mem[mem[224 len 4], 0 + 224]
                            if mem[mem[224 len 4], 0 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                            require _1048 + (32 * _1070) + 32 <= return_data.size
                            idx = 0
                            s = _1048 + 256
                            t = ceil32(return_data.size) + 256
                            while idx < _1070:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1070 < 1:
                                revert with 'NH{q', 17
                            if _1070 - 1 >= _1070:
                                revert with 'NH{q', 50
                            require ext_code.size(arg1)
                            staticcall arg1.decimals() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2060 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2060] == mem[_2060 + 31 len 1]
                            if not mem[_2060 + 31 len 1]:
                                return 1
                            if not mem[(32 * _1070 - 1) + ceil32(return_data.size) + 256]:
                                return 0
                            if mem[(32 * _1070 - 1) + ceil32(return_data.size) + 256] == 1:
                                return 1
                            if mem[(32 * _1070 - 1) + ceil32(return_data.size) + 256] == 2:
                                if mem[_2060 + 31 len 1] > 255:
                                    revert with 'NH{q', 17
                                if 2^mem[_2060 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if 2^mem[_2060 + 31 len 1] and 10000 > -1 / 2^mem[_2060 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * 2^mem[_2060 + 31 len 1] / 9960
                            else:
                                if mem[(32 * _1070 - 1) + ceil32(return_data.size) + 256] >= 11 or mem[_2060 + 31 len 1] >= 78 and mem[(32 * _1070 - 1) + ceil32(return_data.size) + 256] >= 307 or mem[_2060 + 31 len 1] >= 32:
                                    s = mem[(32 * _1070 - 1) + ceil32(return_data.size) + 256]
                                    t = 1
                                    idx = mem[_2060 + 31 len 1]
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
                                    if t * s and 10000 > -1 / t * s:
                                        revert with 'NH{q', 17
                                    return (10000 * t * s / 9960)
                                if mem[(32 * _1070 - 1) + ceil32(return_data.size) + 256]^mem[_2060 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if mem[(32 * _1070 - 1) + ceil32(return_data.size) + 256]^mem[_2060 + 31 len 1] and 10000 > -1 / mem[(32 * _1070 - 1) + ceil32(return_data.size) + 256]^mem[_2060 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * mem[(32 * _1070 - 1) + ceil32(return_data.size) + 256]^mem[_2060 + 31 len 1] / 9960
                        else:
                            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[228] = 1
                            mem[260] = 64
                            mem[292] = 3
                            idx = 0
                            s = 128
                            t = 324
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor7)
                            staticcall stor7.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args 1, Array(len=3, data=mem[324 len 96])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 224
                            require return_data.size >= 32
                            _1912 = mem[224 len 4], 0
                            require mem[224 len 4], 0 <= test266151307()
                            require mem[224 len 4], 0 + 255 < return_data.size + 224
                            _1934 = mem[mem[224 len 4], 0 + 224]
                            if mem[mem[224 len 4], 0 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                            require _1912 + (32 * _1934) + 32 <= return_data.size
                            idx = 0
                            s = _1912 + 256
                            t = ceil32(return_data.size) + 256
                            while idx < _1934:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if _1934 < 1:
                                revert with 'NH{q', 17
                            if _1934 - 1 >= _1934:
                                revert with 'NH{q', 50
                            _2613 = mem[(32 * _1934 - 1) + ceil32(return_data.size) + 256]
                            require ext_code.size(arg1)
                            staticcall arg1.decimals() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2638 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2638] == mem[_2638 + 31 len 1]
                            if not mem[_2638 + 31 len 1]:
                                return 1
                            if not _2613:
                                return 0
                            if _2613 == 1:
                                return 1
                            if _2613 == 2:
                                if mem[_2638 + 31 len 1] > 255:
                                    revert with 'NH{q', 17
                                if 2^mem[_2638 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if 2^mem[_2638 + 31 len 1] and 10000 > -1 / 2^mem[_2638 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * 2^mem[_2638 + 31 len 1] / 9960
                            else:
                                if _2613 >= 11 or mem[_2638 + 31 len 1] >= 78 and _2613 >= 307 or mem[_2638 + 31 len 1] >= 32:
                                    s = _2613
                                    t = 1
                                    idx = mem[_2638 + 31 len 1]
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
                                    if t * s and 10000 > -1 / t * s:
                                        revert with 'NH{q', 17
                                    return (10000 * t * s / 9960)
                                if _2613^mem[_2638 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if _2613^mem[_2638 + 31 len 1] and 10000 > -1 / _2613^mem[_2638 + 31 len 1]:
                                    revert with 'NH{q', 17
                                mem[mem[64]] = 10000 * _2613^mem[_2638 + 31 len 1] / 9960
    return memory
      from mem[64]
       len 32
}



}
