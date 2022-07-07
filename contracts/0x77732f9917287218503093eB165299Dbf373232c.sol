contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_7e8f91ea(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 0, 65
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] == address(cd[36])
    idx = 0
    while idx < ('cd', 4).length:
        _95 = mem[64]
        mem[64] = mem[64] + 64
        mem[_95] = 22
        mem[_95 + 32] = 'accountLiquidity(user)' << 80
        if idx >= mem[96]:
            revert with 0, 50
        _100 = mem[64]
        mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
        _102 = mem[64]
        mem[mem[64]] = 36
        mem[64] = mem[64] + 68
        mem[_102 + 32] = Mask(32, 224, sha3('accountLiquidity(user)')) or mem[_102 + 36 len 28]
        _106 = mem[_102]
        s = 0
        while s < _106:
            mem[s + _100 + 68] = mem[_102 + s + 32]
            s = s + 32
            continue 
        if ceil32(_106) <= _106:
            staticcall address(cd[36]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _106 + _100 + -mem[64] + 64]
            if not return_data.size:
                require mem[96] >= 64
                _149 = mem[128]
                if not mem[128]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                mem[mem[64]] = mem[(32 * idx) + 140 len 20]
                return mem[mem[64]], _149
            _142 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_142] = return_data.size
            mem[_142 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            _151 = mem[_142 + 32]
            if not mem[_142 + 32]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[64]] = mem[(32 * idx) + 140 len 20]
            return mem[mem[64]], _151
        mem[_100 + _106 + 68] = 0
        staticcall address(cd[36]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _106 + _100 + -mem[64] + 64]
        if not return_data.size:
            require mem[96] >= 64
            _153 = mem[128]
            if not mem[128]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[64]] = mem[(32 * idx) + 140 len 20]
            return mem[mem[64]], _153
        _146 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_146] = return_data.size
        mem[_146 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        _155 = mem[_146 + 32]
        if not mem[_146 + 32]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= mem[96]:
            revert with 0, 50
        mem[mem[64]] = mem[(32 * idx) + 140 len 20]
        return mem[mem[64]], _155
    return 0
}



}
