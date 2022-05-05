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

function sub_42b0ca9e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    revert with 0, 'swapf problem'
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Insuffisant funds'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer error'
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
        require ext_code.size(stor1)
        staticcall stor1.factory() with:
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
            revert with 0, 'Callback not allowed'
        mem[(6 * ceil32(return_data.size)) + 96] = 2
        mem[(6 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 196] = stor2
        mem[(6 * ceil32(return_data.size)) + 228] = arg3
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor2, arg3
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
        require ext_code.size(stor1)
        staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
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
                    _582 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _606 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _582 + (32 * _606) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _582 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _606:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _606:
                        revert with 'NH{q', 50
                    _1758 = mem[(8 * ceil32(return_data.size)) + 224]
                    if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                        revert with 0, 'amountRequired cannot be zero'
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    _1806 = mem[64]
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
                    mem[_1806 + 100] = msg.sender
                    mem[_1806 + 132] = block.timestamp + 30
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1806 + (32 * _1854) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                    if _2814 + ceil32(return_data.size) + floor32(mem[_2814 + mem[_2814]]) + 1 > test266151307() or floor32(mem[_2814 + mem[_2814]]) + 1 < 0:
                        revert with 'NH{q', 65
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
                    _3702 = mem[_2814 + ceil32(return_data.size) + 64]
                    if mem[_2814 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'amountReceived cannot be zero'
                    if mem[_2814 + ceil32(return_data.size) + 64] <= _1758:
                        revert with 0, 'amountReceived cannot be less than amountRequired'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1758
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1758
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _3918 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3918] == bool(mem[_3918])
                        if _3702 < _1758:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3702 - _1758
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _3702 - _1758
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _4206 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4206] == bool(mem[_4206])
                        else:
                            _4207 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4207] == bool(mem[_4207])
                    else:
                        _3919 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3919] == bool(mem[_3919])
                        if _3702 < _1758:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3702 - _1758
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _3702 - _1758
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _4208 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4208] == bool(mem[_4208])
                        else:
                            _4209 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4209] == bool(mem[_4209])
                else:
                    _583 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _607 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _583 + (32 * _607) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _583 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _607:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _607:
                        revert with 'NH{q', 50
                    _1759 = mem[(8 * ceil32(return_data.size)) + 224]
                    if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                        revert with 0, 'amountRequired cannot be zero'
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    _1807 = mem[64]
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
                    mem[_1807 + 100] = msg.sender
                    mem[_1807 + 132] = block.timestamp + 30
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1807 + (32 * _1855) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                    if _2815 + ceil32(return_data.size) + floor32(mem[_2815 + mem[_2815]]) + 1 > test266151307() or floor32(mem[_2815 + mem[_2815]]) + 1 < 0:
                        revert with 'NH{q', 65
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
                    _3703 = mem[_2815 + ceil32(return_data.size) + 64]
                    if mem[_2815 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'amountReceived cannot be zero'
                    if mem[_2815 + ceil32(return_data.size) + 64] <= _1759:
                        revert with 0, 'amountReceived cannot be less than amountRequired'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1759
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1759
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _3920 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3920] == bool(mem[_3920])
                        if _3703 < _1759:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3703 - _1759
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _3703 - _1759
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _4210 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4210] == bool(mem[_4210])
                        else:
                            _4211 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4211] == bool(mem[_4211])
                    else:
                        _3921 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3921] == bool(mem[_3921])
                        if _3703 < _1759:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3703 - _1759
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _3703 - _1759
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _4212 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4212] == bool(mem[_4212])
                        else:
                            _4213 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4213] == bool(mem[_4213])
            else:
                if not arg2:
                    _584 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _608 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _584 + (32 * _608) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _584 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _608:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _608:
                        revert with 'NH{q', 50
                    _1760 = mem[(8 * ceil32(return_data.size)) + 224]
                    if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                        revert with 0, 'amountRequired cannot be zero'
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    _1808 = mem[64]
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
                    mem[_1808 + 100] = msg.sender
                    mem[_1808 + 132] = block.timestamp + 30
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1808 + (32 * _1856) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                    if _2816 + ceil32(return_data.size) + floor32(mem[_2816 + mem[_2816]]) + 1 > test266151307() or floor32(mem[_2816 + mem[_2816]]) + 1 < 0:
                        revert with 'NH{q', 65
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
                    _3704 = mem[_2816 + ceil32(return_data.size) + 64]
                    if mem[_2816 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'amountReceived cannot be zero'
                    if mem[_2816 + ceil32(return_data.size) + 64] <= _1760:
                        revert with 0, 'amountReceived cannot be less than amountRequired'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1760
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1760
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _3922 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3922] == bool(mem[_3922])
                        if _3704 < _1760:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3704 - _1760
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _3704 - _1760
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _4214 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4214] == bool(mem[_4214])
                        else:
                            _4215 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4215] == bool(mem[_4215])
                    else:
                        _3923 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3923] == bool(mem[_3923])
                        if _3704 < _1760:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3704 - _1760
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _3704 - _1760
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _4216 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4216] == bool(mem[_4216])
                        else:
                            _4217 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4217] == bool(mem[_4217])
                else:
                    _585 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _609 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _585 + (32 * _609) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _585 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _609:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _609:
                        revert with 'NH{q', 50
                    _1761 = mem[(8 * ceil32(return_data.size)) + 224]
                    if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                        revert with 0, 'amountRequired cannot be zero'
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    _1809 = mem[64]
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
                    mem[_1809 + 100] = msg.sender
                    mem[_1809 + 132] = block.timestamp + 30
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1809 + (32 * _1857) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                    if _2817 + ceil32(return_data.size) + floor32(mem[_2817 + mem[_2817]]) + 1 > test266151307() or floor32(mem[_2817 + mem[_2817]]) + 1 < 0:
                        revert with 'NH{q', 65
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
                    _3705 = mem[_2817 + ceil32(return_data.size) + 64]
                    if mem[_2817 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'amountReceived cannot be zero'
                    if mem[_2817 + ceil32(return_data.size) + 64] <= _1761:
                        revert with 0, 'amountReceived cannot be less than amountRequired'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1761
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1761
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _3924 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3924] == bool(mem[_3924])
                        if _3705 < _1761:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3705 - _1761
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _3705 - _1761
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _4218 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4218] == bool(mem[_4218])
                        else:
                            _4219 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4219] == bool(mem[_4219])
                    else:
                        _3925 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3925] == bool(mem[_3925])
                        if _3705 < _1761:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3705 - _1761
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _3705 - _1761
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _4220 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4220] == bool(mem[_4220])
                        else:
                            _4221 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4221] == bool(mem[_4221])
        else:
            if not arg3:
                if not arg2:
                    _586 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _610 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _586 + (32 * _610) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _586 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _610:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _610:
                        revert with 'NH{q', 50
                    _1762 = mem[(8 * ceil32(return_data.size)) + 224]
                    if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                        revert with 0, 'amountRequired cannot be zero'
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
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
                    if _2818 + ceil32(return_data.size) + floor32(mem[_2818 + mem[_2818]]) + 1 > test266151307() or floor32(mem[_2818 + mem[_2818]]) + 1 < 0:
                        revert with 'NH{q', 65
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
                    _3706 = mem[_2818 + ceil32(return_data.size) + 64]
                    if mem[_2818 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'amountReceived cannot be zero'
                    if mem[_2818 + ceil32(return_data.size) + 64] <= _1762:
                        revert with 0, 'amountReceived cannot be less than amountRequired'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1762
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1762
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _3926 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3926] == bool(mem[_3926])
                        if _3706 < _1762:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3706 - _1762
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _3706 - _1762
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _4222 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4222] == bool(mem[_4222])
                        else:
                            _4223 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4223] == bool(mem[_4223])
                    else:
                        _3927 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3927] == bool(mem[_3927])
                        if _3706 < _1762:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3706 - _1762
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _3706 - _1762
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _4224 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4224] == bool(mem[_4224])
                        else:
                            _4225 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4225] == bool(mem[_4225])
                else:
                    _587 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _611 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _587 + (32 * _611) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _587 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _611:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _611:
                        revert with 'NH{q', 50
                    _1763 = mem[(8 * ceil32(return_data.size)) + 224]
                    if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                        revert with 0, 'amountRequired cannot be zero'
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    _1811 = mem[64]
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
                    mem[_1811 + 100] = msg.sender
                    mem[_1811 + 132] = block.timestamp + 30
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1811 + (32 * _1859) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                    if _2819 + ceil32(return_data.size) + floor32(mem[_2819 + mem[_2819]]) + 1 > test266151307() or floor32(mem[_2819 + mem[_2819]]) + 1 < 0:
                        revert with 'NH{q', 65
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
                    _3707 = mem[_2819 + ceil32(return_data.size) + 64]
                    if mem[_2819 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'amountReceived cannot be zero'
                    if mem[_2819 + ceil32(return_data.size) + 64] <= _1763:
                        revert with 0, 'amountReceived cannot be less than amountRequired'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1763
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1763
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _3928 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3928] == bool(mem[_3928])
                        if _3707 < _1763:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3707 - _1763
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _3707 - _1763
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _4226 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4226] == bool(mem[_4226])
                        else:
                            _4227 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4227] == bool(mem[_4227])
                    else:
                        _3929 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3929] == bool(mem[_3929])
                        if _3707 < _1763:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3707 - _1763
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _3707 - _1763
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _4228 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4228] == bool(mem[_4228])
                        else:
                            _4229 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4229] == bool(mem[_4229])
            else:
                if not arg2:
                    _588 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _612 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _588 + (32 * _612) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _588 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _612:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _612:
                        revert with 'NH{q', 50
                    _1764 = mem[(8 * ceil32(return_data.size)) + 224]
                    if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                        revert with 0, 'amountRequired cannot be zero'
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    _1812 = mem[64]
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
                    mem[_1812 + 100] = msg.sender
                    mem[_1812 + 132] = block.timestamp + 30
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1812 + (32 * _1860) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                    if _2820 + ceil32(return_data.size) + floor32(mem[_2820 + mem[_2820]]) + 1 > test266151307() or floor32(mem[_2820 + mem[_2820]]) + 1 < 0:
                        revert with 'NH{q', 65
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
                    _3708 = mem[_2820 + ceil32(return_data.size) + 64]
                    if mem[_2820 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'amountReceived cannot be zero'
                    if mem[_2820 + ceil32(return_data.size) + 64] <= _1764:
                        revert with 0, 'amountReceived cannot be less than amountRequired'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1764
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1764
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _3930 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3930] == bool(mem[_3930])
                        if _3708 < _1764:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3708 - _1764
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _3708 - _1764
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _4230 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4230] == bool(mem[_4230])
                        else:
                            _4231 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4231] == bool(mem[_4231])
                    else:
                        _3931 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3931] == bool(mem[_3931])
                        if _3708 < _1764:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3708 - _1764
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _3708 - _1764
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _4232 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4232] == bool(mem[_4232])
                        else:
                            _4233 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4233] == bool(mem[_4233])
                else:
                    _589 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _613 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _589 + (32 * _613) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _589 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _613:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _613:
                        revert with 'NH{q', 50
                    _1765 = mem[(8 * ceil32(return_data.size)) + 224]
                    if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                        revert with 0, 'amountRequired cannot be zero'
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    _1813 = mem[64]
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
                    mem[_1813 + 100] = msg.sender
                    mem[_1813 + 132] = block.timestamp + 30
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1813 + (32 * _1861) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                    if _2821 + ceil32(return_data.size) + floor32(mem[_2821 + mem[_2821]]) + 1 > test266151307() or floor32(mem[_2821 + mem[_2821]]) + 1 < 0:
                        revert with 'NH{q', 65
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
                    _3709 = mem[_2821 + ceil32(return_data.size) + 64]
                    if mem[_2821 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'amountReceived cannot be zero'
                    if mem[_2821 + ceil32(return_data.size) + 64] <= _1765:
                        revert with 0, 'amountReceived cannot be less than amountRequired'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1765
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1765
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _3932 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3932] == bool(mem[_3932])
                        if _3709 < _1765:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3709 - _1765
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _3709 - _1765
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _4234 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4234] == bool(mem[_4234])
                        else:
                            _4235 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4235] == bool(mem[_4235])
                    else:
                        _3933 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3933] == bool(mem[_3933])
                        if _3709 < _1765:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _3709 - _1765
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _3709 - _1765
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _4236 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4236] == bool(mem[_4236])
                        else:
                            _4237 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4237] == bool(mem[_4237])
    else:
        if arg3:
            revert with 0, 'Input amount cannot be zero'
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
        require ext_code.size(stor1)
        staticcall stor1.factory() with:
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
            revert with 0, 'Callback not allowed'
        mem[(6 * ceil32(return_data.size)) + 96] = 2
        mem[(6 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 160] = address(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 196] = stor2
        if not arg2:
            mem[(6 * ceil32(return_data.size)) + 228] = arg3
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor2, arg3
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
            require ext_code.size(stor1)
            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
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
                        _590 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _614 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require _590 + (32 * _614) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _590 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _614:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _614:
                            revert with 'NH{q', 50
                        _1766 = mem[(8 * ceil32(return_data.size)) + 224]
                        if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                            revert with 0, 'amountRequired cannot be zero'
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        _1814 = mem[64]
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
                        mem[_1814 + 100] = msg.sender
                        mem[_1814 + 132] = block.timestamp + 30
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1814 + (32 * _1862) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                        if _2822 + ceil32(return_data.size) + floor32(mem[_2822 + mem[_2822]]) + 1 > test266151307() or floor32(mem[_2822 + mem[_2822]]) + 1 < 0:
                            revert with 'NH{q', 65
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
                        _3710 = mem[_2822 + ceil32(return_data.size) + 64]
                        if mem[_2822 + ceil32(return_data.size) + 64] <= 0:
                            revert with 0, 'amountReceived cannot be zero'
                        if mem[_2822 + ceil32(return_data.size) + 64] <= _1766:
                            revert with 0, 'amountReceived cannot be less than amountRequired'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1766
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1766
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3934 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3934] == bool(mem[_3934])
                            if _3710 < _1766:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3710 - _1766
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3710 - _1766
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4238 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4238] == bool(mem[_4238])
                            else:
                                _4239 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4239] == bool(mem[_4239])
                        else:
                            _3935 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3935] == bool(mem[_3935])
                            if _3710 < _1766:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3710 - _1766
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3710 - _1766
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4240 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4240] == bool(mem[_4240])
                            else:
                                _4241 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4241] == bool(mem[_4241])
                    else:
                        _591 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _615 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require _591 + (32 * _615) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _591 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _615:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _615:
                            revert with 'NH{q', 50
                        _1767 = mem[(8 * ceil32(return_data.size)) + 224]
                        if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                            revert with 0, 'amountRequired cannot be zero'
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        _1815 = mem[64]
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
                        mem[_1815 + 100] = msg.sender
                        mem[_1815 + 132] = block.timestamp + 30
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1815 + (32 * _1863) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                        if _2823 + ceil32(return_data.size) + floor32(mem[_2823 + mem[_2823]]) + 1 > test266151307() or floor32(mem[_2823 + mem[_2823]]) + 1 < 0:
                            revert with 'NH{q', 65
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
                        _3711 = mem[_2823 + ceil32(return_data.size) + 64]
                        if mem[_2823 + ceil32(return_data.size) + 64] <= 0:
                            revert with 0, 'amountReceived cannot be zero'
                        if mem[_2823 + ceil32(return_data.size) + 64] <= _1767:
                            revert with 0, 'amountReceived cannot be less than amountRequired'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1767
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1767
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3936 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3936] == bool(mem[_3936])
                            if _3711 < _1767:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3711 - _1767
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3711 - _1767
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4242 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4242] == bool(mem[_4242])
                            else:
                                _4243 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4243] == bool(mem[_4243])
                        else:
                            _3937 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3937] == bool(mem[_3937])
                            if _3711 < _1767:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3711 - _1767
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3711 - _1767
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4244 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4244] == bool(mem[_4244])
                            else:
                                _4245 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4245] == bool(mem[_4245])
                else:
                    if not arg2:
                        _592 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _616 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require _592 + (32 * _616) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _592 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _616:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _616:
                            revert with 'NH{q', 50
                        _1768 = mem[(8 * ceil32(return_data.size)) + 224]
                        if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                            revert with 0, 'amountRequired cannot be zero'
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        _1816 = mem[64]
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
                        mem[_1816 + 100] = msg.sender
                        mem[_1816 + 132] = block.timestamp + 30
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1816 + (32 * _1864) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                        if _2824 + ceil32(return_data.size) + floor32(mem[_2824 + mem[_2824]]) + 1 > test266151307() or floor32(mem[_2824 + mem[_2824]]) + 1 < 0:
                            revert with 'NH{q', 65
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
                        _3712 = mem[_2824 + ceil32(return_data.size) + 64]
                        if mem[_2824 + ceil32(return_data.size) + 64] <= 0:
                            revert with 0, 'amountReceived cannot be zero'
                        if mem[_2824 + ceil32(return_data.size) + 64] <= _1768:
                            revert with 0, 'amountReceived cannot be less than amountRequired'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1768
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1768
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3938 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3938] == bool(mem[_3938])
                            if _3712 < _1768:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3712 - _1768
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3712 - _1768
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4246 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4246] == bool(mem[_4246])
                            else:
                                _4247 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4247] == bool(mem[_4247])
                        else:
                            _3939 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3939] == bool(mem[_3939])
                            if _3712 < _1768:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3712 - _1768
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3712 - _1768
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4248 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4248] == bool(mem[_4248])
                            else:
                                _4249 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4249] == bool(mem[_4249])
                    else:
                        _593 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _617 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require _593 + (32 * _617) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _593 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _617:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _617:
                            revert with 'NH{q', 50
                        _1769 = mem[(8 * ceil32(return_data.size)) + 224]
                        if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                            revert with 0, 'amountRequired cannot be zero'
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        _1817 = mem[64]
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
                        mem[_1817 + 100] = msg.sender
                        mem[_1817 + 132] = block.timestamp + 30
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1817 + (32 * _1865) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                        if _2825 + ceil32(return_data.size) + floor32(mem[_2825 + mem[_2825]]) + 1 > test266151307() or floor32(mem[_2825 + mem[_2825]]) + 1 < 0:
                            revert with 'NH{q', 65
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
                        _3713 = mem[_2825 + ceil32(return_data.size) + 64]
                        if mem[_2825 + ceil32(return_data.size) + 64] <= 0:
                            revert with 0, 'amountReceived cannot be zero'
                        if mem[_2825 + ceil32(return_data.size) + 64] <= _1769:
                            revert with 0, 'amountReceived cannot be less than amountRequired'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1769
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1769
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3940 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3940] == bool(mem[_3940])
                            if _3713 < _1769:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3713 - _1769
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3713 - _1769
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4250 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4250] == bool(mem[_4250])
                            else:
                                _4251 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4251] == bool(mem[_4251])
                        else:
                            _3941 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3941] == bool(mem[_3941])
                            if _3713 < _1769:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3713 - _1769
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3713 - _1769
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4252 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4252] == bool(mem[_4252])
                            else:
                                _4253 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4253] == bool(mem[_4253])
            else:
                if not arg3:
                    if not arg2:
                        _594 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _618 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require _594 + (32 * _618) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _594 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _618:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _618:
                            revert with 'NH{q', 50
                        _1770 = mem[(8 * ceil32(return_data.size)) + 224]
                        if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                            revert with 0, 'amountRequired cannot be zero'
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        _1818 = mem[64]
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
                        mem[_1818 + 100] = msg.sender
                        mem[_1818 + 132] = block.timestamp + 30
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1818 + (32 * _1866) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                        if _2826 + ceil32(return_data.size) + floor32(mem[_2826 + mem[_2826]]) + 1 > test266151307() or floor32(mem[_2826 + mem[_2826]]) + 1 < 0:
                            revert with 'NH{q', 65
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
                        _3714 = mem[_2826 + ceil32(return_data.size) + 64]
                        if mem[_2826 + ceil32(return_data.size) + 64] <= 0:
                            revert with 0, 'amountReceived cannot be zero'
                        if mem[_2826 + ceil32(return_data.size) + 64] <= _1770:
                            revert with 0, 'amountReceived cannot be less than amountRequired'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1770
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1770
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3942 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3942] == bool(mem[_3942])
                            if _3714 < _1770:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3714 - _1770
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3714 - _1770
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4254 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4254] == bool(mem[_4254])
                            else:
                                _4255 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4255] == bool(mem[_4255])
                        else:
                            _3943 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3943] == bool(mem[_3943])
                            if _3714 < _1770:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3714 - _1770
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3714 - _1770
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4256 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4256] == bool(mem[_4256])
                            else:
                                _4257 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4257] == bool(mem[_4257])
                    else:
                        _595 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _619 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require _595 + (32 * _619) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _595 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _619:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _619:
                            revert with 'NH{q', 50
                        _1771 = mem[(8 * ceil32(return_data.size)) + 224]
                        if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                            revert with 0, 'amountRequired cannot be zero'
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        _1819 = mem[64]
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
                        mem[_1819 + 100] = msg.sender
                        mem[_1819 + 132] = block.timestamp + 30
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1819 + (32 * _1867) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                        if _2827 + ceil32(return_data.size) + floor32(mem[_2827 + mem[_2827]]) + 1 > test266151307() or floor32(mem[_2827 + mem[_2827]]) + 1 < 0:
                            revert with 'NH{q', 65
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
                        _3715 = mem[_2827 + ceil32(return_data.size) + 64]
                        if mem[_2827 + ceil32(return_data.size) + 64] <= 0:
                            revert with 0, 'amountReceived cannot be zero'
                        if mem[_2827 + ceil32(return_data.size) + 64] <= _1771:
                            revert with 0, 'amountReceived cannot be less than amountRequired'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1771
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1771
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3944 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3944] == bool(mem[_3944])
                            if _3715 < _1771:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3715 - _1771
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3715 - _1771
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4258 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4258] == bool(mem[_4258])
                            else:
                                _4259 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4259] == bool(mem[_4259])
                        else:
                            _3945 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3945] == bool(mem[_3945])
                            if _3715 < _1771:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3715 - _1771
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3715 - _1771
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4260 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4260] == bool(mem[_4260])
                            else:
                                _4261 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4261] == bool(mem[_4261])
                else:
                    if not arg2:
                        _596 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _620 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require _596 + (32 * _620) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _596 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _620:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _620:
                            revert with 'NH{q', 50
                        _1772 = mem[(8 * ceil32(return_data.size)) + 224]
                        if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                            revert with 0, 'amountRequired cannot be zero'
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        _1820 = mem[64]
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
                        mem[_1820 + 100] = msg.sender
                        mem[_1820 + 132] = block.timestamp + 30
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1820 + (32 * _1868) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                        if _2828 + ceil32(return_data.size) + floor32(mem[_2828 + mem[_2828]]) + 1 > test266151307() or floor32(mem[_2828 + mem[_2828]]) + 1 < 0:
                            revert with 'NH{q', 65
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
                        _3716 = mem[_2828 + ceil32(return_data.size) + 64]
                        if mem[_2828 + ceil32(return_data.size) + 64] <= 0:
                            revert with 0, 'amountReceived cannot be zero'
                        if mem[_2828 + ceil32(return_data.size) + 64] <= _1772:
                            revert with 0, 'amountReceived cannot be less than amountRequired'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1772
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1772
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3946 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3946] == bool(mem[_3946])
                            if _3716 < _1772:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3716 - _1772
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3716 - _1772
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4262 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4262] == bool(mem[_4262])
                            else:
                                _4263 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4263] == bool(mem[_4263])
                        else:
                            _3947 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3947] == bool(mem[_3947])
                            if _3716 < _1772:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3716 - _1772
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3716 - _1772
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4264 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4264] == bool(mem[_4264])
                            else:
                                _4265 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4265] == bool(mem[_4265])
                    else:
                        _597 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _621 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        require _597 + (32 * _621) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _597 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _621:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _621:
                            revert with 'NH{q', 50
                        _1773 = mem[(8 * ceil32(return_data.size)) + 224]
                        if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                            revert with 0, 'amountRequired cannot be zero'
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        _1821 = mem[64]
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
                        mem[_1821 + 100] = msg.sender
                        mem[_1821 + 132] = block.timestamp + 30
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1821 + (32 * _1869) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                        if _2829 + ceil32(return_data.size) + floor32(mem[_2829 + mem[_2829]]) + 1 > test266151307() or floor32(mem[_2829 + mem[_2829]]) + 1 < 0:
                            revert with 'NH{q', 65
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
                        _3717 = mem[_2829 + ceil32(return_data.size) + 64]
                        if mem[_2829 + ceil32(return_data.size) + 64] <= 0:
                            revert with 0, 'amountReceived cannot be zero'
                        if mem[_2829 + ceil32(return_data.size) + 64] <= _1773:
                            revert with 0, 'amountReceived cannot be less than amountRequired'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1773
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1773
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3948 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3948] == bool(mem[_3948])
                            if _3717 < _1773:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3717 - _1773
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3717 - _1773
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4266 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4266] == bool(mem[_4266])
                            else:
                                _4267 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4267] == bool(mem[_4267])
                        else:
                            _3949 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3949] == bool(mem[_3949])
                            if _3717 < _1773:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3717 - _1773
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3717 - _1773
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4268 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4268] == bool(mem[_4268])
                            else:
                                _4269 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4269] == bool(mem[_4269])
        else:
            mem[(6 * ceil32(return_data.size)) + 228] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor2, arg2
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
            require ext_code.size(stor1)
            staticcall stor1.getAmountsIn(uint256 arg1, address[] arg2) with:
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
                        _598 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _622 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _598 + (32 * _622) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _598 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _622:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _622:
                            revert with 'NH{q', 50
                        _1774 = mem[(8 * ceil32(return_data.size)) + 224]
                        if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                            revert with 0, 'amountRequired cannot be zero'
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
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
                        if _2830 + ceil32(return_data.size) + floor32(mem[_2830 + mem[_2830]]) + 1 > test266151307() or floor32(mem[_2830 + mem[_2830]]) + 1 < 0:
                            revert with 'NH{q', 65
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
                        _3718 = mem[_2830 + ceil32(return_data.size) + 64]
                        if mem[_2830 + ceil32(return_data.size) + 64] <= 0:
                            revert with 0, 'amountReceived cannot be zero'
                        if mem[_2830 + ceil32(return_data.size) + 64] <= _1774:
                            revert with 0, 'amountReceived cannot be less than amountRequired'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1774
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1774
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3950 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3950] == bool(mem[_3950])
                            if _3718 < _1774:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3718 - _1774
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3718 - _1774
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4270 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4270] == bool(mem[_4270])
                            else:
                                _4271 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4271] == bool(mem[_4271])
                        else:
                            _3951 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3951] == bool(mem[_3951])
                            if _3718 < _1774:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3718 - _1774
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3718 - _1774
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4272 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4272] == bool(mem[_4272])
                            else:
                                _4273 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4273] == bool(mem[_4273])
                    else:
                        _599 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _623 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _599 + (32 * _623) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _599 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _623:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _623:
                            revert with 'NH{q', 50
                        _1775 = mem[(8 * ceil32(return_data.size)) + 224]
                        if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                            revert with 0, 'amountRequired cannot be zero'
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        _1823 = mem[64]
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
                        mem[_1823 + 100] = msg.sender
                        mem[_1823 + 132] = block.timestamp + 30
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1823 + (32 * _1871) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                        if _2831 + ceil32(return_data.size) + floor32(mem[_2831 + mem[_2831]]) + 1 > test266151307() or floor32(mem[_2831 + mem[_2831]]) + 1 < 0:
                            revert with 'NH{q', 65
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
                        _3719 = mem[_2831 + ceil32(return_data.size) + 64]
                        if mem[_2831 + ceil32(return_data.size) + 64] <= 0:
                            revert with 0, 'amountReceived cannot be zero'
                        if mem[_2831 + ceil32(return_data.size) + 64] <= _1775:
                            revert with 0, 'amountReceived cannot be less than amountRequired'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1775
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1775
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3952 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3952] == bool(mem[_3952])
                            if _3719 < _1775:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3719 - _1775
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3719 - _1775
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4274 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4274] == bool(mem[_4274])
                            else:
                                _4275 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4275] == bool(mem[_4275])
                        else:
                            _3953 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3953] == bool(mem[_3953])
                            if _3719 < _1775:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3719 - _1775
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3719 - _1775
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4276 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4276] == bool(mem[_4276])
                            else:
                                _4277 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4277] == bool(mem[_4277])
                else:
                    if not arg2:
                        _600 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _624 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _600 + (32 * _624) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _600 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _624:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _624:
                            revert with 'NH{q', 50
                        _1776 = mem[(8 * ceil32(return_data.size)) + 224]
                        if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                            revert with 0, 'amountRequired cannot be zero'
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        _1824 = mem[64]
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
                        mem[_1824 + 100] = msg.sender
                        mem[_1824 + 132] = block.timestamp + 30
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1824 + (32 * _1872) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                        if _2832 + ceil32(return_data.size) + floor32(mem[_2832 + mem[_2832]]) + 1 > test266151307() or floor32(mem[_2832 + mem[_2832]]) + 1 < 0:
                            revert with 'NH{q', 65
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
                        _3720 = mem[_2832 + ceil32(return_data.size) + 64]
                        if mem[_2832 + ceil32(return_data.size) + 64] <= 0:
                            revert with 0, 'amountReceived cannot be zero'
                        if mem[_2832 + ceil32(return_data.size) + 64] <= _1776:
                            revert with 0, 'amountReceived cannot be less than amountRequired'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1776
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1776
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3954 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3954] == bool(mem[_3954])
                            if _3720 < _1776:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3720 - _1776
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3720 - _1776
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4278 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4278] == bool(mem[_4278])
                            else:
                                _4279 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4279] == bool(mem[_4279])
                        else:
                            _3955 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3955] == bool(mem[_3955])
                            if _3720 < _1776:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3720 - _1776
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3720 - _1776
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4280 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4280] == bool(mem[_4280])
                            else:
                                _4281 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4281] == bool(mem[_4281])
                    else:
                        _601 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _625 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _601 + (32 * _625) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _601 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _625:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _625:
                            revert with 'NH{q', 50
                        _1777 = mem[(8 * ceil32(return_data.size)) + 224]
                        if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                            revert with 0, 'amountRequired cannot be zero'
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        _1825 = mem[64]
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
                        mem[_1825 + 100] = msg.sender
                        mem[_1825 + 132] = block.timestamp + 30
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1825 + (32 * _1873) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                        if _2833 + ceil32(return_data.size) + floor32(mem[_2833 + mem[_2833]]) + 1 > test266151307() or floor32(mem[_2833 + mem[_2833]]) + 1 < 0:
                            revert with 'NH{q', 65
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
                        _3721 = mem[_2833 + ceil32(return_data.size) + 64]
                        if mem[_2833 + ceil32(return_data.size) + 64] <= 0:
                            revert with 0, 'amountReceived cannot be zero'
                        if mem[_2833 + ceil32(return_data.size) + 64] <= _1777:
                            revert with 0, 'amountReceived cannot be less than amountRequired'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1777
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1777
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3956 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3956] == bool(mem[_3956])
                            if _3721 < _1777:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3721 - _1777
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3721 - _1777
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4282 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4282] == bool(mem[_4282])
                            else:
                                _4283 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4283] == bool(mem[_4283])
                        else:
                            _3957 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3957] == bool(mem[_3957])
                            if _3721 < _1777:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3721 - _1777
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3721 - _1777
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4284 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4284] == bool(mem[_4284])
                            else:
                                _4285 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4285] == bool(mem[_4285])
            else:
                if not arg3:
                    if not arg2:
                        _602 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _626 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _602 + (32 * _626) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _602 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _626:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _626:
                            revert with 'NH{q', 50
                        _1778 = mem[(8 * ceil32(return_data.size)) + 224]
                        if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                            revert with 0, 'amountRequired cannot be zero'
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        _1826 = mem[64]
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
                        mem[_1826 + 100] = msg.sender
                        mem[_1826 + 132] = block.timestamp + 30
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1826 + (32 * _1874) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                        if _2834 + ceil32(return_data.size) + floor32(mem[_2834 + mem[_2834]]) + 1 > test266151307() or floor32(mem[_2834 + mem[_2834]]) + 1 < 0:
                            revert with 'NH{q', 65
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
                        _3722 = mem[_2834 + ceil32(return_data.size) + 64]
                        if mem[_2834 + ceil32(return_data.size) + 64] <= 0:
                            revert with 0, 'amountReceived cannot be zero'
                        if mem[_2834 + ceil32(return_data.size) + 64] <= _1778:
                            revert with 0, 'amountReceived cannot be less than amountRequired'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1778
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1778
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3958 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3958] == bool(mem[_3958])
                            if _3722 < _1778:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3722 - _1778
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3722 - _1778
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4286 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4286] == bool(mem[_4286])
                            else:
                                _4287 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4287] == bool(mem[_4287])
                        else:
                            _3959 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3959] == bool(mem[_3959])
                            if _3722 < _1778:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3722 - _1778
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3722 - _1778
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4288 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4288] == bool(mem[_4288])
                            else:
                                _4289 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4289] == bool(mem[_4289])
                    else:
                        _603 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _627 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _603 + (32 * _627) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _603 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _627:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _627:
                            revert with 'NH{q', 50
                        _1779 = mem[(8 * ceil32(return_data.size)) + 224]
                        if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                            revert with 0, 'amountRequired cannot be zero'
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        _1827 = mem[64]
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
                        mem[_1827 + 100] = msg.sender
                        mem[_1827 + 132] = block.timestamp + 30
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1827 + (32 * _1875) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                        if _2835 + ceil32(return_data.size) + floor32(mem[_2835 + mem[_2835]]) + 1 > test266151307() or floor32(mem[_2835 + mem[_2835]]) + 1 < 0:
                            revert with 'NH{q', 65
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
                        _3723 = mem[_2835 + ceil32(return_data.size) + 64]
                        if mem[_2835 + ceil32(return_data.size) + 64] <= 0:
                            revert with 0, 'amountReceived cannot be zero'
                        if mem[_2835 + ceil32(return_data.size) + 64] <= _1779:
                            revert with 0, 'amountReceived cannot be less than amountRequired'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1779
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1779
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3960 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3960] == bool(mem[_3960])
                            if _3723 < _1779:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3723 - _1779
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3723 - _1779
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4290 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4290] == bool(mem[_4290])
                            else:
                                _4291 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4291] == bool(mem[_4291])
                        else:
                            _3961 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3961] == bool(mem[_3961])
                            if _3723 < _1779:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3723 - _1779
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3723 - _1779
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4292 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4292] == bool(mem[_4292])
                            else:
                                _4293 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4293] == bool(mem[_4293])
                else:
                    if not arg2:
                        _604 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _628 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _604 + (32 * _628) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _604 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _628:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _628:
                            revert with 'NH{q', 50
                        _1780 = mem[(8 * ceil32(return_data.size)) + 224]
                        if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                            revert with 0, 'amountRequired cannot be zero'
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        _1828 = mem[64]
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
                        mem[_1828 + 100] = msg.sender
                        mem[_1828 + 132] = block.timestamp + 30
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1828 + (32 * _1876) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                        if _2836 + ceil32(return_data.size) + floor32(mem[_2836 + mem[_2836]]) + 1 > test266151307() or floor32(mem[_2836 + mem[_2836]]) + 1 < 0:
                            revert with 'NH{q', 65
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
                        _3724 = mem[_2836 + ceil32(return_data.size) + 64]
                        if mem[_2836 + ceil32(return_data.size) + 64] <= 0:
                            revert with 0, 'amountReceived cannot be zero'
                        if mem[_2836 + ceil32(return_data.size) + 64] <= _1780:
                            revert with 0, 'amountReceived cannot be less than amountRequired'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1780
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1780
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3962 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3962] == bool(mem[_3962])
                            if _3724 < _1780:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3724 - _1780
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3724 - _1780
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4294 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4294] == bool(mem[_4294])
                            else:
                                _4295 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4295] == bool(mem[_4295])
                        else:
                            _3963 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3963] == bool(mem[_3963])
                            if _3724 < _1780:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3724 - _1780
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3724 - _1780
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4296 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4296] == bool(mem[_4296])
                            else:
                                _4297 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4297] == bool(mem[_4297])
                    else:
                        _605 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                        _629 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _605 + (32 * _629) + 32 <= return_data.size
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + _605 + 224
                        t = (8 * ceil32(return_data.size)) + 224
                        while idx < _629:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= _629:
                            revert with 'NH{q', 50
                        _1781 = mem[(8 * ceil32(return_data.size)) + 224]
                        if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                            revert with 0, 'amountRequired cannot be zero'
                        if block.timestamp > -31:
                            revert with 'NH{q', 17
                        _1829 = mem[64]
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
                        mem[_1829 + 100] = msg.sender
                        mem[_1829 + 132] = block.timestamp + 30
                        require ext_code.size(stor2)
                        call stor2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1829 + (32 * _1877) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                        if _2837 + ceil32(return_data.size) + floor32(mem[_2837 + mem[_2837]]) + 1 > test266151307() or floor32(mem[_2837 + mem[_2837]]) + 1 < 0:
                            revert with 'NH{q', 65
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
                        _3725 = mem[_2837 + ceil32(return_data.size) + 64]
                        if mem[_2837 + ceil32(return_data.size) + 64] <= 0:
                            revert with 0, 'amountReceived cannot be zero'
                        if mem[_2837 + ceil32(return_data.size) + 64] <= _1781:
                            revert with 0, 'amountReceived cannot be less than amountRequired'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _1781
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _1781
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _3964 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3964] == bool(mem[_3964])
                            if _3725 < _1781:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3725 - _1781
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3725 - _1781
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4298 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4298] == bool(mem[_4298])
                            else:
                                _4299 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4299] == bool(mem[_4299])
                        else:
                            _3965 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3965] == bool(mem[_3965])
                            if _3725 < _1781:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = _3725 - _1781
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), _3725 - _1781
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg2:
                                _4300 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4300] == bool(mem[_4300])
                            else:
                                _4301 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4301] == bool(mem[_4301])
}



}
