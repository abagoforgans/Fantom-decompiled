contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_f7a1e5f6(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
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
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _120 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[36] + cd[s] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[36] + cd[s] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[36] + cd[s] + 36)]) + 1
        mem[_120] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + (32 * cd[(cd[36] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[36] + cd[s] + 68
        w = _120 + 32
        while u < cd[(cd[36] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _120
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _118 = mem[96]
    if mem[96] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 2 * mem[96] > test266151307():
        revert with 0, 65
    _119 = mem[64]
    mem[mem[64]] = 2 * mem[96]
    mem[64] = mem[64] + (64 * _118) + 32
    if not uint255(_118):
        if var84002 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if var88002 < var88001:
            _567 = mem[ceil32(32 * ('cd', 4).length) + 97]
            idx = var94002 / 2
            s = var94006
            while idx < _567:
                if 0 >= mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]:
                    revert with 0, 50
                _573 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32]
                if s / 2 >= mem[96]:
                    revert with 0, 50
                _577 = mem[(16 * Mask(251, 1, s)) + 128]
                mem[mem[64] + 4] = mem[(16 * Mask(251, 1, s)) + 140 len 20]
                require ext_code.size(address(_573))
                staticcall address(_573).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_577)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _583 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s >= mem[_119]:
                    revert with 0, 50
                mem[(32 * s) + _119 + 32] = mem[_583]
                if s / 2 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 0, 50
                if 1 >= mem[mem[(16 * Mask(251, 1, s)) + ceil32(32 * ('cd', 4).length) + 129]]:
                    revert with 0, 50
                _595 = mem[mem[(16 * Mask(251, 1, s)) + ceil32(32 * ('cd', 4).length) + 129] + 64]
                if s / 2 >= mem[96]:
                    revert with 0, 50
                _599 = mem[(16 * Mask(251, 1, s)) + 128]
                mem[mem[64] + 4] = mem[(16 * Mask(251, 1, s)) + 140 len 20]
                require ext_code.size(address(_595))
                staticcall address(_595).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_599)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _605 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if 1 > !s:
                    revert with 0, 17
                if s + 1 >= mem[_119]:
                    revert with 0, 50
                mem[(32 * s + 1) + _119 + 32] = mem[_605]
                if s > -3:
                    revert with 0, 17
                if mem[96] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if s + 2 < 2 * mem[96]:
                    _567 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = s + 2 / 2
                    s = s + 2
                    continue 
                _613 = mem[64]
                mem[mem[64]] = 32
                _615 = mem[_119]
                mem[mem[64] + 32] = mem[_119]
                idx = 0
                s = mem[64] + 64
                t = _119 + 32
                while idx < _615:
                    mem[s] = mem[t]
                    _567 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _613 + (32 * _615) + -mem[64] + 64
            revert with 0, 50
    else:
        mem[_119 + 32 len 64 * _118] = call.data[calldata.size len 64 * _118]
        if var85002 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if var89002 < var89001:
            _568 = mem[ceil32(32 * ('cd', 4).length) + 97]
            idx = var95002 / 2
            s = var95006
            while idx < _568:
                if 0 >= mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]:
                    revert with 0, 50
                _574 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32]
                if s / 2 >= mem[96]:
                    revert with 0, 50
                _579 = mem[(16 * Mask(251, 1, s)) + 128]
                mem[mem[64] + 4] = mem[(16 * Mask(251, 1, s)) + 140 len 20]
                require ext_code.size(address(_574))
                staticcall address(_574).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_579)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _584 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s >= mem[_119]:
                    revert with 0, 50
                mem[(32 * s) + _119 + 32] = mem[_584]
                if s / 2 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 0, 50
                if 1 >= mem[mem[(16 * Mask(251, 1, s)) + ceil32(32 * ('cd', 4).length) + 129]]:
                    revert with 0, 50
                _596 = mem[mem[(16 * Mask(251, 1, s)) + ceil32(32 * ('cd', 4).length) + 129] + 64]
                if s / 2 >= mem[96]:
                    revert with 0, 50
                _601 = mem[(16 * Mask(251, 1, s)) + 128]
                mem[mem[64] + 4] = mem[(16 * Mask(251, 1, s)) + 140 len 20]
                require ext_code.size(address(_596))
                staticcall address(_596).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_601)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _606 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if 1 > !s:
                    revert with 0, 17
                if s + 1 >= mem[_119]:
                    revert with 0, 50
                mem[(32 * s + 1) + _119 + 32] = mem[_606]
                if s > -3:
                    revert with 0, 17
                if mem[96] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if s + 2 < 2 * mem[96]:
                    _568 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = s + 2 / 2
                    s = s + 2
                    continue 
                _614 = mem[64]
                mem[mem[64]] = 32
                _616 = mem[_119]
                mem[mem[64] + 32] = mem[_119]
                idx = 0
                s = mem[64] + 64
                t = _119 + 32
                while idx < _616:
                    mem[s] = mem[t]
                    _568 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _614 + (32 * _616) + -mem[64] + 64
            revert with 0, 50
    mem[_119 + (64 * _118) + 32] = 32
    mem[_119 + (64 * _118) + 64] = mem[_119]
    mem[_119 + (64 * _118) + 96 len 32 * mem[_119]] = mem[_119 + 32 len 32 * mem[_119]]
    return memory
      from mem[64]
       len _119 + (64 * _118) + (32 * mem[_119]) + -mem[64] + 96
}



}
