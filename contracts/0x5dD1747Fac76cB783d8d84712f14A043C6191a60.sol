contract main {




// =====================  Runtime code  =====================


address pcsRouterAddress;
address stor2;
address stor3;

function pcsRouter() {
    return pcsRouterAddress
}

function _fallback() payable {
    revert
}

function rugPull(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor2
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'amount not enough'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function emergencySell(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg2.length) + 101] = this.address
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[floor32(arg2.length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[floor32(arg2.length) + ceil32(return_data.size) + 101] = this.address
    mem[floor32(arg2.length) + ceil32(return_data.size) + 133] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    require ext_code.size(arg1)
    staticcall arg1.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    mem[floor32(arg2.length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        if block.timestamp > -121:
            revert with 'NH{q', 17
        mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 97] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 101] = ext_call.return_data[0]
        mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 133] = 0
        mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 165] = 160
        mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 261] = arg2.length
        idx = 0
        s = 128
        t = floor32(arg2.length) + (2 * ceil32(return_data.size)) + 293
        while idx < arg2.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor3)
        call stor3.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 120, arg2.length, mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 293 len 32 * arg2.length]
    else:
        mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 101] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
        mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 133] = -1
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1
        mem[floor32(arg2.length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'FAIL TO APPROVE'
        if block.timestamp > -121:
            revert with 'NH{q', 17
        mem[floor32(arg2.length) + (4 * ceil32(return_data.size)) + 97] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[floor32(arg2.length) + (4 * ceil32(return_data.size)) + 101] = ext_call.return_data[0]
        mem[floor32(arg2.length) + (4 * ceil32(return_data.size)) + 133] = 0
        mem[floor32(arg2.length) + (4 * ceil32(return_data.size)) + 165] = 160
        mem[floor32(arg2.length) + (4 * ceil32(return_data.size)) + 261] = arg2.length
        idx = 0
        s = 128
        t = floor32(arg2.length) + (4 * ceil32(return_data.size)) + 293
        while idx < arg2.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor3)
        call stor3.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 120, arg2.length, mem[floor32(arg2.length) + (4 * ceil32(return_data.size)) + 293 len 32 * arg2.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyToken(address arg1, address[] arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + floor32(arg3.length) + 98 > test266151307() or floor32(arg3.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + floor32(arg3.length) + 98
    mem[floor32(arg2.length) + 97] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = floor32(arg2.length) + 129
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if block.timestamp > -121:
        revert with 'NH{q', 17
    mem[floor32(arg2.length) + floor32(arg3.length) + 98] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[floor32(arg2.length) + floor32(arg3.length) + 102] = 0
    mem[floor32(arg2.length) + floor32(arg3.length) + 134] = 128
    mem[floor32(arg2.length) + floor32(arg3.length) + 230] = arg2.length
    idx = 0
    s = 128
    t = mem[64] + 164
    while idx < mem[96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 68] = this.address
    mem[floor32(arg2.length) + floor32(arg3.length) + 198] = block.timestamp + 120
    require ext_code.size(stor3)
    call stor3.mem[mem[64] len 4] with:
       value msg.value wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len floor32(arg2.length) + floor32(arg3.length) + (32 * arg2.length) + -mem[64] + 258]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _110 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _111 = mem[_110]
    require mem[_110] <= test266151307()
    require _110 + mem[_110] + 31 < _110 + return_data.size
    _112 = mem[_110 + mem[_110]]
    if mem[_110 + mem[_110]] > test266151307():
        revert with 'NH{q', 65
    if _110 + ceil32(return_data.size) + floor32(mem[_110 + mem[_110]]) + 1 > test266151307() or floor32(mem[_110 + mem[_110]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _110 + ceil32(return_data.size) + floor32(mem[_110 + mem[_110]]) + 1
    mem[_110 + ceil32(return_data.size)] = _112
    require _111 + (32 * _112) + 32 <= return_data.size
    idx = 0
    s = _110 + _111 + 32
    t = _110 + ceil32(return_data.size) + 32
    while idx < _112:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _150 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _151 = mem[_150]
    require mem[_150] == mem[_150]
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    require ext_code.size(arg1)
    staticcall arg1.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _154 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_154] == mem[_154]
    if mem[_154] >= _151:
        if block.timestamp > -121:
            revert with 'NH{q', 17
        _157 = mem[64]
        mem[mem[64]] = 0x4a25d94a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 10^16
        mem[mem[64] + 36] = _151
        mem[mem[64] + 68] = 160
        _161 = mem[floor32(arg2.length) + 97]
        mem[mem[64] + 164] = mem[floor32(arg2.length) + 97]
        idx = 0
        s = floor32(arg2.length) + 129
        t = mem[64] + 196
        while idx < _161:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_157 + 100] = msg.sender
        mem[_157 + 132] = block.timestamp + 120
        require ext_code.size(stor3)
        call stor3.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _157 + (32 * _161) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _184 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _186 = mem[_184]
        require mem[_184] <= test266151307()
        require _184 + mem[_184] + 31 < _184 + return_data.size
        _188 = mem[_184 + mem[_184]]
        if mem[_184 + mem[_184]] > test266151307():
            revert with 'NH{q', 65
        if _184 + ceil32(return_data.size) + floor32(mem[_184 + mem[_184]]) + 1 > test266151307() or floor32(mem[_184 + mem[_184]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _184 + ceil32(return_data.size) + floor32(mem[_184 + mem[_184]]) + 1
        mem[_184 + ceil32(return_data.size)] = _188
        require _186 + (32 * _188) + 32 <= return_data.size
        idx = 0
        s = _184 + _186 + 32
        t = _184 + ceil32(return_data.size) + 32
        while idx < _188:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[mem[64] + 4] = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
        mem[mem[64] + 36] = -1
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xf491e7b69e4244ad4002bc14e878a34207e38c29, -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _159 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_159] == bool(mem[_159])
        if not mem[_159]:
            revert with 0, 'FAIL TO APPROVE'
        if block.timestamp > -121:
            revert with 'NH{q', 17
        _164 = mem[64]
        mem[mem[64]] = 0x4a25d94a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 10^16
        mem[mem[64] + 36] = _151
        mem[mem[64] + 68] = 160
        _170 = mem[floor32(arg2.length) + 97]
        mem[mem[64] + 164] = mem[floor32(arg2.length) + 97]
        idx = 0
        s = floor32(arg2.length) + 129
        t = mem[64] + 196
        while idx < _170:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_164 + 100] = msg.sender
        mem[_164 + 132] = block.timestamp + 120
        require ext_code.size(stor3)
        call stor3.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _164 + (32 * _170) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _185 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _187 = mem[_185]
        require mem[_185] <= test266151307()
        require _185 + mem[_185] + 31 < _185 + return_data.size
        _189 = mem[_185 + mem[_185]]
        if mem[_185 + mem[_185]] > test266151307():
            revert with 'NH{q', 65
        if _185 + ceil32(return_data.size) + floor32(mem[_185 + mem[_185]]) + 1 > test266151307() or floor32(mem[_185 + mem[_185]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _185 + ceil32(return_data.size) + floor32(mem[_185 + mem[_185]]) + 1
        mem[_185 + ceil32(return_data.size)] = _189
        require _187 + (32 * _189) + 32 <= return_data.size
        idx = 0
        s = _185 + _187 + 32
        t = _185 + ceil32(return_data.size) + 32
        while idx < _189:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
}



}
