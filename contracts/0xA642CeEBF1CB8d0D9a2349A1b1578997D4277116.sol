contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_95e38dcd(?) payable {
    require calldata.size - 4 >= 32
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
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        s = 0
        t = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _92 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _97 = mem[_92]
            require mem[_92] == mem[_92]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _102 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_102))
            call address(_102).harvest() with:
                 gas gas_remaining wei
            if not ext_call.success:
                if s < _97:
                    revert with 'NH{q', 17
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = s - _97
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = _97
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _114 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _116 = mem[_114]
            require mem[_114] == mem[_114]
            if mem[_114] < _97:
                revert with 'NH{q', 17
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_114] - _97
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _116
            t = _97
            continue 
        mem[mem[64]] = 32
        _88 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 64 len 32 * _88] = mem[floor32(('cd', 4).length) + 129 len 32 * _88]
        return 32, mem[mem[64] + 32 len (32 * _88) + 32]
    mem[floor32(('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    s = 0
    t = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _93 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _99 = mem[_93]
        require mem[_93] == mem[_93]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _105 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(_105))
        call address(_105).harvest() with:
             gas gas_remaining wei
        if not ext_call.success:
            if s < _99:
                revert with 'NH{q', 17
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = s - _99
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = _99
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _115 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _117 = mem[_115]
        require mem[_115] == mem[_115]
        if mem[_115] < _99:
            revert with 'NH{q', 17
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_115] - _99
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _117
        t = _99
        continue 
    mem[mem[64]] = 32
    _89 = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 64 len 32 * _89] = mem[floor32(('cd', 4).length) + 129 len 32 * _89]
    return 32, mem[mem[64] + 32 len (32 * _89) + 32]
}



}
