contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor3;

function _fallback() payable {
    revert
}

function sub_ab81bfbf(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            _78 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_78 + 32 len 64] = call.data[calldata.size len 64]
            if idx >= mem[96]:
                revert with 0, 50
            if 0 >= mem[_78]:
                revert with 0, 50
            mem[_78 + 32] = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 0, 50
            _85 = mem[(32 * idx) + 128]
            mem[_78 + 100] = mem[(32 * idx) + 128]
            require ext_code.size(stor1)
            staticcall stor1.claimable(uint256 arg1) with:
                    gas gas_remaining wei
                   args _85
            mem[_78 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _78 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            if 1 >= mem[_78]:
                revert with 0, 50
            mem[_78 + 64] = ext_call.return_data[0]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _78
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _80 = mem[64]
        mem[mem[64]] = 32
        _83 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _83) + 64
        while idx < _83:
            mem[t] = u + -_80 - 64
            _114 = mem[s]
            _115 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = u + 32
            x = _114 + 32
            while v < _115:
                mem[w] = mem[x]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _115) + 32
            continue 
    else:
        mem[ceil32(32 * ('cd', 4).length) + 129] = 96
        s = ceil32(32 * ('cd', 4).length) + 129
        idx = ('cd', 4).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            _116 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_116 + 32 len 64] = call.data[calldata.size len 64]
            if idx >= mem[96]:
                revert with 0, 50
            if 0 >= mem[_116]:
                revert with 0, 50
            mem[_116 + 32] = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 0, 50
            _125 = mem[(32 * idx) + 128]
            mem[_116 + 100] = mem[(32 * idx) + 128]
            require ext_code.size(stor1)
            staticcall stor1.claimable(uint256 arg1) with:
                    gas gas_remaining wei
                   args _125
            mem[_116 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _116 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            if 1 >= mem[_116]:
                revert with 0, 50
            mem[_116 + 64] = ext_call.return_data[0]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _116
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _119 = mem[64]
        mem[mem[64]] = 32
        _123 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _123) + 64
        while idx < _123:
            mem[t] = u + -_119 - 64
            _137 = mem[s]
            _138 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = u + 32
            x = _137 + 32
            while v < _138:
                mem[w] = mem[x]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _138) + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_d6a4249e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            _170 = mem[64]
            mem[mem[64]] = 12
            mem[64] = mem[64] + 416
            mem[_170 + 32 len 384] = call.data[calldata.size len 384]
            if idx >= mem[96]:
                revert with 0, 50
            if 0 >= mem[_170]:
                revert with 0, 50
            mem[_170 + 32] = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor0)
            staticcall stor0.0xc363b9eb with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[_170 + 416 len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _170 + ceil32(return_data.size) + 416
            require return_data.size >= 128
            if 1 >= mem[_170]:
                revert with 0, 50
            if 2 >= mem[_170]:
                revert with 0, 50
            if 3 >= mem[_170]:
                revert with 0, 50
            if 4 >= mem[_170]:
                revert with 0, 50
            mem[_170 + 160] = ext_call.return_data[96]
            mem[_170 + 128] = ext_call.return_data[64]
            mem[_170 + 96] = ext_call.return_data[32]
            mem[_170 + 64] = ext_call.return_data[0]
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor3)
            staticcall stor3.ability_scores(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[_170 + ceil32(return_data.size) + 416 len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _170 + (2 * ceil32(return_data.size)) + 416
            require return_data.size >= 192
            require ext_call.return_data[0] == ext_call.return_data[28 len 4]
            require ext_call.return_data[32] == ext_call.return_data[60 len 4]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_call.return_data[96] == ext_call.return_data[124 len 4]
            require ext_call.return_data[128] == ext_call.return_data[156 len 4]
            require ext_call.return_data[160] == ext_call.return_data[188 len 4]
            if 5 >= mem[_170]:
                revert with 0, 50
            if 6 >= mem[_170]:
                revert with 0, 50
            if 7 >= mem[_170]:
                revert with 0, 50
            if 8 >= mem[_170]:
                revert with 0, 50
            if 9 >= mem[_170]:
                revert with 0, 50
            if 10 >= mem[_170]:
                revert with 0, 50
            mem[_170 + 352] = ext_call.return_data[188 len 4]
            mem[_170 + 320] = ext_call.return_data[156 len 4]
            mem[_170 + 288] = ext_call.return_data[124 len 4]
            mem[_170 + 256] = ext_call.return_data[92 len 4]
            mem[_170 + 224] = ext_call.return_data[60 len 4]
            mem[_170 + 192] = ext_call.return_data[28 len 4]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _170
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _172 = mem[64]
        mem[mem[64]] = 32
        _175 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _175) + 64
        while idx < _175:
            mem[t] = u + -_172 - 64
            _252 = mem[s]
            _253 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = u + 32
            x = _252 + 32
            while v < _253:
                mem[w] = mem[x]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _253) + 32
            continue 
    else:
        mem[ceil32(32 * ('cd', 4).length) + 129] = 96
        s = ceil32(32 * ('cd', 4).length) + 129
        idx = ('cd', 4).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            _254 = mem[64]
            mem[mem[64]] = 12
            mem[64] = mem[64] + 416
            mem[_254 + 32 len 384] = call.data[calldata.size len 384]
            if idx >= mem[96]:
                revert with 0, 50
            if 0 >= mem[_254]:
                revert with 0, 50
            mem[_254 + 32] = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor0)
            staticcall stor0.0xc363b9eb with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[_254 + 416 len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _254 + ceil32(return_data.size) + 416
            require return_data.size >= 128
            if 1 >= mem[_254]:
                revert with 0, 50
            if 2 >= mem[_254]:
                revert with 0, 50
            if 3 >= mem[_254]:
                revert with 0, 50
            if 4 >= mem[_254]:
                revert with 0, 50
            mem[_254 + 160] = ext_call.return_data[96]
            mem[_254 + 128] = ext_call.return_data[64]
            mem[_254 + 96] = ext_call.return_data[32]
            mem[_254 + 64] = ext_call.return_data[0]
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor3)
            staticcall stor3.ability_scores(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[_254 + ceil32(return_data.size) + 416 len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _254 + (2 * ceil32(return_data.size)) + 416
            require return_data.size >= 192
            require ext_call.return_data[0] == ext_call.return_data[28 len 4]
            require ext_call.return_data[32] == ext_call.return_data[60 len 4]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_call.return_data[96] == ext_call.return_data[124 len 4]
            require ext_call.return_data[128] == ext_call.return_data[156 len 4]
            require ext_call.return_data[160] == ext_call.return_data[188 len 4]
            if 5 >= mem[_254]:
                revert with 0, 50
            if 6 >= mem[_254]:
                revert with 0, 50
            if 7 >= mem[_254]:
                revert with 0, 50
            if 8 >= mem[_254]:
                revert with 0, 50
            if 9 >= mem[_254]:
                revert with 0, 50
            if 10 >= mem[_254]:
                revert with 0, 50
            mem[_254 + 352] = ext_call.return_data[188 len 4]
            mem[_254 + 320] = ext_call.return_data[156 len 4]
            mem[_254 + 288] = ext_call.return_data[124 len 4]
            mem[_254 + 256] = ext_call.return_data[92 len 4]
            mem[_254 + 224] = ext_call.return_data[60 len 4]
            mem[_254 + 192] = ext_call.return_data[28 len 4]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _254
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _257 = mem[64]
        mem[mem[64]] = 32
        _261 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _261) + 64
        while idx < _261:
            mem[t] = u + -_257 - 64
            _298 = mem[s]
            _299 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = u + 32
            x = _298 + 32
            while v < _299:
                mem[w] = mem[x]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _299) + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
