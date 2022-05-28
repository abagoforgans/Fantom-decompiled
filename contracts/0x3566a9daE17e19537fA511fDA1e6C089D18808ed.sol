contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getReserves(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if 2 * arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + 97] = 2 * arg1.length
    mem[64] = floor32(arg1.length) + (64 * arg1.length) + 129
    if not uint255(arg1.length):
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _72 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_72] == mem[_72 + 18 len 14]
            _81 = mem[_72 + 32]
            require mem[_72 + 32] == mem[_72 + 50 len 14]
            require mem[_72 + 64] == mem[_72 + 92 len 4]
            if idx and 2 > -1 / idx:
                revert with 'NH{q', 17
            if 2 * idx > -1:
                revert with 'NH{q', 17
            if 2 * idx >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[(64 * idx) + floor32(arg1.length) + 129] = mem[_72 + 18 len 14]
            if idx and 2 > -1 / idx:
                revert with 'NH{q', 17
            if 2 * idx > -2:
                revert with 'NH{q', 17
            if (2 * idx) + 1 >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * (2 * idx) + 1) + floor32(arg1.length) + 129] = Mask(112, 0, _81)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _64 = mem[64]
        mem[mem[64]] = 32
        _74 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + 64
        while idx < _74:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _64 + (32 * _74) + -mem[64] + 64
    mem[floor32(arg1.length) + 129 len 64 * arg1.length] = call.data[calldata.size len 64 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _73 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_73] == mem[_73 + 18 len 14]
        _83 = mem[_73 + 32]
        require mem[_73 + 32] == mem[_73 + 50 len 14]
        require mem[_73 + 64] == mem[_73 + 92 len 4]
        if idx and 2 > -1 / idx:
            revert with 'NH{q', 17
        if 2 * idx > -1:
            revert with 'NH{q', 17
        if 2 * idx >= mem[floor32(arg1.length) + 97]:
            revert with 'NH{q', 50
        mem[(64 * idx) + floor32(arg1.length) + 129] = mem[_73 + 18 len 14]
        if idx and 2 > -1 / idx:
            revert with 'NH{q', 17
        if 2 * idx > -2:
            revert with 'NH{q', 17
        if (2 * idx) + 1 >= mem[floor32(arg1.length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * (2 * idx) + 1) + floor32(arg1.length) + 129] = Mask(112, 0, _83)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _68 = mem[64]
    mem[mem[64]] = 32
    _75 = mem[floor32(arg1.length) + 97]
    mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
    idx = 0
    s = floor32(arg1.length) + 129
    t = mem[64] + 64
    while idx < _75:
        mem[t] = mem[s + 18 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _68 + (32 * _75) + -mem[64] + 64
}

