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
    _135 = mem[128]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 102] = msg.sender
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 134] = this.address
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 166] = cd[68]
    require ext_code.size(address(_135))
    call address(_135).0x23b872dd with:
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
        _209 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _212 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(_212)
        require ext_code.size(address(_209))
        staticcall address(_209).allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), address(_212)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _217 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_217] == mem[_217]
        if mem[_217] >= s:
            _223 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_223 + 32 len 64] = call.data[calldata.size len 64]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[_223]:
                revert with 'NH{q', 50
            mem[_223 + 32] = mem[(32 * idx) + 140 len 20]
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            if 1 >= mem[_223]:
                revert with 'NH{q', 50
            mem[_223 + 64] = mem[(32 * idx + 1) + 140 len 20]
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            _235 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
            mem[_223 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_223 + 100] = s
            mem[_223 + 132] = 0
            mem[_223 + 164] = 160
            mem[_223 + 260] = mem[_223]
            s = 0
            t = _223 + 32
            u = _223 + 292
            while s < mem[_223]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_223 + 196] = this.address
            mem[_223 + 228] = cd[132]
            require ext_code.size(address(_235))
            call address(_235).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _223 + (32 * mem[_223]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _274 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _276 = mem[_274]
            require mem[_274] <= test266151307()
            require _274 + mem[_274] + 31 < _274 + return_data.size
            _278 = mem[_274 + mem[_274]]
            if mem[_274 + mem[_274]] > test266151307():
                revert with 'NH{q', 65
            if _274 + ceil32(return_data.size) + floor32(mem[_274 + mem[_274]]) + 1 > test266151307() or floor32(mem[_274 + mem[_274]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _274 + ceil32(return_data.size) + floor32(mem[_274 + mem[_274]]) + 1
            mem[_274 + ceil32(return_data.size)] = _278
            require _276 + (32 * _278) + 32 <= return_data.size
            s = 0
            t = _274 + _276 + 32
            u = _274 + ceil32(return_data.size) + 32
            while s < _278:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            if _278 < 1:
                revert with 'NH{q', 17
            if _278 - 1 >= _278:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[(32 * _278 - 1) + _274 + ceil32(return_data.size) + 32]
            continue 
        mem[mem[64] + 4] = address(_212)
        mem[mem[64] + 36] = s
        require ext_code.size(address(_209))
        call address(_209).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(_212), s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _233 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_233] == bool(mem[_233])
        _238 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_238 + 32 len 64] = call.data[calldata.size len 64]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if 0 >= mem[_238]:
            revert with 'NH{q', 50
        mem[_238 + 32] = mem[(32 * idx) + 140 len 20]
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= mem[96]:
            revert with 'NH{q', 50
        if 1 >= mem[_238]:
            revert with 'NH{q', 50
        mem[_238 + 64] = mem[(32 * idx + 1) + 140 len 20]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _248 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        mem[_238 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_238 + 100] = s
        mem[_238 + 132] = 0
        mem[_238 + 164] = 160
        mem[_238 + 260] = mem[_238]
        s = 0
        t = _238 + 32
        u = _238 + 292
        while s < mem[_238]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_238 + 196] = this.address
        mem[_238 + 228] = cd[132]
        require ext_code.size(address(_248))
        call address(_248).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _238 + (32 * mem[_238]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _275 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _277 = mem[_275]
        require mem[_275] <= test266151307()
        require _275 + mem[_275] + 31 < _275 + return_data.size
        _279 = mem[_275 + mem[_275]]
        if mem[_275 + mem[_275]] > test266151307():
            revert with 'NH{q', 65
        if _275 + ceil32(return_data.size) + floor32(mem[_275 + mem[_275]]) + 1 > test266151307() or floor32(mem[_275 + mem[_275]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _275 + ceil32(return_data.size) + floor32(mem[_275 + mem[_275]]) + 1
        mem[_275 + ceil32(return_data.size)] = _279
        require _277 + (32 * _279) + 32 <= return_data.size
        s = 0
        t = _275 + _277 + 32
        u = _275 + ceil32(return_data.size) + 32
        while s < _279:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if _279 < 1:
            revert with 'NH{q', 17
        if _279 - 1 >= _279:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[(32 * _279 - 1) + _275 + ceil32(return_data.size) + 32]
        continue 
    if s < cd[100]:
        revert with 0, 'Not enough tokens'
    if idx >= mem[96]:
        revert with 'NH{q', 50
    _211 = mem[(32 * idx) + 128]
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = s
    require ext_code.size(address(_211))
    call address(_211).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, s
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _220 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_220] == bool(mem[_220])
    return s
}



}
