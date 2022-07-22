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
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function get_allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_ffafda4f(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
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
    staticcall address(arg1).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
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
    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), _owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_d08ab02a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if _owner != msg.sender:
        revert with 0, 'Not the owner'
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
    mem[ceil32(return_data.size) + 228 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg2, mem[ceil32(return_data.size) + 228 len 28]
    call address(arg1).mem[ceil32(return_data.size) + 228 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 232 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'STF'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
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
    staticcall address(arg1).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -arg2 - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] != ext_call.return_data[0] + arg2:
        revert with 0, '[add_token] bad balance'
}

function swap(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if _owner != msg.sender:
        revert with 0, 'Not the owner'
    mem[100] = arg1
    mem[132] = arg4
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg4
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '[swap] Not approved'
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = arg2
    mem[ceil32(return_data.size) + 160] = arg3
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg4
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
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg4, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _50 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _51 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _51
    require _50 + (32 * _51) + 32 <= return_data.size
    idx = ceil32(return_data.size) + _50 + 224
    s = (2 * ceil32(return_data.size)) + 224
    while idx < ceil32(return_data.size) + _50 + (32 * _51) + 224:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 1 >= _51:
        revert with 'NH{q', 50
    _82 = mem[(2 * ceil32(return_data.size)) + 256]
    if mem[(2 * ceil32(return_data.size)) + 256] != arg4:
        if block.timestamp > -121:
            revert with 'NH{q', 17
        _85 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg4
        mem[mem[64] + 36] = _82
        mem[mem[64] + 68] = 160
        _87 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 196
        while idx < _87:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_85 + 100] = this.address
        mem[_85 + 132] = block.timestamp + 120
        require ext_code.size(arg1)
        call arg1.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _85 + (32 * _87) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _111 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _113 = mem[_111]
        require mem[_111] <= test266151307()
        require _111 + mem[_111] + 31 < _111 + return_data.size
        _115 = mem[_111 + mem[_111]]
        if mem[_111 + mem[_111]] > test266151307():
            revert with 'NH{q', 65
        if _111 + ceil32(return_data.size) + floor32(mem[_111 + mem[_111]]) + 1 > test266151307() or floor32(mem[_111 + mem[_111]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _111 + ceil32(return_data.size) + floor32(mem[_111 + mem[_111]]) + 1
        mem[_111 + ceil32(return_data.size)] = _115
        require _113 + (32 * _115) + 32 <= return_data.size
        idx = _111 + _113 + 32
        s = _111 + ceil32(return_data.size) + 32
        while idx < _111 + _113 + (32 * _115) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        return _82
    if 0 >= _51:
        revert with 'NH{q', 50
    _84 = mem[(2 * ceil32(return_data.size)) + 224]
    if block.timestamp > -121:
        revert with 'NH{q', 17
    _86 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg4
    mem[mem[64] + 36] = _84
    mem[mem[64] + 68] = 160
    _88 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 196
    while idx < _88:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_86 + 100] = this.address
    mem[_86 + 132] = block.timestamp + 120
    require ext_code.size(arg1)
    call arg1.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _86 + (32 * _88) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _112 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _114 = mem[_112]
    require mem[_112] <= test266151307()
    require _112 + mem[_112] + 31 < _112 + return_data.size
    _116 = mem[_112 + mem[_112]]
    if mem[_112 + mem[_112]] > test266151307():
        revert with 'NH{q', 65
    if _112 + ceil32(return_data.size) + floor32(mem[_112 + mem[_112]]) + 1 > test266151307() or floor32(mem[_112 + mem[_112]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _112 + ceil32(return_data.size) + floor32(mem[_112 + mem[_112]]) + 1
    mem[_112 + ceil32(return_data.size)] = _116
    require _114 + (32 * _116) + 32 <= return_data.size
    idx = _112 + _114 + 32
    s = _112 + ceil32(return_data.size) + 32
    while idx < _112 + _114 + (32 * _116) + 32:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    return _84
}

function sub_7ef3de61(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if _owner != msg.sender:
        revert with 0, 'Not the owner'
    mem[100] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, '[do_arb] Empty balance'
    if _owner != msg.sender:
        revert with 0, 'Not the owner'
    mem[ceil32(return_data.size) + 100] = address(arg1)
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(address(arg3))
    call address(arg3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '[swap] Not approved'
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg3)
    mem[(2 * ceil32(return_data.size)) + 160] = address(arg4)
    mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 228] = 64
    mem[(2 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _52 = mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
    _53 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    require _52 + (32 * _53) + 32 <= return_data.size
    idx = (2 * ceil32(return_data.size)) + _52 + 224
    s = (4 * ceil32(return_data.size)) + 224
    while idx < (2 * ceil32(return_data.size)) + _52 + (32 * _53) + 224:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 1 >= _53:
        revert with 'NH{q', 50
    _139 = mem[(4 * ceil32(return_data.size)) + 256]
    if mem[(4 * ceil32(return_data.size)) + 256] != ext_call.return_data[0]:
        if block.timestamp > -121:
            revert with 'NH{q', 17
        _142 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0]
        mem[mem[64] + 36] = _139
        mem[mem[64] + 68] = 160
        _144 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + 196
        while idx < _144:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_142 + 100] = this.address
        mem[_142 + 132] = block.timestamp + 120
        require ext_code.size(address(arg1))
        call address(arg1).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _142 + (32 * _144) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _243 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _245 = mem[_243]
        require mem[_243] <= test266151307()
        require _243 + mem[_243] + 31 < _243 + return_data.size
        _247 = mem[_243 + mem[_243]]
        if mem[_243 + mem[_243]] > test266151307():
            revert with 'NH{q', 65
        if _243 + ceil32(return_data.size) + floor32(mem[_243 + mem[_243]]) + 1 > test266151307() or floor32(mem[_243 + mem[_243]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _243 + ceil32(return_data.size) + floor32(mem[_243 + mem[_243]]) + 1
        mem[_243 + ceil32(return_data.size)] = _247
        require _245 + (32 * _247) + 32 <= return_data.size
        idx = _243 + _245 + 32
        s = _243 + ceil32(return_data.size) + 32
        while idx < _243 + _245 + (32 * _247) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if _owner != msg.sender:
            revert with 0, 'Not the owner'
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = _139
        require ext_code.size(address(arg4))
        call address(arg4).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), _139
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _355 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_355] == bool(mem[_355])
        if not mem[_355]:
            revert with 0, '[swap] Not approved'
        _361 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_361]:
            revert with 'NH{q', 50
        mem[_361 + 32] = address(arg4)
        if 1 >= mem[_361]:
            revert with 'NH{q', 50
        mem[_361 + 64] = address(arg3)
        mem[_361 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_361 + 100] = _139
        mem[_361 + 132] = 64
        mem[_361 + 164] = mem[_361]
        idx = 0
        s = _361 + 32
        t = _361 + 196
        while idx < mem[_361]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg2))
        staticcall address(arg2).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _361 + (32 * mem[_361]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _443 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _445 = mem[_443]
        require mem[_443] <= test266151307()
        require _443 + mem[_443] + 31 < _443 + return_data.size
        _447 = mem[_443 + mem[_443]]
        if mem[_443 + mem[_443]] > test266151307():
            revert with 'NH{q', 65
        if _443 + ceil32(return_data.size) + floor32(mem[_443 + mem[_443]]) + 1 > test266151307() or floor32(mem[_443 + mem[_443]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _443 + ceil32(return_data.size) + floor32(mem[_443 + mem[_443]]) + 1
        mem[_443 + ceil32(return_data.size)] = _447
        require _445 + (32 * _447) + 32 <= return_data.size
        idx = _443 + _445 + 32
        s = _443 + ceil32(return_data.size) + 32
        while idx < _443 + _445 + (32 * _447) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _447:
            revert with 'NH{q', 50
        _509 = mem[_443 + ceil32(return_data.size) + 64]
        if mem[_443 + ceil32(return_data.size) + 64] != _139:
            if block.timestamp > -121:
                revert with 'NH{q', 17
            _515 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _139
            mem[mem[64] + 36] = _509
            mem[mem[64] + 68] = 160
            _519 = mem[_361]
            mem[mem[64] + 164] = mem[_361]
            idx = 0
            s = _361 + 32
            t = mem[64] + 196
            while idx < _519:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_515 + 100] = this.address
            mem[_515 + 132] = block.timestamp + 120
            require ext_code.size(address(arg2))
            call address(arg2).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _515 + (32 * _519) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _567 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _571 = mem[_567]
            require mem[_567] <= test266151307()
            require _567 + mem[_567] + 31 < _567 + return_data.size
            _575 = mem[_567 + mem[_567]]
            if mem[_567 + mem[_567]] > test266151307():
                revert with 'NH{q', 65
            if _567 + ceil32(return_data.size) + floor32(mem[_567 + mem[_567]]) + 1 > test266151307() or floor32(mem[_567 + mem[_567]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _567 + ceil32(return_data.size) + floor32(mem[_567 + mem[_567]]) + 1
            mem[_567 + ceil32(return_data.size)] = _575
            require _571 + (32 * _575) + 32 <= return_data.size
            idx = _567 + _571 + 32
            s = _567 + ceil32(return_data.size) + 32
            while idx < _567 + _571 + (32 * _575) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if _509 <= ext_call.return_data[0]:
                revert with 0, '[do_arb] lose Money'
        else:
            if 0 >= _447:
                revert with 'NH{q', 50
            _513 = mem[_443 + ceil32(return_data.size) + 32]
            if block.timestamp > -121:
                revert with 'NH{q', 17
            _517 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _139
            mem[mem[64] + 36] = _513
            mem[mem[64] + 68] = 160
            _521 = mem[_361]
            mem[mem[64] + 164] = mem[_361]
            idx = 0
            s = _361 + 32
            t = mem[64] + 196
            while idx < _521:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_517 + 100] = this.address
            mem[_517 + 132] = block.timestamp + 120
            require ext_code.size(address(arg2))
            call address(arg2).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _517 + (32 * _521) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _568 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _572 = mem[_568]
            require mem[_568] <= test266151307()
            require _568 + mem[_568] + 31 < _568 + return_data.size
            _576 = mem[_568 + mem[_568]]
            if mem[_568 + mem[_568]] > test266151307():
                revert with 'NH{q', 65
            if _568 + ceil32(return_data.size) + floor32(mem[_568 + mem[_568]]) + 1 > test266151307() or floor32(mem[_568 + mem[_568]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _568 + ceil32(return_data.size) + floor32(mem[_568 + mem[_568]]) + 1
            mem[_568 + ceil32(return_data.size)] = _576
            require _572 + (32 * _576) + 32 <= return_data.size
            idx = _568 + _572 + 32
            s = _568 + ceil32(return_data.size) + 32
            while idx < _568 + _572 + (32 * _576) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if _513 <= ext_call.return_data[0]:
                revert with 0, '[do_arb] lose Money'
    else:
        if 0 >= _53:
            revert with 'NH{q', 50
        _141 = mem[(4 * ceil32(return_data.size)) + 224]
        if block.timestamp > -121:
            revert with 'NH{q', 17
        _143 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0]
        mem[mem[64] + 36] = _141
        mem[mem[64] + 68] = 160
        _145 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + 196
        while idx < _145:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_143 + 100] = this.address
        mem[_143 + 132] = block.timestamp + 120
        require ext_code.size(address(arg1))
        call address(arg1).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _143 + (32 * _145) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _244 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _246 = mem[_244]
        require mem[_244] <= test266151307()
        require _244 + mem[_244] + 31 < _244 + return_data.size
        _248 = mem[_244 + mem[_244]]
        if mem[_244 + mem[_244]] > test266151307():
            revert with 'NH{q', 65
        if _244 + ceil32(return_data.size) + floor32(mem[_244 + mem[_244]]) + 1 > test266151307() or floor32(mem[_244 + mem[_244]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _244 + ceil32(return_data.size) + floor32(mem[_244 + mem[_244]]) + 1
        mem[_244 + ceil32(return_data.size)] = _248
        require _246 + (32 * _248) + 32 <= return_data.size
        idx = _244 + _246 + 32
        s = _244 + ceil32(return_data.size) + 32
        while idx < _244 + _246 + (32 * _248) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if _owner != msg.sender:
            revert with 0, 'Not the owner'
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = _141
        require ext_code.size(address(arg4))
        call address(arg4).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), _141
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _356 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_356] == bool(mem[_356])
        if not mem[_356]:
            revert with 0, '[swap] Not approved'
        _362 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_362]:
            revert with 'NH{q', 50
        mem[_362 + 32] = address(arg4)
        if 1 >= mem[_362]:
            revert with 'NH{q', 50
        mem[_362 + 64] = address(arg3)
        mem[_362 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_362 + 100] = _141
        mem[_362 + 132] = 64
        mem[_362 + 164] = mem[_362]
        idx = 0
        s = _362 + 32
        t = _362 + 196
        while idx < mem[_362]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg2))
        staticcall address(arg2).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _362 + (32 * mem[_362]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _444 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _446 = mem[_444]
        require mem[_444] <= test266151307()
        require _444 + mem[_444] + 31 < _444 + return_data.size
        _448 = mem[_444 + mem[_444]]
        if mem[_444 + mem[_444]] > test266151307():
            revert with 'NH{q', 65
        if _444 + ceil32(return_data.size) + floor32(mem[_444 + mem[_444]]) + 1 > test266151307() or floor32(mem[_444 + mem[_444]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _444 + ceil32(return_data.size) + floor32(mem[_444 + mem[_444]]) + 1
        mem[_444 + ceil32(return_data.size)] = _448
        require _446 + (32 * _448) + 32 <= return_data.size
        idx = _444 + _446 + 32
        s = _444 + ceil32(return_data.size) + 32
        while idx < _444 + _446 + (32 * _448) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _448:
            revert with 'NH{q', 50
        _510 = mem[_444 + ceil32(return_data.size) + 64]
        if mem[_444 + ceil32(return_data.size) + 64] != _141:
            if block.timestamp > -121:
                revert with 'NH{q', 17
            _516 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _141
            mem[mem[64] + 36] = _510
            mem[mem[64] + 68] = 160
            _520 = mem[_362]
            mem[mem[64] + 164] = mem[_362]
            idx = 0
            s = _362 + 32
            t = mem[64] + 196
            while idx < _520:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_516 + 100] = this.address
            mem[_516 + 132] = block.timestamp + 120
            require ext_code.size(address(arg2))
            call address(arg2).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _516 + (32 * _520) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _569 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _573 = mem[_569]
            require mem[_569] <= test266151307()
            require _569 + mem[_569] + 31 < _569 + return_data.size
            _577 = mem[_569 + mem[_569]]
            if mem[_569 + mem[_569]] > test266151307():
                revert with 'NH{q', 65
            if _569 + ceil32(return_data.size) + floor32(mem[_569 + mem[_569]]) + 1 > test266151307() or floor32(mem[_569 + mem[_569]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _569 + ceil32(return_data.size) + floor32(mem[_569 + mem[_569]]) + 1
            mem[_569 + ceil32(return_data.size)] = _577
            require _573 + (32 * _577) + 32 <= return_data.size
            idx = _569 + _573 + 32
            s = _569 + ceil32(return_data.size) + 32
            while idx < _569 + _573 + (32 * _577) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if _510 <= ext_call.return_data[0]:
                revert with 0, '[do_arb] lose Money'
        else:
            if 0 >= _448:
                revert with 'NH{q', 50
            _514 = mem[_444 + ceil32(return_data.size) + 32]
            if block.timestamp > -121:
                revert with 'NH{q', 17
            _518 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _141
            mem[mem[64] + 36] = _514
            mem[mem[64] + 68] = 160
            _522 = mem[_362]
            mem[mem[64] + 164] = mem[_362]
            idx = 0
            s = _362 + 32
            t = mem[64] + 196
            while idx < _522:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_518 + 100] = this.address
            mem[_518 + 132] = block.timestamp + 120
            require ext_code.size(address(arg2))
            call address(arg2).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _518 + (32 * _522) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _570 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _574 = mem[_570]
            require mem[_570] <= test266151307()
            require _570 + mem[_570] + 31 < _570 + return_data.size
            _578 = mem[_570 + mem[_570]]
            if mem[_570 + mem[_570]] > test266151307():
                revert with 'NH{q', 65
            if _570 + ceil32(return_data.size) + floor32(mem[_570 + mem[_570]]) + 1 > test266151307() or floor32(mem[_570 + mem[_570]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _570 + ceil32(return_data.size) + floor32(mem[_570 + mem[_570]]) + 1
            mem[_570 + ceil32(return_data.size)] = _578
            require _574 + (32 * _578) + 32 <= return_data.size
            idx = _570 + _574 + 32
            s = _570 + ceil32(return_data.size) + 32
            while idx < _570 + _574 + (32 * _578) + 32:
                require mem[idx] == mem[idx]
                mem[s] = mem[idx]
                idx = idx + 32
                s = s + 32
                continue 
            if _514 <= ext_call.return_data[0]:
                revert with 0, '[do_arb] lose Money'
}



}
