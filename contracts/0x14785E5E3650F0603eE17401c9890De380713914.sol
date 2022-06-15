contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function allowances(address arg1, address[] arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 0, 65
    mem[96] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    s = arg2 + 36
    idx = 0
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if floor32(arg2.length) + floor32(arg3.length) + 98 > test266151307() or floor32(arg3.length) + 98 < 97:
        revert with 0, 65
    mem[64] = floor32(arg2.length) + floor32(arg3.length) + 98
    mem[floor32(arg2.length) + 97] = arg3.length
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    s = arg3 + 36
    idx = 0
    t = floor32(arg2.length) + 129
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    idx = 0
    while idx < arg2.length:
        _129 = mem[floor32(arg2.length) + 97]
        t = 0
        s = 0
        while s < _129:
            if idx >= mem[96]:
                revert with 0, 50
            _133 = mem[(32 * idx) + 128]
            if s >= mem[floor32(arg2.length) + 97]:
                revert with 0, 50
            _137 = mem[(32 * s) + floor32(arg2.length) + 129]
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = address(_137)
            require ext_code.size(address(_133))
            staticcall address(_133).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(arg1), address(_137)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _150 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_150]:
                if s == -1:
                    revert with 0, 17
                _129 = mem[floor32(arg2.length) + 97]
                t = t
                s = s + 1
                continue 
            if t == -1:
                revert with 0, 17
            if s == -1:
                revert with 0, 17
            _129 = mem[floor32(arg2.length) + 97]
            t = t + 1
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _98 = mem[64]
    mem[mem[64]] = 0
    mem[64] = mem[64] + 32
    _128 = mem[96]
    idx = 0
    while idx < _128:
        _157 = mem[floor32(arg2.length) + 97]
        t = 0
        s = 0
        while s < _157:
            if s >= mem[floor32(arg2.length) + 97]:
                revert with 0, 50
            _165 = mem[(32 * s) + floor32(arg2.length) + 129]
            if idx >= mem[96]:
                revert with 0, 50
            _167 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = address(_165)
            require ext_code.size(address(_167))
            staticcall address(_167).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(arg1), address(_165)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _170 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _171 = mem[_170]
            if not mem[_170]:
                if s == -1:
                    revert with 0, 17
                _128 = mem[96]
                _157 = mem[floor32(arg2.length) + 97]
                t = t
                s = s + 1
                continue 
            _172 = mem[64]
            mem[64] = mem[64] + 128
            mem[_172] = arg1
            mem[_172 + 32] = address(_165)
            mem[_172 + 64] = _171
            mem[_172 + 96] = address(_167)
            if t >= mem[_98]:
                revert with 0, 50
            mem[(32 * t) + _98 + 32] = _172
            if t == -1:
                revert with 0, 17
            if s == -1:
                revert with 0, 17
            _128 = mem[96]
            _157 = mem[floor32(arg2.length) + 97]
            t = t + 1
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        _128 = mem[96]
        idx = idx + 1
        continue 
    _131 = mem[64]
    mem[mem[64]] = 32
    _135 = mem[_98]
    mem[mem[64] + 32] = mem[_98]
    s = 0
    t = _98 + 32
    u = mem[64] + 64
    while s < _135:
        _158 = mem[t]
        mem[u] = mem[mem[t] + 12 len 20]
        mem[u + 32] = mem[_158 + 44 len 20]
        mem[u + 64] = mem[_158 + 64]
        mem[u + 96] = mem[_158 + 108 len 20]
        s = s + 1
        t = t + 32
        u = u + 128
        continue 
    return memory
      from mem[64]
       len _131 + (128 * _135) + -mem[64] + 64
}



}
