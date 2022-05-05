contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_77c37635(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(address(arg1))
    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg4, arg5, address(this.address), 128, 64, address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if not arg2:
        require arg4.length >= 64
        require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
        require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).factory() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 'NH{q', 1
        mem[(6 * ceil32(return_data.size)) + 96] = 2
        mem[(6 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 196] = address(cd[(arg4 + 68)])
        mem[(6 * ceil32(return_data.size)) + 228] = arg3
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg3
        mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 196] = arg3
        mem[(7 * ceil32(return_data.size)) + 228] = 64
        mem[(7 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (6 * ceil32(return_data.size)) + 128
        t = (7 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (8 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        if not arg2:
            if not arg3:
                if not arg2:
                    _430 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _454 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _430 + (32 * _454) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _430 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _454:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _454:
                        revert with 'NH{q', 50
                    _1462 = mem[(8 * ceil32(return_data.size)) + 224]
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1462
                    mem[mem[64] + 68] = 160
                    _1510 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1510:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 30
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1462, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1510) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2374 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2398 = mem[_2374]
                    require mem[_2374] <= test266151307()
                    require _2374 + mem[_2374] + 31 < _2374 + return_data.size
                    _2422 = mem[_2374 + mem[_2374]]
                    if mem[_2374 + mem[_2374]] > test266151307():
                        revert with 'NH{q', 65
                    if _2374 + ceil32(return_data.size) + floor32(mem[_2374 + mem[_2374]]) + 1 > test266151307() or floor32(mem[_2374 + mem[_2374]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2374 + ceil32(return_data.size) + floor32(mem[_2374 + mem[_2374]]) + 1
                    mem[_2374 + ceil32(return_data.size)] = _2422
                    require _2398 + (32 * _2422) + 32 <= return_data.size
                    idx = 0
                    s = _2374 + _2398 + 32
                    t = _2374 + ceil32(return_data.size) + 32
                    while idx < _2422:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _2422:
                        revert with 'NH{q', 50
                    _3166 = mem[_2374 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1462
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1462
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _3286 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3286] == bool(mem[_3286])
                        if _3166 < _1462:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3166 - _1462
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), _3166 - _1462
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3574 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3574] == bool(mem[_3574])
                        else:
                            _3575 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3575] == bool(mem[_3575])
                    else:
                        _3287 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3287] == bool(mem[_3287])
                        if _3166 < _1462:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3166 - _1462
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), _3166 - _1462
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3576 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3576] == bool(mem[_3576])
                        else:
                            _3577 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3577] == bool(mem[_3577])
                else:
                    _431 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _455 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _431 + (32 * _455) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _431 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _455:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _455:
                        revert with 'NH{q', 50
                    _1463 = mem[(8 * ceil32(return_data.size)) + 224]
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1463
                    mem[mem[64] + 68] = 160
                    _1511 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1511:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 30
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1463, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1511) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2375 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2399 = mem[_2375]
                    require mem[_2375] <= test266151307()
                    require _2375 + mem[_2375] + 31 < _2375 + return_data.size
                    _2423 = mem[_2375 + mem[_2375]]
                    if mem[_2375 + mem[_2375]] > test266151307():
                        revert with 'NH{q', 65
                    if _2375 + ceil32(return_data.size) + floor32(mem[_2375 + mem[_2375]]) + 1 > test266151307() or floor32(mem[_2375 + mem[_2375]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2375 + ceil32(return_data.size) + floor32(mem[_2375 + mem[_2375]]) + 1
                    mem[_2375 + ceil32(return_data.size)] = _2423
                    require _2399 + (32 * _2423) + 32 <= return_data.size
                    idx = 0
                    s = _2375 + _2399 + 32
                    t = _2375 + ceil32(return_data.size) + 32
                    while idx < _2423:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _2423:
                        revert with 'NH{q', 50
                    _3167 = mem[_2375 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1463
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1463
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _3288 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3288] == bool(mem[_3288])
                        if _3167 < _1463:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3167 - _1463
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), _3167 - _1463
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3578 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3578] == bool(mem[_3578])
                        else:
                            _3579 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3579] == bool(mem[_3579])
                    else:
                        _3289 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3289] == bool(mem[_3289])
                        if _3167 < _1463:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3167 - _1463
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), _3167 - _1463
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3580 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3580] == bool(mem[_3580])
                        else:
                            _3581 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3581] == bool(mem[_3581])
            else:
                if not arg2:
                    _432 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _456 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _432 + (32 * _456) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _432 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _456:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _456:
                        revert with 'NH{q', 50
                    _1464 = mem[(8 * ceil32(return_data.size)) + 224]
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1464
                    mem[mem[64] + 68] = 160
                    _1512 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1512:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 30
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1464, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1512) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2376 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2400 = mem[_2376]
                    require mem[_2376] <= test266151307()
                    require _2376 + mem[_2376] + 31 < _2376 + return_data.size
                    _2424 = mem[_2376 + mem[_2376]]
                    if mem[_2376 + mem[_2376]] > test266151307():
                        revert with 'NH{q', 65
                    if _2376 + ceil32(return_data.size) + floor32(mem[_2376 + mem[_2376]]) + 1 > test266151307() or floor32(mem[_2376 + mem[_2376]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2376 + ceil32(return_data.size) + floor32(mem[_2376 + mem[_2376]]) + 1
                    mem[_2376 + ceil32(return_data.size)] = _2424
                    require _2400 + (32 * _2424) + 32 <= return_data.size
                    idx = 0
                    s = _2376 + _2400 + 32
                    t = _2376 + ceil32(return_data.size) + 32
                    while idx < _2424:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _2424:
                        revert with 'NH{q', 50
                    _3168 = mem[_2376 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1464
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1464
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _3290 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3290] == bool(mem[_3290])
                        if _3168 < _1464:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3168 - _1464
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), _3168 - _1464
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3582 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3582] == bool(mem[_3582])
                        else:
                            _3583 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3583] == bool(mem[_3583])
                    else:
                        _3291 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3291] == bool(mem[_3291])
                        if _3168 < _1464:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3168 - _1464
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), _3168 - _1464
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3584 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3584] == bool(mem[_3584])
                        else:
                            _3585 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3585] == bool(mem[_3585])
                else:
                    _433 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _457 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _433 + (32 * _457) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _433 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _457:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _457:
                        revert with 'NH{q', 50
                    _1465 = mem[(8 * ceil32(return_data.size)) + 224]
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1465
                    mem[mem[64] + 68] = 160
                    _1513 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1513:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 30
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1465, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1513) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2377 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2401 = mem[_2377]
                    require mem[_2377] <= test266151307()
                    require _2377 + mem[_2377] + 31 < _2377 + return_data.size
                    _2425 = mem[_2377 + mem[_2377]]
                    if mem[_2377 + mem[_2377]] > test266151307():
                        revert with 'NH{q', 65
                    if _2377 + ceil32(return_data.size) + floor32(mem[_2377 + mem[_2377]]) + 1 > test266151307() or floor32(mem[_2377 + mem[_2377]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2377 + ceil32(return_data.size) + floor32(mem[_2377 + mem[_2377]]) + 1
                    mem[_2377 + ceil32(return_data.size)] = _2425
                    require _2401 + (32 * _2425) + 32 <= return_data.size
                    idx = 0
                    s = _2377 + _2401 + 32
                    t = _2377 + ceil32(return_data.size) + 32
                    while idx < _2425:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _2425:
                        revert with 'NH{q', 50
                    _3169 = mem[_2377 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1465
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1465
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _3292 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3292] == bool(mem[_3292])
                        if _3169 < _1465:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3169 - _1465
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), _3169 - _1465
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3586 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3586] == bool(mem[_3586])
                        else:
                            _3587 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3587] == bool(mem[_3587])
                    else:
                        _3293 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3293] == bool(mem[_3293])
                        if _3169 < _1465:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3169 - _1465
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), _3169 - _1465
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3588 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3588] == bool(mem[_3588])
                        else:
                            _3589 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3589] == bool(mem[_3589])
        else:
            if not arg3:
                if not arg2:
                    _434 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _458 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _434 + (32 * _458) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _434 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _458:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _458:
                        revert with 'NH{q', 50
                    _1466 = mem[(8 * ceil32(return_data.size)) + 224]
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1466
                    mem[mem[64] + 68] = 160
                    _1514 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1514:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 30
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1466, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1514) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2378 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2402 = mem[_2378]
                    require mem[_2378] <= test266151307()
                    require _2378 + mem[_2378] + 31 < _2378 + return_data.size
                    _2426 = mem[_2378 + mem[_2378]]
                    if mem[_2378 + mem[_2378]] > test266151307():
                        revert with 'NH{q', 65
                    if _2378 + ceil32(return_data.size) + floor32(mem[_2378 + mem[_2378]]) + 1 > test266151307() or floor32(mem[_2378 + mem[_2378]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2378 + ceil32(return_data.size) + floor32(mem[_2378 + mem[_2378]]) + 1
                    mem[_2378 + ceil32(return_data.size)] = _2426
                    require _2402 + (32 * _2426) + 32 <= return_data.size
                    idx = 0
                    s = _2378 + _2402 + 32
                    t = _2378 + ceil32(return_data.size) + 32
                    while idx < _2426:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _2426:
                        revert with 'NH{q', 50
                    _3170 = mem[_2378 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1466
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1466
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _3294 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3294] == bool(mem[_3294])
                        if _3170 < _1466:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3170 - _1466
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), _3170 - _1466
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3590 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3590] == bool(mem[_3590])
                        else:
                            _3591 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3591] == bool(mem[_3591])
                    else:
                        _3295 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3295] == bool(mem[_3295])
                        if _3170 < _1466:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3170 - _1466
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), _3170 - _1466
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3592 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3592] == bool(mem[_3592])
                        else:
                            _3593 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3593] == bool(mem[_3593])
                else:
                    _435 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _459 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _435 + (32 * _459) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _435 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _459:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _459:
                        revert with 'NH{q', 50
                    _1467 = mem[(8 * ceil32(return_data.size)) + 224]
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1467
                    mem[mem[64] + 68] = 160
                    _1515 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1515:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 30
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1467, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1515) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2379 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2403 = mem[_2379]
                    require mem[_2379] <= test266151307()
                    require _2379 + mem[_2379] + 31 < _2379 + return_data.size
                    _2427 = mem[_2379 + mem[_2379]]
                    if mem[_2379 + mem[_2379]] > test266151307():
                        revert with 'NH{q', 65
                    if _2379 + ceil32(return_data.size) + floor32(mem[_2379 + mem[_2379]]) + 1 > test266151307() or floor32(mem[_2379 + mem[_2379]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2379 + ceil32(return_data.size) + floor32(mem[_2379 + mem[_2379]]) + 1
                    mem[_2379 + ceil32(return_data.size)] = _2427
                    require _2403 + (32 * _2427) + 32 <= return_data.size
                    idx = 0
                    s = _2379 + _2403 + 32
                    t = _2379 + ceil32(return_data.size) + 32
                    while idx < _2427:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _2427:
                        revert with 'NH{q', 50
                    _3171 = mem[_2379 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1467
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1467
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _3296 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3296] == bool(mem[_3296])
                        if _3171 < _1467:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3171 - _1467
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), _3171 - _1467
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3594 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3594] == bool(mem[_3594])
                        else:
                            _3595 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3595] == bool(mem[_3595])
                    else:
                        _3297 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3297] == bool(mem[_3297])
                        if _3171 < _1467:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3171 - _1467
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), _3171 - _1467
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3596 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3596] == bool(mem[_3596])
                        else:
                            _3597 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3597] == bool(mem[_3597])
            else:
                if not arg2:
                    _436 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _460 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _436 + (32 * _460) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _436 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _460:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _460:
                        revert with 'NH{q', 50
                    _1468 = mem[(8 * ceil32(return_data.size)) + 224]
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1468
                    mem[mem[64] + 68] = 160
                    _1516 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1516:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 30
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1468, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1516) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2380 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2404 = mem[_2380]
                    require mem[_2380] <= test266151307()
                    require _2380 + mem[_2380] + 31 < _2380 + return_data.size
                    _2428 = mem[_2380 + mem[_2380]]
                    if mem[_2380 + mem[_2380]] > test266151307():
                        revert with 'NH{q', 65
                    if _2380 + ceil32(return_data.size) + floor32(mem[_2380 + mem[_2380]]) + 1 > test266151307() or floor32(mem[_2380 + mem[_2380]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2380 + ceil32(return_data.size) + floor32(mem[_2380 + mem[_2380]]) + 1
                    mem[_2380 + ceil32(return_data.size)] = _2428
                    require _2404 + (32 * _2428) + 32 <= return_data.size
                    idx = 0
                    s = _2380 + _2404 + 32
                    t = _2380 + ceil32(return_data.size) + 32
                    while idx < _2428:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _2428:
                        revert with 'NH{q', 50
                    _3172 = mem[_2380 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1468
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1468
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _3298 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3298] == bool(mem[_3298])
                        if _3172 < _1468:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3172 - _1468
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), _3172 - _1468
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3598 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3598] == bool(mem[_3598])
                        else:
                            _3599 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3599] == bool(mem[_3599])
                    else:
                        _3299 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3299] == bool(mem[_3299])
                        if _3172 < _1468:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3172 - _1468
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), _3172 - _1468
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3600 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3600] == bool(mem[_3600])
                        else:
                            _3601 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3601] == bool(mem[_3601])
                else:
                    _437 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _461 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _437 + (32 * _461) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _437 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _461:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _461:
                        revert with 'NH{q', 50
                    _1469 = mem[(8 * ceil32(return_data.size)) + 224]
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1469
                    mem[mem[64] + 68] = 160
                    _1517 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1517:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = msg.sender
                    mem[mem[64] + 132] = block.timestamp + 30
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _1469, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1517) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2381 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2405 = mem[_2381]
                    require mem[_2381] <= test266151307()
                    require _2381 + mem[_2381] + 31 < _2381 + return_data.size
                    _2429 = mem[_2381 + mem[_2381]]
                    if mem[_2381 + mem[_2381]] > test266151307():
                        revert with 'NH{q', 65
                    if _2381 + ceil32(return_data.size) + floor32(mem[_2381 + mem[_2381]]) + 1 > test266151307() or floor32(mem[_2381 + mem[_2381]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2381 + ceil32(return_data.size) + floor32(mem[_2381 + mem[_2381]]) + 1
                    mem[_2381 + ceil32(return_data.size)] = _2429
                    require _2405 + (32 * _2429) + 32 <= return_data.size
                    idx = 0
                    s = _2381 + _2405 + 32
                    t = _2381 + ceil32(return_data.size) + 32
                    while idx < _2429:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _2429:
                        revert with 'NH{q', 50
                    _3173 = mem[_2381 + ceil32(return_data.size) + 64]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1469
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _1469
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _3300 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3300] == bool(mem[_3300])
                        if _3173 < _1469:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3173 - _1469
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), _3173 - _1469
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3602 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3602] == bool(mem[_3602])
                        else:
                            _3603 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3603] == bool(mem[_3603])
                    else:
                        _3301 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3301] == bool(mem[_3301])
                        if _3173 < _1469:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3173 - _1469
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), _3173 - _1469
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3604 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3604] == bool(mem[_3604])
                        else:
                            _3605 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3605] == bool(mem[_3605])
    else:
        require not arg3
        require arg4.length >= 64
        require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
        require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).factory() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 'NH{q', 1
        mem[(6 * ceil32(return_data.size)) + 96] = 2
        mem[(6 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 196] = address(cd[(arg4 + 68)])
        if not arg2:
            mem[(6 * ceil32(return_data.size)) + 228] = arg3
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 68)]), arg3
            mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 196] = arg3
            mem[(7 * ceil32(return_data.size)) + 228] = 64
            mem[(7 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            s = (6 * ceil32(return_data.size)) + 128
            t = (7 * ceil32(return_data.size)) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[(arg4 + 36)]))
            staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            if not arg2:
                if not arg3:
                    if not arg2:
                        _438 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _462 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require _438 + (32 * _462) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _438 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _462:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _462:
                            revert with 'NH{q', 50
                        _1470 = mem[(8 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _1470
                        mem[mem[64] + 68] = 160
                        _1518 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _1518:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 30
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _1470, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1518) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2382 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2406 = mem[_2382]
                        require mem[_2382] <= test266151307()
                        require _2382 + mem[_2382] + 31 < _2382 + return_data.size
                        _2430 = mem[_2382 + mem[_2382]]
                        if mem[_2382 + mem[_2382]] > test266151307():
                            revert with 'NH{q', 65
                        if _2382 + ceil32(return_data.size) + floor32(mem[_2382 + mem[_2382]]) + 1 > test266151307() or floor32(mem[_2382 + mem[_2382]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2382 + ceil32(return_data.size) + floor32(mem[_2382 + mem[_2382]]) + 1
                        mem[_2382 + ceil32(return_data.size)] = _2430
                        require _2406 + (32 * _2430) + 32 <= return_data.size
                        idx = 0
                        s = _2382 + _2406 + 32
                        t = _2382 + ceil32(return_data.size) + 32
                        while idx < _2430:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 >= _2430:
                            revert with 'NH{q', 50
                        _3174 = mem[_2382 + ceil32(return_data.size) + 64]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1470
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _1470
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3302 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3302] == bool(mem[_3302])
                            if _3174 < _1470:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3174 - _1470
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3174 - _1470
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3606 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3606] == bool(mem[_3606])
                            else:
                                _3607 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3607] == bool(mem[_3607])
                        else:
                            _3303 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3303] == bool(mem[_3303])
                            if _3174 < _1470:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3174 - _1470
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3174 - _1470
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3608 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3608] == bool(mem[_3608])
                            else:
                                _3609 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3609] == bool(mem[_3609])
                    else:
                        _439 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _463 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require _439 + (32 * _463) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _439 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _463:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _463:
                            revert with 'NH{q', 50
                        _1471 = mem[(8 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _1471
                        mem[mem[64] + 68] = 160
                        _1519 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _1519:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 30
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _1471, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1519) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2383 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2407 = mem[_2383]
                        require mem[_2383] <= test266151307()
                        require _2383 + mem[_2383] + 31 < _2383 + return_data.size
                        _2431 = mem[_2383 + mem[_2383]]
                        if mem[_2383 + mem[_2383]] > test266151307():
                            revert with 'NH{q', 65
                        if _2383 + ceil32(return_data.size) + floor32(mem[_2383 + mem[_2383]]) + 1 > test266151307() or floor32(mem[_2383 + mem[_2383]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2383 + ceil32(return_data.size) + floor32(mem[_2383 + mem[_2383]]) + 1
                        mem[_2383 + ceil32(return_data.size)] = _2431
                        require _2407 + (32 * _2431) + 32 <= return_data.size
                        idx = 0
                        s = _2383 + _2407 + 32
                        t = _2383 + ceil32(return_data.size) + 32
                        while idx < _2431:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 >= _2431:
                            revert with 'NH{q', 50
                        _3175 = mem[_2383 + ceil32(return_data.size) + 64]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1471
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _1471
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3304 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3304] == bool(mem[_3304])
                            if _3175 < _1471:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3175 - _1471
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3175 - _1471
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3610 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3610] == bool(mem[_3610])
                            else:
                                _3611 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3611] == bool(mem[_3611])
                        else:
                            _3305 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3305] == bool(mem[_3305])
                            if _3175 < _1471:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3175 - _1471
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3175 - _1471
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3612 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3612] == bool(mem[_3612])
                            else:
                                _3613 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3613] == bool(mem[_3613])
                else:
                    if not arg2:
                        _440 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _464 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require _440 + (32 * _464) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _440 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _464:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _464:
                            revert with 'NH{q', 50
                        _1472 = mem[(8 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _1472
                        mem[mem[64] + 68] = 160
                        _1520 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _1520:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 30
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _1472, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1520) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2384 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2408 = mem[_2384]
                        require mem[_2384] <= test266151307()
                        require _2384 + mem[_2384] + 31 < _2384 + return_data.size
                        _2432 = mem[_2384 + mem[_2384]]
                        if mem[_2384 + mem[_2384]] > test266151307():
                            revert with 'NH{q', 65
                        if _2384 + ceil32(return_data.size) + floor32(mem[_2384 + mem[_2384]]) + 1 > test266151307() or floor32(mem[_2384 + mem[_2384]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2384 + ceil32(return_data.size) + floor32(mem[_2384 + mem[_2384]]) + 1
                        mem[_2384 + ceil32(return_data.size)] = _2432
                        require _2408 + (32 * _2432) + 32 <= return_data.size
                        idx = 0
                        s = _2384 + _2408 + 32
                        t = _2384 + ceil32(return_data.size) + 32
                        while idx < _2432:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 >= _2432:
                            revert with 'NH{q', 50
                        _3176 = mem[_2384 + ceil32(return_data.size) + 64]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1472
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _1472
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3306 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3306] == bool(mem[_3306])
                            if _3176 < _1472:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3176 - _1472
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3176 - _1472
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3614 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3614] == bool(mem[_3614])
                            else:
                                _3615 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3615] == bool(mem[_3615])
                        else:
                            _3307 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3307] == bool(mem[_3307])
                            if _3176 < _1472:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3176 - _1472
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3176 - _1472
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3616 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3616] == bool(mem[_3616])
                            else:
                                _3617 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3617] == bool(mem[_3617])
                    else:
                        _441 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _465 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require _441 + (32 * _465) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _441 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _465:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _465:
                            revert with 'NH{q', 50
                        _1473 = mem[(8 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _1473
                        mem[mem[64] + 68] = 160
                        _1521 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _1521:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 30
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _1473, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1521) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2385 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2409 = mem[_2385]
                        require mem[_2385] <= test266151307()
                        require _2385 + mem[_2385] + 31 < _2385 + return_data.size
                        _2433 = mem[_2385 + mem[_2385]]
                        if mem[_2385 + mem[_2385]] > test266151307():
                            revert with 'NH{q', 65
                        if _2385 + ceil32(return_data.size) + floor32(mem[_2385 + mem[_2385]]) + 1 > test266151307() or floor32(mem[_2385 + mem[_2385]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2385 + ceil32(return_data.size) + floor32(mem[_2385 + mem[_2385]]) + 1
                        mem[_2385 + ceil32(return_data.size)] = _2433
                        require _2409 + (32 * _2433) + 32 <= return_data.size
                        idx = 0
                        s = _2385 + _2409 + 32
                        t = _2385 + ceil32(return_data.size) + 32
                        while idx < _2433:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 >= _2433:
                            revert with 'NH{q', 50
                        _3177 = mem[_2385 + ceil32(return_data.size) + 64]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1473
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _1473
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3308 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3308] == bool(mem[_3308])
                            if _3177 < _1473:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3177 - _1473
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3177 - _1473
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3618 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3618] == bool(mem[_3618])
                            else:
                                _3619 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3619] == bool(mem[_3619])
                        else:
                            _3309 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3309] == bool(mem[_3309])
                            if _3177 < _1473:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3177 - _1473
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3177 - _1473
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3620 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3620] == bool(mem[_3620])
                            else:
                                _3621 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3621] == bool(mem[_3621])
            else:
                if not arg3:
                    if not arg2:
                        _442 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _466 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require _442 + (32 * _466) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _442 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _466:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _466:
                            revert with 'NH{q', 50
                        _1474 = mem[(8 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _1474
                        mem[mem[64] + 68] = 160
                        _1522 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _1522:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 30
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _1474, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1522) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2386 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2410 = mem[_2386]
                        require mem[_2386] <= test266151307()
                        require _2386 + mem[_2386] + 31 < _2386 + return_data.size
                        _2434 = mem[_2386 + mem[_2386]]
                        if mem[_2386 + mem[_2386]] > test266151307():
                            revert with 'NH{q', 65
                        if _2386 + ceil32(return_data.size) + floor32(mem[_2386 + mem[_2386]]) + 1 > test266151307() or floor32(mem[_2386 + mem[_2386]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2386 + ceil32(return_data.size) + floor32(mem[_2386 + mem[_2386]]) + 1
                        mem[_2386 + ceil32(return_data.size)] = _2434
                        require _2410 + (32 * _2434) + 32 <= return_data.size
                        idx = 0
                        s = _2386 + _2410 + 32
                        t = _2386 + ceil32(return_data.size) + 32
                        while idx < _2434:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 >= _2434:
                            revert with 'NH{q', 50
                        _3178 = mem[_2386 + ceil32(return_data.size) + 64]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1474
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _1474
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3310 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3310] == bool(mem[_3310])
                            if _3178 < _1474:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3178 - _1474
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3178 - _1474
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3622 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3622] == bool(mem[_3622])
                            else:
                                _3623 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3623] == bool(mem[_3623])
                        else:
                            _3311 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3311] == bool(mem[_3311])
                            if _3178 < _1474:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3178 - _1474
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3178 - _1474
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3624 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3624] == bool(mem[_3624])
                            else:
                                _3625 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3625] == bool(mem[_3625])
                    else:
                        _443 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _467 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require _443 + (32 * _467) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _443 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _467:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _467:
                            revert with 'NH{q', 50
                        _1475 = mem[(8 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _1475
                        mem[mem[64] + 68] = 160
                        _1523 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _1523:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 30
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _1475, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1523) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2387 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2411 = mem[_2387]
                        require mem[_2387] <= test266151307()
                        require _2387 + mem[_2387] + 31 < _2387 + return_data.size
                        _2435 = mem[_2387 + mem[_2387]]
                        if mem[_2387 + mem[_2387]] > test266151307():
                            revert with 'NH{q', 65
                        if _2387 + ceil32(return_data.size) + floor32(mem[_2387 + mem[_2387]]) + 1 > test266151307() or floor32(mem[_2387 + mem[_2387]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2387 + ceil32(return_data.size) + floor32(mem[_2387 + mem[_2387]]) + 1
                        mem[_2387 + ceil32(return_data.size)] = _2435
                        require _2411 + (32 * _2435) + 32 <= return_data.size
                        idx = 0
                        s = _2387 + _2411 + 32
                        t = _2387 + ceil32(return_data.size) + 32
                        while idx < _2435:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 >= _2435:
                            revert with 'NH{q', 50
                        _3179 = mem[_2387 + ceil32(return_data.size) + 64]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1475
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _1475
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3312 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3312] == bool(mem[_3312])
                            if _3179 < _1475:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3179 - _1475
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3179 - _1475
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3626 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3626] == bool(mem[_3626])
                            else:
                                _3627 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3627] == bool(mem[_3627])
                        else:
                            _3313 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3313] == bool(mem[_3313])
                            if _3179 < _1475:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3179 - _1475
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3179 - _1475
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3628 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3628] == bool(mem[_3628])
                            else:
                                _3629 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3629] == bool(mem[_3629])
                else:
                    if not arg2:
                        _444 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _468 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require _444 + (32 * _468) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _444 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _468:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _468:
                            revert with 'NH{q', 50
                        _1476 = mem[(8 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _1476
                        mem[mem[64] + 68] = 160
                        _1524 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _1524:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 30
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _1476, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1524) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2388 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2412 = mem[_2388]
                        require mem[_2388] <= test266151307()
                        require _2388 + mem[_2388] + 31 < _2388 + return_data.size
                        _2436 = mem[_2388 + mem[_2388]]
                        if mem[_2388 + mem[_2388]] > test266151307():
                            revert with 'NH{q', 65
                        if _2388 + ceil32(return_data.size) + floor32(mem[_2388 + mem[_2388]]) + 1 > test266151307() or floor32(mem[_2388 + mem[_2388]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2388 + ceil32(return_data.size) + floor32(mem[_2388 + mem[_2388]]) + 1
                        mem[_2388 + ceil32(return_data.size)] = _2436
                        require _2412 + (32 * _2436) + 32 <= return_data.size
                        idx = 0
                        s = _2388 + _2412 + 32
                        t = _2388 + ceil32(return_data.size) + 32
                        while idx < _2436:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 >= _2436:
                            revert with 'NH{q', 50
                        _3180 = mem[_2388 + ceil32(return_data.size) + 64]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1476
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _1476
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3314 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3314] == bool(mem[_3314])
                            if _3180 < _1476:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3180 - _1476
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3180 - _1476
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3630 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3630] == bool(mem[_3630])
                            else:
                                _3631 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3631] == bool(mem[_3631])
                        else:
                            _3315 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3315] == bool(mem[_3315])
                            if _3180 < _1476:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3180 - _1476
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3180 - _1476
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3632 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3632] == bool(mem[_3632])
                            else:
                                _3633 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3633] == bool(mem[_3633])
                    else:
                        _445 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _469 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require _445 + (32 * _469) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _445 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _469:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _469:
                            revert with 'NH{q', 50
                        _1477 = mem[(8 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg3
                        mem[mem[64] + 36] = _1477
                        mem[mem[64] + 68] = 160
                        _1525 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _1525:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 30
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _1477, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1525) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2389 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2413 = mem[_2389]
                        require mem[_2389] <= test266151307()
                        require _2389 + mem[_2389] + 31 < _2389 + return_data.size
                        _2437 = mem[_2389 + mem[_2389]]
                        if mem[_2389 + mem[_2389]] > test266151307():
                            revert with 'NH{q', 65
                        if _2389 + ceil32(return_data.size) + floor32(mem[_2389 + mem[_2389]]) + 1 > test266151307() or floor32(mem[_2389 + mem[_2389]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2389 + ceil32(return_data.size) + floor32(mem[_2389 + mem[_2389]]) + 1
                        mem[_2389 + ceil32(return_data.size)] = _2437
                        require _2413 + (32 * _2437) + 32 <= return_data.size
                        idx = 0
                        s = _2389 + _2413 + 32
                        t = _2389 + ceil32(return_data.size) + 32
                        while idx < _2437:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 >= _2437:
                            revert with 'NH{q', 50
                        _3181 = mem[_2389 + ceil32(return_data.size) + 64]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1477
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _1477
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3316 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3316] == bool(mem[_3316])
                            if _3181 < _1477:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3181 - _1477
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3181 - _1477
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3634 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3634] == bool(mem[_3634])
                            else:
                                _3635 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3635] == bool(mem[_3635])
                        else:
                            _3317 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3317] == bool(mem[_3317])
                            if _3181 < _1477:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3181 - _1477
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3181 - _1477
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3636 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3636] == bool(mem[_3636])
                            else:
                                _3637 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3637] == bool(mem[_3637])
        else:
            mem[(6 * ceil32(return_data.size)) + 228] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[(arg4 + 68)]), arg2
            mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 196] = arg2
            mem[(7 * ceil32(return_data.size)) + 228] = 64
            mem[(7 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            s = (6 * ceil32(return_data.size)) + 128
            t = (7 * ceil32(return_data.size)) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[(arg4 + 36)]))
            staticcall address(cd[(arg4 + 36)]).getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            if not arg2:
                if not arg3:
                    if not arg2:
                        _446 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _470 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _446 + (32 * _470) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _446 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _470:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _470:
                            revert with 'NH{q', 50
                        _1478 = mem[(8 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _1478
                        mem[mem[64] + 68] = 160
                        _1526 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _1526:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 30
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _1478, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1526) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2390 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2414 = mem[_2390]
                        require mem[_2390] <= test266151307()
                        require _2390 + mem[_2390] + 31 < _2390 + return_data.size
                        _2438 = mem[_2390 + mem[_2390]]
                        if mem[_2390 + mem[_2390]] > test266151307():
                            revert with 'NH{q', 65
                        if _2390 + ceil32(return_data.size) + floor32(mem[_2390 + mem[_2390]]) + 1 > test266151307() or floor32(mem[_2390 + mem[_2390]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2390 + ceil32(return_data.size) + floor32(mem[_2390 + mem[_2390]]) + 1
                        mem[_2390 + ceil32(return_data.size)] = _2438
                        require _2414 + (32 * _2438) + 32 <= return_data.size
                        idx = 0
                        s = _2390 + _2414 + 32
                        t = _2390 + ceil32(return_data.size) + 32
                        while idx < _2438:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 >= _2438:
                            revert with 'NH{q', 50
                        _3182 = mem[_2390 + ceil32(return_data.size) + 64]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1478
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _1478
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3318 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3318] == bool(mem[_3318])
                            if _3182 < _1478:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3182 - _1478
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3182 - _1478
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3638 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3638] == bool(mem[_3638])
                            else:
                                _3639 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3639] == bool(mem[_3639])
                        else:
                            _3319 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3319] == bool(mem[_3319])
                            if _3182 < _1478:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3182 - _1478
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3182 - _1478
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3640 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3640] == bool(mem[_3640])
                            else:
                                _3641 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3641] == bool(mem[_3641])
                    else:
                        _447 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _471 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _447 + (32 * _471) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _447 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _471:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _471:
                            revert with 'NH{q', 50
                        _1479 = mem[(8 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _1479
                        mem[mem[64] + 68] = 160
                        _1527 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _1527:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 30
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _1479, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1527) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2391 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2415 = mem[_2391]
                        require mem[_2391] <= test266151307()
                        require _2391 + mem[_2391] + 31 < _2391 + return_data.size
                        _2439 = mem[_2391 + mem[_2391]]
                        if mem[_2391 + mem[_2391]] > test266151307():
                            revert with 'NH{q', 65
                        if _2391 + ceil32(return_data.size) + floor32(mem[_2391 + mem[_2391]]) + 1 > test266151307() or floor32(mem[_2391 + mem[_2391]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2391 + ceil32(return_data.size) + floor32(mem[_2391 + mem[_2391]]) + 1
                        mem[_2391 + ceil32(return_data.size)] = _2439
                        require _2415 + (32 * _2439) + 32 <= return_data.size
                        idx = 0
                        s = _2391 + _2415 + 32
                        t = _2391 + ceil32(return_data.size) + 32
                        while idx < _2439:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 >= _2439:
                            revert with 'NH{q', 50
                        _3183 = mem[_2391 + ceil32(return_data.size) + 64]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1479
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _1479
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3320 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3320] == bool(mem[_3320])
                            if _3183 < _1479:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3183 - _1479
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3183 - _1479
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3642 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3642] == bool(mem[_3642])
                            else:
                                _3643 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3643] == bool(mem[_3643])
                        else:
                            _3321 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3321] == bool(mem[_3321])
                            if _3183 < _1479:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3183 - _1479
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3183 - _1479
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3644 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3644] == bool(mem[_3644])
                            else:
                                _3645 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3645] == bool(mem[_3645])
                else:
                    if not arg2:
                        _448 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _472 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _448 + (32 * _472) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _448 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _472:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _472:
                            revert with 'NH{q', 50
                        _1480 = mem[(8 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _1480
                        mem[mem[64] + 68] = 160
                        _1528 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _1528:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 30
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _1480, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1528) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2392 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2416 = mem[_2392]
                        require mem[_2392] <= test266151307()
                        require _2392 + mem[_2392] + 31 < _2392 + return_data.size
                        _2440 = mem[_2392 + mem[_2392]]
                        if mem[_2392 + mem[_2392]] > test266151307():
                            revert with 'NH{q', 65
                        if _2392 + ceil32(return_data.size) + floor32(mem[_2392 + mem[_2392]]) + 1 > test266151307() or floor32(mem[_2392 + mem[_2392]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2392 + ceil32(return_data.size) + floor32(mem[_2392 + mem[_2392]]) + 1
                        mem[_2392 + ceil32(return_data.size)] = _2440
                        require _2416 + (32 * _2440) + 32 <= return_data.size
                        idx = 0
                        s = _2392 + _2416 + 32
                        t = _2392 + ceil32(return_data.size) + 32
                        while idx < _2440:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 >= _2440:
                            revert with 'NH{q', 50
                        _3184 = mem[_2392 + ceil32(return_data.size) + 64]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1480
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _1480
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3322 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3322] == bool(mem[_3322])
                            if _3184 < _1480:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3184 - _1480
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3184 - _1480
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3646 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3646] == bool(mem[_3646])
                            else:
                                _3647 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3647] == bool(mem[_3647])
                        else:
                            _3323 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3323] == bool(mem[_3323])
                            if _3184 < _1480:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3184 - _1480
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3184 - _1480
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3648 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3648] == bool(mem[_3648])
                            else:
                                _3649 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3649] == bool(mem[_3649])
                    else:
                        _449 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _473 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _449 + (32 * _473) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _449 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _473:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _473:
                            revert with 'NH{q', 50
                        _1481 = mem[(8 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _1481
                        mem[mem[64] + 68] = 160
                        _1529 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _1529:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 30
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _1481, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1529) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2393 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2417 = mem[_2393]
                        require mem[_2393] <= test266151307()
                        require _2393 + mem[_2393] + 31 < _2393 + return_data.size
                        _2441 = mem[_2393 + mem[_2393]]
                        if mem[_2393 + mem[_2393]] > test266151307():
                            revert with 'NH{q', 65
                        if _2393 + ceil32(return_data.size) + floor32(mem[_2393 + mem[_2393]]) + 1 > test266151307() or floor32(mem[_2393 + mem[_2393]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2393 + ceil32(return_data.size) + floor32(mem[_2393 + mem[_2393]]) + 1
                        mem[_2393 + ceil32(return_data.size)] = _2441
                        require _2417 + (32 * _2441) + 32 <= return_data.size
                        idx = 0
                        s = _2393 + _2417 + 32
                        t = _2393 + ceil32(return_data.size) + 32
                        while idx < _2441:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 >= _2441:
                            revert with 'NH{q', 50
                        _3185 = mem[_2393 + ceil32(return_data.size) + 64]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1481
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _1481
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3324 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3324] == bool(mem[_3324])
                            if _3185 < _1481:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3185 - _1481
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3185 - _1481
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3650 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3650] == bool(mem[_3650])
                            else:
                                _3651 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3651] == bool(mem[_3651])
                        else:
                            _3325 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3325] == bool(mem[_3325])
                            if _3185 < _1481:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3185 - _1481
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3185 - _1481
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3652 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3652] == bool(mem[_3652])
                            else:
                                _3653 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3653] == bool(mem[_3653])
            else:
                if not arg3:
                    if not arg2:
                        _450 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _474 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _450 + (32 * _474) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _450 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _474:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _474:
                            revert with 'NH{q', 50
                        _1482 = mem[(8 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _1482
                        mem[mem[64] + 68] = 160
                        _1530 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _1530:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 30
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _1482, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1530) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2394 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2418 = mem[_2394]
                        require mem[_2394] <= test266151307()
                        require _2394 + mem[_2394] + 31 < _2394 + return_data.size
                        _2442 = mem[_2394 + mem[_2394]]
                        if mem[_2394 + mem[_2394]] > test266151307():
                            revert with 'NH{q', 65
                        if _2394 + ceil32(return_data.size) + floor32(mem[_2394 + mem[_2394]]) + 1 > test266151307() or floor32(mem[_2394 + mem[_2394]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2394 + ceil32(return_data.size) + floor32(mem[_2394 + mem[_2394]]) + 1
                        mem[_2394 + ceil32(return_data.size)] = _2442
                        require _2418 + (32 * _2442) + 32 <= return_data.size
                        idx = 0
                        s = _2394 + _2418 + 32
                        t = _2394 + ceil32(return_data.size) + 32
                        while idx < _2442:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 >= _2442:
                            revert with 'NH{q', 50
                        _3186 = mem[_2394 + ceil32(return_data.size) + 64]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1482
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _1482
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3326 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3326] == bool(mem[_3326])
                            if _3186 < _1482:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3186 - _1482
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3186 - _1482
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3654 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3654] == bool(mem[_3654])
                            else:
                                _3655 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3655] == bool(mem[_3655])
                        else:
                            _3327 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3327] == bool(mem[_3327])
                            if _3186 < _1482:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3186 - _1482
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3186 - _1482
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3656 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3656] == bool(mem[_3656])
                            else:
                                _3657 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3657] == bool(mem[_3657])
                    else:
                        _451 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _475 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _451 + (32 * _475) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _451 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _475:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _475:
                            revert with 'NH{q', 50
                        _1483 = mem[(8 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _1483
                        mem[mem[64] + 68] = 160
                        _1531 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _1531:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 30
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _1483, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1531) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2395 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2419 = mem[_2395]
                        require mem[_2395] <= test266151307()
                        require _2395 + mem[_2395] + 31 < _2395 + return_data.size
                        _2443 = mem[_2395 + mem[_2395]]
                        if mem[_2395 + mem[_2395]] > test266151307():
                            revert with 'NH{q', 65
                        if _2395 + ceil32(return_data.size) + floor32(mem[_2395 + mem[_2395]]) + 1 > test266151307() or floor32(mem[_2395 + mem[_2395]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2395 + ceil32(return_data.size) + floor32(mem[_2395 + mem[_2395]]) + 1
                        mem[_2395 + ceil32(return_data.size)] = _2443
                        require _2419 + (32 * _2443) + 32 <= return_data.size
                        idx = 0
                        s = _2395 + _2419 + 32
                        t = _2395 + ceil32(return_data.size) + 32
                        while idx < _2443:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 >= _2443:
                            revert with 'NH{q', 50
                        _3187 = mem[_2395 + ceil32(return_data.size) + 64]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1483
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _1483
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3328 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3328] == bool(mem[_3328])
                            if _3187 < _1483:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3187 - _1483
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3187 - _1483
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3658 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3658] == bool(mem[_3658])
                            else:
                                _3659 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3659] == bool(mem[_3659])
                        else:
                            _3329 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3329] == bool(mem[_3329])
                            if _3187 < _1483:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3187 - _1483
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3187 - _1483
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3660 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3660] == bool(mem[_3660])
                            else:
                                _3661 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3661] == bool(mem[_3661])
                else:
                    if not arg2:
                        _452 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _476 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _452 + (32 * _476) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _452 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _476:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _476:
                            revert with 'NH{q', 50
                        _1484 = mem[(8 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _1484
                        mem[mem[64] + 68] = 160
                        _1532 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _1532:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 30
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _1484, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1532) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2396 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2420 = mem[_2396]
                        require mem[_2396] <= test266151307()
                        require _2396 + mem[_2396] + 31 < _2396 + return_data.size
                        _2444 = mem[_2396 + mem[_2396]]
                        if mem[_2396 + mem[_2396]] > test266151307():
                            revert with 'NH{q', 65
                        if _2396 + ceil32(return_data.size) + floor32(mem[_2396 + mem[_2396]]) + 1 > test266151307() or floor32(mem[_2396 + mem[_2396]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2396 + ceil32(return_data.size) + floor32(mem[_2396 + mem[_2396]]) + 1
                        mem[_2396 + ceil32(return_data.size)] = _2444
                        require _2420 + (32 * _2444) + 32 <= return_data.size
                        idx = 0
                        s = _2396 + _2420 + 32
                        t = _2396 + ceil32(return_data.size) + 32
                        while idx < _2444:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 >= _2444:
                            revert with 'NH{q', 50
                        _3188 = mem[_2396 + ceil32(return_data.size) + 64]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1484
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _1484
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3330 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3330] == bool(mem[_3330])
                            if _3188 < _1484:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3188 - _1484
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3188 - _1484
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3662 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3662] == bool(mem[_3662])
                            else:
                                _3663 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3663] == bool(mem[_3663])
                        else:
                            _3331 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3331] == bool(mem[_3331])
                            if _3188 < _1484:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3188 - _1484
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3188 - _1484
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3664 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3664] == bool(mem[_3664])
                            else:
                                _3665 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3665] == bool(mem[_3665])
                    else:
                        _453 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _477 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _453 + (32 * _477) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _453 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _477:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _477:
                            revert with 'NH{q', 50
                        _1485 = mem[(8 * ceil32(return_data.size)) + 224]
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = _1485
                        mem[mem[64] + 68] = 160
                        _1533 = mem[(6 * ceil32(return_data.size)) + 96]
                        mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < _1533:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = msg.sender
                        mem[mem[64] + 132] = block.timestamp + 30
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _1485, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1533) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2397 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2421 = mem[_2397]
                        require mem[_2397] <= test266151307()
                        require _2397 + mem[_2397] + 31 < _2397 + return_data.size
                        _2445 = mem[_2397 + mem[_2397]]
                        if mem[_2397 + mem[_2397]] > test266151307():
                            revert with 'NH{q', 65
                        if _2397 + ceil32(return_data.size) + floor32(mem[_2397 + mem[_2397]]) + 1 > test266151307() or floor32(mem[_2397 + mem[_2397]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2397 + ceil32(return_data.size) + floor32(mem[_2397 + mem[_2397]]) + 1
                        mem[_2397 + ceil32(return_data.size)] = _2445
                        require _2421 + (32 * _2445) + 32 <= return_data.size
                        idx = 0
                        s = _2397 + _2421 + 32
                        t = _2397 + ceil32(return_data.size) + 32
                        while idx < _2445:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 >= _2445:
                            revert with 'NH{q', 50
                        _3189 = mem[_2397 + ceil32(return_data.size) + 64]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1485
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _1485
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3332 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3332] == bool(mem[_3332])
                            if _3189 < _1485:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3189 - _1485
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3189 - _1485
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3666 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3666] == bool(mem[_3666])
                            else:
                                _3667 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3667] == bool(mem[_3667])
                        else:
                            _3333 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3333] == bool(mem[_3333])
                            if _3189 < _1485:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3189 - _1485
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), _3189 - _1485
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _3668 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3668] == bool(mem[_3668])
                            else:
                                _3669 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3669] == bool(mem[_3669])
}



}
