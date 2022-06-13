contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_30616c5d(?) payable {
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
        require cd[s] == cd[s]
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
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'ERR1'
    idx = 0
    while idx < ('cd', 68).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        _65 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
        _66 = mem[64]
        mem[mem[64] + 36] = mem[(32 * idx) + 128]
        mem[mem[64] + 68] = _65
        _67 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_67 + 32] = mem[_67 + 36 len 28] or 0x92bf47db00000000000000000000000000000000000000000000000000000000
        _70 = mem[_67]
        s = 0
        while s < _70:
            mem[_66 + s + 100] = mem[_67 + s + 32]
            s = s + 32
            continue 
        if ceil32(_70) <= _70:
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _66 + _70 + -mem[64] + 96]
            if return_data.size:
                _78 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_78] = return_data.size
                mem[_78 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_66 + _70 + 100] = 0
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _66 + _70 + -mem[64] + 96]
            if return_data.size:
                _80 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_80] = return_data.size
                mem[_80 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
