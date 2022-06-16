contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor3;

function _fallback() payable {
    revert
}

function sub_d3896c9f(?) payable {
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
            _198 = mem[64]
            mem[mem[64]] = 12
            mem[mem[64] + 32 len 384] = call.data[calldata.size len 384]
            if idx >= mem[96]:
                revert with 0, 50
            _201 = mem[(32 * idx) + 128]
            mem[mem[64] + 420] = mem[(32 * idx) + 128]
            require ext_code.size(stor1)
            staticcall stor1.claimable(uint256 arg1) with:
                    gas gas_remaining wei
                   args _201
            mem[mem[64] + 416] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size) + 416
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            if 0 >= mem[_198]:
                revert with 0, 50
            mem[_198 + 32] = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor0)
            staticcall stor0.0xc363b9eb with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[_198 + ceil32(return_data.size) + 416 len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _198 + (2 * ceil32(return_data.size)) + 416
            require return_data.size >= 128
            if 1 >= mem[_198]:
                revert with 0, 50
            if 2 >= mem[_198]:
                revert with 0, 50
            if 3 >= mem[_198]:
                revert with 0, 50
            if 4 >= mem[_198]:
                revert with 0, 50
            mem[_198 + 160] = ext_call.return_data[96]
            mem[_198 + 128] = ext_call.return_data[64]
            mem[_198 + 96] = ext_call.return_data[32]
            mem[_198 + 64] = ext_call.return_data[0]
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor3)
            staticcall stor3.ability_scores(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[_198 + (2 * ceil32(return_data.size)) + 416 len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _198 + (4 * ceil32(return_data.size)) + 416
            require return_data.size >= 192
            require ext_call.return_data[0] == ext_call.return_data[28 len 4]
            require ext_call.return_data[32] == ext_call.return_data[60 len 4]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_call.return_data[96] == ext_call.return_data[124 len 4]
            require ext_call.return_data[128] == ext_call.return_data[156 len 4]
            require ext_call.return_data[160] == ext_call.return_data[188 len 4]
            if 5 >= mem[_198]:
                revert with 0, 50
            if 6 >= mem[_198]:
                revert with 0, 50
            if 7 >= mem[_198]:
                revert with 0, 50
            if 8 >= mem[_198]:
                revert with 0, 50
            if 9 >= mem[_198]:
                revert with 0, 50
            if 10 >= mem[_198]:
                revert with 0, 50
            mem[_198 + 352] = ext_call.return_data[188 len 4]
            mem[_198 + 320] = ext_call.return_data[156 len 4]
            mem[_198 + 288] = ext_call.return_data[124 len 4]
            mem[_198 + 256] = ext_call.return_data[92 len 4]
            mem[_198 + 224] = ext_call.return_data[60 len 4]
            mem[_198 + 192] = ext_call.return_data[28 len 4]
            if 11 >= mem[_198]:
                revert with 0, 50
            mem[_198 + 384] = ext_call.return_data[0]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _198
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _200 = mem[64]
        mem[mem[64]] = 32
        _203 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _203) + 64
        while idx < _203:
            mem[t] = u + -_200 - 64
            _294 = mem[s]
            _295 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = u + 32
            x = _294 + 32
            while v < _295:
                mem[w] = mem[x]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _295) + 32
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
            _296 = mem[64]
            mem[mem[64]] = 12
            mem[mem[64] + 32 len 384] = call.data[calldata.size len 384]
            if idx >= mem[96]:
                revert with 0, 50
            _300 = mem[(32 * idx) + 128]
            mem[mem[64] + 420] = mem[(32 * idx) + 128]
            require ext_code.size(stor1)
            staticcall stor1.claimable(uint256 arg1) with:
                    gas gas_remaining wei
                   args _300
            mem[mem[64] + 416] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size) + 416
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            if 0 >= mem[_296]:
                revert with 0, 50
            mem[_296 + 32] = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor0)
            staticcall stor0.0xc363b9eb with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[_296 + ceil32(return_data.size) + 416 len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _296 + (2 * ceil32(return_data.size)) + 416
            require return_data.size >= 128
            if 1 >= mem[_296]:
                revert with 0, 50
            if 2 >= mem[_296]:
                revert with 0, 50
            if 3 >= mem[_296]:
                revert with 0, 50
            if 4 >= mem[_296]:
                revert with 0, 50
            mem[_296 + 160] = ext_call.return_data[96]
            mem[_296 + 128] = ext_call.return_data[64]
            mem[_296 + 96] = ext_call.return_data[32]
            mem[_296 + 64] = ext_call.return_data[0]
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor3)
            staticcall stor3.ability_scores(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[_296 + (2 * ceil32(return_data.size)) + 416 len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _296 + (4 * ceil32(return_data.size)) + 416
            require return_data.size >= 192
            require ext_call.return_data[0] == ext_call.return_data[28 len 4]
            require ext_call.return_data[32] == ext_call.return_data[60 len 4]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_call.return_data[96] == ext_call.return_data[124 len 4]
            require ext_call.return_data[128] == ext_call.return_data[156 len 4]
            require ext_call.return_data[160] == ext_call.return_data[188 len 4]
            if 5 >= mem[_296]:
                revert with 0, 50
            if 6 >= mem[_296]:
                revert with 0, 50
            if 7 >= mem[_296]:
                revert with 0, 50
            if 8 >= mem[_296]:
                revert with 0, 50
            if 9 >= mem[_296]:
                revert with 0, 50
            if 10 >= mem[_296]:
                revert with 0, 50
            mem[_296 + 352] = ext_call.return_data[188 len 4]
            mem[_296 + 320] = ext_call.return_data[156 len 4]
            mem[_296 + 288] = ext_call.return_data[124 len 4]
            mem[_296 + 256] = ext_call.return_data[92 len 4]
            mem[_296 + 224] = ext_call.return_data[60 len 4]
            mem[_296 + 192] = ext_call.return_data[28 len 4]
            if 11 >= mem[_296]:
                revert with 0, 50
            mem[_296 + 384] = ext_call.return_data[0]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _296
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _299 = mem[64]
        mem[mem[64]] = 32
        _303 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _303) + 64
        while idx < _303:
            mem[t] = u + -_299 - 64
            _347 = mem[s]
            _348 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = u + 32
            x = _347 + 32
            while v < _348:
                mem[w] = mem[x]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _348) + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
