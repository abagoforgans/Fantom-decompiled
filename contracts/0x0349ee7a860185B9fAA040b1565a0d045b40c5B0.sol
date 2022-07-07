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
    s = 0
    t = 0
    while idx < ('cd', 4).length:
        _79 = mem[64]
        mem[64] = mem[64] + 64
        mem[_79] = 22
        mem[_79 + 32] = 'accountLiquidity(user)' << 80
        if idx >= mem[96]:
            revert with 0, 50
        _85 = mem[64]
        mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
        _87 = mem[64]
        mem[mem[64]] = 36
        mem[64] = mem[64] + 68
        mem[_87 + 32] = Mask(32, 224, sha3('accountLiquidity(user)')) or mem[_87 + 36 len 28]
        _90 = mem[_87]
        u = 0
        while u < _90:
            mem[u + _85 + 68] = mem[_87 + u + 32]
            u = u + 32
            continue 
        if ceil32(_90) <= _90:
            staticcall address(cd[36]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _90 + _85 + -mem[64] + 64]
            if not return_data.size:
                require mem[96] >= 64
                if not mem[128]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[128]
                t = mem[(32 * idx) + 128]
                continue 
            _118 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_118] = return_data.size
            mem[_118 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not mem[_118 + 32]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= mem[96]:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_118 + 32]
            t = mem[(32 * idx) + 128]
            continue 
        mem[_85 + _90 + 68] = 0
        staticcall address(cd[36]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _90 + _85 + -mem[64] + 64]
        if not return_data.size:
            require mem[96] >= 64
            if not mem[128]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= mem[96]:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[128]
            t = mem[(32 * idx) + 128]
            continue 
        _122 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_122] = return_data.size
        mem[_122 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not mem[_122 + 32]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            t = t
            continue 
        if idx >= mem[96]:
            revert with 0, 50
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = mem[_122 + 32]
        t = mem[(32 * idx) + 128]
        continue 
    return 0
}



}
