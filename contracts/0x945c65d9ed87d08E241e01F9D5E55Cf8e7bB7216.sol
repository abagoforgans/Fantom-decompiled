contract main {




// =====================  Runtime code  =====================


address _owner;

function get_owner() {
    return _owner
}

function _fallback() payable {
    revert
}

function sub_49e7fc2a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Not the owner'
    _owner = address(arg1)
}

function get_balance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function get_allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ffafda4f(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if _owner != msg.sender:
        revert with 0, 'Not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '[set_allowance] Not approved'
}

function sub_e12b1d04(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, '[remove_token] Empty balance'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args _owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '[remove_token] Not approved'
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args this.address, _owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_d08ab02a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Not the owner'
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, mem[ceil32(return_data.size) + 228 len 28]
    call address(arg1).mem[ceil32(return_data.size) + 228 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 232 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'STF'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'STF'
    else:
        mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'STF'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
            if not mem[ceil32(return_data.size) + 260]:
                revert with 0, 'STF'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !arg2:
        revert with 0, 17
    if ext_call.return_data[0] != ext_call.return_data[0] + arg2:
        revert with 0, '[add_token] bad balance'
}

function swap(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if _owner != msg.sender:
        revert with 0, 'Not the owner'
    mem[96] = 2
    mem[128] = arg2
    mem[160] = arg3
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg4
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
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg4, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _44 = mem[192 len 4], Mask(224, 32, arg4) >> 32
    require mem[192 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg4) >> 32 + 223 < return_data.size + 192
    _45 = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    require return_data.size >= _44 + (32 * _45) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _45] = mem[_44 + 224 len 32 * _45]
    if 1 >= _45:
        revert with 0, 50
    _76 = mem[ceil32(return_data.size) + 256]
    if mem[ceil32(return_data.size) + 256] != arg4:
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg4
        mem[mem[64] + 36] = _76
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = arg5
        require ext_code.size(arg1)
        call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg4, _76, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _105 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_105] <= test266151307()
        require _105 + mem[_105] + 31 < _105 + return_data.size
        if mem[_105 + mem[_105]] > test266151307():
            revert with 0, 65
        if _105 + ceil32(return_data.size) + ceil32(32 * mem[_105 + mem[_105]]) + 1 > test266151307() or ceil32(32 * mem[_105 + mem[_105]]) + 1 < 0:
            revert with 0, 65
        require return_data.size >= mem[_105] + (32 * mem[_105 + mem[_105]]) + 32
        return _76
    if 0 >= _45:
        revert with 0, 50
    _79 = mem[ceil32(return_data.size) + 224]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg4
    mem[mem[64] + 36] = _79
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = 128
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = arg5
    require ext_code.size(arg1)
    call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg4, _79, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _106 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_106] <= test266151307()
    require _106 + mem[_106] + 31 < _106 + return_data.size
    if mem[_106 + mem[_106]] > test266151307():
        revert with 0, 65
    if _106 + ceil32(return_data.size) + ceil32(32 * mem[_106 + mem[_106]]) + 1 > test266151307() or ceil32(32 * mem[_106 + mem[_106]]) + 1 < 0:
        revert with 0, 65
    require return_data.size >= mem[_106] + (32 * mem[_106 + mem[_106]]) + 32
    return _79
}

