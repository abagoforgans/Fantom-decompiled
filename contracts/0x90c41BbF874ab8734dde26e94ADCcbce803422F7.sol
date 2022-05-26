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
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 10
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
                           args 10, Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _577 = mem[192 len 4], 0
                    require mem[192 len 4], 0 <= test266151307()
                    require mem[192 len 4], 0 + 223 < return_data.size + 192
                    _599 = mem[mem[192 len 4], 0 + 192]
                    if mem[mem[192 len 4], 0 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                    require _577 + (32 * _599) + 32 <= return_data.size
                    idx = 0
                    s = _577 + 224
                    t = ceil32(return_data.size) + 224
                    while idx < _599:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if _599 < 1:
                        revert with 'NH{q', 17
                    if _599 - 1 >= _599:
                        revert with 'NH{q', 50
                    if mem[(32 * _599 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _599 - 1) + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 17
                    return (10000 * mem[(32 * _599 - 1) + ceil32(return_data.size) + 224] / 9980)
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
                       args 10, Array(len=2, data=mem[292 len 64])
                if ext_call.success:
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _578 = mem[192 len 4], 0
                    require mem[192 len 4], 0 <= test266151307()
                    require mem[192 len 4], 0 + 223 < return_data.size + 192
                    _600 = mem[mem[192 len 4], 0 + 192]
                    if mem[mem[192 len 4], 0 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                    require _578 + (32 * _600) + 32 <= return_data.size
                    idx = 0
                    s = _578 + 224
                    t = ceil32(return_data.size) + 224
                    while idx < _600:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if _600 < 1:
                        revert with 'NH{q', 17
                    if _600 - 1 >= _600:
                        revert with 'NH{q', 50
                    if mem[(32 * _600 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _600 - 1) + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 10000 * mem[(32 * _600 - 1) + ceil32(return_data.size) + 224] / 9980
                    return memory
                      from mem[64]
                       len 32
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 10
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
                       args 10, Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _984 = mem[192 len 4], 0
                require mem[192 len 4], 0 <= test266151307()
                require mem[192 len 4], 0 + 223 < return_data.size + 192
                _1006 = mem[mem[192 len 4], 0 + 192]
                if mem[mem[192 len 4], 0 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                require _984 + (32 * _1006) + 32 <= return_data.size
                idx = 0
                s = _984 + 224
                t = ceil32(return_data.size) + 224
                while idx < _1006:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _1006 < 1:
                    revert with 'NH{q', 17
                if _1006 - 1 >= _1006:
                    revert with 'NH{q', 50
                if mem[(32 * _1006 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _1006 - 1) + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 17
                return (10000 * mem[(32 * _1006 - 1) + ceil32(return_data.size) + 224] / 9980)
            if arg2 == wethAddress:
                mem[96] = 2
                mem[128] = arg1
                mem[160] = arg2
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 10
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
                           args 10, Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _581 = mem[192 len 4], 0
                    require mem[192 len 4], 0 <= test266151307()
                    require mem[192 len 4], 0 + 223 < return_data.size + 192
                    _603 = mem[mem[192 len 4], 0 + 192]
                    if mem[mem[192 len 4], 0 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                    require _581 + (32 * _603) + 32 <= return_data.size
                    idx = 0
                    s = _581 + 224
                    t = ceil32(return_data.size) + 224
                    while idx < _603:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if _603 < 1:
                        revert with 'NH{q', 17
                    if _603 - 1 >= _603:
                        revert with 'NH{q', 50
                    if mem[(32 * _603 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _603 - 1) + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 17
                    return (10000 * mem[(32 * _603 - 1) + ceil32(return_data.size) + 224] / 9980)
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
                       args 10, Array(len=2, data=mem[292 len 64])
                if ext_call.success:
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _582 = mem[192 len 4], 0
                    require mem[192 len 4], 0 <= test266151307()
                    require mem[192 len 4], 0 + 223 < return_data.size + 192
                    _604 = mem[mem[192 len 4], 0 + 192]
                    if mem[mem[192 len 4], 0 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                    require _582 + (32 * _604) + 32 <= return_data.size
                    idx = 0
                    s = _582 + 224
                    t = ceil32(return_data.size) + 224
                    while idx < _604:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if _604 < 1:
                        revert with 'NH{q', 17
                    if _604 - 1 >= _604:
                        revert with 'NH{q', 50
                    if mem[(32 * _604 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _604 - 1) + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 17
                    return (10000 * mem[(32 * _604 - 1) + ceil32(return_data.size) + 224] / 9980)
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 10
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
                       args 10, Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _986 = mem[192 len 4], 0
                require mem[192 len 4], 0 <= test266151307()
                require mem[192 len 4], 0 + 223 < return_data.size + 192
                _1008 = mem[mem[192 len 4], 0 + 192]
                if mem[mem[192 len 4], 0 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                require _986 + (32 * _1008) + 32 <= return_data.size
                idx = 0
                s = _986 + 224
                t = ceil32(return_data.size) + 224
                while idx < _1008:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _1008 < 1:
                    revert with 'NH{q', 17
                if _1008 - 1 >= _1008:
                    revert with 'NH{q', 50
                if mem[(32 * _1008 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _1008 - 1) + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 17
                return (10000 * mem[(32 * _1008 - 1) + ceil32(return_data.size) + 224] / 9980)
            mem[96] = 3
            mem[128] = arg1
            mem[160] = wethAddress
            mem[192] = arg2
            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[228] = 10
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
                       args 10, Array(len=3, data=mem[324 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _579 = mem[224 len 4], 0
                require mem[224 len 4], 0 <= test266151307()
                require mem[224 len 4], 0 + 255 < return_data.size + 224
                _601 = mem[mem[224 len 4], 0 + 224]
                if mem[mem[224 len 4], 0 + 224] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                require _579 + (32 * _601) + 32 <= return_data.size
                idx = 0
                s = _579 + 256
                t = ceil32(return_data.size) + 256
                while idx < _601:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _601 < 1:
                    revert with 'NH{q', 17
                if _601 - 1 >= _601:
                    revert with 'NH{q', 50
                if mem[(32 * _601 - 1) + ceil32(return_data.size) + 256] and 10000 > -1 / mem[(32 * _601 - 1) + ceil32(return_data.size) + 256]:
                    revert with 'NH{q', 17
                return (10000 * mem[(32 * _601 - 1) + ceil32(return_data.size) + 256] / 9960)
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
                   args 10, Array(len=3, data=mem[324 len 96])
            if ext_call.success:
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _580 = mem[224 len 4], 0
                require mem[224 len 4], 0 <= test266151307()
                require mem[224 len 4], 0 + 255 < return_data.size + 224
                _602 = mem[mem[224 len 4], 0 + 224]
                if mem[mem[224 len 4], 0 + 224] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                require _580 + (32 * _602) + 32 <= return_data.size
                idx = 0
                s = _580 + 256
                t = ceil32(return_data.size) + 256
                while idx < _602:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _602 < 1:
                    revert with 'NH{q', 17
                if _602 - 1 >= _602:
                    revert with 'NH{q', 50
                if mem[(32 * _602 - 1) + ceil32(return_data.size) + 256] and 10000 > -1 / mem[(32 * _602 - 1) + ceil32(return_data.size) + 256]:
                    revert with 'NH{q', 17
                mem[mem[64]] = 10000 * mem[(32 * _602 - 1) + ceil32(return_data.size) + 256] / 9960
                return memory
                  from mem[64]
                   len 32
            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[228] = 10
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
                   args 10, Array(len=3, data=mem[324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _985 = mem[224 len 4], 0
            require mem[224 len 4], 0 <= test266151307()
            require mem[224 len 4], 0 + 255 < return_data.size + 224
            _1007 = mem[mem[224 len 4], 0 + 224]
            if mem[mem[224 len 4], 0 + 224] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
            require _985 + (32 * _1007) + 32 <= return_data.size
            idx = 0
            s = _985 + 256
            t = ceil32(return_data.size) + 256
            while idx < _1007:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _1007 < 1:
                revert with 'NH{q', 17
            if _1007 - 1 >= _1007:
                revert with 'NH{q', 50
            if mem[(32 * _1007 - 1) + ceil32(return_data.size) + 256] and 10000 > -1 / mem[(32 * _1007 - 1) + ceil32(return_data.size) + 256]:
                revert with 'NH{q', 17
            return (10000 * mem[(32 * _1007 - 1) + ceil32(return_data.size) + 256] / 9960)
        if arg1 == wethAddress:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = wethAddress
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = 10
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
                       args 10, Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _583 = mem[192 len 4], 0
                require mem[192 len 4], 0 <= test266151307()
                require mem[192 len 4], 0 + 223 < return_data.size + 192
                _605 = mem[mem[192 len 4], 0 + 192]
                if mem[mem[192 len 4], 0 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                require _583 + (32 * _605) + 32 <= return_data.size
                idx = 0
                s = _583 + 224
                t = ceil32(return_data.size) + 224
                while idx < _605:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _605 < 1:
                    revert with 'NH{q', 17
                if _605 - 1 >= _605:
                    revert with 'NH{q', 50
                if mem[(32 * _605 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _605 - 1) + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 17
                return (10000 * mem[(32 * _605 - 1) + ceil32(return_data.size) + 224] / 9980)
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
                   args 10, Array(len=2, data=mem[292 len 64])
            if ext_call.success:
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _584 = mem[192 len 4], 0
                require mem[192 len 4], 0 <= test266151307()
                require mem[192 len 4], 0 + 223 < return_data.size + 192
                _606 = mem[mem[192 len 4], 0 + 192]
                if mem[mem[192 len 4], 0 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                require _584 + (32 * _606) + 32 <= return_data.size
                idx = 0
                s = _584 + 224
                t = ceil32(return_data.size) + 224
                while idx < _606:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _606 < 1:
                    revert with 'NH{q', 17
                if _606 - 1 >= _606:
                    revert with 'NH{q', 50
                if mem[(32 * _606 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _606 - 1) + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 17
                mem[mem[64]] = 10000 * mem[(32 * _606 - 1) + ceil32(return_data.size) + 224] / 9980
                return memory
                  from mem[64]
                   len 32
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = 10
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
                   args 10, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _987 = mem[192 len 4], 0
            require mem[192 len 4], 0 <= test266151307()
            require mem[192 len 4], 0 + 223 < return_data.size + 192
            _1009 = mem[mem[192 len 4], 0 + 192]
            if mem[mem[192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
            require _987 + (32 * _1009) + 32 <= return_data.size
            idx = 0
            s = _987 + 224
            t = ceil32(return_data.size) + 224
            while idx < _1009:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _1009 < 1:
                revert with 'NH{q', 17
            if _1009 - 1 >= _1009:
                revert with 'NH{q', 50
            if mem[(32 * _1009 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _1009 - 1) + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 17
            return (10000 * mem[(32 * _1009 - 1) + ceil32(return_data.size) + 224] / 9980)
        if wethAddress == wethAddress:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = wethAddress
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = 10
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
                       args 10, Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _587 = mem[192 len 4], 0
                require mem[192 len 4], 0 <= test266151307()
                require mem[192 len 4], 0 + 223 < return_data.size + 192
                _609 = mem[mem[192 len 4], 0 + 192]
                if mem[mem[192 len 4], 0 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                require _587 + (32 * _609) + 32 <= return_data.size
                idx = 0
                s = _587 + 224
                t = ceil32(return_data.size) + 224
                while idx < _609:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _609 < 1:
                    revert with 'NH{q', 17
                if _609 - 1 >= _609:
                    revert with 'NH{q', 50
                if mem[(32 * _609 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _609 - 1) + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 17
                return (10000 * mem[(32 * _609 - 1) + ceil32(return_data.size) + 224] / 9980)
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
                   args 10, Array(len=2, data=mem[292 len 64])
            if ext_call.success:
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _588 = mem[192 len 4], 0
                require mem[192 len 4], 0 <= test266151307()
                require mem[192 len 4], 0 + 223 < return_data.size + 192
                _610 = mem[mem[192 len 4], 0 + 192]
                if mem[mem[192 len 4], 0 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                require _588 + (32 * _610) + 32 <= return_data.size
                idx = 0
                s = _588 + 224
                t = ceil32(return_data.size) + 224
                while idx < _610:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _610 < 1:
                    revert with 'NH{q', 17
                if _610 - 1 >= _610:
                    revert with 'NH{q', 50
                if mem[(32 * _610 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _610 - 1) + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 17
                return (10000 * mem[(32 * _610 - 1) + ceil32(return_data.size) + 224] / 9980)
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = 10
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
                   args 10, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _989 = mem[192 len 4], 0
            require mem[192 len 4], 0 <= test266151307()
            require mem[192 len 4], 0 + 223 < return_data.size + 192
            _1011 = mem[mem[192 len 4], 0 + 192]
            if mem[mem[192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
            require _989 + (32 * _1011) + 32 <= return_data.size
            idx = 0
            s = _989 + 224
            t = ceil32(return_data.size) + 224
            while idx < _1011:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _1011 < 1:
                revert with 'NH{q', 17
            if _1011 - 1 >= _1011:
                revert with 'NH{q', 50
            if mem[(32 * _1011 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _1011 - 1) + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 17
            return (10000 * mem[(32 * _1011 - 1) + ceil32(return_data.size) + 224] / 9980)
        mem[96] = 3
        mem[128] = arg1
        mem[160] = wethAddress
        mem[192] = wethAddress
        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[228] = 10
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
                   args 10, Array(len=3, data=mem[324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _585 = mem[224 len 4], 0
            require mem[224 len 4], 0 <= test266151307()
            require mem[224 len 4], 0 + 255 < return_data.size + 224
            _607 = mem[mem[224 len 4], 0 + 224]
            if mem[mem[224 len 4], 0 + 224] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
            require _585 + (32 * _607) + 32 <= return_data.size
            idx = 0
            s = _585 + 256
            t = ceil32(return_data.size) + 256
            while idx < _607:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _607 < 1:
                revert with 'NH{q', 17
            if _607 - 1 >= _607:
                revert with 'NH{q', 50
            if mem[(32 * _607 - 1) + ceil32(return_data.size) + 256] and 10000 > -1 / mem[(32 * _607 - 1) + ceil32(return_data.size) + 256]:
                revert with 'NH{q', 17
            return (10000 * mem[(32 * _607 - 1) + ceil32(return_data.size) + 256] / 9960)
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
               args 10, Array(len=3, data=mem[324 len 96])
        if ext_call.success:
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _586 = mem[224 len 4], 0
            require mem[224 len 4], 0 <= test266151307()
            require mem[224 len 4], 0 + 255 < return_data.size + 224
            _608 = mem[mem[224 len 4], 0 + 224]
            if mem[mem[224 len 4], 0 + 224] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
            require _586 + (32 * _608) + 32 <= return_data.size
            idx = 0
            s = _586 + 256
            t = ceil32(return_data.size) + 256
            while idx < _608:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _608 < 1:
                revert with 'NH{q', 17
            if _608 - 1 >= _608:
                revert with 'NH{q', 50
            if mem[(32 * _608 - 1) + ceil32(return_data.size) + 256] and 10000 > -1 / mem[(32 * _608 - 1) + ceil32(return_data.size) + 256]:
                revert with 'NH{q', 17
            return (10000 * mem[(32 * _608 - 1) + ceil32(return_data.size) + 256] / 9960)
        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[228] = 10
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
               args 10, Array(len=3, data=mem[324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _988 = mem[224 len 4], 0
        require mem[224 len 4], 0 <= test266151307()
        require mem[224 len 4], 0 + 255 < return_data.size + 224
        _1010 = mem[mem[224 len 4], 0 + 224]
        if mem[mem[224 len 4], 0 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
        require _988 + (32 * _1010) + 32 <= return_data.size
        idx = 0
        s = _988 + 256
        t = ceil32(return_data.size) + 256
        while idx < _1010:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _1010 < 1:
            revert with 'NH{q', 17
        if _1010 - 1 >= _1010:
            revert with 'NH{q', 50
        if mem[(32 * _1010 - 1) + ceil32(return_data.size) + 256] and 10000 > -1 / mem[(32 * _1010 - 1) + ceil32(return_data.size) + 256]:
            revert with 'NH{q', 17
        return (10000 * mem[(32 * _1010 - 1) + ceil32(return_data.size) + 256] / 9960)
    if arg2 == stor8:
        if wethAddress == wethAddress:
            mem[96] = 2
            mem[128] = wethAddress
            mem[160] = wethAddress
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = 10
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
                       args 10, Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _595 = mem[192 len 4], 0
                require mem[192 len 4], 0 <= test266151307()
                require mem[192 len 4], 0 + 223 < return_data.size + 192
                _617 = mem[mem[192 len 4], 0 + 192]
                if mem[mem[192 len 4], 0 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                require _595 + (32 * _617) + 32 <= return_data.size
                idx = 0
                s = _595 + 224
                t = ceil32(return_data.size) + 224
                while idx < _617:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _617 < 1:
                    revert with 'NH{q', 17
                if _617 - 1 >= _617:
                    revert with 'NH{q', 50
                if mem[(32 * _617 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _617 - 1) + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 17
                return (10000 * mem[(32 * _617 - 1) + ceil32(return_data.size) + 224] / 9980)
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
                   args 10, Array(len=2, data=mem[292 len 64])
            if ext_call.success:
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _596 = mem[192 len 4], 0
                require mem[192 len 4], 0 <= test266151307()
                require mem[192 len 4], 0 + 223 < return_data.size + 192
                _618 = mem[mem[192 len 4], 0 + 192]
                if mem[mem[192 len 4], 0 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                require _596 + (32 * _618) + 32 <= return_data.size
                idx = 0
                s = _596 + 224
                t = ceil32(return_data.size) + 224
                while idx < _618:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _618 < 1:
                    revert with 'NH{q', 17
                if _618 - 1 >= _618:
                    revert with 'NH{q', 50
                if mem[(32 * _618 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _618 - 1) + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 17
                return (10000 * mem[(32 * _618 - 1) + ceil32(return_data.size) + 224] / 9980)
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = 10
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
                   args 10, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _993 = mem[192 len 4], 0
            require mem[192 len 4], 0 <= test266151307()
            require mem[192 len 4], 0 + 223 < return_data.size + 192
            _1015 = mem[mem[192 len 4], 0 + 192]
            if mem[mem[192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
            require _993 + (32 * _1015) + 32 <= return_data.size
            idx = 0
            s = _993 + 224
            t = ceil32(return_data.size) + 224
            while idx < _1015:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _1015 < 1:
                revert with 'NH{q', 17
            if _1015 - 1 >= _1015:
                revert with 'NH{q', 50
            if mem[(32 * _1015 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _1015 - 1) + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 17
            return (10000 * mem[(32 * _1015 - 1) + ceil32(return_data.size) + 224] / 9980)
        mem[96] = 3
        mem[128] = wethAddress
        mem[160] = wethAddress
        mem[192] = wethAddress
        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[228] = 10
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
                   args 10, Array(len=3, data=mem[324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _597 = mem[224 len 4], 0
            require mem[224 len 4], 0 <= test266151307()
            require mem[224 len 4], 0 + 255 < return_data.size + 224
            _619 = mem[mem[224 len 4], 0 + 224]
            if mem[mem[224 len 4], 0 + 224] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
            require _597 + (32 * _619) + 32 <= return_data.size
            idx = 0
            s = _597 + 256
            t = ceil32(return_data.size) + 256
            while idx < _619:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _619 < 1:
                revert with 'NH{q', 17
            if _619 - 1 >= _619:
                revert with 'NH{q', 50
            if mem[(32 * _619 - 1) + ceil32(return_data.size) + 256] and 10000 > -1 / mem[(32 * _619 - 1) + ceil32(return_data.size) + 256]:
                revert with 'NH{q', 17
            return (10000 * mem[(32 * _619 - 1) + ceil32(return_data.size) + 256] / 9960)
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
               args 10, Array(len=3, data=mem[324 len 96])
        if ext_call.success:
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _598 = mem[224 len 4], 0
            require mem[224 len 4], 0 <= test266151307()
            require mem[224 len 4], 0 + 255 < return_data.size + 224
            _620 = mem[mem[224 len 4], 0 + 224]
            if mem[mem[224 len 4], 0 + 224] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
            require _598 + (32 * _620) + 32 <= return_data.size
            idx = 0
            s = _598 + 256
            t = ceil32(return_data.size) + 256
            while idx < _620:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _620 < 1:
                revert with 'NH{q', 17
            if _620 - 1 >= _620:
                revert with 'NH{q', 50
            if mem[(32 * _620 - 1) + ceil32(return_data.size) + 256] and 10000 > -1 / mem[(32 * _620 - 1) + ceil32(return_data.size) + 256]:
                revert with 'NH{q', 17
            return (10000 * mem[(32 * _620 - 1) + ceil32(return_data.size) + 256] / 9960)
        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[228] = 10
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
               args 10, Array(len=3, data=mem[324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _994 = mem[224 len 4], 0
        require mem[224 len 4], 0 <= test266151307()
        require mem[224 len 4], 0 + 255 < return_data.size + 224
        _1016 = mem[mem[224 len 4], 0 + 224]
        if mem[mem[224 len 4], 0 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
        require _994 + (32 * _1016) + 32 <= return_data.size
        idx = 0
        s = _994 + 256
        t = ceil32(return_data.size) + 256
        while idx < _1016:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _1016 < 1:
            revert with 'NH{q', 17
        if _1016 - 1 >= _1016:
            revert with 'NH{q', 50
        if mem[(32 * _1016 - 1) + ceil32(return_data.size) + 256] and 10000 > -1 / mem[(32 * _1016 - 1) + ceil32(return_data.size) + 256]:
            revert with 'NH{q', 17
        return (10000 * mem[(32 * _1016 - 1) + ceil32(return_data.size) + 256] / 9960)
    if wethAddress == wethAddress:
        mem[96] = 2
        mem[128] = wethAddress
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = 10
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
                   args 10, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _589 = mem[192 len 4], 0
            require mem[192 len 4], 0 <= test266151307()
            require mem[192 len 4], 0 + 223 < return_data.size + 192
            _611 = mem[mem[192 len 4], 0 + 192]
            if mem[mem[192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
            require _589 + (32 * _611) + 32 <= return_data.size
            idx = 0
            s = _589 + 224
            t = ceil32(return_data.size) + 224
            while idx < _611:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _611 < 1:
                revert with 'NH{q', 17
            if _611 - 1 >= _611:
                revert with 'NH{q', 50
            if mem[(32 * _611 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _611 - 1) + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 17
            return (10000 * mem[(32 * _611 - 1) + ceil32(return_data.size) + 224] / 9980)
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
               args 10, Array(len=2, data=mem[292 len 64])
        if ext_call.success:
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _590 = mem[192 len 4], 0
            require mem[192 len 4], 0 <= test266151307()
            require mem[192 len 4], 0 + 223 < return_data.size + 192
            _612 = mem[mem[192 len 4], 0 + 192]
            if mem[mem[192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
            require _590 + (32 * _612) + 32 <= return_data.size
            idx = 0
            s = _590 + 224
            t = ceil32(return_data.size) + 224
            while idx < _612:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _612 < 1:
                revert with 'NH{q', 17
            if _612 - 1 >= _612:
                revert with 'NH{q', 50
            if mem[(32 * _612 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _612 - 1) + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 17
            return (10000 * mem[(32 * _612 - 1) + ceil32(return_data.size) + 224] / 9980)
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = 10
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
               args 10, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _990 = mem[192 len 4], 0
        require mem[192 len 4], 0 <= test266151307()
        require mem[192 len 4], 0 + 223 < return_data.size + 192
        _1012 = mem[mem[192 len 4], 0 + 192]
        if mem[mem[192 len 4], 0 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
        require _990 + (32 * _1012) + 32 <= return_data.size
        idx = 0
        s = _990 + 224
        t = ceil32(return_data.size) + 224
        while idx < _1012:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _1012 < 1:
            revert with 'NH{q', 17
        if _1012 - 1 >= _1012:
            revert with 'NH{q', 50
        if mem[(32 * _1012 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _1012 - 1) + ceil32(return_data.size) + 224]:
            revert with 'NH{q', 17
        return (10000 * mem[(32 * _1012 - 1) + ceil32(return_data.size) + 224] / 9980)
    if arg2 == wethAddress:
        mem[96] = 2
        mem[128] = wethAddress
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = 10
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
                   args 10, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _593 = mem[192 len 4], 0
            require mem[192 len 4], 0 <= test266151307()
            require mem[192 len 4], 0 + 223 < return_data.size + 192
            _615 = mem[mem[192 len 4], 0 + 192]
            if mem[mem[192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
            require _593 + (32 * _615) + 32 <= return_data.size
            idx = 0
            s = _593 + 224
            t = ceil32(return_data.size) + 224
            while idx < _615:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _615 < 1:
                revert with 'NH{q', 17
            if _615 - 1 >= _615:
                revert with 'NH{q', 50
            if mem[(32 * _615 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _615 - 1) + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 17
            return (10000 * mem[(32 * _615 - 1) + ceil32(return_data.size) + 224] / 9980)
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
               args 10, Array(len=2, data=mem[292 len 64])
        if ext_call.success:
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _594 = mem[192 len 4], 0
            require mem[192 len 4], 0 <= test266151307()
            require mem[192 len 4], 0 + 223 < return_data.size + 192
            _616 = mem[mem[192 len 4], 0 + 192]
            if mem[mem[192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
            require _594 + (32 * _616) + 32 <= return_data.size
            idx = 0
            s = _594 + 224
            t = ceil32(return_data.size) + 224
            while idx < _616:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _616 < 1:
                revert with 'NH{q', 17
            if _616 - 1 >= _616:
                revert with 'NH{q', 50
            if mem[(32 * _616 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _616 - 1) + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 17
            return (10000 * mem[(32 * _616 - 1) + ceil32(return_data.size) + 224] / 9980)
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = 10
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
               args 10, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _992 = mem[192 len 4], 0
        require mem[192 len 4], 0 <= test266151307()
        require mem[192 len 4], 0 + 223 < return_data.size + 192
        _1014 = mem[mem[192 len 4], 0 + 192]
        if mem[mem[192 len 4], 0 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
        require _992 + (32 * _1014) + 32 <= return_data.size
        idx = 0
        s = _992 + 224
        t = ceil32(return_data.size) + 224
        while idx < _1014:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _1014 < 1:
            revert with 'NH{q', 17
        if _1014 - 1 >= _1014:
            revert with 'NH{q', 50
        if mem[(32 * _1014 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _1014 - 1) + ceil32(return_data.size) + 224]:
            revert with 'NH{q', 17
        return (10000 * mem[(32 * _1014 - 1) + ceil32(return_data.size) + 224] / 9980)
    mem[96] = 3
    mem[128] = wethAddress
    mem[160] = wethAddress
    mem[192] = arg2
    mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[228] = 10
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
               args 10, Array(len=3, data=mem[324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _591 = mem[224 len 4], 0
        require mem[224 len 4], 0 <= test266151307()
        require mem[224 len 4], 0 + 255 < return_data.size + 224
        _613 = mem[mem[224 len 4], 0 + 224]
        if mem[mem[224 len 4], 0 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
        require _591 + (32 * _613) + 32 <= return_data.size
        idx = 0
        s = _591 + 256
        t = ceil32(return_data.size) + 256
        while idx < _613:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _613 < 1:
            revert with 'NH{q', 17
        if _613 - 1 >= _613:
            revert with 'NH{q', 50
        if mem[(32 * _613 - 1) + ceil32(return_data.size) + 256] and 10000 > -1 / mem[(32 * _613 - 1) + ceil32(return_data.size) + 256]:
            revert with 'NH{q', 17
        return (10000 * mem[(32 * _613 - 1) + ceil32(return_data.size) + 256] / 9960)
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
           args 10, Array(len=3, data=mem[324 len 96])
    if ext_call.success:
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _592 = mem[224 len 4], 0
        require mem[224 len 4], 0 <= test266151307()
        require mem[224 len 4], 0 + 255 < return_data.size + 224
        _614 = mem[mem[224 len 4], 0 + 224]
        if mem[mem[224 len 4], 0 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
        require _592 + (32 * _614) + 32 <= return_data.size
        idx = 0
        s = _592 + 256
        t = ceil32(return_data.size) + 256
        while idx < _614:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _614 < 1:
            revert with 'NH{q', 17
        if _614 - 1 >= _614:
            revert with 'NH{q', 50
        if mem[(32 * _614 - 1) + ceil32(return_data.size) + 256] and 10000 > -1 / mem[(32 * _614 - 1) + ceil32(return_data.size) + 256]:
            revert with 'NH{q', 17
        return (10000 * mem[(32 * _614 - 1) + ceil32(return_data.size) + 256] / 9960)
    mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[228] = 10
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
           args 10, Array(len=3, data=mem[324 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    _991 = mem[224 len 4], 0
    require mem[224 len 4], 0 <= test266151307()
    require mem[224 len 4], 0 + 255 < return_data.size + 224
    _1013 = mem[mem[224 len 4], 0 + 224]
    if mem[mem[224 len 4], 0 + 224] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
    require _991 + (32 * _1013) + 32 <= return_data.size
    idx = 0
    s = _991 + 256
    t = ceil32(return_data.size) + 256
    while idx < _1013:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _1013 < 1:
        revert with 'NH{q', 17
    if _1013 - 1 >= _1013:
        revert with 'NH{q', 50
    if mem[(32 * _1013 - 1) + ceil32(return_data.size) + 256] and 10000 > -1 / mem[(32 * _1013 - 1) + ceil32(return_data.size) + 256]:
        revert with 'NH{q', 17
    return (10000 * mem[(32 * _1013 - 1) + ceil32(return_data.size) + 256] / 9960)
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
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 10
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
                           args 10, Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _577 = mem[192 len 4], 0
                    require mem[192 len 4], 0 <= test266151307()
                    require mem[192 len 4], 0 + 223 < return_data.size + 192
                    _599 = mem[mem[192 len 4], 0 + 192]
                    if mem[mem[192 len 4], 0 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                    require _577 + (32 * _599) + 32 <= return_data.size
                    idx = 0
                    s = _577 + 224
                    t = ceil32(return_data.size) + 224
                    while idx < _599:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if _599 < 1:
                        revert with 'NH{q', 17
                    if _599 - 1 >= _599:
                        revert with 'NH{q', 50
                    if mem[(32 * _599 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _599 - 1) + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 17
                    return (10000 * mem[(32 * _599 - 1) + ceil32(return_data.size) + 224] / 9980)
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
                       args 10, Array(len=2, data=mem[292 len 64])
                if ext_call.success:
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _578 = mem[192 len 4], 0
                    require mem[192 len 4], 0 <= test266151307()
                    require mem[192 len 4], 0 + 223 < return_data.size + 192
                    _600 = mem[mem[192 len 4], 0 + 192]
                    if mem[mem[192 len 4], 0 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                    require _578 + (32 * _600) + 32 <= return_data.size
                    idx = 0
                    s = _578 + 224
                    t = ceil32(return_data.size) + 224
                    while idx < _600:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if _600 < 1:
                        revert with 'NH{q', 17
                    if _600 - 1 >= _600:
                        revert with 'NH{q', 50
                    if mem[(32 * _600 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _600 - 1) + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 10000 * mem[(32 * _600 - 1) + ceil32(return_data.size) + 224] / 9980
                    return memory
                      from mem[64]
                       len 32
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 10
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
                       args 10, Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _984 = mem[192 len 4], 0
                require mem[192 len 4], 0 <= test266151307()
                require mem[192 len 4], 0 + 223 < return_data.size + 192
                _1006 = mem[mem[192 len 4], 0 + 192]
                if mem[mem[192 len 4], 0 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                require _984 + (32 * _1006) + 32 <= return_data.size
                idx = 0
                s = _984 + 224
                t = ceil32(return_data.size) + 224
                while idx < _1006:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _1006 < 1:
                    revert with 'NH{q', 17
                if _1006 - 1 >= _1006:
                    revert with 'NH{q', 50
                if mem[(32 * _1006 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _1006 - 1) + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 17
                return (10000 * mem[(32 * _1006 - 1) + ceil32(return_data.size) + 224] / 9980)
            if usdcAddress == wethAddress:
                mem[96] = 2
                mem[128] = arg1
                mem[160] = usdcAddress
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 10
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
                           args 10, Array(len=2, data=mem[292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _581 = mem[192 len 4], 0
                    require mem[192 len 4], 0 <= test266151307()
                    require mem[192 len 4], 0 + 223 < return_data.size + 192
                    _603 = mem[mem[192 len 4], 0 + 192]
                    if mem[mem[192 len 4], 0 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                    require _581 + (32 * _603) + 32 <= return_data.size
                    idx = 0
                    s = _581 + 224
                    t = ceil32(return_data.size) + 224
                    while idx < _603:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if _603 < 1:
                        revert with 'NH{q', 17
                    if _603 - 1 >= _603:
                        revert with 'NH{q', 50
                    if mem[(32 * _603 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _603 - 1) + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 17
                    return (10000 * mem[(32 * _603 - 1) + ceil32(return_data.size) + 224] / 9980)
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
                       args 10, Array(len=2, data=mem[292 len 64])
                if ext_call.success:
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _582 = mem[192 len 4], 0
                    require mem[192 len 4], 0 <= test266151307()
                    require mem[192 len 4], 0 + 223 < return_data.size + 192
                    _604 = mem[mem[192 len 4], 0 + 192]
                    if mem[mem[192 len 4], 0 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                    require _582 + (32 * _604) + 32 <= return_data.size
                    idx = 0
                    s = _582 + 224
                    t = ceil32(return_data.size) + 224
                    while idx < _604:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if _604 < 1:
                        revert with 'NH{q', 17
                    if _604 - 1 >= _604:
                        revert with 'NH{q', 50
                    if mem[(32 * _604 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _604 - 1) + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 17
                    return (10000 * mem[(32 * _604 - 1) + ceil32(return_data.size) + 224] / 9980)
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 10
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
                       args 10, Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _986 = mem[192 len 4], 0
                require mem[192 len 4], 0 <= test266151307()
                require mem[192 len 4], 0 + 223 < return_data.size + 192
                _1008 = mem[mem[192 len 4], 0 + 192]
                if mem[mem[192 len 4], 0 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                require _986 + (32 * _1008) + 32 <= return_data.size
                idx = 0
                s = _986 + 224
                t = ceil32(return_data.size) + 224
                while idx < _1008:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _1008 < 1:
                    revert with 'NH{q', 17
                if _1008 - 1 >= _1008:
                    revert with 'NH{q', 50
                if mem[(32 * _1008 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _1008 - 1) + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 17
                return (10000 * mem[(32 * _1008 - 1) + ceil32(return_data.size) + 224] / 9980)
            mem[96] = 3
            mem[128] = arg1
            mem[160] = wethAddress
            mem[192] = usdcAddress
            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[228] = 10
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
                       args 10, Array(len=3, data=mem[324 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _579 = mem[224 len 4], 0
                require mem[224 len 4], 0 <= test266151307()
                require mem[224 len 4], 0 + 255 < return_data.size + 224
                _601 = mem[mem[224 len 4], 0 + 224]
                if mem[mem[224 len 4], 0 + 224] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                require _579 + (32 * _601) + 32 <= return_data.size
                idx = 0
                s = _579 + 256
                t = ceil32(return_data.size) + 256
                while idx < _601:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _601 < 1:
                    revert with 'NH{q', 17
                if _601 - 1 >= _601:
                    revert with 'NH{q', 50
                if mem[(32 * _601 - 1) + ceil32(return_data.size) + 256] and 10000 > -1 / mem[(32 * _601 - 1) + ceil32(return_data.size) + 256]:
                    revert with 'NH{q', 17
                return (10000 * mem[(32 * _601 - 1) + ceil32(return_data.size) + 256] / 9960)
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
                   args 10, Array(len=3, data=mem[324 len 96])
            if ext_call.success:
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _580 = mem[224 len 4], 0
                require mem[224 len 4], 0 <= test266151307()
                require mem[224 len 4], 0 + 255 < return_data.size + 224
                _602 = mem[mem[224 len 4], 0 + 224]
                if mem[mem[224 len 4], 0 + 224] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                require _580 + (32 * _602) + 32 <= return_data.size
                idx = 0
                s = _580 + 256
                t = ceil32(return_data.size) + 256
                while idx < _602:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _602 < 1:
                    revert with 'NH{q', 17
                if _602 - 1 >= _602:
                    revert with 'NH{q', 50
                if mem[(32 * _602 - 1) + ceil32(return_data.size) + 256] and 10000 > -1 / mem[(32 * _602 - 1) + ceil32(return_data.size) + 256]:
                    revert with 'NH{q', 17
                mem[mem[64]] = 10000 * mem[(32 * _602 - 1) + ceil32(return_data.size) + 256] / 9960
                return memory
                  from mem[64]
                   len 32
            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[228] = 10
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
                   args 10, Array(len=3, data=mem[324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _985 = mem[224 len 4], 0
            require mem[224 len 4], 0 <= test266151307()
            require mem[224 len 4], 0 + 255 < return_data.size + 224
            _1007 = mem[mem[224 len 4], 0 + 224]
            if mem[mem[224 len 4], 0 + 224] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
            require _985 + (32 * _1007) + 32 <= return_data.size
            idx = 0
            s = _985 + 256
            t = ceil32(return_data.size) + 256
            while idx < _1007:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _1007 < 1:
                revert with 'NH{q', 17
            if _1007 - 1 >= _1007:
                revert with 'NH{q', 50
            if mem[(32 * _1007 - 1) + ceil32(return_data.size) + 256] and 10000 > -1 / mem[(32 * _1007 - 1) + ceil32(return_data.size) + 256]:
                revert with 'NH{q', 17
            return (10000 * mem[(32 * _1007 - 1) + ceil32(return_data.size) + 256] / 9960)
        if arg1 == wethAddress:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = wethAddress
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = 10
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
                       args 10, Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _583 = mem[192 len 4], 0
                require mem[192 len 4], 0 <= test266151307()
                require mem[192 len 4], 0 + 223 < return_data.size + 192
                _605 = mem[mem[192 len 4], 0 + 192]
                if mem[mem[192 len 4], 0 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                require _583 + (32 * _605) + 32 <= return_data.size
                idx = 0
                s = _583 + 224
                t = ceil32(return_data.size) + 224
                while idx < _605:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _605 < 1:
                    revert with 'NH{q', 17
                if _605 - 1 >= _605:
                    revert with 'NH{q', 50
                if mem[(32 * _605 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _605 - 1) + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 17
                return (10000 * mem[(32 * _605 - 1) + ceil32(return_data.size) + 224] / 9980)
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
                   args 10, Array(len=2, data=mem[292 len 64])
            if ext_call.success:
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _584 = mem[192 len 4], 0
                require mem[192 len 4], 0 <= test266151307()
                require mem[192 len 4], 0 + 223 < return_data.size + 192
                _606 = mem[mem[192 len 4], 0 + 192]
                if mem[mem[192 len 4], 0 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                require _584 + (32 * _606) + 32 <= return_data.size
                idx = 0
                s = _584 + 224
                t = ceil32(return_data.size) + 224
                while idx < _606:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _606 < 1:
                    revert with 'NH{q', 17
                if _606 - 1 >= _606:
                    revert with 'NH{q', 50
                if mem[(32 * _606 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _606 - 1) + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 17
                mem[mem[64]] = 10000 * mem[(32 * _606 - 1) + ceil32(return_data.size) + 224] / 9980
                return memory
                  from mem[64]
                   len 32
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = 10
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
                   args 10, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _987 = mem[192 len 4], 0
            require mem[192 len 4], 0 <= test266151307()
            require mem[192 len 4], 0 + 223 < return_data.size + 192
            _1009 = mem[mem[192 len 4], 0 + 192]
            if mem[mem[192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
            require _987 + (32 * _1009) + 32 <= return_data.size
            idx = 0
            s = _987 + 224
            t = ceil32(return_data.size) + 224
            while idx < _1009:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _1009 < 1:
                revert with 'NH{q', 17
            if _1009 - 1 >= _1009:
                revert with 'NH{q', 50
            if mem[(32 * _1009 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _1009 - 1) + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 17
            return (10000 * mem[(32 * _1009 - 1) + ceil32(return_data.size) + 224] / 9980)
        if wethAddress == wethAddress:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = wethAddress
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = 10
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
                       args 10, Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _587 = mem[192 len 4], 0
                require mem[192 len 4], 0 <= test266151307()
                require mem[192 len 4], 0 + 223 < return_data.size + 192
                _609 = mem[mem[192 len 4], 0 + 192]
                if mem[mem[192 len 4], 0 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                require _587 + (32 * _609) + 32 <= return_data.size
                idx = 0
                s = _587 + 224
                t = ceil32(return_data.size) + 224
                while idx < _609:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _609 < 1:
                    revert with 'NH{q', 17
                if _609 - 1 >= _609:
                    revert with 'NH{q', 50
                if mem[(32 * _609 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _609 - 1) + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 17
                return (10000 * mem[(32 * _609 - 1) + ceil32(return_data.size) + 224] / 9980)
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
                   args 10, Array(len=2, data=mem[292 len 64])
            if ext_call.success:
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _588 = mem[192 len 4], 0
                require mem[192 len 4], 0 <= test266151307()
                require mem[192 len 4], 0 + 223 < return_data.size + 192
                _610 = mem[mem[192 len 4], 0 + 192]
                if mem[mem[192 len 4], 0 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                require _588 + (32 * _610) + 32 <= return_data.size
                idx = 0
                s = _588 + 224
                t = ceil32(return_data.size) + 224
                while idx < _610:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _610 < 1:
                    revert with 'NH{q', 17
                if _610 - 1 >= _610:
                    revert with 'NH{q', 50
                if mem[(32 * _610 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _610 - 1) + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 17
                return (10000 * mem[(32 * _610 - 1) + ceil32(return_data.size) + 224] / 9980)
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = 10
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
                   args 10, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _989 = mem[192 len 4], 0
            require mem[192 len 4], 0 <= test266151307()
            require mem[192 len 4], 0 + 223 < return_data.size + 192
            _1011 = mem[mem[192 len 4], 0 + 192]
            if mem[mem[192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
            require _989 + (32 * _1011) + 32 <= return_data.size
            idx = 0
            s = _989 + 224
            t = ceil32(return_data.size) + 224
            while idx < _1011:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _1011 < 1:
                revert with 'NH{q', 17
            if _1011 - 1 >= _1011:
                revert with 'NH{q', 50
            if mem[(32 * _1011 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _1011 - 1) + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 17
            return (10000 * mem[(32 * _1011 - 1) + ceil32(return_data.size) + 224] / 9980)
        mem[96] = 3
        mem[128] = arg1
        mem[160] = wethAddress
        mem[192] = wethAddress
        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[228] = 10
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
                   args 10, Array(len=3, data=mem[324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _585 = mem[224 len 4], 0
            require mem[224 len 4], 0 <= test266151307()
            require mem[224 len 4], 0 + 255 < return_data.size + 224
            _607 = mem[mem[224 len 4], 0 + 224]
            if mem[mem[224 len 4], 0 + 224] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
            require _585 + (32 * _607) + 32 <= return_data.size
            idx = 0
            s = _585 + 256
            t = ceil32(return_data.size) + 256
            while idx < _607:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _607 < 1:
                revert with 'NH{q', 17
            if _607 - 1 >= _607:
                revert with 'NH{q', 50
            if mem[(32 * _607 - 1) + ceil32(return_data.size) + 256] and 10000 > -1 / mem[(32 * _607 - 1) + ceil32(return_data.size) + 256]:
                revert with 'NH{q', 17
            return (10000 * mem[(32 * _607 - 1) + ceil32(return_data.size) + 256] / 9960)
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
               args 10, Array(len=3, data=mem[324 len 96])
        if ext_call.success:
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _586 = mem[224 len 4], 0
            require mem[224 len 4], 0 <= test266151307()
            require mem[224 len 4], 0 + 255 < return_data.size + 224
            _608 = mem[mem[224 len 4], 0 + 224]
            if mem[mem[224 len 4], 0 + 224] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
            require _586 + (32 * _608) + 32 <= return_data.size
            idx = 0
            s = _586 + 256
            t = ceil32(return_data.size) + 256
            while idx < _608:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _608 < 1:
                revert with 'NH{q', 17
            if _608 - 1 >= _608:
                revert with 'NH{q', 50
            if mem[(32 * _608 - 1) + ceil32(return_data.size) + 256] and 10000 > -1 / mem[(32 * _608 - 1) + ceil32(return_data.size) + 256]:
                revert with 'NH{q', 17
            return (10000 * mem[(32 * _608 - 1) + ceil32(return_data.size) + 256] / 9960)
        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[228] = 10
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
               args 10, Array(len=3, data=mem[324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _988 = mem[224 len 4], 0
        require mem[224 len 4], 0 <= test266151307()
        require mem[224 len 4], 0 + 255 < return_data.size + 224
        _1010 = mem[mem[224 len 4], 0 + 224]
        if mem[mem[224 len 4], 0 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
        require _988 + (32 * _1010) + 32 <= return_data.size
        idx = 0
        s = _988 + 256
        t = ceil32(return_data.size) + 256
        while idx < _1010:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _1010 < 1:
            revert with 'NH{q', 17
        if _1010 - 1 >= _1010:
            revert with 'NH{q', 50
        if mem[(32 * _1010 - 1) + ceil32(return_data.size) + 256] and 10000 > -1 / mem[(32 * _1010 - 1) + ceil32(return_data.size) + 256]:
            revert with 'NH{q', 17
        return (10000 * mem[(32 * _1010 - 1) + ceil32(return_data.size) + 256] / 9960)
    if usdcAddress == stor8:
        if wethAddress == wethAddress:
            mem[96] = 2
            mem[128] = wethAddress
            mem[160] = wethAddress
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = 10
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
                       args 10, Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _595 = mem[192 len 4], 0
                require mem[192 len 4], 0 <= test266151307()
                require mem[192 len 4], 0 + 223 < return_data.size + 192
                _617 = mem[mem[192 len 4], 0 + 192]
                if mem[mem[192 len 4], 0 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                require _595 + (32 * _617) + 32 <= return_data.size
                idx = 0
                s = _595 + 224
                t = ceil32(return_data.size) + 224
                while idx < _617:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _617 < 1:
                    revert with 'NH{q', 17
                if _617 - 1 >= _617:
                    revert with 'NH{q', 50
                if mem[(32 * _617 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _617 - 1) + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 17
                return (10000 * mem[(32 * _617 - 1) + ceil32(return_data.size) + 224] / 9980)
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
                   args 10, Array(len=2, data=mem[292 len 64])
            if ext_call.success:
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _596 = mem[192 len 4], 0
                require mem[192 len 4], 0 <= test266151307()
                require mem[192 len 4], 0 + 223 < return_data.size + 192
                _618 = mem[mem[192 len 4], 0 + 192]
                if mem[mem[192 len 4], 0 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                require _596 + (32 * _618) + 32 <= return_data.size
                idx = 0
                s = _596 + 224
                t = ceil32(return_data.size) + 224
                while idx < _618:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if _618 < 1:
                    revert with 'NH{q', 17
                if _618 - 1 >= _618:
                    revert with 'NH{q', 50
                if mem[(32 * _618 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _618 - 1) + ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 17
                return (10000 * mem[(32 * _618 - 1) + ceil32(return_data.size) + 224] / 9980)
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = 10
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
                   args 10, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _993 = mem[192 len 4], 0
            require mem[192 len 4], 0 <= test266151307()
            require mem[192 len 4], 0 + 223 < return_data.size + 192
            _1015 = mem[mem[192 len 4], 0 + 192]
            if mem[mem[192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
            require _993 + (32 * _1015) + 32 <= return_data.size
            idx = 0
            s = _993 + 224
            t = ceil32(return_data.size) + 224
            while idx < _1015:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _1015 < 1:
                revert with 'NH{q', 17
            if _1015 - 1 >= _1015:
                revert with 'NH{q', 50
            if mem[(32 * _1015 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _1015 - 1) + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 17
            return (10000 * mem[(32 * _1015 - 1) + ceil32(return_data.size) + 224] / 9980)
        mem[96] = 3
        mem[128] = wethAddress
        mem[160] = wethAddress
        mem[192] = wethAddress
        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[228] = 10
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
                   args 10, Array(len=3, data=mem[324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _597 = mem[224 len 4], 0
            require mem[224 len 4], 0 <= test266151307()
            require mem[224 len 4], 0 + 255 < return_data.size + 224
            _619 = mem[mem[224 len 4], 0 + 224]
            if mem[mem[224 len 4], 0 + 224] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
            require _597 + (32 * _619) + 32 <= return_data.size
            idx = 0
            s = _597 + 256
            t = ceil32(return_data.size) + 256
            while idx < _619:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _619 < 1:
                revert with 'NH{q', 17
            if _619 - 1 >= _619:
                revert with 'NH{q', 50
            if mem[(32 * _619 - 1) + ceil32(return_data.size) + 256] and 10000 > -1 / mem[(32 * _619 - 1) + ceil32(return_data.size) + 256]:
                revert with 'NH{q', 17
            return (10000 * mem[(32 * _619 - 1) + ceil32(return_data.size) + 256] / 9960)
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
               args 10, Array(len=3, data=mem[324 len 96])
        if ext_call.success:
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _598 = mem[224 len 4], 0
            require mem[224 len 4], 0 <= test266151307()
            require mem[224 len 4], 0 + 255 < return_data.size + 224
            _620 = mem[mem[224 len 4], 0 + 224]
            if mem[mem[224 len 4], 0 + 224] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
            require _598 + (32 * _620) + 32 <= return_data.size
            idx = 0
            s = _598 + 256
            t = ceil32(return_data.size) + 256
            while idx < _620:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _620 < 1:
                revert with 'NH{q', 17
            if _620 - 1 >= _620:
                revert with 'NH{q', 50
            if mem[(32 * _620 - 1) + ceil32(return_data.size) + 256] and 10000 > -1 / mem[(32 * _620 - 1) + ceil32(return_data.size) + 256]:
                revert with 'NH{q', 17
            return (10000 * mem[(32 * _620 - 1) + ceil32(return_data.size) + 256] / 9960)
        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[228] = 10
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
               args 10, Array(len=3, data=mem[324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _994 = mem[224 len 4], 0
        require mem[224 len 4], 0 <= test266151307()
        require mem[224 len 4], 0 + 255 < return_data.size + 224
        _1016 = mem[mem[224 len 4], 0 + 224]
        if mem[mem[224 len 4], 0 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
        require _994 + (32 * _1016) + 32 <= return_data.size
        idx = 0
        s = _994 + 256
        t = ceil32(return_data.size) + 256
        while idx < _1016:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _1016 < 1:
            revert with 'NH{q', 17
        if _1016 - 1 >= _1016:
            revert with 'NH{q', 50
        if mem[(32 * _1016 - 1) + ceil32(return_data.size) + 256] and 10000 > -1 / mem[(32 * _1016 - 1) + ceil32(return_data.size) + 256]:
            revert with 'NH{q', 17
        return (10000 * mem[(32 * _1016 - 1) + ceil32(return_data.size) + 256] / 9960)
    if wethAddress == wethAddress:
        mem[96] = 2
        mem[128] = wethAddress
        mem[160] = usdcAddress
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = 10
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
                   args 10, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _589 = mem[192 len 4], 0
            require mem[192 len 4], 0 <= test266151307()
            require mem[192 len 4], 0 + 223 < return_data.size + 192
            _611 = mem[mem[192 len 4], 0 + 192]
            if mem[mem[192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
            require _589 + (32 * _611) + 32 <= return_data.size
            idx = 0
            s = _589 + 224
            t = ceil32(return_data.size) + 224
            while idx < _611:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _611 < 1:
                revert with 'NH{q', 17
            if _611 - 1 >= _611:
                revert with 'NH{q', 50
            if mem[(32 * _611 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _611 - 1) + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 17
            return (10000 * mem[(32 * _611 - 1) + ceil32(return_data.size) + 224] / 9980)
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
               args 10, Array(len=2, data=mem[292 len 64])
        if ext_call.success:
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _590 = mem[192 len 4], 0
            require mem[192 len 4], 0 <= test266151307()
            require mem[192 len 4], 0 + 223 < return_data.size + 192
            _612 = mem[mem[192 len 4], 0 + 192]
            if mem[mem[192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
            require _590 + (32 * _612) + 32 <= return_data.size
            idx = 0
            s = _590 + 224
            t = ceil32(return_data.size) + 224
            while idx < _612:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _612 < 1:
                revert with 'NH{q', 17
            if _612 - 1 >= _612:
                revert with 'NH{q', 50
            if mem[(32 * _612 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _612 - 1) + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 17
            return (10000 * mem[(32 * _612 - 1) + ceil32(return_data.size) + 224] / 9980)
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = 10
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
               args 10, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _990 = mem[192 len 4], 0
        require mem[192 len 4], 0 <= test266151307()
        require mem[192 len 4], 0 + 223 < return_data.size + 192
        _1012 = mem[mem[192 len 4], 0 + 192]
        if mem[mem[192 len 4], 0 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
        require _990 + (32 * _1012) + 32 <= return_data.size
        idx = 0
        s = _990 + 224
        t = ceil32(return_data.size) + 224
        while idx < _1012:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _1012 < 1:
            revert with 'NH{q', 17
        if _1012 - 1 >= _1012:
            revert with 'NH{q', 50
        if mem[(32 * _1012 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _1012 - 1) + ceil32(return_data.size) + 224]:
            revert with 'NH{q', 17
        return (10000 * mem[(32 * _1012 - 1) + ceil32(return_data.size) + 224] / 9980)
    if usdcAddress == wethAddress:
        mem[96] = 2
        mem[128] = wethAddress
        mem[160] = usdcAddress
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = 10
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
                   args 10, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _593 = mem[192 len 4], 0
            require mem[192 len 4], 0 <= test266151307()
            require mem[192 len 4], 0 + 223 < return_data.size + 192
            _615 = mem[mem[192 len 4], 0 + 192]
            if mem[mem[192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
            require _593 + (32 * _615) + 32 <= return_data.size
            idx = 0
            s = _593 + 224
            t = ceil32(return_data.size) + 224
            while idx < _615:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _615 < 1:
                revert with 'NH{q', 17
            if _615 - 1 >= _615:
                revert with 'NH{q', 50
            if mem[(32 * _615 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _615 - 1) + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 17
            return (10000 * mem[(32 * _615 - 1) + ceil32(return_data.size) + 224] / 9980)
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
               args 10, Array(len=2, data=mem[292 len 64])
        if ext_call.success:
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _594 = mem[192 len 4], 0
            require mem[192 len 4], 0 <= test266151307()
            require mem[192 len 4], 0 + 223 < return_data.size + 192
            _616 = mem[mem[192 len 4], 0 + 192]
            if mem[mem[192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
            require _594 + (32 * _616) + 32 <= return_data.size
            idx = 0
            s = _594 + 224
            t = ceil32(return_data.size) + 224
            while idx < _616:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _616 < 1:
                revert with 'NH{q', 17
            if _616 - 1 >= _616:
                revert with 'NH{q', 50
            if mem[(32 * _616 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _616 - 1) + ceil32(return_data.size) + 224]:
                revert with 'NH{q', 17
            return (10000 * mem[(32 * _616 - 1) + ceil32(return_data.size) + 224] / 9980)
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = 10
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
               args 10, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _992 = mem[192 len 4], 0
        require mem[192 len 4], 0 <= test266151307()
        require mem[192 len 4], 0 + 223 < return_data.size + 192
        _1014 = mem[mem[192 len 4], 0 + 192]
        if mem[mem[192 len 4], 0 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 0 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 0 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
        require _992 + (32 * _1014) + 32 <= return_data.size
        idx = 0
        s = _992 + 224
        t = ceil32(return_data.size) + 224
        while idx < _1014:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _1014 < 1:
            revert with 'NH{q', 17
        if _1014 - 1 >= _1014:
            revert with 'NH{q', 50
        if mem[(32 * _1014 - 1) + ceil32(return_data.size) + 224] and 10000 > -1 / mem[(32 * _1014 - 1) + ceil32(return_data.size) + 224]:
            revert with 'NH{q', 17
        return (10000 * mem[(32 * _1014 - 1) + ceil32(return_data.size) + 224] / 9980)
    mem[96] = 3
    mem[128] = wethAddress
    mem[160] = wethAddress
    mem[192] = usdcAddress
    mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[228] = 10
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
               args 10, Array(len=3, data=mem[324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _591 = mem[224 len 4], 0
        require mem[224 len 4], 0 <= test266151307()
        require mem[224 len 4], 0 + 255 < return_data.size + 224
        _613 = mem[mem[224 len 4], 0 + 224]
        if mem[mem[224 len 4], 0 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
        require _591 + (32 * _613) + 32 <= return_data.size
        idx = 0
        s = _591 + 256
        t = ceil32(return_data.size) + 256
        while idx < _613:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _613 < 1:
            revert with 'NH{q', 17
        if _613 - 1 >= _613:
            revert with 'NH{q', 50
        if mem[(32 * _613 - 1) + ceil32(return_data.size) + 256] and 10000 > -1 / mem[(32 * _613 - 1) + ceil32(return_data.size) + 256]:
            revert with 'NH{q', 17
        return (10000 * mem[(32 * _613 - 1) + ceil32(return_data.size) + 256] / 9960)
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
           args 10, Array(len=3, data=mem[324 len 96])
    if ext_call.success:
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _592 = mem[224 len 4], 0
        require mem[224 len 4], 0 <= test266151307()
        require mem[224 len 4], 0 + 255 < return_data.size + 224
        _614 = mem[mem[224 len 4], 0 + 224]
        if mem[mem[224 len 4], 0 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
        require _592 + (32 * _614) + 32 <= return_data.size
        idx = 0
        s = _592 + 256
        t = ceil32(return_data.size) + 256
        while idx < _614:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _614 < 1:
            revert with 'NH{q', 17
        if _614 - 1 >= _614:
            revert with 'NH{q', 50
        if mem[(32 * _614 - 1) + ceil32(return_data.size) + 256] and 10000 > -1 / mem[(32 * _614 - 1) + ceil32(return_data.size) + 256]:
            revert with 'NH{q', 17
        return (10000 * mem[(32 * _614 - 1) + ceil32(return_data.size) + 256] / 9960)
    mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[228] = 10
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
           args 10, Array(len=3, data=mem[324 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    _991 = mem[224 len 4], 0
    require mem[224 len 4], 0 <= test266151307()
    require mem[224 len 4], 0 + 255 < return_data.size + 224
    _1013 = mem[mem[224 len 4], 0 + 224]
    if mem[mem[224 len 4], 0 + 224] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 0 + 224]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 0 + 224]) + 225
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
    require _991 + (32 * _1013) + 32 <= return_data.size
    idx = 0
    s = _991 + 256
    t = ceil32(return_data.size) + 256
    while idx < _1013:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _1013 < 1:
        revert with 'NH{q', 17
    if _1013 - 1 >= _1013:
        revert with 'NH{q', 50
    if mem[(32 * _1013 - 1) + ceil32(return_data.size) + 256] and 10000 > -1 / mem[(32 * _1013 - 1) + ceil32(return_data.size) + 256]:
        revert with 'NH{q', 17
    return (10000 * mem[(32 * _1013 - 1) + ceil32(return_data.size) + 256] / 9960)
}



}
