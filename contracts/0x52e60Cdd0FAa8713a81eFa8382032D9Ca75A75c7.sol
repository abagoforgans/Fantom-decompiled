contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_acb13cd6(?) payable {
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
        if var78002 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if var82002 >= var82001:
            mem[_119 + (64 * _118) + 32] = 32
            mem[_119 + (64 * _118) + 64] = mem[_119]
            mem[_119 + (64 * _118) + 96 len 32 * mem[_119]] = mem[_119 + 32 len 32 * mem[_119]]
            return memory
              from mem[64]
               len _119 + (64 * _118) + (32 * mem[_119]) + -mem[64] + 96
        if var84001 < mem[ceil32(32 * ('cd', 4).length) + 97]:
            _461 = mem[(32 * var84001) + ceil32(32 * ('cd', 4).length) + 129]
            _462 = mem[mem[(32 * var84001) + ceil32(32 * ('cd', 4).length) + 129]]
            s = var84001
            t = var84001
            while 0 < _462:
                _465 = mem[_461 + 32]
                if t / 2 >= mem[96]:
                    revert with 0, 50
                _469 = mem[(16 * Mask(251, 1, t)) + 128]
                mem[mem[64] + 4] = mem[(16 * Mask(251, 1, t)) + 140 len 20]
                require ext_code.size(address(_465))
                staticcall address(_465).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_469)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _475 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t >= mem[_119]:
                    revert with 0, 50
                mem[(32 * t) + _119 + 32] = mem[_475]
                if t >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 0, 50
                if 1 >= mem[mem[(32 * t) + ceil32(32 * ('cd', 4).length) + 129]]:
                    revert with 0, 50
                _487 = mem[mem[(32 * t) + ceil32(32 * ('cd', 4).length) + 129] + 64]
                if t / 2 >= mem[96]:
                    revert with 0, 50
                _491 = mem[(16 * Mask(251, 1, t)) + 128]
                mem[mem[64] + 4] = mem[(16 * Mask(251, 1, t)) + 140 len 20]
                require ext_code.size(address(_487))
                staticcall address(_487).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_491)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _497 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if 1 > !t:
                    revert with 0, 17
                if t + 1 >= mem[_119]:
                    revert with 0, 50
                mem[(32 * t + 1) + _119 + 32] = mem[_497]
                if t == -1:
                    revert with 0, 17
                if mem[96] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if t + 1 < 2 * mem[96]:
                    if t + 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    _461 = mem[(32 * t + 2) + ceil32(32 * ('cd', 4).length) + 129]
                    _462 = mem[mem[(32 * t + 2) + ceil32(32 * ('cd', 4).length) + 129]]
                    s = t + 1
                    t = t + 1
                    continue 
                _507 = mem[64]
                mem[mem[64]] = 32
                _509 = mem[_119]
                mem[mem[64] + 32] = mem[_119]
                idx = 0
                t = mem[64] + 64
                u = _119 + 32
                while idx < _509:
                    mem[t] = mem[u]
                    _461 = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 129]
                    _462 = mem[mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 129]]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len _507 + (32 * _509) + -mem[64] + 64
    else:
        mem[_119 + 32 len 64 * _118] = call.data[calldata.size len 64 * _118]
        if var79002 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if var83002 >= var83001:
            mem[_119 + (64 * _118) + 32] = 32
            mem[_119 + (64 * _118) + 64] = mem[_119]
            mem[_119 + (64 * _118) + 96 len 32 * mem[_119]] = mem[_119 + 32 len 32 * mem[_119]]
            return memory
              from mem[64]
               len _119 + (64 * _118) + (32 * mem[_119]) + -mem[64] + 96
        if var85001 < mem[ceil32(32 * ('cd', 4).length) + 97]:
            _463 = mem[(32 * var85001) + ceil32(32 * ('cd', 4).length) + 129]
            _464 = mem[mem[(32 * var85001) + ceil32(32 * ('cd', 4).length) + 129]]
            s = var85001
            t = var85001
            while 0 < _464:
                _466 = mem[_463 + 32]
                if t / 2 >= mem[96]:
                    revert with 0, 50
                _471 = mem[(16 * Mask(251, 1, t)) + 128]
                mem[mem[64] + 4] = mem[(16 * Mask(251, 1, t)) + 140 len 20]
                require ext_code.size(address(_466))
                staticcall address(_466).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_471)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _476 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t >= mem[_119]:
                    revert with 0, 50
                mem[(32 * t) + _119 + 32] = mem[_476]
                if t >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 0, 50
                if 1 >= mem[mem[(32 * t) + ceil32(32 * ('cd', 4).length) + 129]]:
                    revert with 0, 50
                _488 = mem[mem[(32 * t) + ceil32(32 * ('cd', 4).length) + 129] + 64]
                if t / 2 >= mem[96]:
                    revert with 0, 50
                _493 = mem[(16 * Mask(251, 1, t)) + 128]
                mem[mem[64] + 4] = mem[(16 * Mask(251, 1, t)) + 140 len 20]
                require ext_code.size(address(_488))
                staticcall address(_488).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_493)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _498 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if 1 > !t:
                    revert with 0, 17
                if t + 1 >= mem[_119]:
                    revert with 0, 50
                mem[(32 * t + 1) + _119 + 32] = mem[_498]
                if t == -1:
                    revert with 0, 17
                if mem[96] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if t + 1 < 2 * mem[96]:
                    if t + 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    _463 = mem[(32 * t + 2) + ceil32(32 * ('cd', 4).length) + 129]
                    _464 = mem[mem[(32 * t + 2) + ceil32(32 * ('cd', 4).length) + 129]]
                    s = t + 1
                    t = t + 1
                    continue 
                _508 = mem[64]
                mem[mem[64]] = 32
                _510 = mem[_119]
                mem[mem[64] + 32] = mem[_119]
                idx = 0
                t = mem[64] + 64
                u = _119 + 32
                while idx < _510:
                    mem[t] = mem[u]
                    _463 = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 129]
                    _464 = mem[mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 129]]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len _508 + (32 * _510) + -mem[64] + 64
    revert with 0, 50
}



}
