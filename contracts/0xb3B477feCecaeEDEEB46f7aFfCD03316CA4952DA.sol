contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    revert with 0, 'swapf problem'
}

function sub_42b0ca9e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(address(arg1))
    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg2, 0, address(this.address), 128, 1, '0', 0
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
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(msg.sender)
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stor1)
                staticcall stor1.factory() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
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
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] != msg.sender:
                            revert with 0, 'Callback not allowed'
                        else:
                            mem[(6 * ceil32(return_data.size)) + 96] = 2
                            if not arg2:
                                mem[(6 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
                                if not arg3:
                                    mem[(6 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                                    if not arg2:
                                        mem[(6 * ceil32(return_data.size)) + 196] = stor2
                                        mem[(6 * ceil32(return_data.size)) + 228] = arg3
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor2, arg3
                                        mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[64] = (7 * ceil32(return_data.size)) + 192
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[(7 * ceil32(return_data.size)) + 196] = arg3
                                            mem[(7 * ceil32(return_data.size)) + 228] = 64
                                            mem[(7 * ceil32(return_data.size)) + 260] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 128
                                            t = (7 * ceil32(return_data.size)) + 292
                                            while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor1)
                                            staticcall stor1.mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 352]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _558 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _582 = mem[_558]
                                                require mem[_558] <= test266151307()
                                                require _558 + mem[_558] + 31 < _558 + return_data.size
                                                _606 = mem[_558 + mem[_558]]
                                                if mem[_558 + mem[_558]] > test266151307():
                                                    revert with 'NH{q', 65
                                                else:
                                                    if _558 + ceil32(return_data.size) + floor32(mem[_558 + mem[_558]]) + 1 > test266151307() or floor32(mem[_558 + mem[_558]]) + 1 < 0:
                                                        revert with 'NH{q', 65
                                                    else:
                                                        mem[64] = _558 + ceil32(return_data.size) + floor32(mem[_558 + mem[_558]]) + 1
                                                        mem[_558 + ceil32(return_data.size)] = _606
                                                        require _582 + (32 * _606) + 32 <= return_data.size
                                                        idx = 0
                                                        s = _558 + _582 + 32
                                                        t = _558 + ceil32(return_data.size) + 32
                                                        while idx < _606:
                                                            require mem[s] == mem[s]
                                                            mem[t] = mem[s]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        if 0 >= _606:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            _1758 = mem[_558 + ceil32(return_data.size) + 32]
                                                            if mem[_558 + ceil32(return_data.size) + 32] <= 0:
                                                                revert with 0, 'amountRequired cannot be zero'
                                                            else:
                                                                if block.timestamp > -31:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = arg3
                                                                    mem[mem[64] + 36] = _1758
                                                                    mem[mem[64] + 68] = 160
                                                                    _1854 = mem[(6 * ceil32(return_data.size)) + 96]
                                                                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                                                                    idx = 0
                                                                    s = (6 * ceil32(return_data.size)) + 128
                                                                    t = mem[64] + 196
                                                                    while idx < _1854:
                                                                        mem[t] = mem[s + 12 len 20]
                                                                        idx = idx + 1
                                                                        s = s + 32
                                                                        t = t + 32
                                                                        continue 
                                                                    mem[mem[64] + 100] = msg.sender
                                                                    mem[mem[64] + 132] = block.timestamp + 30
                                                                    require ext_code.size(stor2)
                                                                    call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                         gas gas_remaining wei
                                                                        args arg3, _1758, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1854) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _2814 = mem[64]
                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _2838 = mem[_2814]
                                                                        require mem[_2814] <= test266151307()
                                                                        require _2814 + mem[_2814] + 31 < _2814 + return_data.size
                                                                        _2862 = mem[_2814 + mem[_2814]]
                                                                        if mem[_2814 + mem[_2814]] > test266151307():
                                                                            revert with 'NH{q', 65
                                                                        else:
                                                                            if _2814 + ceil32(return_data.size) + floor32(mem[_2814 + mem[_2814]]) + 1 > test266151307() or floor32(mem[_2814 + mem[_2814]]) + 1 < 0:
                                                                                revert with 'NH{q', 65
                                                                            else:
                                                                                mem[64] = _2814 + ceil32(return_data.size) + floor32(mem[_2814 + mem[_2814]]) + 1
                                                                                mem[_2814 + ceil32(return_data.size)] = _2862
                                                                                require _2838 + (32 * _2862) + 32 <= return_data.size
                                                                                idx = 0
                                                                                s = _2814 + _2838 + 32
                                                                                t = _2814 + ceil32(return_data.size) + 32
                                                                                while idx < _2862:
                                                                                    require mem[s] == mem[s]
                                                                                    mem[t] = mem[s]
                                                                                    idx = idx + 1
                                                                                    s = s + 32
                                                                                    t = t + 32
                                                                                    continue 
                                                                                if 1 >= _2862:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    _3702 = mem[_2814 + ceil32(return_data.size) + 64]
                                                                                    if mem[_2814 + ceil32(return_data.size) + 64] <= 0:
                                                                                        revert with 0, 'amountReceived cannot be zero'
                                                                                    else:
                                                                                        if mem[_2814 + ceil32(return_data.size) + 64] <= _1758:
                                                                                            revert with 0, 'amountReceived cannot be less than amountRequired'
                                                                                        else:
                                                                                            if not arg2:
                                                                                                mem[mem[64] + 4] = msg.sender
                                                                                                mem[mem[64] + 36] = _1758
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, _1758
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _3918 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_3918] == bool(mem[_3918])
                                                                                                    if not arg2:
                                                                                                        if _3702 < _1758:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3702 - _1758
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3702 - _1758
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4206 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4206] == bool(mem[_4206])
                                                                                                    else:
                                                                                                        if _3702 < _1758:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3702 - _1758
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3702 - _1758
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4207 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4207] == bool(mem[_4207])
                                                                                            else:
                                                                                                mem[mem[64] + 4] = msg.sender
                                                                                                mem[mem[64] + 36] = _1758
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, _1758
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _3919 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_3919] == bool(mem[_3919])
                                                                                                    if not arg2:
                                                                                                        if _3702 < _1758:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3702 - _1758
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3702 - _1758
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4208 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4208] == bool(mem[_4208])
                                                                                                    else:
                                                                                                        if _3702 < _1758:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3702 - _1758
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3702 - _1758
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4209 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4209] == bool(mem[_4209])
                                    else:
                                        mem[(6 * ceil32(return_data.size)) + 196] = stor2
                                        mem[(6 * ceil32(return_data.size)) + 228] = arg3
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor2, arg3
                                        mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[64] = (7 * ceil32(return_data.size)) + 192
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[(7 * ceil32(return_data.size)) + 196] = arg3
                                            mem[(7 * ceil32(return_data.size)) + 228] = 64
                                            mem[(7 * ceil32(return_data.size)) + 260] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 128
                                            t = (7 * ceil32(return_data.size)) + 292
                                            while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor1)
                                            staticcall stor1.mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 352]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _559 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _583 = mem[_559]
                                                require mem[_559] <= test266151307()
                                                require _559 + mem[_559] + 31 < _559 + return_data.size
                                                _607 = mem[_559 + mem[_559]]
                                                if mem[_559 + mem[_559]] > test266151307():
                                                    revert with 'NH{q', 65
                                                else:
                                                    if _559 + ceil32(return_data.size) + floor32(mem[_559 + mem[_559]]) + 1 > test266151307() or floor32(mem[_559 + mem[_559]]) + 1 < 0:
                                                        revert with 'NH{q', 65
                                                    else:
                                                        mem[64] = _559 + ceil32(return_data.size) + floor32(mem[_559 + mem[_559]]) + 1
                                                        mem[_559 + ceil32(return_data.size)] = _607
                                                        require _583 + (32 * _607) + 32 <= return_data.size
                                                        idx = 0
                                                        s = _559 + _583 + 32
                                                        t = _559 + ceil32(return_data.size) + 32
                                                        while idx < _607:
                                                            require mem[s] == mem[s]
                                                            mem[t] = mem[s]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        if 0 >= _607:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            _1759 = mem[_559 + ceil32(return_data.size) + 32]
                                                            if mem[_559 + ceil32(return_data.size) + 32] <= 0:
                                                                revert with 0, 'amountRequired cannot be zero'
                                                            else:
                                                                if block.timestamp > -31:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = arg3
                                                                    mem[mem[64] + 36] = _1759
                                                                    mem[mem[64] + 68] = 160
                                                                    _1855 = mem[(6 * ceil32(return_data.size)) + 96]
                                                                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                                                                    idx = 0
                                                                    s = (6 * ceil32(return_data.size)) + 128
                                                                    t = mem[64] + 196
                                                                    while idx < _1855:
                                                                        mem[t] = mem[s + 12 len 20]
                                                                        idx = idx + 1
                                                                        s = s + 32
                                                                        t = t + 32
                                                                        continue 
                                                                    mem[mem[64] + 100] = msg.sender
                                                                    mem[mem[64] + 132] = block.timestamp + 30
                                                                    require ext_code.size(stor2)
                                                                    call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                         gas gas_remaining wei
                                                                        args arg3, _1759, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1855) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _2815 = mem[64]
                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _2839 = mem[_2815]
                                                                        require mem[_2815] <= test266151307()
                                                                        require _2815 + mem[_2815] + 31 < _2815 + return_data.size
                                                                        _2863 = mem[_2815 + mem[_2815]]
                                                                        if mem[_2815 + mem[_2815]] > test266151307():
                                                                            revert with 'NH{q', 65
                                                                        else:
                                                                            if _2815 + ceil32(return_data.size) + floor32(mem[_2815 + mem[_2815]]) + 1 > test266151307() or floor32(mem[_2815 + mem[_2815]]) + 1 < 0:
                                                                                revert with 'NH{q', 65
                                                                            else:
                                                                                mem[64] = _2815 + ceil32(return_data.size) + floor32(mem[_2815 + mem[_2815]]) + 1
                                                                                mem[_2815 + ceil32(return_data.size)] = _2863
                                                                                require _2839 + (32 * _2863) + 32 <= return_data.size
                                                                                idx = 0
                                                                                s = _2815 + _2839 + 32
                                                                                t = _2815 + ceil32(return_data.size) + 32
                                                                                while idx < _2863:
                                                                                    require mem[s] == mem[s]
                                                                                    mem[t] = mem[s]
                                                                                    idx = idx + 1
                                                                                    s = s + 32
                                                                                    t = t + 32
                                                                                    continue 
                                                                                if 1 >= _2863:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    _3703 = mem[_2815 + ceil32(return_data.size) + 64]
                                                                                    if mem[_2815 + ceil32(return_data.size) + 64] <= 0:
                                                                                        revert with 0, 'amountReceived cannot be zero'
                                                                                    else:
                                                                                        if mem[_2815 + ceil32(return_data.size) + 64] <= _1759:
                                                                                            revert with 0, 'amountReceived cannot be less than amountRequired'
                                                                                        else:
                                                                                            if not arg2:
                                                                                                mem[mem[64] + 4] = msg.sender
                                                                                                mem[mem[64] + 36] = _1759
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, _1759
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _3920 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_3920] == bool(mem[_3920])
                                                                                                    if not arg2:
                                                                                                        if _3703 < _1759:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3703 - _1759
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3703 - _1759
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4210 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4210] == bool(mem[_4210])
                                                                                                    else:
                                                                                                        if _3703 < _1759:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3703 - _1759
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3703 - _1759
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4211 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4211] == bool(mem[_4211])
                                                                                            else:
                                                                                                mem[mem[64] + 4] = msg.sender
                                                                                                mem[mem[64] + 36] = _1759
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, _1759
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _3921 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_3921] == bool(mem[_3921])
                                                                                                    if not arg2:
                                                                                                        if _3703 < _1759:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3703 - _1759
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3703 - _1759
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4212 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4212] == bool(mem[_4212])
                                                                                                    else:
                                                                                                        if _3703 < _1759:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3703 - _1759
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3703 - _1759
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4213 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4213] == bool(mem[_4213])
                                else:
                                    mem[(6 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                                    if not arg2:
                                        mem[(6 * ceil32(return_data.size)) + 196] = stor2
                                        mem[(6 * ceil32(return_data.size)) + 228] = arg3
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor2, arg3
                                        mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[64] = (7 * ceil32(return_data.size)) + 192
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[(7 * ceil32(return_data.size)) + 196] = arg3
                                            mem[(7 * ceil32(return_data.size)) + 228] = 64
                                            mem[(7 * ceil32(return_data.size)) + 260] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 128
                                            t = (7 * ceil32(return_data.size)) + 292
                                            while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor1)
                                            staticcall stor1.mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 352]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _560 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _584 = mem[_560]
                                                require mem[_560] <= test266151307()
                                                require _560 + mem[_560] + 31 < _560 + return_data.size
                                                _608 = mem[_560 + mem[_560]]
                                                if mem[_560 + mem[_560]] > test266151307():
                                                    revert with 'NH{q', 65
                                                else:
                                                    if _560 + ceil32(return_data.size) + floor32(mem[_560 + mem[_560]]) + 1 > test266151307() or floor32(mem[_560 + mem[_560]]) + 1 < 0:
                                                        revert with 'NH{q', 65
                                                    else:
                                                        mem[64] = _560 + ceil32(return_data.size) + floor32(mem[_560 + mem[_560]]) + 1
                                                        mem[_560 + ceil32(return_data.size)] = _608
                                                        require _584 + (32 * _608) + 32 <= return_data.size
                                                        idx = 0
                                                        s = _560 + _584 + 32
                                                        t = _560 + ceil32(return_data.size) + 32
                                                        while idx < _608:
                                                            require mem[s] == mem[s]
                                                            mem[t] = mem[s]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        if 0 >= _608:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            _1760 = mem[_560 + ceil32(return_data.size) + 32]
                                                            if mem[_560 + ceil32(return_data.size) + 32] <= 0:
                                                                revert with 0, 'amountRequired cannot be zero'
                                                            else:
                                                                if block.timestamp > -31:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = arg3
                                                                    mem[mem[64] + 36] = _1760
                                                                    mem[mem[64] + 68] = 160
                                                                    _1856 = mem[(6 * ceil32(return_data.size)) + 96]
                                                                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                                                                    idx = 0
                                                                    s = (6 * ceil32(return_data.size)) + 128
                                                                    t = mem[64] + 196
                                                                    while idx < _1856:
                                                                        mem[t] = mem[s + 12 len 20]
                                                                        idx = idx + 1
                                                                        s = s + 32
                                                                        t = t + 32
                                                                        continue 
                                                                    mem[mem[64] + 100] = msg.sender
                                                                    mem[mem[64] + 132] = block.timestamp + 30
                                                                    require ext_code.size(stor2)
                                                                    call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                         gas gas_remaining wei
                                                                        args arg3, _1760, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1856) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _2816 = mem[64]
                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _2840 = mem[_2816]
                                                                        require mem[_2816] <= test266151307()
                                                                        require _2816 + mem[_2816] + 31 < _2816 + return_data.size
                                                                        _2864 = mem[_2816 + mem[_2816]]
                                                                        if mem[_2816 + mem[_2816]] > test266151307():
                                                                            revert with 'NH{q', 65
                                                                        else:
                                                                            if _2816 + ceil32(return_data.size) + floor32(mem[_2816 + mem[_2816]]) + 1 > test266151307() or floor32(mem[_2816 + mem[_2816]]) + 1 < 0:
                                                                                revert with 'NH{q', 65
                                                                            else:
                                                                                mem[64] = _2816 + ceil32(return_data.size) + floor32(mem[_2816 + mem[_2816]]) + 1
                                                                                mem[_2816 + ceil32(return_data.size)] = _2864
                                                                                require _2840 + (32 * _2864) + 32 <= return_data.size
                                                                                idx = 0
                                                                                s = _2816 + _2840 + 32
                                                                                t = _2816 + ceil32(return_data.size) + 32
                                                                                while idx < _2864:
                                                                                    require mem[s] == mem[s]
                                                                                    mem[t] = mem[s]
                                                                                    idx = idx + 1
                                                                                    s = s + 32
                                                                                    t = t + 32
                                                                                    continue 
                                                                                if 1 >= _2864:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    _3704 = mem[_2816 + ceil32(return_data.size) + 64]
                                                                                    if mem[_2816 + ceil32(return_data.size) + 64] <= 0:
                                                                                        revert with 0, 'amountReceived cannot be zero'
                                                                                    else:
                                                                                        if mem[_2816 + ceil32(return_data.size) + 64] <= _1760:
                                                                                            revert with 0, 'amountReceived cannot be less than amountRequired'
                                                                                        else:
                                                                                            if not arg2:
                                                                                                mem[mem[64] + 4] = msg.sender
                                                                                                mem[mem[64] + 36] = _1760
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, _1760
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _3922 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_3922] == bool(mem[_3922])
                                                                                                    if not arg2:
                                                                                                        if _3704 < _1760:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3704 - _1760
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3704 - _1760
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4214 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4214] == bool(mem[_4214])
                                                                                                    else:
                                                                                                        if _3704 < _1760:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3704 - _1760
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3704 - _1760
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4215 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4215] == bool(mem[_4215])
                                                                                            else:
                                                                                                mem[mem[64] + 4] = msg.sender
                                                                                                mem[mem[64] + 36] = _1760
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, _1760
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _3923 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_3923] == bool(mem[_3923])
                                                                                                    if not arg2:
                                                                                                        if _3704 < _1760:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3704 - _1760
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3704 - _1760
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4216 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4216] == bool(mem[_4216])
                                                                                                    else:
                                                                                                        if _3704 < _1760:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3704 - _1760
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3704 - _1760
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4217 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4217] == bool(mem[_4217])
                                    else:
                                        mem[(6 * ceil32(return_data.size)) + 196] = stor2
                                        mem[(6 * ceil32(return_data.size)) + 228] = arg3
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor2, arg3
                                        mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[64] = (7 * ceil32(return_data.size)) + 192
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[(7 * ceil32(return_data.size)) + 196] = arg3
                                            mem[(7 * ceil32(return_data.size)) + 228] = 64
                                            mem[(7 * ceil32(return_data.size)) + 260] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 128
                                            t = (7 * ceil32(return_data.size)) + 292
                                            while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor1)
                                            staticcall stor1.mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 352]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _561 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _585 = mem[_561]
                                                require mem[_561] <= test266151307()
                                                require _561 + mem[_561] + 31 < _561 + return_data.size
                                                _609 = mem[_561 + mem[_561]]
                                                if mem[_561 + mem[_561]] > test266151307():
                                                    revert with 'NH{q', 65
                                                else:
                                                    if _561 + ceil32(return_data.size) + floor32(mem[_561 + mem[_561]]) + 1 > test266151307() or floor32(mem[_561 + mem[_561]]) + 1 < 0:
                                                        revert with 'NH{q', 65
                                                    else:
                                                        mem[64] = _561 + ceil32(return_data.size) + floor32(mem[_561 + mem[_561]]) + 1
                                                        mem[_561 + ceil32(return_data.size)] = _609
                                                        require _585 + (32 * _609) + 32 <= return_data.size
                                                        idx = 0
                                                        s = _561 + _585 + 32
                                                        t = _561 + ceil32(return_data.size) + 32
                                                        while idx < _609:
                                                            require mem[s] == mem[s]
                                                            mem[t] = mem[s]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        if 0 >= _609:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            _1761 = mem[_561 + ceil32(return_data.size) + 32]
                                                            if mem[_561 + ceil32(return_data.size) + 32] <= 0:
                                                                revert with 0, 'amountRequired cannot be zero'
                                                            else:
                                                                if block.timestamp > -31:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = arg3
                                                                    mem[mem[64] + 36] = _1761
                                                                    mem[mem[64] + 68] = 160
                                                                    _1857 = mem[(6 * ceil32(return_data.size)) + 96]
                                                                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                                                                    idx = 0
                                                                    s = (6 * ceil32(return_data.size)) + 128
                                                                    t = mem[64] + 196
                                                                    while idx < _1857:
                                                                        mem[t] = mem[s + 12 len 20]
                                                                        idx = idx + 1
                                                                        s = s + 32
                                                                        t = t + 32
                                                                        continue 
                                                                    mem[mem[64] + 100] = msg.sender
                                                                    mem[mem[64] + 132] = block.timestamp + 30
                                                                    require ext_code.size(stor2)
                                                                    call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                         gas gas_remaining wei
                                                                        args arg3, _1761, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1857) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _2817 = mem[64]
                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _2841 = mem[_2817]
                                                                        require mem[_2817] <= test266151307()
                                                                        require _2817 + mem[_2817] + 31 < _2817 + return_data.size
                                                                        _2865 = mem[_2817 + mem[_2817]]
                                                                        if mem[_2817 + mem[_2817]] > test266151307():
                                                                            revert with 'NH{q', 65
                                                                        else:
                                                                            if _2817 + ceil32(return_data.size) + floor32(mem[_2817 + mem[_2817]]) + 1 > test266151307() or floor32(mem[_2817 + mem[_2817]]) + 1 < 0:
                                                                                revert with 'NH{q', 65
                                                                            else:
                                                                                mem[64] = _2817 + ceil32(return_data.size) + floor32(mem[_2817 + mem[_2817]]) + 1
                                                                                mem[_2817 + ceil32(return_data.size)] = _2865
                                                                                require _2841 + (32 * _2865) + 32 <= return_data.size
                                                                                idx = 0
                                                                                s = _2817 + _2841 + 32
                                                                                t = _2817 + ceil32(return_data.size) + 32
                                                                                while idx < _2865:
                                                                                    require mem[s] == mem[s]
                                                                                    mem[t] = mem[s]
                                                                                    idx = idx + 1
                                                                                    s = s + 32
                                                                                    t = t + 32
                                                                                    continue 
                                                                                if 1 >= _2865:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    _3705 = mem[_2817 + ceil32(return_data.size) + 64]
                                                                                    if mem[_2817 + ceil32(return_data.size) + 64] <= 0:
                                                                                        revert with 0, 'amountReceived cannot be zero'
                                                                                    else:
                                                                                        if mem[_2817 + ceil32(return_data.size) + 64] <= _1761:
                                                                                            revert with 0, 'amountReceived cannot be less than amountRequired'
                                                                                        else:
                                                                                            if not arg2:
                                                                                                mem[mem[64] + 4] = msg.sender
                                                                                                mem[mem[64] + 36] = _1761
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, _1761
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _3924 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_3924] == bool(mem[_3924])
                                                                                                    if not arg2:
                                                                                                        if _3705 < _1761:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3705 - _1761
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3705 - _1761
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4218 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4218] == bool(mem[_4218])
                                                                                                    else:
                                                                                                        if _3705 < _1761:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3705 - _1761
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3705 - _1761
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4219 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4219] == bool(mem[_4219])
                                                                                            else:
                                                                                                mem[mem[64] + 4] = msg.sender
                                                                                                mem[mem[64] + 36] = _1761
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, _1761
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _3925 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_3925] == bool(mem[_3925])
                                                                                                    if not arg2:
                                                                                                        if _3705 < _1761:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3705 - _1761
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3705 - _1761
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4220 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4220] == bool(mem[_4220])
                                                                                                    else:
                                                                                                        if _3705 < _1761:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3705 - _1761
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3705 - _1761
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4221 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4221] == bool(mem[_4221])
                            else:
                                mem[(6 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
                                if not arg3:
                                    mem[(6 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                                    if not arg2:
                                        mem[(6 * ceil32(return_data.size)) + 196] = stor2
                                        mem[(6 * ceil32(return_data.size)) + 228] = arg3
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor2, arg3
                                        mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[64] = (7 * ceil32(return_data.size)) + 192
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[(7 * ceil32(return_data.size)) + 196] = arg3
                                            mem[(7 * ceil32(return_data.size)) + 228] = 64
                                            mem[(7 * ceil32(return_data.size)) + 260] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 128
                                            t = (7 * ceil32(return_data.size)) + 292
                                            while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor1)
                                            staticcall stor1.mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 352]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _562 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _586 = mem[_562]
                                                require mem[_562] <= test266151307()
                                                require _562 + mem[_562] + 31 < _562 + return_data.size
                                                _610 = mem[_562 + mem[_562]]
                                                if mem[_562 + mem[_562]] > test266151307():
                                                    revert with 'NH{q', 65
                                                else:
                                                    if _562 + ceil32(return_data.size) + floor32(mem[_562 + mem[_562]]) + 1 > test266151307() or floor32(mem[_562 + mem[_562]]) + 1 < 0:
                                                        revert with 'NH{q', 65
                                                    else:
                                                        mem[64] = _562 + ceil32(return_data.size) + floor32(mem[_562 + mem[_562]]) + 1
                                                        mem[_562 + ceil32(return_data.size)] = _610
                                                        require _586 + (32 * _610) + 32 <= return_data.size
                                                        idx = 0
                                                        s = _562 + _586 + 32
                                                        t = _562 + ceil32(return_data.size) + 32
                                                        while idx < _610:
                                                            require mem[s] == mem[s]
                                                            mem[t] = mem[s]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        if 0 >= _610:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            _1762 = mem[_562 + ceil32(return_data.size) + 32]
                                                            if mem[_562 + ceil32(return_data.size) + 32] <= 0:
                                                                revert with 0, 'amountRequired cannot be zero'
                                                            else:
                                                                if block.timestamp > -31:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    _1810 = mem[64]
                                                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = arg3
                                                                    mem[mem[64] + 36] = _1762
                                                                    mem[mem[64] + 68] = 160
                                                                    _1858 = mem[(6 * ceil32(return_data.size)) + 96]
                                                                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                                                                    idx = 0
                                                                    s = (6 * ceil32(return_data.size)) + 128
                                                                    t = mem[64] + 196
                                                                    while idx < _1858:
                                                                        mem[t] = mem[s + 12 len 20]
                                                                        idx = idx + 1
                                                                        s = s + 32
                                                                        t = t + 32
                                                                        continue 
                                                                    mem[_1810 + 100] = msg.sender
                                                                    mem[_1810 + 132] = block.timestamp + 30
                                                                    require ext_code.size(stor2)
                                                                    call stor2.mem[mem[64] len 4] with:
                                                                         gas gas_remaining wei
                                                                        args mem[mem[64] + 4 len _1810 + (32 * _1858) + -mem[64] + 192]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _2818 = mem[64]
                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _2842 = mem[_2818]
                                                                        require mem[_2818] <= test266151307()
                                                                        require _2818 + mem[_2818] + 31 < _2818 + return_data.size
                                                                        _2866 = mem[_2818 + mem[_2818]]
                                                                        if mem[_2818 + mem[_2818]] > test266151307():
                                                                            revert with 'NH{q', 65
                                                                        else:
                                                                            if _2818 + ceil32(return_data.size) + floor32(mem[_2818 + mem[_2818]]) + 1 > test266151307() or floor32(mem[_2818 + mem[_2818]]) + 1 < 0:
                                                                                revert with 'NH{q', 65
                                                                            else:
                                                                                mem[64] = _2818 + ceil32(return_data.size) + floor32(mem[_2818 + mem[_2818]]) + 1
                                                                                mem[_2818 + ceil32(return_data.size)] = _2866
                                                                                require _2842 + (32 * _2866) + 32 <= return_data.size
                                                                                idx = 0
                                                                                s = _2818 + _2842 + 32
                                                                                t = _2818 + ceil32(return_data.size) + 32
                                                                                while idx < _2866:
                                                                                    require mem[s] == mem[s]
                                                                                    mem[t] = mem[s]
                                                                                    idx = idx + 1
                                                                                    s = s + 32
                                                                                    t = t + 32
                                                                                    continue 
                                                                                if 1 >= _2866:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    _3706 = mem[_2818 + ceil32(return_data.size) + 64]
                                                                                    if mem[_2818 + ceil32(return_data.size) + 64] <= 0:
                                                                                        revert with 0, 'amountReceived cannot be zero'
                                                                                    else:
                                                                                        if mem[_2818 + ceil32(return_data.size) + 64] <= _1762:
                                                                                            revert with 0, 'amountReceived cannot be less than amountRequired'
                                                                                        else:
                                                                                            if not arg2:
                                                                                                mem[mem[64] + 4] = msg.sender
                                                                                                mem[mem[64] + 36] = _1762
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, _1762
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _3926 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_3926] == bool(mem[_3926])
                                                                                                    if not arg2:
                                                                                                        if _3706 < _1762:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3706 - _1762
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3706 - _1762
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4222 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4222] == bool(mem[_4222])
                                                                                                    else:
                                                                                                        if _3706 < _1762:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3706 - _1762
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3706 - _1762
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4223 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4223] == bool(mem[_4223])
                                                                                            else:
                                                                                                mem[mem[64] + 4] = msg.sender
                                                                                                mem[mem[64] + 36] = _1762
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, _1762
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _3927 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_3927] == bool(mem[_3927])
                                                                                                    if not arg2:
                                                                                                        if _3706 < _1762:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3706 - _1762
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3706 - _1762
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4224 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4224] == bool(mem[_4224])
                                                                                                    else:
                                                                                                        if _3706 < _1762:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3706 - _1762
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3706 - _1762
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4225 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4225] == bool(mem[_4225])
                                    else:
                                        mem[(6 * ceil32(return_data.size)) + 196] = stor2
                                        mem[(6 * ceil32(return_data.size)) + 228] = arg3
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor2, arg3
                                        mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[64] = (7 * ceil32(return_data.size)) + 192
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[(7 * ceil32(return_data.size)) + 196] = arg3
                                            mem[(7 * ceil32(return_data.size)) + 228] = 64
                                            mem[(7 * ceil32(return_data.size)) + 260] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 128
                                            t = (7 * ceil32(return_data.size)) + 292
                                            while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor1)
                                            staticcall stor1.mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 352]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _563 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _587 = mem[_563]
                                                require mem[_563] <= test266151307()
                                                require _563 + mem[_563] + 31 < _563 + return_data.size
                                                _611 = mem[_563 + mem[_563]]
                                                if mem[_563 + mem[_563]] > test266151307():
                                                    revert with 'NH{q', 65
                                                else:
                                                    if _563 + ceil32(return_data.size) + floor32(mem[_563 + mem[_563]]) + 1 > test266151307() or floor32(mem[_563 + mem[_563]]) + 1 < 0:
                                                        revert with 'NH{q', 65
                                                    else:
                                                        mem[64] = _563 + ceil32(return_data.size) + floor32(mem[_563 + mem[_563]]) + 1
                                                        mem[_563 + ceil32(return_data.size)] = _611
                                                        require _587 + (32 * _611) + 32 <= return_data.size
                                                        idx = 0
                                                        s = _563 + _587 + 32
                                                        t = _563 + ceil32(return_data.size) + 32
                                                        while idx < _611:
                                                            require mem[s] == mem[s]
                                                            mem[t] = mem[s]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        if 0 >= _611:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            _1763 = mem[_563 + ceil32(return_data.size) + 32]
                                                            if mem[_563 + ceil32(return_data.size) + 32] <= 0:
                                                                revert with 0, 'amountRequired cannot be zero'
                                                            else:
                                                                if block.timestamp > -31:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = arg3
                                                                    mem[mem[64] + 36] = _1763
                                                                    mem[mem[64] + 68] = 160
                                                                    _1859 = mem[(6 * ceil32(return_data.size)) + 96]
                                                                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                                                                    idx = 0
                                                                    s = (6 * ceil32(return_data.size)) + 128
                                                                    t = mem[64] + 196
                                                                    while idx < _1859:
                                                                        mem[t] = mem[s + 12 len 20]
                                                                        idx = idx + 1
                                                                        s = s + 32
                                                                        t = t + 32
                                                                        continue 
                                                                    mem[mem[64] + 100] = msg.sender
                                                                    mem[mem[64] + 132] = block.timestamp + 30
                                                                    require ext_code.size(stor2)
                                                                    call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                         gas gas_remaining wei
                                                                        args arg3, _1763, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1859) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _2819 = mem[64]
                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _2843 = mem[_2819]
                                                                        require mem[_2819] <= test266151307()
                                                                        require _2819 + mem[_2819] + 31 < _2819 + return_data.size
                                                                        _2867 = mem[_2819 + mem[_2819]]
                                                                        if mem[_2819 + mem[_2819]] > test266151307():
                                                                            revert with 'NH{q', 65
                                                                        else:
                                                                            if _2819 + ceil32(return_data.size) + floor32(mem[_2819 + mem[_2819]]) + 1 > test266151307() or floor32(mem[_2819 + mem[_2819]]) + 1 < 0:
                                                                                revert with 'NH{q', 65
                                                                            else:
                                                                                mem[64] = _2819 + ceil32(return_data.size) + floor32(mem[_2819 + mem[_2819]]) + 1
                                                                                mem[_2819 + ceil32(return_data.size)] = _2867
                                                                                require _2843 + (32 * _2867) + 32 <= return_data.size
                                                                                idx = 0
                                                                                s = _2819 + _2843 + 32
                                                                                t = _2819 + ceil32(return_data.size) + 32
                                                                                while idx < _2867:
                                                                                    require mem[s] == mem[s]
                                                                                    mem[t] = mem[s]
                                                                                    idx = idx + 1
                                                                                    s = s + 32
                                                                                    t = t + 32
                                                                                    continue 
                                                                                if 1 >= _2867:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    _3707 = mem[_2819 + ceil32(return_data.size) + 64]
                                                                                    if mem[_2819 + ceil32(return_data.size) + 64] <= 0:
                                                                                        revert with 0, 'amountReceived cannot be zero'
                                                                                    else:
                                                                                        if mem[_2819 + ceil32(return_data.size) + 64] <= _1763:
                                                                                            revert with 0, 'amountReceived cannot be less than amountRequired'
                                                                                        else:
                                                                                            if not arg2:
                                                                                                mem[mem[64] + 4] = msg.sender
                                                                                                mem[mem[64] + 36] = _1763
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, _1763
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _3928 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_3928] == bool(mem[_3928])
                                                                                                    if not arg2:
                                                                                                        if _3707 < _1763:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3707 - _1763
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3707 - _1763
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4226 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4226] == bool(mem[_4226])
                                                                                                    else:
                                                                                                        if _3707 < _1763:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3707 - _1763
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3707 - _1763
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4227 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4227] == bool(mem[_4227])
                                                                                            else:
                                                                                                mem[mem[64] + 4] = msg.sender
                                                                                                mem[mem[64] + 36] = _1763
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, _1763
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _3929 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_3929] == bool(mem[_3929])
                                                                                                    if not arg2:
                                                                                                        if _3707 < _1763:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3707 - _1763
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3707 - _1763
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4228 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4228] == bool(mem[_4228])
                                                                                                    else:
                                                                                                        if _3707 < _1763:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3707 - _1763
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3707 - _1763
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4229 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4229] == bool(mem[_4229])
                                else:
                                    mem[(6 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                                    if not arg2:
                                        mem[(6 * ceil32(return_data.size)) + 196] = stor2
                                        mem[(6 * ceil32(return_data.size)) + 228] = arg3
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor2, arg3
                                        mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[64] = (7 * ceil32(return_data.size)) + 192
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[(7 * ceil32(return_data.size)) + 196] = arg3
                                            mem[(7 * ceil32(return_data.size)) + 228] = 64
                                            mem[(7 * ceil32(return_data.size)) + 260] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 128
                                            t = (7 * ceil32(return_data.size)) + 292
                                            while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor1)
                                            staticcall stor1.mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 352]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _564 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _588 = mem[_564]
                                                require mem[_564] <= test266151307()
                                                require _564 + mem[_564] + 31 < _564 + return_data.size
                                                _612 = mem[_564 + mem[_564]]
                                                if mem[_564 + mem[_564]] > test266151307():
                                                    revert with 'NH{q', 65
                                                else:
                                                    if _564 + ceil32(return_data.size) + floor32(mem[_564 + mem[_564]]) + 1 > test266151307() or floor32(mem[_564 + mem[_564]]) + 1 < 0:
                                                        revert with 'NH{q', 65
                                                    else:
                                                        mem[64] = _564 + ceil32(return_data.size) + floor32(mem[_564 + mem[_564]]) + 1
                                                        mem[_564 + ceil32(return_data.size)] = _612
                                                        require _588 + (32 * _612) + 32 <= return_data.size
                                                        idx = 0
                                                        s = _564 + _588 + 32
                                                        t = _564 + ceil32(return_data.size) + 32
                                                        while idx < _612:
                                                            require mem[s] == mem[s]
                                                            mem[t] = mem[s]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        if 0 >= _612:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            _1764 = mem[_564 + ceil32(return_data.size) + 32]
                                                            if mem[_564 + ceil32(return_data.size) + 32] <= 0:
                                                                revert with 0, 'amountRequired cannot be zero'
                                                            else:
                                                                if block.timestamp > -31:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = arg3
                                                                    mem[mem[64] + 36] = _1764
                                                                    mem[mem[64] + 68] = 160
                                                                    _1860 = mem[(6 * ceil32(return_data.size)) + 96]
                                                                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                                                                    idx = 0
                                                                    s = (6 * ceil32(return_data.size)) + 128
                                                                    t = mem[64] + 196
                                                                    while idx < _1860:
                                                                        mem[t] = mem[s + 12 len 20]
                                                                        idx = idx + 1
                                                                        s = s + 32
                                                                        t = t + 32
                                                                        continue 
                                                                    mem[mem[64] + 100] = msg.sender
                                                                    mem[mem[64] + 132] = block.timestamp + 30
                                                                    require ext_code.size(stor2)
                                                                    call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                         gas gas_remaining wei
                                                                        args arg3, _1764, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1860) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _2820 = mem[64]
                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _2844 = mem[_2820]
                                                                        require mem[_2820] <= test266151307()
                                                                        require _2820 + mem[_2820] + 31 < _2820 + return_data.size
                                                                        _2868 = mem[_2820 + mem[_2820]]
                                                                        if mem[_2820 + mem[_2820]] > test266151307():
                                                                            revert with 'NH{q', 65
                                                                        else:
                                                                            if _2820 + ceil32(return_data.size) + floor32(mem[_2820 + mem[_2820]]) + 1 > test266151307() or floor32(mem[_2820 + mem[_2820]]) + 1 < 0:
                                                                                revert with 'NH{q', 65
                                                                            else:
                                                                                mem[64] = _2820 + ceil32(return_data.size) + floor32(mem[_2820 + mem[_2820]]) + 1
                                                                                mem[_2820 + ceil32(return_data.size)] = _2868
                                                                                require _2844 + (32 * _2868) + 32 <= return_data.size
                                                                                idx = 0
                                                                                s = _2820 + _2844 + 32
                                                                                t = _2820 + ceil32(return_data.size) + 32
                                                                                while idx < _2868:
                                                                                    require mem[s] == mem[s]
                                                                                    mem[t] = mem[s]
                                                                                    idx = idx + 1
                                                                                    s = s + 32
                                                                                    t = t + 32
                                                                                    continue 
                                                                                if 1 >= _2868:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    _3708 = mem[_2820 + ceil32(return_data.size) + 64]
                                                                                    if mem[_2820 + ceil32(return_data.size) + 64] <= 0:
                                                                                        revert with 0, 'amountReceived cannot be zero'
                                                                                    else:
                                                                                        if mem[_2820 + ceil32(return_data.size) + 64] <= _1764:
                                                                                            revert with 0, 'amountReceived cannot be less than amountRequired'
                                                                                        else:
                                                                                            if not arg2:
                                                                                                mem[mem[64] + 4] = msg.sender
                                                                                                mem[mem[64] + 36] = _1764
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, _1764
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _3930 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_3930] == bool(mem[_3930])
                                                                                                    if not arg2:
                                                                                                        if _3708 < _1764:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3708 - _1764
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3708 - _1764
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4230 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4230] == bool(mem[_4230])
                                                                                                    else:
                                                                                                        if _3708 < _1764:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3708 - _1764
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3708 - _1764
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4231 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4231] == bool(mem[_4231])
                                                                                            else:
                                                                                                mem[mem[64] + 4] = msg.sender
                                                                                                mem[mem[64] + 36] = _1764
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, _1764
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _3931 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_3931] == bool(mem[_3931])
                                                                                                    if not arg2:
                                                                                                        if _3708 < _1764:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3708 - _1764
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3708 - _1764
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4232 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4232] == bool(mem[_4232])
                                                                                                    else:
                                                                                                        if _3708 < _1764:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3708 - _1764
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3708 - _1764
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4233 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4233] == bool(mem[_4233])
                                    else:
                                        mem[(6 * ceil32(return_data.size)) + 196] = stor2
                                        mem[(6 * ceil32(return_data.size)) + 228] = arg3
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args stor2, arg3
                                        mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[64] = (7 * ceil32(return_data.size)) + 192
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                            mem[(7 * ceil32(return_data.size)) + 196] = arg3
                                            mem[(7 * ceil32(return_data.size)) + 228] = 64
                                            mem[(7 * ceil32(return_data.size)) + 260] = 2
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 128
                                            t = (7 * ceil32(return_data.size)) + 292
                                            while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor1)
                                            staticcall stor1.mem[mem[64] len 4] with:
                                                    gas gas_remaining wei
                                                   args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 352]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _565 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _589 = mem[_565]
                                                require mem[_565] <= test266151307()
                                                require _565 + mem[_565] + 31 < _565 + return_data.size
                                                _613 = mem[_565 + mem[_565]]
                                                if mem[_565 + mem[_565]] > test266151307():
                                                    revert with 'NH{q', 65
                                                else:
                                                    if _565 + ceil32(return_data.size) + floor32(mem[_565 + mem[_565]]) + 1 > test266151307() or floor32(mem[_565 + mem[_565]]) + 1 < 0:
                                                        revert with 'NH{q', 65
                                                    else:
                                                        mem[64] = _565 + ceil32(return_data.size) + floor32(mem[_565 + mem[_565]]) + 1
                                                        mem[_565 + ceil32(return_data.size)] = _613
                                                        require _589 + (32 * _613) + 32 <= return_data.size
                                                        idx = 0
                                                        s = _565 + _589 + 32
                                                        t = _565 + ceil32(return_data.size) + 32
                                                        while idx < _613:
                                                            require mem[s] == mem[s]
                                                            mem[t] = mem[s]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        if 0 >= _613:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            _1765 = mem[_565 + ceil32(return_data.size) + 32]
                                                            if mem[_565 + ceil32(return_data.size) + 32] <= 0:
                                                                revert with 0, 'amountRequired cannot be zero'
                                                            else:
                                                                if block.timestamp > -31:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                    mem[mem[64] + 4] = arg3
                                                                    mem[mem[64] + 36] = _1765
                                                                    mem[mem[64] + 68] = 160
                                                                    _1861 = mem[(6 * ceil32(return_data.size)) + 96]
                                                                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                                                                    idx = 0
                                                                    s = (6 * ceil32(return_data.size)) + 128
                                                                    t = mem[64] + 196
                                                                    while idx < _1861:
                                                                        mem[t] = mem[s + 12 len 20]
                                                                        idx = idx + 1
                                                                        s = s + 32
                                                                        t = t + 32
                                                                        continue 
                                                                    mem[mem[64] + 100] = msg.sender
                                                                    mem[mem[64] + 132] = block.timestamp + 30
                                                                    require ext_code.size(stor2)
                                                                    call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                         gas gas_remaining wei
                                                                        args arg3, _1765, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1861) + 32]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _2821 = mem[64]
                                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _2845 = mem[_2821]
                                                                        require mem[_2821] <= test266151307()
                                                                        require _2821 + mem[_2821] + 31 < _2821 + return_data.size
                                                                        _2869 = mem[_2821 + mem[_2821]]
                                                                        if mem[_2821 + mem[_2821]] > test266151307():
                                                                            revert with 'NH{q', 65
                                                                        else:
                                                                            if _2821 + ceil32(return_data.size) + floor32(mem[_2821 + mem[_2821]]) + 1 > test266151307() or floor32(mem[_2821 + mem[_2821]]) + 1 < 0:
                                                                                revert with 'NH{q', 65
                                                                            else:
                                                                                mem[64] = _2821 + ceil32(return_data.size) + floor32(mem[_2821 + mem[_2821]]) + 1
                                                                                mem[_2821 + ceil32(return_data.size)] = _2869
                                                                                require _2845 + (32 * _2869) + 32 <= return_data.size
                                                                                idx = 0
                                                                                s = _2821 + _2845 + 32
                                                                                t = _2821 + ceil32(return_data.size) + 32
                                                                                while idx < _2869:
                                                                                    require mem[s] == mem[s]
                                                                                    mem[t] = mem[s]
                                                                                    idx = idx + 1
                                                                                    s = s + 32
                                                                                    t = t + 32
                                                                                    continue 
                                                                                if 1 >= _2869:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    _3709 = mem[_2821 + ceil32(return_data.size) + 64]
                                                                                    if mem[_2821 + ceil32(return_data.size) + 64] <= 0:
                                                                                        revert with 0, 'amountReceived cannot be zero'
                                                                                    else:
                                                                                        if mem[_2821 + ceil32(return_data.size) + 64] <= _1765:
                                                                                            revert with 0, 'amountReceived cannot be less than amountRequired'
                                                                                        else:
                                                                                            if not arg2:
                                                                                                mem[mem[64] + 4] = msg.sender
                                                                                                mem[mem[64] + 36] = _1765
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, _1765
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _3932 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_3932] == bool(mem[_3932])
                                                                                                    if not arg2:
                                                                                                        if _3709 < _1765:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3709 - _1765
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3709 - _1765
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4234 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4234] == bool(mem[_4234])
                                                                                                    else:
                                                                                                        if _3709 < _1765:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3709 - _1765
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3709 - _1765
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4235 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4235] == bool(mem[_4235])
                                                                                            else:
                                                                                                mem[mem[64] + 4] = msg.sender
                                                                                                mem[mem[64] + 36] = _1765
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, _1765
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _3933 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_3933] == bool(mem[_3933])
                                                                                                    if not arg2:
                                                                                                        if _3709 < _1765:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3709 - _1765
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3709 - _1765
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4236 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4236] == bool(mem[_4236])
                                                                                                    else:
                                                                                                        if _3709 < _1765:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = arg1
                                                                                                            mem[mem[64] + 36] = _3709 - _1765
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg1), _3709 - _1765
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4237 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4237] == bool(mem[_4237])
    else:
        if arg3:
            revert with 0, 'Input amount cannot be zero'
        else:
            if not arg2:
                require ext_code.size(msg.sender)
                staticcall msg.sender.token0() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(msg.sender)
                    staticcall msg.sender.token1() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor1)
                        staticcall stor1.factory() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
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
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if ext_call.return_data[12 len 20] != msg.sender:
                                    revert with 0, 'Callback not allowed'
                                else:
                                    mem[(6 * ceil32(return_data.size)) + 96] = 2
                                    if not arg2:
                                        mem[(6 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
                                        if not arg3:
                                            mem[(6 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                                            if not arg2:
                                                mem[(6 * ceil32(return_data.size)) + 196] = stor2
                                                mem[(6 * ceil32(return_data.size)) + 228] = arg3
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args stor2, arg3
                                                mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[64] = (7 * ceil32(return_data.size)) + 192
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[(7 * ceil32(return_data.size)) + 196] = arg3
                                                    mem[(7 * ceil32(return_data.size)) + 228] = 64
                                                    mem[(7 * ceil32(return_data.size)) + 260] = 2
                                                    idx = 0
                                                    s = (6 * ceil32(return_data.size)) + 128
                                                    t = (7 * ceil32(return_data.size)) + 292
                                                    while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 352]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _566 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _590 = mem[_566]
                                                        require mem[_566] <= test266151307()
                                                        require _566 + mem[_566] + 31 < _566 + return_data.size
                                                        _614 = mem[_566 + mem[_566]]
                                                        if mem[_566 + mem[_566]] > test266151307():
                                                            revert with 'NH{q', 65
                                                        else:
                                                            if _566 + ceil32(return_data.size) + floor32(mem[_566 + mem[_566]]) + 1 > test266151307() or floor32(mem[_566 + mem[_566]]) + 1 < 0:
                                                                revert with 'NH{q', 65
                                                            else:
                                                                mem[64] = _566 + ceil32(return_data.size) + floor32(mem[_566 + mem[_566]]) + 1
                                                                mem[_566 + ceil32(return_data.size)] = _614
                                                                require _590 + (32 * _614) + 32 <= return_data.size
                                                                idx = 0
                                                                s = _566 + _590 + 32
                                                                t = _566 + ceil32(return_data.size) + 32
                                                                while idx < _614:
                                                                    require mem[s] == mem[s]
                                                                    mem[t] = mem[s]
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                if 0 >= _614:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    _1766 = mem[_566 + ceil32(return_data.size) + 32]
                                                                    if mem[_566 + ceil32(return_data.size) + 32] <= 0:
                                                                        revert with 0, 'amountRequired cannot be zero'
                                                                    else:
                                                                        if block.timestamp > -31:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = arg3
                                                                            mem[mem[64] + 36] = _1766
                                                                            mem[mem[64] + 68] = 160
                                                                            _1862 = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            idx = 0
                                                                            s = (6 * ceil32(return_data.size)) + 128
                                                                            t = mem[64] + 196
                                                                            while idx < _1862:
                                                                                mem[t] = mem[s + 12 len 20]
                                                                                idx = idx + 1
                                                                                s = s + 32
                                                                                t = t + 32
                                                                                continue 
                                                                            mem[mem[64] + 100] = msg.sender
                                                                            mem[mem[64] + 132] = block.timestamp + 30
                                                                            require ext_code.size(stor2)
                                                                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                 gas gas_remaining wei
                                                                                args arg3, _1766, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1862) + 32]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2822 = mem[64]
                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _2846 = mem[_2822]
                                                                                require mem[_2822] <= test266151307()
                                                                                require _2822 + mem[_2822] + 31 < _2822 + return_data.size
                                                                                _2870 = mem[_2822 + mem[_2822]]
                                                                                if mem[_2822 + mem[_2822]] > test266151307():
                                                                                    revert with 'NH{q', 65
                                                                                else:
                                                                                    if _2822 + ceil32(return_data.size) + floor32(mem[_2822 + mem[_2822]]) + 1 > test266151307() or floor32(mem[_2822 + mem[_2822]]) + 1 < 0:
                                                                                        revert with 'NH{q', 65
                                                                                    else:
                                                                                        mem[64] = _2822 + ceil32(return_data.size) + floor32(mem[_2822 + mem[_2822]]) + 1
                                                                                        mem[_2822 + ceil32(return_data.size)] = _2870
                                                                                        require _2846 + (32 * _2870) + 32 <= return_data.size
                                                                                        idx = 0
                                                                                        s = _2822 + _2846 + 32
                                                                                        t = _2822 + ceil32(return_data.size) + 32
                                                                                        while idx < _2870:
                                                                                            require mem[s] == mem[s]
                                                                                            mem[t] = mem[s]
                                                                                            idx = idx + 1
                                                                                            s = s + 32
                                                                                            t = t + 32
                                                                                            continue 
                                                                                        if 1 >= _2870:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            _3710 = mem[_2822 + ceil32(return_data.size) + 64]
                                                                                            if mem[_2822 + ceil32(return_data.size) + 64] <= 0:
                                                                                                revert with 0, 'amountReceived cannot be zero'
                                                                                            else:
                                                                                                if mem[_2822 + ceil32(return_data.size) + 64] <= _1766:
                                                                                                    revert with 0, 'amountReceived cannot be less than amountRequired'
                                                                                                else:
                                                                                                    if not arg2:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1766
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1766
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3934 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3934] == bool(mem[_3934])
                                                                                                            if not arg2:
                                                                                                                if _3710 < _1766:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3710 - _1766
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3710 - _1766
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4238 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4238] == bool(mem[_4238])
                                                                                                            else:
                                                                                                                if _3710 < _1766:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3710 - _1766
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3710 - _1766
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4239 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4239] == bool(mem[_4239])
                                                                                                    else:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1766
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1766
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3935 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3935] == bool(mem[_3935])
                                                                                                            if not arg2:
                                                                                                                if _3710 < _1766:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3710 - _1766
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3710 - _1766
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4240 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4240] == bool(mem[_4240])
                                                                                                            else:
                                                                                                                if _3710 < _1766:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3710 - _1766
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3710 - _1766
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4241 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4241] == bool(mem[_4241])
                                            else:
                                                mem[(6 * ceil32(return_data.size)) + 196] = stor2
                                                mem[(6 * ceil32(return_data.size)) + 228] = arg3
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args stor2, arg3
                                                mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[64] = (7 * ceil32(return_data.size)) + 192
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[(7 * ceil32(return_data.size)) + 196] = arg3
                                                    mem[(7 * ceil32(return_data.size)) + 228] = 64
                                                    mem[(7 * ceil32(return_data.size)) + 260] = 2
                                                    idx = 0
                                                    s = (6 * ceil32(return_data.size)) + 128
                                                    t = (7 * ceil32(return_data.size)) + 292
                                                    while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 352]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _567 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _591 = mem[_567]
                                                        require mem[_567] <= test266151307()
                                                        require _567 + mem[_567] + 31 < _567 + return_data.size
                                                        _615 = mem[_567 + mem[_567]]
                                                        if mem[_567 + mem[_567]] > test266151307():
                                                            revert with 'NH{q', 65
                                                        else:
                                                            if _567 + ceil32(return_data.size) + floor32(mem[_567 + mem[_567]]) + 1 > test266151307() or floor32(mem[_567 + mem[_567]]) + 1 < 0:
                                                                revert with 'NH{q', 65
                                                            else:
                                                                mem[64] = _567 + ceil32(return_data.size) + floor32(mem[_567 + mem[_567]]) + 1
                                                                mem[_567 + ceil32(return_data.size)] = _615
                                                                require _591 + (32 * _615) + 32 <= return_data.size
                                                                idx = 0
                                                                s = _567 + _591 + 32
                                                                t = _567 + ceil32(return_data.size) + 32
                                                                while idx < _615:
                                                                    require mem[s] == mem[s]
                                                                    mem[t] = mem[s]
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                if 0 >= _615:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    _1767 = mem[_567 + ceil32(return_data.size) + 32]
                                                                    if mem[_567 + ceil32(return_data.size) + 32] <= 0:
                                                                        revert with 0, 'amountRequired cannot be zero'
                                                                    else:
                                                                        if block.timestamp > -31:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = arg3
                                                                            mem[mem[64] + 36] = _1767
                                                                            mem[mem[64] + 68] = 160
                                                                            _1863 = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            idx = 0
                                                                            s = (6 * ceil32(return_data.size)) + 128
                                                                            t = mem[64] + 196
                                                                            while idx < _1863:
                                                                                mem[t] = mem[s + 12 len 20]
                                                                                idx = idx + 1
                                                                                s = s + 32
                                                                                t = t + 32
                                                                                continue 
                                                                            mem[mem[64] + 100] = msg.sender
                                                                            mem[mem[64] + 132] = block.timestamp + 30
                                                                            require ext_code.size(stor2)
                                                                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                 gas gas_remaining wei
                                                                                args arg3, _1767, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1863) + 32]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2823 = mem[64]
                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _2847 = mem[_2823]
                                                                                require mem[_2823] <= test266151307()
                                                                                require _2823 + mem[_2823] + 31 < _2823 + return_data.size
                                                                                _2871 = mem[_2823 + mem[_2823]]
                                                                                if mem[_2823 + mem[_2823]] > test266151307():
                                                                                    revert with 'NH{q', 65
                                                                                else:
                                                                                    if _2823 + ceil32(return_data.size) + floor32(mem[_2823 + mem[_2823]]) + 1 > test266151307() or floor32(mem[_2823 + mem[_2823]]) + 1 < 0:
                                                                                        revert with 'NH{q', 65
                                                                                    else:
                                                                                        mem[64] = _2823 + ceil32(return_data.size) + floor32(mem[_2823 + mem[_2823]]) + 1
                                                                                        mem[_2823 + ceil32(return_data.size)] = _2871
                                                                                        require _2847 + (32 * _2871) + 32 <= return_data.size
                                                                                        idx = 0
                                                                                        s = _2823 + _2847 + 32
                                                                                        t = _2823 + ceil32(return_data.size) + 32
                                                                                        while idx < _2871:
                                                                                            require mem[s] == mem[s]
                                                                                            mem[t] = mem[s]
                                                                                            idx = idx + 1
                                                                                            s = s + 32
                                                                                            t = t + 32
                                                                                            continue 
                                                                                        if 1 >= _2871:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            _3711 = mem[_2823 + ceil32(return_data.size) + 64]
                                                                                            if mem[_2823 + ceil32(return_data.size) + 64] <= 0:
                                                                                                revert with 0, 'amountReceived cannot be zero'
                                                                                            else:
                                                                                                if mem[_2823 + ceil32(return_data.size) + 64] <= _1767:
                                                                                                    revert with 0, 'amountReceived cannot be less than amountRequired'
                                                                                                else:
                                                                                                    if not arg2:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1767
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1767
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3936 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3936] == bool(mem[_3936])
                                                                                                            if not arg2:
                                                                                                                if _3711 < _1767:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3711 - _1767
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3711 - _1767
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4242 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4242] == bool(mem[_4242])
                                                                                                            else:
                                                                                                                if _3711 < _1767:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3711 - _1767
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3711 - _1767
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4243 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4243] == bool(mem[_4243])
                                                                                                    else:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1767
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1767
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3937 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3937] == bool(mem[_3937])
                                                                                                            if not arg2:
                                                                                                                if _3711 < _1767:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3711 - _1767
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3711 - _1767
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4244 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4244] == bool(mem[_4244])
                                                                                                            else:
                                                                                                                if _3711 < _1767:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3711 - _1767
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3711 - _1767
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4245 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4245] == bool(mem[_4245])
                                        else:
                                            mem[(6 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                                            if not arg2:
                                                mem[(6 * ceil32(return_data.size)) + 196] = stor2
                                                mem[(6 * ceil32(return_data.size)) + 228] = arg3
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args stor2, arg3
                                                mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[64] = (7 * ceil32(return_data.size)) + 192
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[(7 * ceil32(return_data.size)) + 196] = arg3
                                                    mem[(7 * ceil32(return_data.size)) + 228] = 64
                                                    mem[(7 * ceil32(return_data.size)) + 260] = 2
                                                    idx = 0
                                                    s = (6 * ceil32(return_data.size)) + 128
                                                    t = (7 * ceil32(return_data.size)) + 292
                                                    while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 352]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _568 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _592 = mem[_568]
                                                        require mem[_568] <= test266151307()
                                                        require _568 + mem[_568] + 31 < _568 + return_data.size
                                                        _616 = mem[_568 + mem[_568]]
                                                        if mem[_568 + mem[_568]] > test266151307():
                                                            revert with 'NH{q', 65
                                                        else:
                                                            if _568 + ceil32(return_data.size) + floor32(mem[_568 + mem[_568]]) + 1 > test266151307() or floor32(mem[_568 + mem[_568]]) + 1 < 0:
                                                                revert with 'NH{q', 65
                                                            else:
                                                                mem[64] = _568 + ceil32(return_data.size) + floor32(mem[_568 + mem[_568]]) + 1
                                                                mem[_568 + ceil32(return_data.size)] = _616
                                                                require _592 + (32 * _616) + 32 <= return_data.size
                                                                idx = 0
                                                                s = _568 + _592 + 32
                                                                t = _568 + ceil32(return_data.size) + 32
                                                                while idx < _616:
                                                                    require mem[s] == mem[s]
                                                                    mem[t] = mem[s]
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                if 0 >= _616:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    _1768 = mem[_568 + ceil32(return_data.size) + 32]
                                                                    if mem[_568 + ceil32(return_data.size) + 32] <= 0:
                                                                        revert with 0, 'amountRequired cannot be zero'
                                                                    else:
                                                                        if block.timestamp > -31:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = arg3
                                                                            mem[mem[64] + 36] = _1768
                                                                            mem[mem[64] + 68] = 160
                                                                            _1864 = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            idx = 0
                                                                            s = (6 * ceil32(return_data.size)) + 128
                                                                            t = mem[64] + 196
                                                                            while idx < _1864:
                                                                                mem[t] = mem[s + 12 len 20]
                                                                                idx = idx + 1
                                                                                s = s + 32
                                                                                t = t + 32
                                                                                continue 
                                                                            mem[mem[64] + 100] = msg.sender
                                                                            mem[mem[64] + 132] = block.timestamp + 30
                                                                            require ext_code.size(stor2)
                                                                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                 gas gas_remaining wei
                                                                                args arg3, _1768, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1864) + 32]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2824 = mem[64]
                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _2848 = mem[_2824]
                                                                                require mem[_2824] <= test266151307()
                                                                                require _2824 + mem[_2824] + 31 < _2824 + return_data.size
                                                                                _2872 = mem[_2824 + mem[_2824]]
                                                                                if mem[_2824 + mem[_2824]] > test266151307():
                                                                                    revert with 'NH{q', 65
                                                                                else:
                                                                                    if _2824 + ceil32(return_data.size) + floor32(mem[_2824 + mem[_2824]]) + 1 > test266151307() or floor32(mem[_2824 + mem[_2824]]) + 1 < 0:
                                                                                        revert with 'NH{q', 65
                                                                                    else:
                                                                                        mem[64] = _2824 + ceil32(return_data.size) + floor32(mem[_2824 + mem[_2824]]) + 1
                                                                                        mem[_2824 + ceil32(return_data.size)] = _2872
                                                                                        require _2848 + (32 * _2872) + 32 <= return_data.size
                                                                                        idx = 0
                                                                                        s = _2824 + _2848 + 32
                                                                                        t = _2824 + ceil32(return_data.size) + 32
                                                                                        while idx < _2872:
                                                                                            require mem[s] == mem[s]
                                                                                            mem[t] = mem[s]
                                                                                            idx = idx + 1
                                                                                            s = s + 32
                                                                                            t = t + 32
                                                                                            continue 
                                                                                        if 1 >= _2872:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            _3712 = mem[_2824 + ceil32(return_data.size) + 64]
                                                                                            if mem[_2824 + ceil32(return_data.size) + 64] <= 0:
                                                                                                revert with 0, 'amountReceived cannot be zero'
                                                                                            else:
                                                                                                if mem[_2824 + ceil32(return_data.size) + 64] <= _1768:
                                                                                                    revert with 0, 'amountReceived cannot be less than amountRequired'
                                                                                                else:
                                                                                                    if not arg2:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1768
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1768
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3938 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3938] == bool(mem[_3938])
                                                                                                            if not arg2:
                                                                                                                if _3712 < _1768:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3712 - _1768
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3712 - _1768
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4246 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4246] == bool(mem[_4246])
                                                                                                            else:
                                                                                                                if _3712 < _1768:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3712 - _1768
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3712 - _1768
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4247 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4247] == bool(mem[_4247])
                                                                                                    else:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1768
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1768
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3939 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3939] == bool(mem[_3939])
                                                                                                            if not arg2:
                                                                                                                if _3712 < _1768:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3712 - _1768
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3712 - _1768
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4248 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4248] == bool(mem[_4248])
                                                                                                            else:
                                                                                                                if _3712 < _1768:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3712 - _1768
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3712 - _1768
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4249 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4249] == bool(mem[_4249])
                                            else:
                                                mem[(6 * ceil32(return_data.size)) + 196] = stor2
                                                mem[(6 * ceil32(return_data.size)) + 228] = arg3
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args stor2, arg3
                                                mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[64] = (7 * ceil32(return_data.size)) + 192
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[(7 * ceil32(return_data.size)) + 196] = arg3
                                                    mem[(7 * ceil32(return_data.size)) + 228] = 64
                                                    mem[(7 * ceil32(return_data.size)) + 260] = 2
                                                    idx = 0
                                                    s = (6 * ceil32(return_data.size)) + 128
                                                    t = (7 * ceil32(return_data.size)) + 292
                                                    while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 352]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _569 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _593 = mem[_569]
                                                        require mem[_569] <= test266151307()
                                                        require _569 + mem[_569] + 31 < _569 + return_data.size
                                                        _617 = mem[_569 + mem[_569]]
                                                        if mem[_569 + mem[_569]] > test266151307():
                                                            revert with 'NH{q', 65
                                                        else:
                                                            if _569 + ceil32(return_data.size) + floor32(mem[_569 + mem[_569]]) + 1 > test266151307() or floor32(mem[_569 + mem[_569]]) + 1 < 0:
                                                                revert with 'NH{q', 65
                                                            else:
                                                                mem[64] = _569 + ceil32(return_data.size) + floor32(mem[_569 + mem[_569]]) + 1
                                                                mem[_569 + ceil32(return_data.size)] = _617
                                                                require _593 + (32 * _617) + 32 <= return_data.size
                                                                idx = 0
                                                                s = _569 + _593 + 32
                                                                t = _569 + ceil32(return_data.size) + 32
                                                                while idx < _617:
                                                                    require mem[s] == mem[s]
                                                                    mem[t] = mem[s]
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                if 0 >= _617:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    _1769 = mem[_569 + ceil32(return_data.size) + 32]
                                                                    if mem[_569 + ceil32(return_data.size) + 32] <= 0:
                                                                        revert with 0, 'amountRequired cannot be zero'
                                                                    else:
                                                                        if block.timestamp > -31:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = arg3
                                                                            mem[mem[64] + 36] = _1769
                                                                            mem[mem[64] + 68] = 160
                                                                            _1865 = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            idx = 0
                                                                            s = (6 * ceil32(return_data.size)) + 128
                                                                            t = mem[64] + 196
                                                                            while idx < _1865:
                                                                                mem[t] = mem[s + 12 len 20]
                                                                                idx = idx + 1
                                                                                s = s + 32
                                                                                t = t + 32
                                                                                continue 
                                                                            mem[mem[64] + 100] = msg.sender
                                                                            mem[mem[64] + 132] = block.timestamp + 30
                                                                            require ext_code.size(stor2)
                                                                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                 gas gas_remaining wei
                                                                                args arg3, _1769, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1865) + 32]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2825 = mem[64]
                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _2849 = mem[_2825]
                                                                                require mem[_2825] <= test266151307()
                                                                                require _2825 + mem[_2825] + 31 < _2825 + return_data.size
                                                                                _2873 = mem[_2825 + mem[_2825]]
                                                                                if mem[_2825 + mem[_2825]] > test266151307():
                                                                                    revert with 'NH{q', 65
                                                                                else:
                                                                                    if _2825 + ceil32(return_data.size) + floor32(mem[_2825 + mem[_2825]]) + 1 > test266151307() or floor32(mem[_2825 + mem[_2825]]) + 1 < 0:
                                                                                        revert with 'NH{q', 65
                                                                                    else:
                                                                                        mem[64] = _2825 + ceil32(return_data.size) + floor32(mem[_2825 + mem[_2825]]) + 1
                                                                                        mem[_2825 + ceil32(return_data.size)] = _2873
                                                                                        require _2849 + (32 * _2873) + 32 <= return_data.size
                                                                                        idx = 0
                                                                                        s = _2825 + _2849 + 32
                                                                                        t = _2825 + ceil32(return_data.size) + 32
                                                                                        while idx < _2873:
                                                                                            require mem[s] == mem[s]
                                                                                            mem[t] = mem[s]
                                                                                            idx = idx + 1
                                                                                            s = s + 32
                                                                                            t = t + 32
                                                                                            continue 
                                                                                        if 1 >= _2873:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            _3713 = mem[_2825 + ceil32(return_data.size) + 64]
                                                                                            if mem[_2825 + ceil32(return_data.size) + 64] <= 0:
                                                                                                revert with 0, 'amountReceived cannot be zero'
                                                                                            else:
                                                                                                if mem[_2825 + ceil32(return_data.size) + 64] <= _1769:
                                                                                                    revert with 0, 'amountReceived cannot be less than amountRequired'
                                                                                                else:
                                                                                                    if not arg2:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1769
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1769
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3940 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3940] == bool(mem[_3940])
                                                                                                            if not arg2:
                                                                                                                if _3713 < _1769:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3713 - _1769
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3713 - _1769
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4250 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4250] == bool(mem[_4250])
                                                                                                            else:
                                                                                                                if _3713 < _1769:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3713 - _1769
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3713 - _1769
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4251 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4251] == bool(mem[_4251])
                                                                                                    else:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1769
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1769
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3941 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3941] == bool(mem[_3941])
                                                                                                            if not arg2:
                                                                                                                if _3713 < _1769:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3713 - _1769
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3713 - _1769
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4252 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4252] == bool(mem[_4252])
                                                                                                            else:
                                                                                                                if _3713 < _1769:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3713 - _1769
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3713 - _1769
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4253 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4253] == bool(mem[_4253])
                                    else:
                                        mem[(6 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
                                        if not arg3:
                                            mem[(6 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                                            if not arg2:
                                                mem[(6 * ceil32(return_data.size)) + 196] = stor2
                                                mem[(6 * ceil32(return_data.size)) + 228] = arg3
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args stor2, arg3
                                                mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[64] = (7 * ceil32(return_data.size)) + 192
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[(7 * ceil32(return_data.size)) + 196] = arg3
                                                    mem[(7 * ceil32(return_data.size)) + 228] = 64
                                                    mem[(7 * ceil32(return_data.size)) + 260] = 2
                                                    idx = 0
                                                    s = (6 * ceil32(return_data.size)) + 128
                                                    t = (7 * ceil32(return_data.size)) + 292
                                                    while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 352]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _570 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _594 = mem[_570]
                                                        require mem[_570] <= test266151307()
                                                        require _570 + mem[_570] + 31 < _570 + return_data.size
                                                        _618 = mem[_570 + mem[_570]]
                                                        if mem[_570 + mem[_570]] > test266151307():
                                                            revert with 'NH{q', 65
                                                        else:
                                                            if _570 + ceil32(return_data.size) + floor32(mem[_570 + mem[_570]]) + 1 > test266151307() or floor32(mem[_570 + mem[_570]]) + 1 < 0:
                                                                revert with 'NH{q', 65
                                                            else:
                                                                mem[64] = _570 + ceil32(return_data.size) + floor32(mem[_570 + mem[_570]]) + 1
                                                                mem[_570 + ceil32(return_data.size)] = _618
                                                                require _594 + (32 * _618) + 32 <= return_data.size
                                                                idx = 0
                                                                s = _570 + _594 + 32
                                                                t = _570 + ceil32(return_data.size) + 32
                                                                while idx < _618:
                                                                    require mem[s] == mem[s]
                                                                    mem[t] = mem[s]
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                if 0 >= _618:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    _1770 = mem[_570 + ceil32(return_data.size) + 32]
                                                                    if mem[_570 + ceil32(return_data.size) + 32] <= 0:
                                                                        revert with 0, 'amountRequired cannot be zero'
                                                                    else:
                                                                        if block.timestamp > -31:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = arg3
                                                                            mem[mem[64] + 36] = _1770
                                                                            mem[mem[64] + 68] = 160
                                                                            _1866 = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            idx = 0
                                                                            s = (6 * ceil32(return_data.size)) + 128
                                                                            t = mem[64] + 196
                                                                            while idx < _1866:
                                                                                mem[t] = mem[s + 12 len 20]
                                                                                idx = idx + 1
                                                                                s = s + 32
                                                                                t = t + 32
                                                                                continue 
                                                                            mem[mem[64] + 100] = msg.sender
                                                                            mem[mem[64] + 132] = block.timestamp + 30
                                                                            require ext_code.size(stor2)
                                                                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                 gas gas_remaining wei
                                                                                args arg3, _1770, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1866) + 32]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2826 = mem[64]
                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _2850 = mem[_2826]
                                                                                require mem[_2826] <= test266151307()
                                                                                require _2826 + mem[_2826] + 31 < _2826 + return_data.size
                                                                                _2874 = mem[_2826 + mem[_2826]]
                                                                                if mem[_2826 + mem[_2826]] > test266151307():
                                                                                    revert with 'NH{q', 65
                                                                                else:
                                                                                    if _2826 + ceil32(return_data.size) + floor32(mem[_2826 + mem[_2826]]) + 1 > test266151307() or floor32(mem[_2826 + mem[_2826]]) + 1 < 0:
                                                                                        revert with 'NH{q', 65
                                                                                    else:
                                                                                        mem[64] = _2826 + ceil32(return_data.size) + floor32(mem[_2826 + mem[_2826]]) + 1
                                                                                        mem[_2826 + ceil32(return_data.size)] = _2874
                                                                                        require _2850 + (32 * _2874) + 32 <= return_data.size
                                                                                        idx = 0
                                                                                        s = _2826 + _2850 + 32
                                                                                        t = _2826 + ceil32(return_data.size) + 32
                                                                                        while idx < _2874:
                                                                                            require mem[s] == mem[s]
                                                                                            mem[t] = mem[s]
                                                                                            idx = idx + 1
                                                                                            s = s + 32
                                                                                            t = t + 32
                                                                                            continue 
                                                                                        if 1 >= _2874:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            _3714 = mem[_2826 + ceil32(return_data.size) + 64]
                                                                                            if mem[_2826 + ceil32(return_data.size) + 64] <= 0:
                                                                                                revert with 0, 'amountReceived cannot be zero'
                                                                                            else:
                                                                                                if mem[_2826 + ceil32(return_data.size) + 64] <= _1770:
                                                                                                    revert with 0, 'amountReceived cannot be less than amountRequired'
                                                                                                else:
                                                                                                    if not arg2:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1770
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1770
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3942 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3942] == bool(mem[_3942])
                                                                                                            if not arg2:
                                                                                                                if _3714 < _1770:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3714 - _1770
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3714 - _1770
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4254 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4254] == bool(mem[_4254])
                                                                                                            else:
                                                                                                                if _3714 < _1770:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3714 - _1770
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3714 - _1770
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4255 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4255] == bool(mem[_4255])
                                                                                                    else:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1770
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1770
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3943 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3943] == bool(mem[_3943])
                                                                                                            if not arg2:
                                                                                                                if _3714 < _1770:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3714 - _1770
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3714 - _1770
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4256 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4256] == bool(mem[_4256])
                                                                                                            else:
                                                                                                                if _3714 < _1770:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3714 - _1770
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3714 - _1770
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4257 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4257] == bool(mem[_4257])
                                            else:
                                                mem[(6 * ceil32(return_data.size)) + 196] = stor2
                                                mem[(6 * ceil32(return_data.size)) + 228] = arg3
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args stor2, arg3
                                                mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[64] = (7 * ceil32(return_data.size)) + 192
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[(7 * ceil32(return_data.size)) + 196] = arg3
                                                    mem[(7 * ceil32(return_data.size)) + 228] = 64
                                                    mem[(7 * ceil32(return_data.size)) + 260] = 2
                                                    idx = 0
                                                    s = (6 * ceil32(return_data.size)) + 128
                                                    t = (7 * ceil32(return_data.size)) + 292
                                                    while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 352]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _571 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _595 = mem[_571]
                                                        require mem[_571] <= test266151307()
                                                        require _571 + mem[_571] + 31 < _571 + return_data.size
                                                        _619 = mem[_571 + mem[_571]]
                                                        if mem[_571 + mem[_571]] > test266151307():
                                                            revert with 'NH{q', 65
                                                        else:
                                                            if _571 + ceil32(return_data.size) + floor32(mem[_571 + mem[_571]]) + 1 > test266151307() or floor32(mem[_571 + mem[_571]]) + 1 < 0:
                                                                revert with 'NH{q', 65
                                                            else:
                                                                mem[64] = _571 + ceil32(return_data.size) + floor32(mem[_571 + mem[_571]]) + 1
                                                                mem[_571 + ceil32(return_data.size)] = _619
                                                                require _595 + (32 * _619) + 32 <= return_data.size
                                                                idx = 0
                                                                s = _571 + _595 + 32
                                                                t = _571 + ceil32(return_data.size) + 32
                                                                while idx < _619:
                                                                    require mem[s] == mem[s]
                                                                    mem[t] = mem[s]
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                if 0 >= _619:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    _1771 = mem[_571 + ceil32(return_data.size) + 32]
                                                                    if mem[_571 + ceil32(return_data.size) + 32] <= 0:
                                                                        revert with 0, 'amountRequired cannot be zero'
                                                                    else:
                                                                        if block.timestamp > -31:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = arg3
                                                                            mem[mem[64] + 36] = _1771
                                                                            mem[mem[64] + 68] = 160
                                                                            _1867 = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            idx = 0
                                                                            s = (6 * ceil32(return_data.size)) + 128
                                                                            t = mem[64] + 196
                                                                            while idx < _1867:
                                                                                mem[t] = mem[s + 12 len 20]
                                                                                idx = idx + 1
                                                                                s = s + 32
                                                                                t = t + 32
                                                                                continue 
                                                                            mem[mem[64] + 100] = msg.sender
                                                                            mem[mem[64] + 132] = block.timestamp + 30
                                                                            require ext_code.size(stor2)
                                                                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                 gas gas_remaining wei
                                                                                args arg3, _1771, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1867) + 32]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2827 = mem[64]
                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _2851 = mem[_2827]
                                                                                require mem[_2827] <= test266151307()
                                                                                require _2827 + mem[_2827] + 31 < _2827 + return_data.size
                                                                                _2875 = mem[_2827 + mem[_2827]]
                                                                                if mem[_2827 + mem[_2827]] > test266151307():
                                                                                    revert with 'NH{q', 65
                                                                                else:
                                                                                    if _2827 + ceil32(return_data.size) + floor32(mem[_2827 + mem[_2827]]) + 1 > test266151307() or floor32(mem[_2827 + mem[_2827]]) + 1 < 0:
                                                                                        revert with 'NH{q', 65
                                                                                    else:
                                                                                        mem[64] = _2827 + ceil32(return_data.size) + floor32(mem[_2827 + mem[_2827]]) + 1
                                                                                        mem[_2827 + ceil32(return_data.size)] = _2875
                                                                                        require _2851 + (32 * _2875) + 32 <= return_data.size
                                                                                        idx = 0
                                                                                        s = _2827 + _2851 + 32
                                                                                        t = _2827 + ceil32(return_data.size) + 32
                                                                                        while idx < _2875:
                                                                                            require mem[s] == mem[s]
                                                                                            mem[t] = mem[s]
                                                                                            idx = idx + 1
                                                                                            s = s + 32
                                                                                            t = t + 32
                                                                                            continue 
                                                                                        if 1 >= _2875:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            _3715 = mem[_2827 + ceil32(return_data.size) + 64]
                                                                                            if mem[_2827 + ceil32(return_data.size) + 64] <= 0:
                                                                                                revert with 0, 'amountReceived cannot be zero'
                                                                                            else:
                                                                                                if mem[_2827 + ceil32(return_data.size) + 64] <= _1771:
                                                                                                    revert with 0, 'amountReceived cannot be less than amountRequired'
                                                                                                else:
                                                                                                    if not arg2:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1771
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1771
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3944 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3944] == bool(mem[_3944])
                                                                                                            if not arg2:
                                                                                                                if _3715 < _1771:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3715 - _1771
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3715 - _1771
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4258 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4258] == bool(mem[_4258])
                                                                                                            else:
                                                                                                                if _3715 < _1771:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3715 - _1771
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3715 - _1771
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4259 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4259] == bool(mem[_4259])
                                                                                                    else:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1771
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1771
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3945 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3945] == bool(mem[_3945])
                                                                                                            if not arg2:
                                                                                                                if _3715 < _1771:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3715 - _1771
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3715 - _1771
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4260 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4260] == bool(mem[_4260])
                                                                                                            else:
                                                                                                                if _3715 < _1771:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3715 - _1771
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3715 - _1771
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4261 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4261] == bool(mem[_4261])
                                        else:
                                            mem[(6 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                                            if not arg2:
                                                mem[(6 * ceil32(return_data.size)) + 196] = stor2
                                                mem[(6 * ceil32(return_data.size)) + 228] = arg3
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args stor2, arg3
                                                mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[64] = (7 * ceil32(return_data.size)) + 192
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[(7 * ceil32(return_data.size)) + 196] = arg3
                                                    mem[(7 * ceil32(return_data.size)) + 228] = 64
                                                    mem[(7 * ceil32(return_data.size)) + 260] = 2
                                                    idx = 0
                                                    s = (6 * ceil32(return_data.size)) + 128
                                                    t = (7 * ceil32(return_data.size)) + 292
                                                    while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 352]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _572 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _596 = mem[_572]
                                                        require mem[_572] <= test266151307()
                                                        require _572 + mem[_572] + 31 < _572 + return_data.size
                                                        _620 = mem[_572 + mem[_572]]
                                                        if mem[_572 + mem[_572]] > test266151307():
                                                            revert with 'NH{q', 65
                                                        else:
                                                            if _572 + ceil32(return_data.size) + floor32(mem[_572 + mem[_572]]) + 1 > test266151307() or floor32(mem[_572 + mem[_572]]) + 1 < 0:
                                                                revert with 'NH{q', 65
                                                            else:
                                                                mem[64] = _572 + ceil32(return_data.size) + floor32(mem[_572 + mem[_572]]) + 1
                                                                mem[_572 + ceil32(return_data.size)] = _620
                                                                require _596 + (32 * _620) + 32 <= return_data.size
                                                                idx = 0
                                                                s = _572 + _596 + 32
                                                                t = _572 + ceil32(return_data.size) + 32
                                                                while idx < _620:
                                                                    require mem[s] == mem[s]
                                                                    mem[t] = mem[s]
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                if 0 >= _620:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    _1772 = mem[_572 + ceil32(return_data.size) + 32]
                                                                    if mem[_572 + ceil32(return_data.size) + 32] <= 0:
                                                                        revert with 0, 'amountRequired cannot be zero'
                                                                    else:
                                                                        if block.timestamp > -31:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = arg3
                                                                            mem[mem[64] + 36] = _1772
                                                                            mem[mem[64] + 68] = 160
                                                                            _1868 = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            idx = 0
                                                                            s = (6 * ceil32(return_data.size)) + 128
                                                                            t = mem[64] + 196
                                                                            while idx < _1868:
                                                                                mem[t] = mem[s + 12 len 20]
                                                                                idx = idx + 1
                                                                                s = s + 32
                                                                                t = t + 32
                                                                                continue 
                                                                            mem[mem[64] + 100] = msg.sender
                                                                            mem[mem[64] + 132] = block.timestamp + 30
                                                                            require ext_code.size(stor2)
                                                                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                 gas gas_remaining wei
                                                                                args arg3, _1772, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1868) + 32]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2828 = mem[64]
                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _2852 = mem[_2828]
                                                                                require mem[_2828] <= test266151307()
                                                                                require _2828 + mem[_2828] + 31 < _2828 + return_data.size
                                                                                _2876 = mem[_2828 + mem[_2828]]
                                                                                if mem[_2828 + mem[_2828]] > test266151307():
                                                                                    revert with 'NH{q', 65
                                                                                else:
                                                                                    if _2828 + ceil32(return_data.size) + floor32(mem[_2828 + mem[_2828]]) + 1 > test266151307() or floor32(mem[_2828 + mem[_2828]]) + 1 < 0:
                                                                                        revert with 'NH{q', 65
                                                                                    else:
                                                                                        mem[64] = _2828 + ceil32(return_data.size) + floor32(mem[_2828 + mem[_2828]]) + 1
                                                                                        mem[_2828 + ceil32(return_data.size)] = _2876
                                                                                        require _2852 + (32 * _2876) + 32 <= return_data.size
                                                                                        idx = 0
                                                                                        s = _2828 + _2852 + 32
                                                                                        t = _2828 + ceil32(return_data.size) + 32
                                                                                        while idx < _2876:
                                                                                            require mem[s] == mem[s]
                                                                                            mem[t] = mem[s]
                                                                                            idx = idx + 1
                                                                                            s = s + 32
                                                                                            t = t + 32
                                                                                            continue 
                                                                                        if 1 >= _2876:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            _3716 = mem[_2828 + ceil32(return_data.size) + 64]
                                                                                            if mem[_2828 + ceil32(return_data.size) + 64] <= 0:
                                                                                                revert with 0, 'amountReceived cannot be zero'
                                                                                            else:
                                                                                                if mem[_2828 + ceil32(return_data.size) + 64] <= _1772:
                                                                                                    revert with 0, 'amountReceived cannot be less than amountRequired'
                                                                                                else:
                                                                                                    if not arg2:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1772
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1772
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3946 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3946] == bool(mem[_3946])
                                                                                                            if not arg2:
                                                                                                                if _3716 < _1772:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3716 - _1772
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3716 - _1772
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4262 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4262] == bool(mem[_4262])
                                                                                                            else:
                                                                                                                if _3716 < _1772:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3716 - _1772
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3716 - _1772
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4263 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4263] == bool(mem[_4263])
                                                                                                    else:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1772
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1772
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3947 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3947] == bool(mem[_3947])
                                                                                                            if not arg2:
                                                                                                                if _3716 < _1772:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3716 - _1772
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3716 - _1772
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4264 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4264] == bool(mem[_4264])
                                                                                                            else:
                                                                                                                if _3716 < _1772:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3716 - _1772
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3716 - _1772
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4265 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4265] == bool(mem[_4265])
                                            else:
                                                mem[(6 * ceil32(return_data.size)) + 196] = stor2
                                                mem[(6 * ceil32(return_data.size)) + 228] = arg3
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args stor2, arg3
                                                mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[64] = (7 * ceil32(return_data.size)) + 192
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[(7 * ceil32(return_data.size)) + 196] = arg3
                                                    mem[(7 * ceil32(return_data.size)) + 228] = 64
                                                    mem[(7 * ceil32(return_data.size)) + 260] = 2
                                                    idx = 0
                                                    s = (6 * ceil32(return_data.size)) + 128
                                                    t = (7 * ceil32(return_data.size)) + 292
                                                    while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 352]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _573 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _597 = mem[_573]
                                                        require mem[_573] <= test266151307()
                                                        require _573 + mem[_573] + 31 < _573 + return_data.size
                                                        _621 = mem[_573 + mem[_573]]
                                                        if mem[_573 + mem[_573]] > test266151307():
                                                            revert with 'NH{q', 65
                                                        else:
                                                            if _573 + ceil32(return_data.size) + floor32(mem[_573 + mem[_573]]) + 1 > test266151307() or floor32(mem[_573 + mem[_573]]) + 1 < 0:
                                                                revert with 'NH{q', 65
                                                            else:
                                                                mem[64] = _573 + ceil32(return_data.size) + floor32(mem[_573 + mem[_573]]) + 1
                                                                mem[_573 + ceil32(return_data.size)] = _621
                                                                require _597 + (32 * _621) + 32 <= return_data.size
                                                                idx = 0
                                                                s = _573 + _597 + 32
                                                                t = _573 + ceil32(return_data.size) + 32
                                                                while idx < _621:
                                                                    require mem[s] == mem[s]
                                                                    mem[t] = mem[s]
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                if 0 >= _621:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    _1773 = mem[_573 + ceil32(return_data.size) + 32]
                                                                    if mem[_573 + ceil32(return_data.size) + 32] <= 0:
                                                                        revert with 0, 'amountRequired cannot be zero'
                                                                    else:
                                                                        if block.timestamp > -31:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = arg3
                                                                            mem[mem[64] + 36] = _1773
                                                                            mem[mem[64] + 68] = 160
                                                                            _1869 = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            idx = 0
                                                                            s = (6 * ceil32(return_data.size)) + 128
                                                                            t = mem[64] + 196
                                                                            while idx < _1869:
                                                                                mem[t] = mem[s + 12 len 20]
                                                                                idx = idx + 1
                                                                                s = s + 32
                                                                                t = t + 32
                                                                                continue 
                                                                            mem[mem[64] + 100] = msg.sender
                                                                            mem[mem[64] + 132] = block.timestamp + 30
                                                                            require ext_code.size(stor2)
                                                                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                 gas gas_remaining wei
                                                                                args arg3, _1773, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1869) + 32]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2829 = mem[64]
                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _2853 = mem[_2829]
                                                                                require mem[_2829] <= test266151307()
                                                                                require _2829 + mem[_2829] + 31 < _2829 + return_data.size
                                                                                _2877 = mem[_2829 + mem[_2829]]
                                                                                if mem[_2829 + mem[_2829]] > test266151307():
                                                                                    revert with 'NH{q', 65
                                                                                else:
                                                                                    if _2829 + ceil32(return_data.size) + floor32(mem[_2829 + mem[_2829]]) + 1 > test266151307() or floor32(mem[_2829 + mem[_2829]]) + 1 < 0:
                                                                                        revert with 'NH{q', 65
                                                                                    else:
                                                                                        mem[64] = _2829 + ceil32(return_data.size) + floor32(mem[_2829 + mem[_2829]]) + 1
                                                                                        mem[_2829 + ceil32(return_data.size)] = _2877
                                                                                        require _2853 + (32 * _2877) + 32 <= return_data.size
                                                                                        idx = 0
                                                                                        s = _2829 + _2853 + 32
                                                                                        t = _2829 + ceil32(return_data.size) + 32
                                                                                        while idx < _2877:
                                                                                            require mem[s] == mem[s]
                                                                                            mem[t] = mem[s]
                                                                                            idx = idx + 1
                                                                                            s = s + 32
                                                                                            t = t + 32
                                                                                            continue 
                                                                                        if 1 >= _2877:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            _3717 = mem[_2829 + ceil32(return_data.size) + 64]
                                                                                            if mem[_2829 + ceil32(return_data.size) + 64] <= 0:
                                                                                                revert with 0, 'amountReceived cannot be zero'
                                                                                            else:
                                                                                                if mem[_2829 + ceil32(return_data.size) + 64] <= _1773:
                                                                                                    revert with 0, 'amountReceived cannot be less than amountRequired'
                                                                                                else:
                                                                                                    if not arg2:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1773
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1773
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3948 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3948] == bool(mem[_3948])
                                                                                                            if not arg2:
                                                                                                                if _3717 < _1773:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3717 - _1773
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3717 - _1773
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4266 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4266] == bool(mem[_4266])
                                                                                                            else:
                                                                                                                if _3717 < _1773:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3717 - _1773
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3717 - _1773
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4267 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4267] == bool(mem[_4267])
                                                                                                    else:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1773
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1773
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3949 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3949] == bool(mem[_3949])
                                                                                                            if not arg2:
                                                                                                                if _3717 < _1773:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3717 - _1773
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3717 - _1773
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4268 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4268] == bool(mem[_4268])
                                                                                                            else:
                                                                                                                if _3717 < _1773:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3717 - _1773
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3717 - _1773
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4269 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4269] == bool(mem[_4269])
            else:
                require ext_code.size(msg.sender)
                staticcall msg.sender.token0() with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(msg.sender)
                    staticcall msg.sender.token1() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor1)
                        staticcall stor1.factory() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
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
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if ext_call.return_data[12 len 20] != msg.sender:
                                    revert with 0, 'Callback not allowed'
                                else:
                                    mem[(6 * ceil32(return_data.size)) + 96] = 2
                                    if not arg2:
                                        mem[(6 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
                                        if not arg3:
                                            mem[(6 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                                            if not arg2:
                                                mem[(6 * ceil32(return_data.size)) + 196] = stor2
                                                mem[(6 * ceil32(return_data.size)) + 228] = arg2
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args stor2, arg2
                                                mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[64] = (7 * ceil32(return_data.size)) + 192
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[(7 * ceil32(return_data.size)) + 196] = arg2
                                                    mem[(7 * ceil32(return_data.size)) + 228] = 64
                                                    mem[(7 * ceil32(return_data.size)) + 260] = 2
                                                    idx = 0
                                                    s = (6 * ceil32(return_data.size)) + 128
                                                    t = (7 * ceil32(return_data.size)) + 292
                                                    while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 352]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _574 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _598 = mem[_574]
                                                        require mem[_574] <= test266151307()
                                                        require _574 + mem[_574] + 31 < _574 + return_data.size
                                                        _622 = mem[_574 + mem[_574]]
                                                        if mem[_574 + mem[_574]] > test266151307():
                                                            revert with 'NH{q', 65
                                                        else:
                                                            if _574 + ceil32(return_data.size) + floor32(mem[_574 + mem[_574]]) + 1 > test266151307() or floor32(mem[_574 + mem[_574]]) + 1 < 0:
                                                                revert with 'NH{q', 65
                                                            else:
                                                                mem[64] = _574 + ceil32(return_data.size) + floor32(mem[_574 + mem[_574]]) + 1
                                                                mem[_574 + ceil32(return_data.size)] = _622
                                                                require _598 + (32 * _622) + 32 <= return_data.size
                                                                idx = 0
                                                                s = _574 + _598 + 32
                                                                t = _574 + ceil32(return_data.size) + 32
                                                                while idx < _622:
                                                                    require mem[s] == mem[s]
                                                                    mem[t] = mem[s]
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                if 0 >= _622:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    _1774 = mem[_574 + ceil32(return_data.size) + 32]
                                                                    if mem[_574 + ceil32(return_data.size) + 32] <= 0:
                                                                        revert with 0, 'amountRequired cannot be zero'
                                                                    else:
                                                                        if block.timestamp > -31:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            _1822 = mem[64]
                                                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = arg2
                                                                            mem[mem[64] + 36] = _1774
                                                                            mem[mem[64] + 68] = 160
                                                                            _1870 = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            idx = 0
                                                                            s = (6 * ceil32(return_data.size)) + 128
                                                                            t = mem[64] + 196
                                                                            while idx < _1870:
                                                                                mem[t] = mem[s + 12 len 20]
                                                                                idx = idx + 1
                                                                                s = s + 32
                                                                                t = t + 32
                                                                                continue 
                                                                            mem[_1822 + 100] = msg.sender
                                                                            mem[_1822 + 132] = block.timestamp + 30
                                                                            require ext_code.size(stor2)
                                                                            call stor2.mem[mem[64] len 4] with:
                                                                                 gas gas_remaining wei
                                                                                args mem[mem[64] + 4 len _1822 + (32 * _1870) + -mem[64] + 192]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2830 = mem[64]
                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _2854 = mem[_2830]
                                                                                require mem[_2830] <= test266151307()
                                                                                require _2830 + mem[_2830] + 31 < _2830 + return_data.size
                                                                                _2878 = mem[_2830 + mem[_2830]]
                                                                                if mem[_2830 + mem[_2830]] > test266151307():
                                                                                    revert with 'NH{q', 65
                                                                                else:
                                                                                    if _2830 + ceil32(return_data.size) + floor32(mem[_2830 + mem[_2830]]) + 1 > test266151307() or floor32(mem[_2830 + mem[_2830]]) + 1 < 0:
                                                                                        revert with 'NH{q', 65
                                                                                    else:
                                                                                        mem[64] = _2830 + ceil32(return_data.size) + floor32(mem[_2830 + mem[_2830]]) + 1
                                                                                        mem[_2830 + ceil32(return_data.size)] = _2878
                                                                                        require _2854 + (32 * _2878) + 32 <= return_data.size
                                                                                        idx = 0
                                                                                        s = _2830 + _2854 + 32
                                                                                        t = _2830 + ceil32(return_data.size) + 32
                                                                                        while idx < _2878:
                                                                                            require mem[s] == mem[s]
                                                                                            mem[t] = mem[s]
                                                                                            idx = idx + 1
                                                                                            s = s + 32
                                                                                            t = t + 32
                                                                                            continue 
                                                                                        if 1 >= _2878:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            _3718 = mem[_2830 + ceil32(return_data.size) + 64]
                                                                                            if mem[_2830 + ceil32(return_data.size) + 64] <= 0:
                                                                                                revert with 0, 'amountReceived cannot be zero'
                                                                                            else:
                                                                                                if mem[_2830 + ceil32(return_data.size) + 64] <= _1774:
                                                                                                    revert with 0, 'amountReceived cannot be less than amountRequired'
                                                                                                else:
                                                                                                    if not arg2:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1774
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1774
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3950 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3950] == bool(mem[_3950])
                                                                                                            if not arg2:
                                                                                                                if _3718 < _1774:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3718 - _1774
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3718 - _1774
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4270 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4270] == bool(mem[_4270])
                                                                                                            else:
                                                                                                                if _3718 < _1774:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3718 - _1774
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3718 - _1774
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4271 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4271] == bool(mem[_4271])
                                                                                                    else:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1774
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1774
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3951 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3951] == bool(mem[_3951])
                                                                                                            if not arg2:
                                                                                                                if _3718 < _1774:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3718 - _1774
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3718 - _1774
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4272 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4272] == bool(mem[_4272])
                                                                                                            else:
                                                                                                                if _3718 < _1774:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3718 - _1774
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3718 - _1774
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4273 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4273] == bool(mem[_4273])
                                            else:
                                                mem[(6 * ceil32(return_data.size)) + 196] = stor2
                                                mem[(6 * ceil32(return_data.size)) + 228] = arg2
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args stor2, arg2
                                                mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[64] = (7 * ceil32(return_data.size)) + 192
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[(7 * ceil32(return_data.size)) + 196] = arg2
                                                    mem[(7 * ceil32(return_data.size)) + 228] = 64
                                                    mem[(7 * ceil32(return_data.size)) + 260] = 2
                                                    idx = 0
                                                    s = (6 * ceil32(return_data.size)) + 128
                                                    t = (7 * ceil32(return_data.size)) + 292
                                                    while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 352]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _575 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _599 = mem[_575]
                                                        require mem[_575] <= test266151307()
                                                        require _575 + mem[_575] + 31 < _575 + return_data.size
                                                        _623 = mem[_575 + mem[_575]]
                                                        if mem[_575 + mem[_575]] > test266151307():
                                                            revert with 'NH{q', 65
                                                        else:
                                                            if _575 + ceil32(return_data.size) + floor32(mem[_575 + mem[_575]]) + 1 > test266151307() or floor32(mem[_575 + mem[_575]]) + 1 < 0:
                                                                revert with 'NH{q', 65
                                                            else:
                                                                mem[64] = _575 + ceil32(return_data.size) + floor32(mem[_575 + mem[_575]]) + 1
                                                                mem[_575 + ceil32(return_data.size)] = _623
                                                                require _599 + (32 * _623) + 32 <= return_data.size
                                                                idx = 0
                                                                s = _575 + _599 + 32
                                                                t = _575 + ceil32(return_data.size) + 32
                                                                while idx < _623:
                                                                    require mem[s] == mem[s]
                                                                    mem[t] = mem[s]
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                if 0 >= _623:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    _1775 = mem[_575 + ceil32(return_data.size) + 32]
                                                                    if mem[_575 + ceil32(return_data.size) + 32] <= 0:
                                                                        revert with 0, 'amountRequired cannot be zero'
                                                                    else:
                                                                        if block.timestamp > -31:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = arg2
                                                                            mem[mem[64] + 36] = _1775
                                                                            mem[mem[64] + 68] = 160
                                                                            _1871 = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            idx = 0
                                                                            s = (6 * ceil32(return_data.size)) + 128
                                                                            t = mem[64] + 196
                                                                            while idx < _1871:
                                                                                mem[t] = mem[s + 12 len 20]
                                                                                idx = idx + 1
                                                                                s = s + 32
                                                                                t = t + 32
                                                                                continue 
                                                                            mem[mem[64] + 100] = msg.sender
                                                                            mem[mem[64] + 132] = block.timestamp + 30
                                                                            require ext_code.size(stor2)
                                                                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                 gas gas_remaining wei
                                                                                args arg2, _1775, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1871) + 32]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2831 = mem[64]
                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _2855 = mem[_2831]
                                                                                require mem[_2831] <= test266151307()
                                                                                require _2831 + mem[_2831] + 31 < _2831 + return_data.size
                                                                                _2879 = mem[_2831 + mem[_2831]]
                                                                                if mem[_2831 + mem[_2831]] > test266151307():
                                                                                    revert with 'NH{q', 65
                                                                                else:
                                                                                    if _2831 + ceil32(return_data.size) + floor32(mem[_2831 + mem[_2831]]) + 1 > test266151307() or floor32(mem[_2831 + mem[_2831]]) + 1 < 0:
                                                                                        revert with 'NH{q', 65
                                                                                    else:
                                                                                        mem[64] = _2831 + ceil32(return_data.size) + floor32(mem[_2831 + mem[_2831]]) + 1
                                                                                        mem[_2831 + ceil32(return_data.size)] = _2879
                                                                                        require _2855 + (32 * _2879) + 32 <= return_data.size
                                                                                        idx = 0
                                                                                        s = _2831 + _2855 + 32
                                                                                        t = _2831 + ceil32(return_data.size) + 32
                                                                                        while idx < _2879:
                                                                                            require mem[s] == mem[s]
                                                                                            mem[t] = mem[s]
                                                                                            idx = idx + 1
                                                                                            s = s + 32
                                                                                            t = t + 32
                                                                                            continue 
                                                                                        if 1 >= _2879:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            _3719 = mem[_2831 + ceil32(return_data.size) + 64]
                                                                                            if mem[_2831 + ceil32(return_data.size) + 64] <= 0:
                                                                                                revert with 0, 'amountReceived cannot be zero'
                                                                                            else:
                                                                                                if mem[_2831 + ceil32(return_data.size) + 64] <= _1775:
                                                                                                    revert with 0, 'amountReceived cannot be less than amountRequired'
                                                                                                else:
                                                                                                    if not arg2:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1775
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1775
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3952 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3952] == bool(mem[_3952])
                                                                                                            if not arg2:
                                                                                                                if _3719 < _1775:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3719 - _1775
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3719 - _1775
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4274 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4274] == bool(mem[_4274])
                                                                                                            else:
                                                                                                                if _3719 < _1775:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3719 - _1775
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3719 - _1775
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4275 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4275] == bool(mem[_4275])
                                                                                                    else:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1775
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1775
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3953 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3953] == bool(mem[_3953])
                                                                                                            if not arg2:
                                                                                                                if _3719 < _1775:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3719 - _1775
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3719 - _1775
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4276 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4276] == bool(mem[_4276])
                                                                                                            else:
                                                                                                                if _3719 < _1775:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3719 - _1775
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3719 - _1775
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4277 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4277] == bool(mem[_4277])
                                        else:
                                            mem[(6 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                                            if not arg2:
                                                mem[(6 * ceil32(return_data.size)) + 196] = stor2
                                                mem[(6 * ceil32(return_data.size)) + 228] = arg2
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args stor2, arg2
                                                mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[64] = (7 * ceil32(return_data.size)) + 192
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[(7 * ceil32(return_data.size)) + 196] = arg2
                                                    mem[(7 * ceil32(return_data.size)) + 228] = 64
                                                    mem[(7 * ceil32(return_data.size)) + 260] = 2
                                                    idx = 0
                                                    s = (6 * ceil32(return_data.size)) + 128
                                                    t = (7 * ceil32(return_data.size)) + 292
                                                    while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 352]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _576 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _600 = mem[_576]
                                                        require mem[_576] <= test266151307()
                                                        require _576 + mem[_576] + 31 < _576 + return_data.size
                                                        _624 = mem[_576 + mem[_576]]
                                                        if mem[_576 + mem[_576]] > test266151307():
                                                            revert with 'NH{q', 65
                                                        else:
                                                            if _576 + ceil32(return_data.size) + floor32(mem[_576 + mem[_576]]) + 1 > test266151307() or floor32(mem[_576 + mem[_576]]) + 1 < 0:
                                                                revert with 'NH{q', 65
                                                            else:
                                                                mem[64] = _576 + ceil32(return_data.size) + floor32(mem[_576 + mem[_576]]) + 1
                                                                mem[_576 + ceil32(return_data.size)] = _624
                                                                require _600 + (32 * _624) + 32 <= return_data.size
                                                                idx = 0
                                                                s = _576 + _600 + 32
                                                                t = _576 + ceil32(return_data.size) + 32
                                                                while idx < _624:
                                                                    require mem[s] == mem[s]
                                                                    mem[t] = mem[s]
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                if 0 >= _624:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    _1776 = mem[_576 + ceil32(return_data.size) + 32]
                                                                    if mem[_576 + ceil32(return_data.size) + 32] <= 0:
                                                                        revert with 0, 'amountRequired cannot be zero'
                                                                    else:
                                                                        if block.timestamp > -31:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = arg2
                                                                            mem[mem[64] + 36] = _1776
                                                                            mem[mem[64] + 68] = 160
                                                                            _1872 = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            idx = 0
                                                                            s = (6 * ceil32(return_data.size)) + 128
                                                                            t = mem[64] + 196
                                                                            while idx < _1872:
                                                                                mem[t] = mem[s + 12 len 20]
                                                                                idx = idx + 1
                                                                                s = s + 32
                                                                                t = t + 32
                                                                                continue 
                                                                            mem[mem[64] + 100] = msg.sender
                                                                            mem[mem[64] + 132] = block.timestamp + 30
                                                                            require ext_code.size(stor2)
                                                                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                 gas gas_remaining wei
                                                                                args arg2, _1776, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1872) + 32]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2832 = mem[64]
                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _2856 = mem[_2832]
                                                                                require mem[_2832] <= test266151307()
                                                                                require _2832 + mem[_2832] + 31 < _2832 + return_data.size
                                                                                _2880 = mem[_2832 + mem[_2832]]
                                                                                if mem[_2832 + mem[_2832]] > test266151307():
                                                                                    revert with 'NH{q', 65
                                                                                else:
                                                                                    if _2832 + ceil32(return_data.size) + floor32(mem[_2832 + mem[_2832]]) + 1 > test266151307() or floor32(mem[_2832 + mem[_2832]]) + 1 < 0:
                                                                                        revert with 'NH{q', 65
                                                                                    else:
                                                                                        mem[64] = _2832 + ceil32(return_data.size) + floor32(mem[_2832 + mem[_2832]]) + 1
                                                                                        mem[_2832 + ceil32(return_data.size)] = _2880
                                                                                        require _2856 + (32 * _2880) + 32 <= return_data.size
                                                                                        idx = 0
                                                                                        s = _2832 + _2856 + 32
                                                                                        t = _2832 + ceil32(return_data.size) + 32
                                                                                        while idx < _2880:
                                                                                            require mem[s] == mem[s]
                                                                                            mem[t] = mem[s]
                                                                                            idx = idx + 1
                                                                                            s = s + 32
                                                                                            t = t + 32
                                                                                            continue 
                                                                                        if 1 >= _2880:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            _3720 = mem[_2832 + ceil32(return_data.size) + 64]
                                                                                            if mem[_2832 + ceil32(return_data.size) + 64] <= 0:
                                                                                                revert with 0, 'amountReceived cannot be zero'
                                                                                            else:
                                                                                                if mem[_2832 + ceil32(return_data.size) + 64] <= _1776:
                                                                                                    revert with 0, 'amountReceived cannot be less than amountRequired'
                                                                                                else:
                                                                                                    if not arg2:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1776
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1776
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3954 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3954] == bool(mem[_3954])
                                                                                                            if not arg2:
                                                                                                                if _3720 < _1776:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3720 - _1776
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3720 - _1776
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4278 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4278] == bool(mem[_4278])
                                                                                                            else:
                                                                                                                if _3720 < _1776:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3720 - _1776
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3720 - _1776
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4279 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4279] == bool(mem[_4279])
                                                                                                    else:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1776
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1776
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3955 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3955] == bool(mem[_3955])
                                                                                                            if not arg2:
                                                                                                                if _3720 < _1776:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3720 - _1776
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3720 - _1776
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4280 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4280] == bool(mem[_4280])
                                                                                                            else:
                                                                                                                if _3720 < _1776:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3720 - _1776
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3720 - _1776
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4281 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4281] == bool(mem[_4281])
                                            else:
                                                mem[(6 * ceil32(return_data.size)) + 196] = stor2
                                                mem[(6 * ceil32(return_data.size)) + 228] = arg2
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args stor2, arg2
                                                mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[64] = (7 * ceil32(return_data.size)) + 192
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[(7 * ceil32(return_data.size)) + 196] = arg2
                                                    mem[(7 * ceil32(return_data.size)) + 228] = 64
                                                    mem[(7 * ceil32(return_data.size)) + 260] = 2
                                                    idx = 0
                                                    s = (6 * ceil32(return_data.size)) + 128
                                                    t = (7 * ceil32(return_data.size)) + 292
                                                    while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 352]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _577 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _601 = mem[_577]
                                                        require mem[_577] <= test266151307()
                                                        require _577 + mem[_577] + 31 < _577 + return_data.size
                                                        _625 = mem[_577 + mem[_577]]
                                                        if mem[_577 + mem[_577]] > test266151307():
                                                            revert with 'NH{q', 65
                                                        else:
                                                            if _577 + ceil32(return_data.size) + floor32(mem[_577 + mem[_577]]) + 1 > test266151307() or floor32(mem[_577 + mem[_577]]) + 1 < 0:
                                                                revert with 'NH{q', 65
                                                            else:
                                                                mem[64] = _577 + ceil32(return_data.size) + floor32(mem[_577 + mem[_577]]) + 1
                                                                mem[_577 + ceil32(return_data.size)] = _625
                                                                require _601 + (32 * _625) + 32 <= return_data.size
                                                                idx = 0
                                                                s = _577 + _601 + 32
                                                                t = _577 + ceil32(return_data.size) + 32
                                                                while idx < _625:
                                                                    require mem[s] == mem[s]
                                                                    mem[t] = mem[s]
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                if 0 >= _625:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    _1777 = mem[_577 + ceil32(return_data.size) + 32]
                                                                    if mem[_577 + ceil32(return_data.size) + 32] <= 0:
                                                                        revert with 0, 'amountRequired cannot be zero'
                                                                    else:
                                                                        if block.timestamp > -31:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = arg2
                                                                            mem[mem[64] + 36] = _1777
                                                                            mem[mem[64] + 68] = 160
                                                                            _1873 = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            idx = 0
                                                                            s = (6 * ceil32(return_data.size)) + 128
                                                                            t = mem[64] + 196
                                                                            while idx < _1873:
                                                                                mem[t] = mem[s + 12 len 20]
                                                                                idx = idx + 1
                                                                                s = s + 32
                                                                                t = t + 32
                                                                                continue 
                                                                            mem[mem[64] + 100] = msg.sender
                                                                            mem[mem[64] + 132] = block.timestamp + 30
                                                                            require ext_code.size(stor2)
                                                                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                 gas gas_remaining wei
                                                                                args arg2, _1777, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1873) + 32]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2833 = mem[64]
                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _2857 = mem[_2833]
                                                                                require mem[_2833] <= test266151307()
                                                                                require _2833 + mem[_2833] + 31 < _2833 + return_data.size
                                                                                _2881 = mem[_2833 + mem[_2833]]
                                                                                if mem[_2833 + mem[_2833]] > test266151307():
                                                                                    revert with 'NH{q', 65
                                                                                else:
                                                                                    if _2833 + ceil32(return_data.size) + floor32(mem[_2833 + mem[_2833]]) + 1 > test266151307() or floor32(mem[_2833 + mem[_2833]]) + 1 < 0:
                                                                                        revert with 'NH{q', 65
                                                                                    else:
                                                                                        mem[64] = _2833 + ceil32(return_data.size) + floor32(mem[_2833 + mem[_2833]]) + 1
                                                                                        mem[_2833 + ceil32(return_data.size)] = _2881
                                                                                        require _2857 + (32 * _2881) + 32 <= return_data.size
                                                                                        idx = 0
                                                                                        s = _2833 + _2857 + 32
                                                                                        t = _2833 + ceil32(return_data.size) + 32
                                                                                        while idx < _2881:
                                                                                            require mem[s] == mem[s]
                                                                                            mem[t] = mem[s]
                                                                                            idx = idx + 1
                                                                                            s = s + 32
                                                                                            t = t + 32
                                                                                            continue 
                                                                                        if 1 >= _2881:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            _3721 = mem[_2833 + ceil32(return_data.size) + 64]
                                                                                            if mem[_2833 + ceil32(return_data.size) + 64] <= 0:
                                                                                                revert with 0, 'amountReceived cannot be zero'
                                                                                            else:
                                                                                                if mem[_2833 + ceil32(return_data.size) + 64] <= _1777:
                                                                                                    revert with 0, 'amountReceived cannot be less than amountRequired'
                                                                                                else:
                                                                                                    if not arg2:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1777
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1777
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3956 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3956] == bool(mem[_3956])
                                                                                                            if not arg2:
                                                                                                                if _3721 < _1777:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3721 - _1777
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3721 - _1777
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4282 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4282] == bool(mem[_4282])
                                                                                                            else:
                                                                                                                if _3721 < _1777:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3721 - _1777
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3721 - _1777
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4283 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4283] == bool(mem[_4283])
                                                                                                    else:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1777
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1777
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3957 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3957] == bool(mem[_3957])
                                                                                                            if not arg2:
                                                                                                                if _3721 < _1777:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3721 - _1777
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3721 - _1777
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4284 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4284] == bool(mem[_4284])
                                                                                                            else:
                                                                                                                if _3721 < _1777:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3721 - _1777
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3721 - _1777
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4285 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4285] == bool(mem[_4285])
                                    else:
                                        mem[(6 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
                                        if not arg3:
                                            mem[(6 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                                            if not arg2:
                                                mem[(6 * ceil32(return_data.size)) + 196] = stor2
                                                mem[(6 * ceil32(return_data.size)) + 228] = arg2
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args stor2, arg2
                                                mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[64] = (7 * ceil32(return_data.size)) + 192
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[(7 * ceil32(return_data.size)) + 196] = arg2
                                                    mem[(7 * ceil32(return_data.size)) + 228] = 64
                                                    mem[(7 * ceil32(return_data.size)) + 260] = 2
                                                    idx = 0
                                                    s = (6 * ceil32(return_data.size)) + 128
                                                    t = (7 * ceil32(return_data.size)) + 292
                                                    while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 352]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _578 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _602 = mem[_578]
                                                        require mem[_578] <= test266151307()
                                                        require _578 + mem[_578] + 31 < _578 + return_data.size
                                                        _626 = mem[_578 + mem[_578]]
                                                        if mem[_578 + mem[_578]] > test266151307():
                                                            revert with 'NH{q', 65
                                                        else:
                                                            if _578 + ceil32(return_data.size) + floor32(mem[_578 + mem[_578]]) + 1 > test266151307() or floor32(mem[_578 + mem[_578]]) + 1 < 0:
                                                                revert with 'NH{q', 65
                                                            else:
                                                                mem[64] = _578 + ceil32(return_data.size) + floor32(mem[_578 + mem[_578]]) + 1
                                                                mem[_578 + ceil32(return_data.size)] = _626
                                                                require _602 + (32 * _626) + 32 <= return_data.size
                                                                idx = 0
                                                                s = _578 + _602 + 32
                                                                t = _578 + ceil32(return_data.size) + 32
                                                                while idx < _626:
                                                                    require mem[s] == mem[s]
                                                                    mem[t] = mem[s]
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                if 0 >= _626:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    _1778 = mem[_578 + ceil32(return_data.size) + 32]
                                                                    if mem[_578 + ceil32(return_data.size) + 32] <= 0:
                                                                        revert with 0, 'amountRequired cannot be zero'
                                                                    else:
                                                                        if block.timestamp > -31:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = arg2
                                                                            mem[mem[64] + 36] = _1778
                                                                            mem[mem[64] + 68] = 160
                                                                            _1874 = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            idx = 0
                                                                            s = (6 * ceil32(return_data.size)) + 128
                                                                            t = mem[64] + 196
                                                                            while idx < _1874:
                                                                                mem[t] = mem[s + 12 len 20]
                                                                                idx = idx + 1
                                                                                s = s + 32
                                                                                t = t + 32
                                                                                continue 
                                                                            mem[mem[64] + 100] = msg.sender
                                                                            mem[mem[64] + 132] = block.timestamp + 30
                                                                            require ext_code.size(stor2)
                                                                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                 gas gas_remaining wei
                                                                                args arg2, _1778, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1874) + 32]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2834 = mem[64]
                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _2858 = mem[_2834]
                                                                                require mem[_2834] <= test266151307()
                                                                                require _2834 + mem[_2834] + 31 < _2834 + return_data.size
                                                                                _2882 = mem[_2834 + mem[_2834]]
                                                                                if mem[_2834 + mem[_2834]] > test266151307():
                                                                                    revert with 'NH{q', 65
                                                                                else:
                                                                                    if _2834 + ceil32(return_data.size) + floor32(mem[_2834 + mem[_2834]]) + 1 > test266151307() or floor32(mem[_2834 + mem[_2834]]) + 1 < 0:
                                                                                        revert with 'NH{q', 65
                                                                                    else:
                                                                                        mem[64] = _2834 + ceil32(return_data.size) + floor32(mem[_2834 + mem[_2834]]) + 1
                                                                                        mem[_2834 + ceil32(return_data.size)] = _2882
                                                                                        require _2858 + (32 * _2882) + 32 <= return_data.size
                                                                                        idx = 0
                                                                                        s = _2834 + _2858 + 32
                                                                                        t = _2834 + ceil32(return_data.size) + 32
                                                                                        while idx < _2882:
                                                                                            require mem[s] == mem[s]
                                                                                            mem[t] = mem[s]
                                                                                            idx = idx + 1
                                                                                            s = s + 32
                                                                                            t = t + 32
                                                                                            continue 
                                                                                        if 1 >= _2882:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            _3722 = mem[_2834 + ceil32(return_data.size) + 64]
                                                                                            if mem[_2834 + ceil32(return_data.size) + 64] <= 0:
                                                                                                revert with 0, 'amountReceived cannot be zero'
                                                                                            else:
                                                                                                if mem[_2834 + ceil32(return_data.size) + 64] <= _1778:
                                                                                                    revert with 0, 'amountReceived cannot be less than amountRequired'
                                                                                                else:
                                                                                                    if not arg2:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1778
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1778
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3958 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3958] == bool(mem[_3958])
                                                                                                            if not arg2:
                                                                                                                if _3722 < _1778:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3722 - _1778
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3722 - _1778
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4286 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4286] == bool(mem[_4286])
                                                                                                            else:
                                                                                                                if _3722 < _1778:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3722 - _1778
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3722 - _1778
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4287 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4287] == bool(mem[_4287])
                                                                                                    else:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1778
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1778
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3959 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3959] == bool(mem[_3959])
                                                                                                            if not arg2:
                                                                                                                if _3722 < _1778:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3722 - _1778
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3722 - _1778
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4288 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4288] == bool(mem[_4288])
                                                                                                            else:
                                                                                                                if _3722 < _1778:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3722 - _1778
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3722 - _1778
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4289 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4289] == bool(mem[_4289])
                                            else:
                                                mem[(6 * ceil32(return_data.size)) + 196] = stor2
                                                mem[(6 * ceil32(return_data.size)) + 228] = arg2
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args stor2, arg2
                                                mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[64] = (7 * ceil32(return_data.size)) + 192
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[(7 * ceil32(return_data.size)) + 196] = arg2
                                                    mem[(7 * ceil32(return_data.size)) + 228] = 64
                                                    mem[(7 * ceil32(return_data.size)) + 260] = 2
                                                    idx = 0
                                                    s = (6 * ceil32(return_data.size)) + 128
                                                    t = (7 * ceil32(return_data.size)) + 292
                                                    while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 352]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _579 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _603 = mem[_579]
                                                        require mem[_579] <= test266151307()
                                                        require _579 + mem[_579] + 31 < _579 + return_data.size
                                                        _627 = mem[_579 + mem[_579]]
                                                        if mem[_579 + mem[_579]] > test266151307():
                                                            revert with 'NH{q', 65
                                                        else:
                                                            if _579 + ceil32(return_data.size) + floor32(mem[_579 + mem[_579]]) + 1 > test266151307() or floor32(mem[_579 + mem[_579]]) + 1 < 0:
                                                                revert with 'NH{q', 65
                                                            else:
                                                                mem[64] = _579 + ceil32(return_data.size) + floor32(mem[_579 + mem[_579]]) + 1
                                                                mem[_579 + ceil32(return_data.size)] = _627
                                                                require _603 + (32 * _627) + 32 <= return_data.size
                                                                idx = 0
                                                                s = _579 + _603 + 32
                                                                t = _579 + ceil32(return_data.size) + 32
                                                                while idx < _627:
                                                                    require mem[s] == mem[s]
                                                                    mem[t] = mem[s]
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                if 0 >= _627:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    _1779 = mem[_579 + ceil32(return_data.size) + 32]
                                                                    if mem[_579 + ceil32(return_data.size) + 32] <= 0:
                                                                        revert with 0, 'amountRequired cannot be zero'
                                                                    else:
                                                                        if block.timestamp > -31:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = arg2
                                                                            mem[mem[64] + 36] = _1779
                                                                            mem[mem[64] + 68] = 160
                                                                            _1875 = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            idx = 0
                                                                            s = (6 * ceil32(return_data.size)) + 128
                                                                            t = mem[64] + 196
                                                                            while idx < _1875:
                                                                                mem[t] = mem[s + 12 len 20]
                                                                                idx = idx + 1
                                                                                s = s + 32
                                                                                t = t + 32
                                                                                continue 
                                                                            mem[mem[64] + 100] = msg.sender
                                                                            mem[mem[64] + 132] = block.timestamp + 30
                                                                            require ext_code.size(stor2)
                                                                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                 gas gas_remaining wei
                                                                                args arg2, _1779, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1875) + 32]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2835 = mem[64]
                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _2859 = mem[_2835]
                                                                                require mem[_2835] <= test266151307()
                                                                                require _2835 + mem[_2835] + 31 < _2835 + return_data.size
                                                                                _2883 = mem[_2835 + mem[_2835]]
                                                                                if mem[_2835 + mem[_2835]] > test266151307():
                                                                                    revert with 'NH{q', 65
                                                                                else:
                                                                                    if _2835 + ceil32(return_data.size) + floor32(mem[_2835 + mem[_2835]]) + 1 > test266151307() or floor32(mem[_2835 + mem[_2835]]) + 1 < 0:
                                                                                        revert with 'NH{q', 65
                                                                                    else:
                                                                                        mem[64] = _2835 + ceil32(return_data.size) + floor32(mem[_2835 + mem[_2835]]) + 1
                                                                                        mem[_2835 + ceil32(return_data.size)] = _2883
                                                                                        require _2859 + (32 * _2883) + 32 <= return_data.size
                                                                                        idx = 0
                                                                                        s = _2835 + _2859 + 32
                                                                                        t = _2835 + ceil32(return_data.size) + 32
                                                                                        while idx < _2883:
                                                                                            require mem[s] == mem[s]
                                                                                            mem[t] = mem[s]
                                                                                            idx = idx + 1
                                                                                            s = s + 32
                                                                                            t = t + 32
                                                                                            continue 
                                                                                        if 1 >= _2883:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            _3723 = mem[_2835 + ceil32(return_data.size) + 64]
                                                                                            if mem[_2835 + ceil32(return_data.size) + 64] <= 0:
                                                                                                revert with 0, 'amountReceived cannot be zero'
                                                                                            else:
                                                                                                if mem[_2835 + ceil32(return_data.size) + 64] <= _1779:
                                                                                                    revert with 0, 'amountReceived cannot be less than amountRequired'
                                                                                                else:
                                                                                                    if not arg2:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1779
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1779
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3960 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3960] == bool(mem[_3960])
                                                                                                            if not arg2:
                                                                                                                if _3723 < _1779:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3723 - _1779
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3723 - _1779
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4290 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4290] == bool(mem[_4290])
                                                                                                            else:
                                                                                                                if _3723 < _1779:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3723 - _1779
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3723 - _1779
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4291 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4291] == bool(mem[_4291])
                                                                                                    else:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1779
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1779
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3961 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3961] == bool(mem[_3961])
                                                                                                            if not arg2:
                                                                                                                if _3723 < _1779:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3723 - _1779
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3723 - _1779
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4292 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4292] == bool(mem[_4292])
                                                                                                            else:
                                                                                                                if _3723 < _1779:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3723 - _1779
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3723 - _1779
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4293 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4293] == bool(mem[_4293])
                                        else:
                                            mem[(6 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
                                            if not arg2:
                                                mem[(6 * ceil32(return_data.size)) + 196] = stor2
                                                mem[(6 * ceil32(return_data.size)) + 228] = arg2
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args stor2, arg2
                                                mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[64] = (7 * ceil32(return_data.size)) + 192
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[(7 * ceil32(return_data.size)) + 196] = arg2
                                                    mem[(7 * ceil32(return_data.size)) + 228] = 64
                                                    mem[(7 * ceil32(return_data.size)) + 260] = 2
                                                    idx = 0
                                                    s = (6 * ceil32(return_data.size)) + 128
                                                    t = (7 * ceil32(return_data.size)) + 292
                                                    while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 352]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _580 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _604 = mem[_580]
                                                        require mem[_580] <= test266151307()
                                                        require _580 + mem[_580] + 31 < _580 + return_data.size
                                                        _628 = mem[_580 + mem[_580]]
                                                        if mem[_580 + mem[_580]] > test266151307():
                                                            revert with 'NH{q', 65
                                                        else:
                                                            if _580 + ceil32(return_data.size) + floor32(mem[_580 + mem[_580]]) + 1 > test266151307() or floor32(mem[_580 + mem[_580]]) + 1 < 0:
                                                                revert with 'NH{q', 65
                                                            else:
                                                                mem[64] = _580 + ceil32(return_data.size) + floor32(mem[_580 + mem[_580]]) + 1
                                                                mem[_580 + ceil32(return_data.size)] = _628
                                                                require _604 + (32 * _628) + 32 <= return_data.size
                                                                idx = 0
                                                                s = _580 + _604 + 32
                                                                t = _580 + ceil32(return_data.size) + 32
                                                                while idx < _628:
                                                                    require mem[s] == mem[s]
                                                                    mem[t] = mem[s]
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                if 0 >= _628:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    _1780 = mem[_580 + ceil32(return_data.size) + 32]
                                                                    if mem[_580 + ceil32(return_data.size) + 32] <= 0:
                                                                        revert with 0, 'amountRequired cannot be zero'
                                                                    else:
                                                                        if block.timestamp > -31:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = arg2
                                                                            mem[mem[64] + 36] = _1780
                                                                            mem[mem[64] + 68] = 160
                                                                            _1876 = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            idx = 0
                                                                            s = (6 * ceil32(return_data.size)) + 128
                                                                            t = mem[64] + 196
                                                                            while idx < _1876:
                                                                                mem[t] = mem[s + 12 len 20]
                                                                                idx = idx + 1
                                                                                s = s + 32
                                                                                t = t + 32
                                                                                continue 
                                                                            mem[mem[64] + 100] = msg.sender
                                                                            mem[mem[64] + 132] = block.timestamp + 30
                                                                            require ext_code.size(stor2)
                                                                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                 gas gas_remaining wei
                                                                                args arg2, _1780, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1876) + 32]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2836 = mem[64]
                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _2860 = mem[_2836]
                                                                                require mem[_2836] <= test266151307()
                                                                                require _2836 + mem[_2836] + 31 < _2836 + return_data.size
                                                                                _2884 = mem[_2836 + mem[_2836]]
                                                                                if mem[_2836 + mem[_2836]] > test266151307():
                                                                                    revert with 'NH{q', 65
                                                                                else:
                                                                                    if _2836 + ceil32(return_data.size) + floor32(mem[_2836 + mem[_2836]]) + 1 > test266151307() or floor32(mem[_2836 + mem[_2836]]) + 1 < 0:
                                                                                        revert with 'NH{q', 65
                                                                                    else:
                                                                                        mem[64] = _2836 + ceil32(return_data.size) + floor32(mem[_2836 + mem[_2836]]) + 1
                                                                                        mem[_2836 + ceil32(return_data.size)] = _2884
                                                                                        require _2860 + (32 * _2884) + 32 <= return_data.size
                                                                                        idx = 0
                                                                                        s = _2836 + _2860 + 32
                                                                                        t = _2836 + ceil32(return_data.size) + 32
                                                                                        while idx < _2884:
                                                                                            require mem[s] == mem[s]
                                                                                            mem[t] = mem[s]
                                                                                            idx = idx + 1
                                                                                            s = s + 32
                                                                                            t = t + 32
                                                                                            continue 
                                                                                        if 1 >= _2884:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            _3724 = mem[_2836 + ceil32(return_data.size) + 64]
                                                                                            if mem[_2836 + ceil32(return_data.size) + 64] <= 0:
                                                                                                revert with 0, 'amountReceived cannot be zero'
                                                                                            else:
                                                                                                if mem[_2836 + ceil32(return_data.size) + 64] <= _1780:
                                                                                                    revert with 0, 'amountReceived cannot be less than amountRequired'
                                                                                                else:
                                                                                                    if not arg2:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1780
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1780
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3962 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3962] == bool(mem[_3962])
                                                                                                            if not arg2:
                                                                                                                if _3724 < _1780:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3724 - _1780
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3724 - _1780
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4294 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4294] == bool(mem[_4294])
                                                                                                            else:
                                                                                                                if _3724 < _1780:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3724 - _1780
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3724 - _1780
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4295 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4295] == bool(mem[_4295])
                                                                                                    else:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1780
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1780
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3963 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3963] == bool(mem[_3963])
                                                                                                            if not arg2:
                                                                                                                if _3724 < _1780:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3724 - _1780
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3724 - _1780
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4296 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4296] == bool(mem[_4296])
                                                                                                            else:
                                                                                                                if _3724 < _1780:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3724 - _1780
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3724 - _1780
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4297 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4297] == bool(mem[_4297])
                                            else:
                                                mem[(6 * ceil32(return_data.size)) + 196] = stor2
                                                mem[(6 * ceil32(return_data.size)) + 228] = arg2
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args stor2, arg2
                                                mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    mem[64] = (7 * ceil32(return_data.size)) + 192
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                                    mem[(7 * ceil32(return_data.size)) + 196] = arg2
                                                    mem[(7 * ceil32(return_data.size)) + 228] = 64
                                                    mem[(7 * ceil32(return_data.size)) + 260] = 2
                                                    idx = 0
                                                    s = (6 * ceil32(return_data.size)) + 128
                                                    t = (7 * ceil32(return_data.size)) + 292
                                                    while idx < mem[(6 * ceil32(return_data.size)) + 96]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 352]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _581 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _605 = mem[_581]
                                                        require mem[_581] <= test266151307()
                                                        require _581 + mem[_581] + 31 < _581 + return_data.size
                                                        _629 = mem[_581 + mem[_581]]
                                                        if mem[_581 + mem[_581]] > test266151307():
                                                            revert with 'NH{q', 65
                                                        else:
                                                            if _581 + ceil32(return_data.size) + floor32(mem[_581 + mem[_581]]) + 1 > test266151307() or floor32(mem[_581 + mem[_581]]) + 1 < 0:
                                                                revert with 'NH{q', 65
                                                            else:
                                                                mem[64] = _581 + ceil32(return_data.size) + floor32(mem[_581 + mem[_581]]) + 1
                                                                mem[_581 + ceil32(return_data.size)] = _629
                                                                require _605 + (32 * _629) + 32 <= return_data.size
                                                                idx = 0
                                                                s = _581 + _605 + 32
                                                                t = _581 + ceil32(return_data.size) + 32
                                                                while idx < _629:
                                                                    require mem[s] == mem[s]
                                                                    mem[t] = mem[s]
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                if 0 >= _629:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    _1781 = mem[_581 + ceil32(return_data.size) + 32]
                                                                    if mem[_581 + ceil32(return_data.size) + 32] <= 0:
                                                                        revert with 0, 'amountRequired cannot be zero'
                                                                    else:
                                                                        if block.timestamp > -31:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                                            mem[mem[64] + 4] = arg2
                                                                            mem[mem[64] + 36] = _1781
                                                                            mem[mem[64] + 68] = 160
                                                                            _1877 = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                                                                            idx = 0
                                                                            s = (6 * ceil32(return_data.size)) + 128
                                                                            t = mem[64] + 196
                                                                            while idx < _1877:
                                                                                mem[t] = mem[s + 12 len 20]
                                                                                idx = idx + 1
                                                                                s = s + 32
                                                                                t = t + 32
                                                                                continue 
                                                                            mem[mem[64] + 100] = msg.sender
                                                                            mem[mem[64] + 132] = block.timestamp + 30
                                                                            require ext_code.size(stor2)
                                                                            call stor2.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                                 gas gas_remaining wei
                                                                                args arg2, _1781, 160, msg.sender, block.timestamp + 30, mem[mem[64] + 164 len (32 * _1877) + 32]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2837 = mem[64]
                                                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _2861 = mem[_2837]
                                                                                require mem[_2837] <= test266151307()
                                                                                require _2837 + mem[_2837] + 31 < _2837 + return_data.size
                                                                                _2885 = mem[_2837 + mem[_2837]]
                                                                                if mem[_2837 + mem[_2837]] > test266151307():
                                                                                    revert with 'NH{q', 65
                                                                                else:
                                                                                    if _2837 + ceil32(return_data.size) + floor32(mem[_2837 + mem[_2837]]) + 1 > test266151307() or floor32(mem[_2837 + mem[_2837]]) + 1 < 0:
                                                                                        revert with 'NH{q', 65
                                                                                    else:
                                                                                        mem[64] = _2837 + ceil32(return_data.size) + floor32(mem[_2837 + mem[_2837]]) + 1
                                                                                        mem[_2837 + ceil32(return_data.size)] = _2885
                                                                                        require _2861 + (32 * _2885) + 32 <= return_data.size
                                                                                        idx = 0
                                                                                        s = _2837 + _2861 + 32
                                                                                        t = _2837 + ceil32(return_data.size) + 32
                                                                                        while idx < _2885:
                                                                                            require mem[s] == mem[s]
                                                                                            mem[t] = mem[s]
                                                                                            idx = idx + 1
                                                                                            s = s + 32
                                                                                            t = t + 32
                                                                                            continue 
                                                                                        if 1 >= _2885:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            _3725 = mem[_2837 + ceil32(return_data.size) + 64]
                                                                                            if mem[_2837 + ceil32(return_data.size) + 64] <= 0:
                                                                                                revert with 0, 'amountReceived cannot be zero'
                                                                                            else:
                                                                                                if mem[_2837 + ceil32(return_data.size) + 64] <= _1781:
                                                                                                    revert with 0, 'amountReceived cannot be less than amountRequired'
                                                                                                else:
                                                                                                    if not arg2:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1781
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1781
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3964 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3964] == bool(mem[_3964])
                                                                                                            if not arg2:
                                                                                                                if _3725 < _1781:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3725 - _1781
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3725 - _1781
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4298 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4298] == bool(mem[_4298])
                                                                                                            else:
                                                                                                                if _3725 < _1781:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3725 - _1781
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3725 - _1781
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4299 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4299] == bool(mem[_4299])
                                                                                                    else:
                                                                                                        mem[mem[64] + 4] = msg.sender
                                                                                                        mem[mem[64] + 36] = _1781
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, _1781
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3965 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3965] == bool(mem[_3965])
                                                                                                            if not arg2:
                                                                                                                if _3725 < _1781:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3725 - _1781
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3725 - _1781
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4300 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4300] == bool(mem[_4300])
                                                                                                            else:
                                                                                                                if _3725 < _1781:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = arg1
                                                                                                                    mem[mem[64] + 36] = _3725 - _1781
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg1), _3725 - _1781
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _4301 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_4301] == bool(mem[_4301])
}



}