function sub_d8a6b535(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if _owner != msg.sender:
        revert with 0, 'Not the owner'
    mem[100] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if _owner != msg.sender:
        revert with 0, 'Not the owner'
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = address(arg3)
    mem[ceil32(return_data.size) + 160] = address(arg4)
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _126 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
    _127 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    require return_data.size >= _126 + (32 * _127) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _127] = mem[ceil32(return_data.size) + _126 + 224 len 32 * _127]
    if 1 >= _127:
        revert with 0, 50
    _234 = mem[(2 * ceil32(return_data.size)) + 256]
    if mem[(2 * ceil32(return_data.size)) + 256] != ext_call.return_data[0]:
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0]
        mem[mem[64] + 36] = _234
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 196
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = arg5
        require ext_code.size(address(arg1))
        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], _234, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _339 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _341 = mem[_339]
        require mem[_339] <= test266151307()
        require _339 + mem[_339] + 31 < _339 + return_data.size
        _343 = mem[_339 + mem[_339]]
        if mem[_339 + mem[_339]] > test266151307():
            revert with 0, 65
        if _339 + ceil32(return_data.size) + ceil32(32 * mem[_339 + mem[_339]]) + 1 > test266151307() or ceil32(32 * mem[_339 + mem[_339]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _339 + ceil32(return_data.size) + ceil32(32 * mem[_339 + mem[_339]]) + 1
        mem[_339 + ceil32(return_data.size)] = _343
        require return_data.size >= _341 + (32 * _343) + 32
        mem[_339 + ceil32(return_data.size) + 32 len 32 * _343] = mem[_339 + _341 + 32 len 32 * _343]
        if _owner != msg.sender:
            revert with 0, 'Not the owner'
        _431 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_431]:
            revert with 0, 50
        mem[_431 + 32] = address(arg4)
        if 1 >= mem[_431]:
            revert with 0, 50
        mem[_431 + 64] = address(arg3)
        mem[_431 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_431 + 100] = _234
        mem[_431 + 132] = 64
        mem[_431 + 164] = mem[_431]
        idx = 0
        s = _431 + 32
        t = _431 + 196
        while idx < mem[_431]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg2))
        staticcall address(arg2).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _431 + (32 * mem[_431]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _515 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _517 = mem[_515]
        require mem[_515] <= test266151307()
        require _515 + mem[_515] + 31 < _515 + return_data.size
        _519 = mem[_515 + mem[_515]]
        if mem[_515 + mem[_515]] > test266151307():
            revert with 0, 65
        if _515 + ceil32(return_data.size) + ceil32(32 * mem[_515 + mem[_515]]) + 1 > test266151307() or ceil32(32 * mem[_515 + mem[_515]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _515 + ceil32(return_data.size) + ceil32(32 * mem[_515 + mem[_515]]) + 1
        mem[_515 + ceil32(return_data.size)] = _519
        require return_data.size >= _517 + (32 * _519) + 32
        mem[_515 + ceil32(return_data.size) + 32 len 32 * _519] = mem[_515 + _517 + 32 len 32 * _519]
        if 1 >= _519:
            revert with 0, 50
        _581 = mem[_515 + ceil32(return_data.size) + 64]
        if mem[_515 + ceil32(return_data.size) + 64] != _234:
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _234
            mem[mem[64] + 36] = _581
            mem[mem[64] + 68] = 160
            _589 = mem[_431]
            mem[mem[64] + 164] = mem[_431]
            idx = 0
            s = _431 + 32
            t = mem[64] + 196
            while idx < _589:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = arg5
            require ext_code.size(address(arg2))
            call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _234, _581, 160, address(this.address), arg5, mem[mem[64] + 164 len (32 * _589) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _639 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_639] <= test266151307()
            require _639 + mem[_639] + 31 < _639 + return_data.size
            if mem[_639 + mem[_639]] > test266151307():
                revert with 0, 65
            if _639 + ceil32(return_data.size) + ceil32(32 * mem[_639 + mem[_639]]) + 1 > test266151307() or ceil32(32 * mem[_639 + mem[_639]]) + 1 < 0:
                revert with 0, 65
            require return_data.size >= mem[_639] + (32 * mem[_639 + mem[_639]]) + 32
            if _581 <= ext_call.return_data[0]:
                revert with 0, '[do_arb] lose Money'
        else:
            if 0 >= _519:
                revert with 0, 50
            _587 = mem[_515 + ceil32(return_data.size) + 32]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _234
            mem[mem[64] + 36] = _587
            mem[mem[64] + 68] = 160
            _594 = mem[_431]
            mem[mem[64] + 164] = mem[_431]
            idx = 0
            s = _431 + 32
            t = mem[64] + 196
            while idx < _594:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = arg5
            require ext_code.size(address(arg2))
            call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _234, _587, 160, address(this.address), arg5, mem[mem[64] + 164 len (32 * _594) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _640 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_640] <= test266151307()
            require _640 + mem[_640] + 31 < _640 + return_data.size
            if mem[_640 + mem[_640]] > test266151307():
                revert with 0, 65
            if _640 + ceil32(return_data.size) + ceil32(32 * mem[_640 + mem[_640]]) + 1 > test266151307() or ceil32(32 * mem[_640 + mem[_640]]) + 1 < 0:
                revert with 0, 65
            require return_data.size >= mem[_640] + (32 * mem[_640 + mem[_640]]) + 32
            if _587 <= ext_call.return_data[0]:
                revert with 0, '[do_arb] lose Money'
    else:
        if 0 >= _127:
            revert with 0, 50
        _237 = mem[(2 * ceil32(return_data.size)) + 224]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0]
        mem[mem[64] + 36] = _237
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 196
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = arg5
        require ext_code.size(address(arg1))
        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], _237, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _340 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _342 = mem[_340]
        require mem[_340] <= test266151307()
        require _340 + mem[_340] + 31 < _340 + return_data.size
        _344 = mem[_340 + mem[_340]]
        if mem[_340 + mem[_340]] > test266151307():
            revert with 0, 65
        if _340 + ceil32(return_data.size) + ceil32(32 * mem[_340 + mem[_340]]) + 1 > test266151307() or ceil32(32 * mem[_340 + mem[_340]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _340 + ceil32(return_data.size) + ceil32(32 * mem[_340 + mem[_340]]) + 1
        mem[_340 + ceil32(return_data.size)] = _344
        require return_data.size >= _342 + (32 * _344) + 32
        mem[_340 + ceil32(return_data.size) + 32 len 32 * _344] = mem[_340 + _342 + 32 len 32 * _344]
        if _owner != msg.sender:
            revert with 0, 'Not the owner'
        _434 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_434]:
            revert with 0, 50
        mem[_434 + 32] = address(arg4)
        if 1 >= mem[_434]:
            revert with 0, 50
        mem[_434 + 64] = address(arg3)
        mem[_434 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_434 + 100] = _237
        mem[_434 + 132] = 64
        mem[_434 + 164] = mem[_434]
        idx = 0
        s = _434 + 32
        t = _434 + 196
        while idx < mem[_434]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg2))
        staticcall address(arg2).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _434 + (32 * mem[_434]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _516 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _518 = mem[_516]
        require mem[_516] <= test266151307()
        require _516 + mem[_516] + 31 < _516 + return_data.size
        _520 = mem[_516 + mem[_516]]
        if mem[_516 + mem[_516]] > test266151307():
            revert with 0, 65
        if _516 + ceil32(return_data.size) + ceil32(32 * mem[_516 + mem[_516]]) + 1 > test266151307() or ceil32(32 * mem[_516 + mem[_516]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _516 + ceil32(return_data.size) + ceil32(32 * mem[_516 + mem[_516]]) + 1
        mem[_516 + ceil32(return_data.size)] = _520
        require return_data.size >= _518 + (32 * _520) + 32
        mem[_516 + ceil32(return_data.size) + 32 len 32 * _520] = mem[_516 + _518 + 32 len 32 * _520]
        if 1 >= _520:
            revert with 0, 50
        _582 = mem[_516 + ceil32(return_data.size) + 64]
        if mem[_516 + ceil32(return_data.size) + 64] != _237:
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _237
            mem[mem[64] + 36] = _582
            mem[mem[64] + 68] = 160
            _591 = mem[_434]
            mem[mem[64] + 164] = mem[_434]
            idx = 0
            s = _434 + 32
            t = mem[64] + 196
            while idx < _591:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = arg5
            require ext_code.size(address(arg2))
            call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _237, _582, 160, address(this.address), arg5, mem[mem[64] + 164 len (32 * _591) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _641 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_641] <= test266151307()
            require _641 + mem[_641] + 31 < _641 + return_data.size
            if mem[_641 + mem[_641]] > test266151307():
                revert with 0, 65
            if _641 + ceil32(return_data.size) + ceil32(32 * mem[_641 + mem[_641]]) + 1 > test266151307() or ceil32(32 * mem[_641 + mem[_641]]) + 1 < 0:
                revert with 0, 65
            require return_data.size >= mem[_641] + (32 * mem[_641 + mem[_641]]) + 32
            if _582 <= ext_call.return_data[0]:
                revert with 0, '[do_arb] lose Money'
        else:
            if 0 >= _520:
                revert with 0, 50
            _588 = mem[_516 + ceil32(return_data.size) + 32]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _237
            mem[mem[64] + 36] = _588
            mem[mem[64] + 68] = 160
            _596 = mem[_434]
            mem[mem[64] + 164] = mem[_434]
            idx = 0
            s = _434 + 32
            t = mem[64] + 196
            while idx < _596:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = arg5
            require ext_code.size(address(arg2))
            call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _237, _588, 160, address(this.address), arg5, mem[mem[64] + 164 len (32 * _596) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _642 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_642] <= test266151307()
            require _642 + mem[_642] + 31 < _642 + return_data.size
            if mem[_642 + mem[_642]] > test266151307():
                revert with 0, 65
            if _642 + ceil32(return_data.size) + ceil32(32 * mem[_642 + mem[_642]]) + 1 > test266151307() or ceil32(32 * mem[_642 + mem[_642]]) + 1 < 0:
                revert with 0, 65
            require return_data.size >= mem[_642] + (32 * mem[_642 + mem[_642]]) + 32
            if _588 <= ext_call.return_data[0]:
                revert with 0, '[do_arb] lose Money'
}



}