function sub_0f7e01e6(?) payable {
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
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98
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
    idx = 0
    s = cd[68]
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _114 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20]
        mem[mem[64] + 36] = s
        require ext_code.size(address(_114))
        call address(_114).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _122 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_122] == bool(mem[_122])
        _124 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_124 + 32 len 64] = call.data[calldata.size len 64]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if 0 >= mem[_124]:
            revert with 'NH{q', 50
        mem[_124 + 32] = mem[(32 * idx) + 140 len 20]
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= mem[96]:
            revert with 'NH{q', 50
        if 1 >= mem[_124]:
            revert with 'NH{q', 50
        mem[_124 + 64] = mem[(32 * idx + 1) + 140 len 20]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _132 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        mem[_124 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_124 + 100] = s
        mem[_124 + 132] = 0
        mem[_124 + 164] = 160
        mem[_124 + 260] = mem[_124]
        s = 0
        t = _124 + 32
        u = _124 + 292
        while s < mem[_124]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_124 + 196] = this.address
        mem[_124 + 228] = cd[132]
        require ext_code.size(address(_132))
        call address(_132).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _124 + (32 * mem[_124]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _147 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _148 = mem[_147]
        require mem[_147] <= test266151307()
        require _147 + mem[_147] + 31 < _147 + return_data.size
        _149 = mem[_147 + mem[_147]]
        if mem[_147 + mem[_147]] > test266151307():
            revert with 'NH{q', 65
        if _147 + ceil32(return_data.size) + floor32(mem[_147 + mem[_147]]) + 1 > test266151307() or floor32(mem[_147 + mem[_147]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _147 + ceil32(return_data.size) + floor32(mem[_147 + mem[_147]]) + 1
        mem[_147 + ceil32(return_data.size)] = _149
        require _148 + (32 * _149) + 32 <= return_data.size
        s = 0
        t = _147 + _148 + 32
        u = _147 + ceil32(return_data.size) + 32
        while s < _149:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if _149 < 1:
            revert with 'NH{q', 17
        if _149 - 1 >= _149:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[(32 * _149 - 1) + _147 + ceil32(return_data.size) + 32]
        continue 
    if s < cd[100]:
        revert with 0, 'Not enough tokens'
    return s
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
    call address(_98).0x23b872dd with:
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
        mem[mem[64] + 36] = s
        require ext_code.size(address(_147))
        call address(_147).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _157 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_157] == bool(mem[_157])
        _161 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_161 + 32 len 64] = call.data[calldata.size len 64]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if 0 >= mem[_161]:
            revert with 'NH{q', 50
        mem[_161 + 32] = mem[(32 * idx) + 140 len 20]
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= mem[96]:
            revert with 'NH{q', 50
        if 1 >= mem[_161]:
            revert with 'NH{q', 50
        mem[_161 + 64] = mem[(32 * idx + 1) + 140 len 20]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _170 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        mem[_161 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_161 + 100] = s
        mem[_161 + 132] = 0
        mem[_161 + 164] = 160
        mem[_161 + 260] = mem[_161]
        s = 0
        t = _161 + 32
        u = _161 + 292
        while s < mem[_161]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_161 + 196] = this.address
        mem[_161 + 228] = cd[132]
        require ext_code.size(address(_170))
        call address(_170).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _161 + (32 * mem[_161]) + -mem[64] + 288]
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
    if ('cd', 36).length >= mem[96]:
        revert with 'NH{q', 50
    _149 = mem[(32 * ('cd', 36).length) + 128]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = s
    require ext_code.size(address(_149))
    call address(_149).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, s
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _156 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_156] == bool(mem[_156])
    return s
}

function sub_7bc4ef6b(?) payable {
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
    call address(_98).0x23b872dd with:
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
        _150 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20]
        mem[mem[64] + 36] = s
        require ext_code.size(address(_150))
        call address(_150).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _160 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_160] == bool(mem[_160])
        _164 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_164 + 32 len 64] = call.data[calldata.size len 64]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if 0 >= mem[_164]:
            revert with 'NH{q', 50
        mem[_164 + 32] = mem[(32 * idx) + 140 len 20]
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= mem[96]:
            revert with 'NH{q', 50
        if 1 >= mem[_164]:
            revert with 'NH{q', 50
        mem[_164 + 64] = mem[(32 * idx + 1) + 140 len 20]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _173 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        mem[_164 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_164 + 100] = s
        mem[_164 + 132] = 0
        mem[_164 + 164] = 160
        mem[_164 + 260] = mem[_164]
        s = 0
        t = _164 + 32
        u = _164 + 292
        while s < mem[_164]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_164 + 196] = this.address
        mem[_164 + 228] = cd[132]
        require ext_code.size(address(_173))
        call address(_173).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _164 + (32 * mem[_164]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _191 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _192 = mem[_191]
        require mem[_191] <= test266151307()
        require _191 + mem[_191] + 31 < _191 + return_data.size
        _193 = mem[_191 + mem[_191]]
        if mem[_191 + mem[_191]] > test266151307():
            revert with 'NH{q', 65
        if _191 + ceil32(return_data.size) + floor32(mem[_191 + mem[_191]]) + 1 > test266151307() or floor32(mem[_191 + mem[_191]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _191 + ceil32(return_data.size) + floor32(mem[_191 + mem[_191]]) + 1
        mem[_191 + ceil32(return_data.size)] = _193
        require _192 + (32 * _193) + 32 <= return_data.size
        s = 0
        t = _191 + _192 + 32
        u = _191 + ceil32(return_data.size) + 32
        while s < _193:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= mem[96]:
            revert with 'NH{q', 50
        _204 = mem[(32 * idx + 1) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_204))
        staticcall address(_204).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _207 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_207] == mem[_207]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[_207]
        continue 
    if s < cd[100]:
        revert with 0, 'Not enough tokens'
    if ('cd', 36).length >= mem[96]:
        revert with 'NH{q', 50
    _152 = mem[(32 * ('cd', 36).length) + 128]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = s
    require ext_code.size(address(_152))
    call address(_152).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, s
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _159 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_159] == bool(mem[_159])
    return s
}



}
