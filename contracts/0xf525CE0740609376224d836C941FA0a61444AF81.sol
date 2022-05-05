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

function sub_bcc8390f(?) payable {
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
    if arg2:
        revert with 0, 'Input amount cannot be zero'
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
                    _391 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _407 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _391 + (32 * _407) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _391 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _407:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _407:
                        revert with 'NH{q', 50
                    _1175 = mem[(8 * ceil32(return_data.size)) + 224]
                    if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                        revert with 0, 'amountRequired cannot be zero'
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    _1207 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1175
                    mem[mem[64] + 68] = 160
                    _1239 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1239:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1207 + 100] = msg.sender
                    mem[_1207 + 132] = block.timestamp + 30
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1207 + (32 * _1239) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1879 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1895 = mem[_1879]
                    require mem[_1879] <= test266151307()
                    require _1879 + mem[_1879] + 31 < _1879 + return_data.size
                    _1911 = mem[_1879 + mem[_1879]]
                    if mem[_1879 + mem[_1879]] > test266151307():
                        revert with 'NH{q', 65
                    if _1879 + ceil32(return_data.size) + floor32(mem[_1879 + mem[_1879]]) + 1 > test266151307() or floor32(mem[_1879 + mem[_1879]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1879 + ceil32(return_data.size) + floor32(mem[_1879 + mem[_1879]]) + 1
                    mem[_1879 + ceil32(return_data.size)] = _1911
                    require _1895 + (32 * _1911) + 32 <= return_data.size
                    idx = 0
                    s = _1879 + _1895 + 32
                    t = _1879 + ceil32(return_data.size) + 32
                    while idx < _1911:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _1911:
                        revert with 'NH{q', 50
                    _2471 = mem[_1879 + ceil32(return_data.size) + 64]
                    if mem[_1879 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'amountReceived cannot be zero'
                    if mem[_1879 + ceil32(return_data.size) + 64] <= _1175:
                        revert with 0, 'amountReceived cannot be less than amountRequired'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1175
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1175
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _2615 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2615] == bool(mem[_2615])
                        if _2471 < _1175:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2471 - _1175
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2471 - _1175
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2807 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2807] == bool(mem[_2807])
                        else:
                            _2808 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2808] == bool(mem[_2808])
                    else:
                        _2616 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2616] == bool(mem[_2616])
                        if _2471 < _1175:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2471 - _1175
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2471 - _1175
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2809 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2809] == bool(mem[_2809])
                        else:
                            _2810 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2810] == bool(mem[_2810])
                else:
                    _392 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _408 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _392 + (32 * _408) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _392 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _408:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _408:
                        revert with 'NH{q', 50
                    _1176 = mem[(8 * ceil32(return_data.size)) + 224]
                    if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                        revert with 0, 'amountRequired cannot be zero'
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    _1208 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1176
                    mem[mem[64] + 68] = 160
                    _1240 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1240:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1208 + 100] = msg.sender
                    mem[_1208 + 132] = block.timestamp + 30
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1208 + (32 * _1240) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1880 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1896 = mem[_1880]
                    require mem[_1880] <= test266151307()
                    require _1880 + mem[_1880] + 31 < _1880 + return_data.size
                    _1912 = mem[_1880 + mem[_1880]]
                    if mem[_1880 + mem[_1880]] > test266151307():
                        revert with 'NH{q', 65
                    if _1880 + ceil32(return_data.size) + floor32(mem[_1880 + mem[_1880]]) + 1 > test266151307() or floor32(mem[_1880 + mem[_1880]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1880 + ceil32(return_data.size) + floor32(mem[_1880 + mem[_1880]]) + 1
                    mem[_1880 + ceil32(return_data.size)] = _1912
                    require _1896 + (32 * _1912) + 32 <= return_data.size
                    idx = 0
                    s = _1880 + _1896 + 32
                    t = _1880 + ceil32(return_data.size) + 32
                    while idx < _1912:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _1912:
                        revert with 'NH{q', 50
                    _2472 = mem[_1880 + ceil32(return_data.size) + 64]
                    if mem[_1880 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'amountReceived cannot be zero'
                    if mem[_1880 + ceil32(return_data.size) + 64] <= _1176:
                        revert with 0, 'amountReceived cannot be less than amountRequired'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1176
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1176
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _2617 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2617] == bool(mem[_2617])
                        if _2472 < _1176:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2472 - _1176
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2472 - _1176
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2811 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2811] == bool(mem[_2811])
                        else:
                            _2812 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2812] == bool(mem[_2812])
                    else:
                        _2618 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2618] == bool(mem[_2618])
                        if _2472 < _1176:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2472 - _1176
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2472 - _1176
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2813 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2813] == bool(mem[_2813])
                        else:
                            _2814 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2814] == bool(mem[_2814])
            else:
                if not arg2:
                    _393 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _409 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _393 + (32 * _409) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _393 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _409:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _409:
                        revert with 'NH{q', 50
                    _1177 = mem[(8 * ceil32(return_data.size)) + 224]
                    if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                        revert with 0, 'amountRequired cannot be zero'
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    _1209 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1177
                    mem[mem[64] + 68] = 160
                    _1241 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1241:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1209 + 100] = msg.sender
                    mem[_1209 + 132] = block.timestamp + 30
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1209 + (32 * _1241) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1881 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1897 = mem[_1881]
                    require mem[_1881] <= test266151307()
                    require _1881 + mem[_1881] + 31 < _1881 + return_data.size
                    _1913 = mem[_1881 + mem[_1881]]
                    if mem[_1881 + mem[_1881]] > test266151307():
                        revert with 'NH{q', 65
                    if _1881 + ceil32(return_data.size) + floor32(mem[_1881 + mem[_1881]]) + 1 > test266151307() or floor32(mem[_1881 + mem[_1881]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1881 + ceil32(return_data.size) + floor32(mem[_1881 + mem[_1881]]) + 1
                    mem[_1881 + ceil32(return_data.size)] = _1913
                    require _1897 + (32 * _1913) + 32 <= return_data.size
                    idx = 0
                    s = _1881 + _1897 + 32
                    t = _1881 + ceil32(return_data.size) + 32
                    while idx < _1913:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _1913:
                        revert with 'NH{q', 50
                    _2473 = mem[_1881 + ceil32(return_data.size) + 64]
                    if mem[_1881 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'amountReceived cannot be zero'
                    if mem[_1881 + ceil32(return_data.size) + 64] <= _1177:
                        revert with 0, 'amountReceived cannot be less than amountRequired'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1177
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1177
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _2619 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2619] == bool(mem[_2619])
                        if _2473 < _1177:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2473 - _1177
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2473 - _1177
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2815 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2815] == bool(mem[_2815])
                        else:
                            _2816 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2816] == bool(mem[_2816])
                    else:
                        _2620 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2620] == bool(mem[_2620])
                        if _2473 < _1177:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2473 - _1177
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2473 - _1177
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2817 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2817] == bool(mem[_2817])
                        else:
                            _2818 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2818] == bool(mem[_2818])
                else:
                    _394 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _410 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _394 + (32 * _410) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _394 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _410:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _410:
                        revert with 'NH{q', 50
                    _1178 = mem[(8 * ceil32(return_data.size)) + 224]
                    if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                        revert with 0, 'amountRequired cannot be zero'
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    _1210 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1178
                    mem[mem[64] + 68] = 160
                    _1242 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1242:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1210 + 100] = msg.sender
                    mem[_1210 + 132] = block.timestamp + 30
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1210 + (32 * _1242) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1882 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1898 = mem[_1882]
                    require mem[_1882] <= test266151307()
                    require _1882 + mem[_1882] + 31 < _1882 + return_data.size
                    _1914 = mem[_1882 + mem[_1882]]
                    if mem[_1882 + mem[_1882]] > test266151307():
                        revert with 'NH{q', 65
                    if _1882 + ceil32(return_data.size) + floor32(mem[_1882 + mem[_1882]]) + 1 > test266151307() or floor32(mem[_1882 + mem[_1882]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1882 + ceil32(return_data.size) + floor32(mem[_1882 + mem[_1882]]) + 1
                    mem[_1882 + ceil32(return_data.size)] = _1914
                    require _1898 + (32 * _1914) + 32 <= return_data.size
                    idx = 0
                    s = _1882 + _1898 + 32
                    t = _1882 + ceil32(return_data.size) + 32
                    while idx < _1914:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _1914:
                        revert with 'NH{q', 50
                    _2474 = mem[_1882 + ceil32(return_data.size) + 64]
                    if mem[_1882 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'amountReceived cannot be zero'
                    if mem[_1882 + ceil32(return_data.size) + 64] <= _1178:
                        revert with 0, 'amountReceived cannot be less than amountRequired'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1178
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1178
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _2621 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2621] == bool(mem[_2621])
                        if _2474 < _1178:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2474 - _1178
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2474 - _1178
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2819 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2819] == bool(mem[_2819])
                        else:
                            _2820 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2820] == bool(mem[_2820])
                    else:
                        _2622 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2622] == bool(mem[_2622])
                        if _2474 < _1178:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2474 - _1178
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2474 - _1178
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2821 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2821] == bool(mem[_2821])
                        else:
                            _2822 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2822] == bool(mem[_2822])
        else:
            if not arg3:
                if not arg2:
                    _395 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _411 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _395 + (32 * _411) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _395 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _411:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _411:
                        revert with 'NH{q', 50
                    _1179 = mem[(8 * ceil32(return_data.size)) + 224]
                    if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                        revert with 0, 'amountRequired cannot be zero'
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    _1211 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1179
                    mem[mem[64] + 68] = 160
                    _1243 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1243:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1211 + 100] = msg.sender
                    mem[_1211 + 132] = block.timestamp + 30
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1211 + (32 * _1243) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1883 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1899 = mem[_1883]
                    require mem[_1883] <= test266151307()
                    require _1883 + mem[_1883] + 31 < _1883 + return_data.size
                    _1915 = mem[_1883 + mem[_1883]]
                    if mem[_1883 + mem[_1883]] > test266151307():
                        revert with 'NH{q', 65
                    if _1883 + ceil32(return_data.size) + floor32(mem[_1883 + mem[_1883]]) + 1 > test266151307() or floor32(mem[_1883 + mem[_1883]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1883 + ceil32(return_data.size) + floor32(mem[_1883 + mem[_1883]]) + 1
                    mem[_1883 + ceil32(return_data.size)] = _1915
                    require _1899 + (32 * _1915) + 32 <= return_data.size
                    idx = 0
                    s = _1883 + _1899 + 32
                    t = _1883 + ceil32(return_data.size) + 32
                    while idx < _1915:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _1915:
                        revert with 'NH{q', 50
                    _2475 = mem[_1883 + ceil32(return_data.size) + 64]
                    if mem[_1883 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'amountReceived cannot be zero'
                    if mem[_1883 + ceil32(return_data.size) + 64] <= _1179:
                        revert with 0, 'amountReceived cannot be less than amountRequired'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1179
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1179
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _2623 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2623] == bool(mem[_2623])
                        if _2475 < _1179:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2475 - _1179
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2475 - _1179
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2823 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2823] == bool(mem[_2823])
                        else:
                            _2824 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2824] == bool(mem[_2824])
                    else:
                        _2624 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2624] == bool(mem[_2624])
                        if _2475 < _1179:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2475 - _1179
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2475 - _1179
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2825 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2825] == bool(mem[_2825])
                        else:
                            _2826 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2826] == bool(mem[_2826])
                else:
                    _396 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _412 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _396 + (32 * _412) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _396 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _412:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _412:
                        revert with 'NH{q', 50
                    _1180 = mem[(8 * ceil32(return_data.size)) + 224]
                    if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                        revert with 0, 'amountRequired cannot be zero'
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    _1212 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1180
                    mem[mem[64] + 68] = 160
                    _1244 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1244:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1212 + 100] = msg.sender
                    mem[_1212 + 132] = block.timestamp + 30
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1212 + (32 * _1244) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1884 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1900 = mem[_1884]
                    require mem[_1884] <= test266151307()
                    require _1884 + mem[_1884] + 31 < _1884 + return_data.size
                    _1916 = mem[_1884 + mem[_1884]]
                    if mem[_1884 + mem[_1884]] > test266151307():
                        revert with 'NH{q', 65
                    if _1884 + ceil32(return_data.size) + floor32(mem[_1884 + mem[_1884]]) + 1 > test266151307() or floor32(mem[_1884 + mem[_1884]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1884 + ceil32(return_data.size) + floor32(mem[_1884 + mem[_1884]]) + 1
                    mem[_1884 + ceil32(return_data.size)] = _1916
                    require _1900 + (32 * _1916) + 32 <= return_data.size
                    idx = 0
                    s = _1884 + _1900 + 32
                    t = _1884 + ceil32(return_data.size) + 32
                    while idx < _1916:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _1916:
                        revert with 'NH{q', 50
                    _2476 = mem[_1884 + ceil32(return_data.size) + 64]
                    if mem[_1884 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'amountReceived cannot be zero'
                    if mem[_1884 + ceil32(return_data.size) + 64] <= _1180:
                        revert with 0, 'amountReceived cannot be less than amountRequired'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1180
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1180
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _2625 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2625] == bool(mem[_2625])
                        if _2476 < _1180:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2476 - _1180
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2476 - _1180
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2827 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2827] == bool(mem[_2827])
                        else:
                            _2828 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2828] == bool(mem[_2828])
                    else:
                        _2626 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2626] == bool(mem[_2626])
                        if _2476 < _1180:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2476 - _1180
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2476 - _1180
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2829 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2829] == bool(mem[_2829])
                        else:
                            _2830 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2830] == bool(mem[_2830])
            else:
                if not arg2:
                    _397 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _413 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _397 + (32 * _413) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _397 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _413:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _413:
                        revert with 'NH{q', 50
                    _1181 = mem[(8 * ceil32(return_data.size)) + 224]
                    if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                        revert with 0, 'amountRequired cannot be zero'
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    _1213 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1181
                    mem[mem[64] + 68] = 160
                    _1245 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1245:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1213 + 100] = msg.sender
                    mem[_1213 + 132] = block.timestamp + 30
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1213 + (32 * _1245) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1885 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1901 = mem[_1885]
                    require mem[_1885] <= test266151307()
                    require _1885 + mem[_1885] + 31 < _1885 + return_data.size
                    _1917 = mem[_1885 + mem[_1885]]
                    if mem[_1885 + mem[_1885]] > test266151307():
                        revert with 'NH{q', 65
                    if _1885 + ceil32(return_data.size) + floor32(mem[_1885 + mem[_1885]]) + 1 > test266151307() or floor32(mem[_1885 + mem[_1885]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1885 + ceil32(return_data.size) + floor32(mem[_1885 + mem[_1885]]) + 1
                    mem[_1885 + ceil32(return_data.size)] = _1917
                    require _1901 + (32 * _1917) + 32 <= return_data.size
                    idx = 0
                    s = _1885 + _1901 + 32
                    t = _1885 + ceil32(return_data.size) + 32
                    while idx < _1917:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _1917:
                        revert with 'NH{q', 50
                    _2477 = mem[_1885 + ceil32(return_data.size) + 64]
                    if mem[_1885 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'amountReceived cannot be zero'
                    if mem[_1885 + ceil32(return_data.size) + 64] <= _1181:
                        revert with 0, 'amountReceived cannot be less than amountRequired'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1181
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1181
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _2627 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2627] == bool(mem[_2627])
                        if _2477 < _1181:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2477 - _1181
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2477 - _1181
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2831 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2831] == bool(mem[_2831])
                        else:
                            _2832 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2832] == bool(mem[_2832])
                    else:
                        _2628 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2628] == bool(mem[_2628])
                        if _2477 < _1181:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2477 - _1181
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2477 - _1181
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2833 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2833] == bool(mem[_2833])
                        else:
                            _2834 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2834] == bool(mem[_2834])
                else:
                    _398 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _414 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    require _398 + (32 * _414) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _398 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _414:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _414:
                        revert with 'NH{q', 50
                    _1182 = mem[(8 * ceil32(return_data.size)) + 224]
                    if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                        revert with 0, 'amountRequired cannot be zero'
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    _1214 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg3
                    mem[mem[64] + 36] = _1182
                    mem[mem[64] + 68] = 160
                    _1246 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1246:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1214 + 100] = msg.sender
                    mem[_1214 + 132] = block.timestamp + 30
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1214 + (32 * _1246) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1886 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1902 = mem[_1886]
                    require mem[_1886] <= test266151307()
                    require _1886 + mem[_1886] + 31 < _1886 + return_data.size
                    _1918 = mem[_1886 + mem[_1886]]
                    if mem[_1886 + mem[_1886]] > test266151307():
                        revert with 'NH{q', 65
                    if _1886 + ceil32(return_data.size) + floor32(mem[_1886 + mem[_1886]]) + 1 > test266151307() or floor32(mem[_1886 + mem[_1886]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1886 + ceil32(return_data.size) + floor32(mem[_1886 + mem[_1886]]) + 1
                    mem[_1886 + ceil32(return_data.size)] = _1918
                    require _1902 + (32 * _1918) + 32 <= return_data.size
                    idx = 0
                    s = _1886 + _1902 + 32
                    t = _1886 + ceil32(return_data.size) + 32
                    while idx < _1918:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _1918:
                        revert with 'NH{q', 50
                    _2478 = mem[_1886 + ceil32(return_data.size) + 64]
                    if mem[_1886 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'amountReceived cannot be zero'
                    if mem[_1886 + ceil32(return_data.size) + 64] <= _1182:
                        revert with 0, 'amountReceived cannot be less than amountRequired'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1182
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1182
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _2629 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2629] == bool(mem[_2629])
                        if _2478 < _1182:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2478 - _1182
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2478 - _1182
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2835 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2835] == bool(mem[_2835])
                        else:
                            _2836 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2836] == bool(mem[_2836])
                    else:
                        _2630 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2630] == bool(mem[_2630])
                        if _2478 < _1182:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2478 - _1182
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2478 - _1182
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2837 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2837] == bool(mem[_2837])
                        else:
                            _2838 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2838] == bool(mem[_2838])
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
                    _399 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _415 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    require _399 + (32 * _415) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _399 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _415:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _415:
                        revert with 'NH{q', 50
                    _1183 = mem[(8 * ceil32(return_data.size)) + 224]
                    if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                        revert with 0, 'amountRequired cannot be zero'
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    _1215 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1183
                    mem[mem[64] + 68] = 160
                    _1247 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1247:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1215 + 100] = msg.sender
                    mem[_1215 + 132] = block.timestamp + 30
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1215 + (32 * _1247) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1887 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1903 = mem[_1887]
                    require mem[_1887] <= test266151307()
                    require _1887 + mem[_1887] + 31 < _1887 + return_data.size
                    _1919 = mem[_1887 + mem[_1887]]
                    if mem[_1887 + mem[_1887]] > test266151307():
                        revert with 'NH{q', 65
                    if _1887 + ceil32(return_data.size) + floor32(mem[_1887 + mem[_1887]]) + 1 > test266151307() or floor32(mem[_1887 + mem[_1887]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1887 + ceil32(return_data.size) + floor32(mem[_1887 + mem[_1887]]) + 1
                    mem[_1887 + ceil32(return_data.size)] = _1919
                    require _1903 + (32 * _1919) + 32 <= return_data.size
                    idx = 0
                    s = _1887 + _1903 + 32
                    t = _1887 + ceil32(return_data.size) + 32
                    while idx < _1919:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _1919:
                        revert with 'NH{q', 50
                    _2479 = mem[_1887 + ceil32(return_data.size) + 64]
                    if mem[_1887 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'amountReceived cannot be zero'
                    if mem[_1887 + ceil32(return_data.size) + 64] <= _1183:
                        revert with 0, 'amountReceived cannot be less than amountRequired'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1183
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1183
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _2631 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2631] == bool(mem[_2631])
                        if _2479 < _1183:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2479 - _1183
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2479 - _1183
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2839 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2839] == bool(mem[_2839])
                        else:
                            _2840 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2840] == bool(mem[_2840])
                    else:
                        _2632 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2632] == bool(mem[_2632])
                        if _2479 < _1183:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2479 - _1183
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2479 - _1183
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2841 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2841] == bool(mem[_2841])
                        else:
                            _2842 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2842] == bool(mem[_2842])
                else:
                    _400 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _416 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    require _400 + (32 * _416) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _400 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _416:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _416:
                        revert with 'NH{q', 50
                    _1184 = mem[(8 * ceil32(return_data.size)) + 224]
                    if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                        revert with 0, 'amountRequired cannot be zero'
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    _1216 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1184
                    mem[mem[64] + 68] = 160
                    _1248 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1248:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1216 + 100] = msg.sender
                    mem[_1216 + 132] = block.timestamp + 30
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1216 + (32 * _1248) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1888 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1904 = mem[_1888]
                    require mem[_1888] <= test266151307()
                    require _1888 + mem[_1888] + 31 < _1888 + return_data.size
                    _1920 = mem[_1888 + mem[_1888]]
                    if mem[_1888 + mem[_1888]] > test266151307():
                        revert with 'NH{q', 65
                    if _1888 + ceil32(return_data.size) + floor32(mem[_1888 + mem[_1888]]) + 1 > test266151307() or floor32(mem[_1888 + mem[_1888]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1888 + ceil32(return_data.size) + floor32(mem[_1888 + mem[_1888]]) + 1
                    mem[_1888 + ceil32(return_data.size)] = _1920
                    require _1904 + (32 * _1920) + 32 <= return_data.size
                    idx = 0
                    s = _1888 + _1904 + 32
                    t = _1888 + ceil32(return_data.size) + 32
                    while idx < _1920:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _1920:
                        revert with 'NH{q', 50
                    _2480 = mem[_1888 + ceil32(return_data.size) + 64]
                    if mem[_1888 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'amountReceived cannot be zero'
                    if mem[_1888 + ceil32(return_data.size) + 64] <= _1184:
                        revert with 0, 'amountReceived cannot be less than amountRequired'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1184
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1184
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _2633 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2633] == bool(mem[_2633])
                        if _2480 < _1184:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2480 - _1184
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2480 - _1184
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2843 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2843] == bool(mem[_2843])
                        else:
                            _2844 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2844] == bool(mem[_2844])
                    else:
                        _2634 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2634] == bool(mem[_2634])
                        if _2480 < _1184:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2480 - _1184
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2480 - _1184
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2845 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2845] == bool(mem[_2845])
                        else:
                            _2846 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2846] == bool(mem[_2846])
            else:
                if not arg2:
                    _401 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _417 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    require _401 + (32 * _417) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _401 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _417:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _417:
                        revert with 'NH{q', 50
                    _1185 = mem[(8 * ceil32(return_data.size)) + 224]
                    if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                        revert with 0, 'amountRequired cannot be zero'
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    _1217 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1185
                    mem[mem[64] + 68] = 160
                    _1249 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1249:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1217 + 100] = msg.sender
                    mem[_1217 + 132] = block.timestamp + 30
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1217 + (32 * _1249) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1889 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1905 = mem[_1889]
                    require mem[_1889] <= test266151307()
                    require _1889 + mem[_1889] + 31 < _1889 + return_data.size
                    _1921 = mem[_1889 + mem[_1889]]
                    if mem[_1889 + mem[_1889]] > test266151307():
                        revert with 'NH{q', 65
                    if _1889 + ceil32(return_data.size) + floor32(mem[_1889 + mem[_1889]]) + 1 > test266151307() or floor32(mem[_1889 + mem[_1889]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1889 + ceil32(return_data.size) + floor32(mem[_1889 + mem[_1889]]) + 1
                    mem[_1889 + ceil32(return_data.size)] = _1921
                    require _1905 + (32 * _1921) + 32 <= return_data.size
                    idx = 0
                    s = _1889 + _1905 + 32
                    t = _1889 + ceil32(return_data.size) + 32
                    while idx < _1921:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _1921:
                        revert with 'NH{q', 50
                    _2481 = mem[_1889 + ceil32(return_data.size) + 64]
                    if mem[_1889 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'amountReceived cannot be zero'
                    if mem[_1889 + ceil32(return_data.size) + 64] <= _1185:
                        revert with 0, 'amountReceived cannot be less than amountRequired'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1185
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1185
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _2635 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2635] == bool(mem[_2635])
                        if _2481 < _1185:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2481 - _1185
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2481 - _1185
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2847 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2847] == bool(mem[_2847])
                        else:
                            _2848 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2848] == bool(mem[_2848])
                    else:
                        _2636 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2636] == bool(mem[_2636])
                        if _2481 < _1185:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2481 - _1185
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2481 - _1185
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2849 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2849] == bool(mem[_2849])
                        else:
                            _2850 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2850] == bool(mem[_2850])
                else:
                    _402 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _418 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    require _402 + (32 * _418) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _402 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _418:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _418:
                        revert with 'NH{q', 50
                    _1186 = mem[(8 * ceil32(return_data.size)) + 224]
                    if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                        revert with 0, 'amountRequired cannot be zero'
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    _1218 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1186
                    mem[mem[64] + 68] = 160
                    _1250 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1250:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1218 + 100] = msg.sender
                    mem[_1218 + 132] = block.timestamp + 30
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1218 + (32 * _1250) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1890 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1906 = mem[_1890]
                    require mem[_1890] <= test266151307()
                    require _1890 + mem[_1890] + 31 < _1890 + return_data.size
                    _1922 = mem[_1890 + mem[_1890]]
                    if mem[_1890 + mem[_1890]] > test266151307():
                        revert with 'NH{q', 65
                    if _1890 + ceil32(return_data.size) + floor32(mem[_1890 + mem[_1890]]) + 1 > test266151307() or floor32(mem[_1890 + mem[_1890]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1890 + ceil32(return_data.size) + floor32(mem[_1890 + mem[_1890]]) + 1
                    mem[_1890 + ceil32(return_data.size)] = _1922
                    require _1906 + (32 * _1922) + 32 <= return_data.size
                    idx = 0
                    s = _1890 + _1906 + 32
                    t = _1890 + ceil32(return_data.size) + 32
                    while idx < _1922:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _1922:
                        revert with 'NH{q', 50
                    _2482 = mem[_1890 + ceil32(return_data.size) + 64]
                    if mem[_1890 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'amountReceived cannot be zero'
                    if mem[_1890 + ceil32(return_data.size) + 64] <= _1186:
                        revert with 0, 'amountReceived cannot be less than amountRequired'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1186
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1186
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _2637 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2637] == bool(mem[_2637])
                        if _2482 < _1186:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2482 - _1186
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2482 - _1186
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2851 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2851] == bool(mem[_2851])
                        else:
                            _2852 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2852] == bool(mem[_2852])
                    else:
                        _2638 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2638] == bool(mem[_2638])
                        if _2482 < _1186:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2482 - _1186
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2482 - _1186
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2853 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2853] == bool(mem[_2853])
                        else:
                            _2854 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2854] == bool(mem[_2854])
        else:
            if not arg3:
                if not arg2:
                    _403 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _419 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    require _403 + (32 * _419) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _403 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _419:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _419:
                        revert with 'NH{q', 50
                    _1187 = mem[(8 * ceil32(return_data.size)) + 224]
                    if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                        revert with 0, 'amountRequired cannot be zero'
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    _1219 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1187
                    mem[mem[64] + 68] = 160
                    _1251 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1251:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1219 + 100] = msg.sender
                    mem[_1219 + 132] = block.timestamp + 30
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1219 + (32 * _1251) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1891 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1907 = mem[_1891]
                    require mem[_1891] <= test266151307()
                    require _1891 + mem[_1891] + 31 < _1891 + return_data.size
                    _1923 = mem[_1891 + mem[_1891]]
                    if mem[_1891 + mem[_1891]] > test266151307():
                        revert with 'NH{q', 65
                    if _1891 + ceil32(return_data.size) + floor32(mem[_1891 + mem[_1891]]) + 1 > test266151307() or floor32(mem[_1891 + mem[_1891]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1891 + ceil32(return_data.size) + floor32(mem[_1891 + mem[_1891]]) + 1
                    mem[_1891 + ceil32(return_data.size)] = _1923
                    require _1907 + (32 * _1923) + 32 <= return_data.size
                    idx = 0
                    s = _1891 + _1907 + 32
                    t = _1891 + ceil32(return_data.size) + 32
                    while idx < _1923:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _1923:
                        revert with 'NH{q', 50
                    _2483 = mem[_1891 + ceil32(return_data.size) + 64]
                    if mem[_1891 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'amountReceived cannot be zero'
                    if mem[_1891 + ceil32(return_data.size) + 64] <= _1187:
                        revert with 0, 'amountReceived cannot be less than amountRequired'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1187
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1187
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _2639 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2639] == bool(mem[_2639])
                        if _2483 < _1187:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2483 - _1187
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2483 - _1187
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2855 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2855] == bool(mem[_2855])
                        else:
                            _2856 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2856] == bool(mem[_2856])
                    else:
                        _2640 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2640] == bool(mem[_2640])
                        if _2483 < _1187:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2483 - _1187
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2483 - _1187
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2857 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2857] == bool(mem[_2857])
                        else:
                            _2858 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2858] == bool(mem[_2858])
                else:
                    _404 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _420 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    require _404 + (32 * _420) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _404 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _420:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _420:
                        revert with 'NH{q', 50
                    _1188 = mem[(8 * ceil32(return_data.size)) + 224]
                    if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                        revert with 0, 'amountRequired cannot be zero'
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    _1220 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1188
                    mem[mem[64] + 68] = 160
                    _1252 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1252:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1220 + 100] = msg.sender
                    mem[_1220 + 132] = block.timestamp + 30
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1220 + (32 * _1252) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1892 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1908 = mem[_1892]
                    require mem[_1892] <= test266151307()
                    require _1892 + mem[_1892] + 31 < _1892 + return_data.size
                    _1924 = mem[_1892 + mem[_1892]]
                    if mem[_1892 + mem[_1892]] > test266151307():
                        revert with 'NH{q', 65
                    if _1892 + ceil32(return_data.size) + floor32(mem[_1892 + mem[_1892]]) + 1 > test266151307() or floor32(mem[_1892 + mem[_1892]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1892 + ceil32(return_data.size) + floor32(mem[_1892 + mem[_1892]]) + 1
                    mem[_1892 + ceil32(return_data.size)] = _1924
                    require _1908 + (32 * _1924) + 32 <= return_data.size
                    idx = 0
                    s = _1892 + _1908 + 32
                    t = _1892 + ceil32(return_data.size) + 32
                    while idx < _1924:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _1924:
                        revert with 'NH{q', 50
                    _2484 = mem[_1892 + ceil32(return_data.size) + 64]
                    if mem[_1892 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'amountReceived cannot be zero'
                    if mem[_1892 + ceil32(return_data.size) + 64] <= _1188:
                        revert with 0, 'amountReceived cannot be less than amountRequired'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1188
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1188
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _2641 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2641] == bool(mem[_2641])
                        if _2484 < _1188:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2484 - _1188
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2484 - _1188
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2859 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2859] == bool(mem[_2859])
                        else:
                            _2860 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2860] == bool(mem[_2860])
                    else:
                        _2642 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2642] == bool(mem[_2642])
                        if _2484 < _1188:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2484 - _1188
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2484 - _1188
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2861 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2861] == bool(mem[_2861])
                        else:
                            _2862 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2862] == bool(mem[_2862])
            else:
                if not arg2:
                    _405 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _421 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    require _405 + (32 * _421) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _405 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _421:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _421:
                        revert with 'NH{q', 50
                    _1189 = mem[(8 * ceil32(return_data.size)) + 224]
                    if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                        revert with 0, 'amountRequired cannot be zero'
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    _1221 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1189
                    mem[mem[64] + 68] = 160
                    _1253 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1253:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1221 + 100] = msg.sender
                    mem[_1221 + 132] = block.timestamp + 30
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1221 + (32 * _1253) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1893 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1909 = mem[_1893]
                    require mem[_1893] <= test266151307()
                    require _1893 + mem[_1893] + 31 < _1893 + return_data.size
                    _1925 = mem[_1893 + mem[_1893]]
                    if mem[_1893 + mem[_1893]] > test266151307():
                        revert with 'NH{q', 65
                    if _1893 + ceil32(return_data.size) + floor32(mem[_1893 + mem[_1893]]) + 1 > test266151307() or floor32(mem[_1893 + mem[_1893]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1893 + ceil32(return_data.size) + floor32(mem[_1893 + mem[_1893]]) + 1
                    mem[_1893 + ceil32(return_data.size)] = _1925
                    require _1909 + (32 * _1925) + 32 <= return_data.size
                    idx = 0
                    s = _1893 + _1909 + 32
                    t = _1893 + ceil32(return_data.size) + 32
                    while idx < _1925:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _1925:
                        revert with 'NH{q', 50
                    _2485 = mem[_1893 + ceil32(return_data.size) + 64]
                    if mem[_1893 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'amountReceived cannot be zero'
                    if mem[_1893 + ceil32(return_data.size) + 64] <= _1189:
                        revert with 0, 'amountReceived cannot be less than amountRequired'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1189
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1189
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _2643 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2643] == bool(mem[_2643])
                        if _2485 < _1189:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2485 - _1189
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2485 - _1189
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2863 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2863] == bool(mem[_2863])
                        else:
                            _2864 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2864] == bool(mem[_2864])
                    else:
                        _2644 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2644] == bool(mem[_2644])
                        if _2485 < _1189:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2485 - _1189
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2485 - _1189
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2865 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2865] == bool(mem[_2865])
                        else:
                            _2866 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2866] == bool(mem[_2866])
                else:
                    _406 = mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                    _422 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
                    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    require _406 + (32 * _422) + 32 <= return_data.size
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + _406 + 224
                    t = (8 * ceil32(return_data.size)) + 224
                    while idx < _422:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 0 >= _422:
                        revert with 'NH{q', 50
                    _1190 = mem[(8 * ceil32(return_data.size)) + 224]
                    if mem[(8 * ceil32(return_data.size)) + 224] <= 0:
                        revert with 0, 'amountRequired cannot be zero'
                    if block.timestamp > -31:
                        revert with 'NH{q', 17
                    _1222 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg2
                    mem[mem[64] + 36] = _1190
                    mem[mem[64] + 68] = 160
                    _1254 = mem[(6 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _1254:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1222 + 100] = msg.sender
                    mem[_1222 + 132] = block.timestamp + 30
                    require ext_code.size(stor2)
                    call stor2.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1222 + (32 * _1254) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1894 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1910 = mem[_1894]
                    require mem[_1894] <= test266151307()
                    require _1894 + mem[_1894] + 31 < _1894 + return_data.size
                    _1926 = mem[_1894 + mem[_1894]]
                    if mem[_1894 + mem[_1894]] > test266151307():
                        revert with 'NH{q', 65
                    if _1894 + ceil32(return_data.size) + floor32(mem[_1894 + mem[_1894]]) + 1 > test266151307() or floor32(mem[_1894 + mem[_1894]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1894 + ceil32(return_data.size) + floor32(mem[_1894 + mem[_1894]]) + 1
                    mem[_1894 + ceil32(return_data.size)] = _1926
                    require _1910 + (32 * _1926) + 32 <= return_data.size
                    idx = 0
                    s = _1894 + _1910 + 32
                    t = _1894 + ceil32(return_data.size) + 32
                    while idx < _1926:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 >= _1926:
                        revert with 'NH{q', 50
                    _2486 = mem[_1894 + ceil32(return_data.size) + 64]
                    if mem[_1894 + ceil32(return_data.size) + 64] <= 0:
                        revert with 0, 'amountReceived cannot be zero'
                    if mem[_1894 + ceil32(return_data.size) + 64] <= _1190:
                        revert with 0, 'amountReceived cannot be less than amountRequired'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1190
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1190
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _2645 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2645] == bool(mem[_2645])
                        if _2486 < _1190:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2486 - _1190
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2486 - _1190
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2867 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2867] == bool(mem[_2867])
                        else:
                            _2868 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2868] == bool(mem[_2868])
                    else:
                        _2646 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2646] == bool(mem[_2646])
                        if _2486 < _1190:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = _2486 - _1190
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), _2486 - _1190
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg2:
                            _2869 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2869] == bool(mem[_2869])
                        else:
                            _2870 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2870] == bool(mem[_2870])
}



}
