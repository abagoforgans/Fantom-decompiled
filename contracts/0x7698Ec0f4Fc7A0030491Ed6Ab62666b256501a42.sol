contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_9badd64d(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    require cd[132] == cd[132]
    if cd[132] < block.timestamp:
        revert with 0, 'UniswapV2Router: EXPIRED'
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    _98 = mem[128]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = cd[68]
    require ext_code.size(address(_98))
    call address(_98).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[68]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + ceil32(return_data.size) + 98
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    s = cd[68]
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _147 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20]
        mem[mem[64] + 36] = 100000000000000000000000000 * 10^18
        require ext_code.size(address(_147))
        call address(_147).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], 100000000000000000000000000 * 10^18
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _155 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_155] == bool(mem[_155])
        _160 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_160 + 32 len 64] = call.data[calldata.size len 64]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if 0 >= mem[_160]:
            revert with 'NH{q', 50
        mem[_160 + 32] = mem[(32 * idx) + 140 len 20]
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= mem[96]:
            revert with 'NH{q', 50
        if 1 >= mem[_160]:
            revert with 'NH{q', 50
        mem[_160 + 64] = mem[(32 * idx + 1) + 140 len 20]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _170 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        mem[_160 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_160 + 100] = s
        mem[_160 + 132] = 0
        mem[_160 + 164] = 160
        mem[_160 + 260] = mem[_160]
        s = 0
        t = _160 + 32
        u = _160 + 292
        while s < mem[_160]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_160 + 196] = this.address
        mem[_160 + 228] = cd[132]
        require ext_code.size(address(_170))
        call address(_170).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _160 + (32 * mem[_160]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _185 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _186 = mem[_185]
        require mem[_185] <= test266151307()
        require _185 + mem[_185] + 31 < _185 + return_data.size
        _187 = mem[_185 + mem[_185]]
        if mem[_185 + mem[_185]] > test266151307():
            revert with 'NH{q', 65
        if _185 + ceil32(return_data.size) + floor32(mem[_185 + mem[_185]]) + 1 > test266151307() or floor32(mem[_185 + mem[_185]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _185 + ceil32(return_data.size) + floor32(mem[_185 + mem[_185]]) + 1
        mem[_185 + ceil32(return_data.size)] = _187
        require _186 + (32 * _187) + 32 <= return_data.size
        s = 0
        t = _185 + _186 + 32
        u = _185 + ceil32(return_data.size) + 32
        while s < _187:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if _187 < 1:
            revert with 'NH{q', 17
        if _187 - 1 >= _187:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[(32 * _187 - 1) + _185 + ceil32(return_data.size) + 32]
        continue 
    if s < cd[100]:
        revert with 0, 'Not enough tokens'
    if idx >= mem[96]:
        revert with 'NH{q', 50
    _149 = mem[(32 * idx) + 128]
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = s
    require ext_code.size(address(_149))
    call address(_149).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, s
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _158 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_158] == bool(mem[_158])
    return s
}



}
