contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function TokenTransfer(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if 0x5d2238753f3ca5e649f9250c303d5c196a069f24 != msg.sender:
        if 0x9d3592092e23606e899fb8f05692ed1a3b323f4e != msg.sender:
            if 0x220c54f34d68b4d43fdc42d30e6ac5e6efe56b13 != msg.sender:
                require msg.sender == 0x2dac8c52e54056656da31f0b1d0a1e923d13fc96
    stor0 = arg1
    require ext_code.size(stor0)
    call stor0.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_39451c23(?) {
    require calldata.size - 4 >= 64
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
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0x5d2238753f3ca5e649f9250c303d5c196a069f24 != msg.sender:
        if 0x9d3592092e23606e899fb8f05692ed1a3b323f4e != msg.sender:
            if 0x220c54f34d68b4d43fdc42d30e6ac5e6efe56b13 != msg.sender:
                require msg.sender == 0x2dac8c52e54056656da31f0b1d0a1e923d13fc96
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        call mem[(32 * idx) + 140 len 20] with:
           value mem[(32 * idx) + floor32(('cd', 4).length) + 129] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_7ce62c05(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender == 0x5d2238753f3ca5e649f9250c303d5c196a069f24:
        stor0 = address(cd[4])
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 50
            _128 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 36] = _128
            require ext_code.size(stor0)
            call stor0.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _128
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _140 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_140] == bool(mem[_140])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if msg.sender == 0x9d3592092e23606e899fb8f05692ed1a3b323f4e:
            stor0 = address(cd[4])
            idx = 0
            while idx < ('cd', 36).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                _130 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = _130
                require ext_code.size(stor0)
                call stor0.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _130
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _141 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_141] == bool(mem[_141])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if msg.sender == 0x220c54f34d68b4d43fdc42d30e6ac5e6efe56b13:
                stor0 = address(cd[4])
                idx = 0
                while idx < ('cd', 36).length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    _132 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    mem[mem[64] + 36] = _132
                    require ext_code.size(stor0)
                    call stor0.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _132
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _142 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_142] == bool(mem[_142])
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                require msg.sender == 0x2dac8c52e54056656da31f0b1d0a1e923d13fc96
                stor0 = address(cd[4])
                idx = 0
                while idx < ('cd', 36).length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    _134 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    mem[mem[64] + 36] = _134
                    require ext_code.size(stor0)
                    call stor0.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _134
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _143 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_143] == bool(mem[_143])
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
}



}
