contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_c0ca9ab8(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 4).length) + 97 < 96 or floor32(('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _37 = mem[64]
        if mem[64] + floor32(cd[(cd[4] + cd[s] + 36)]) + 1 < mem[64] or mem[64] + floor32(cd[(cd[4] + cd[s] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + floor32(cd[(cd[4] + cd[s] + 36)]) + 1
        mem[_37] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + (32 * cd[(cd[4] + cd[s] + 36)]) + 68 <= calldata.size
        u = cd[4] + cd[s] + 68
        v = _37 + 32
        w = 64
        w = 0
        while w < cd[(cd[4] + cd[s] + 36)]:
            require cd[u] == address(cd[u])
            mem[v] = cd[u]
            u = u + 32
            v = v + 32
            w = cd[u]
            w = w + 1
            continue 
        mem[t] = _37
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _31 = mem[64]
    mem[mem[64]] = 64
    mem[64] = mem[64] + 96
    mem[_31 + 32 len 64] = call.data[calldata.size len 64]
    _32 = mem[96]
    mem[_31 + 32] = 32
    idx = 0
    s = 0
    while idx < _32:
        if idx >= mem[96]:
            revert with 0, 50
        _62 = mem[(32 * idx) + 128]
        _63 = mem[mem[(32 * idx) + 128]]
        if s > !mem[mem[(32 * idx) + 128]]:
            revert with 0, 17
        t = 0
        u = _31
        while t < _63:
            if t >= mem[_62]:
                revert with 0, 50
            _88 = mem[(32 * t) + _62 + 32]
            _90 = mem[64]
            mem[mem[64]] = 12
            mem[64] = mem[64] + 64
            mem[_90 + 32 len 12] = call.data[calldata.size len 12]
            _95 = mem[u]
            idx = 0
            while idx < _95:
                mem[idx + _90 + 96] = mem[u + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_95) <= _95:
                _108 = mem[_90]
                idx = 0
                while idx < mem[_90]:
                    mem[idx + _95 + _90 + 96] = mem[_90 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[mem[_90] + _95 + _90 + 96] = address(_88)
                if ceil32(mem[_90]) <= mem[_90]:
                    _118 = mem[64]
                    mem[mem[64]] = mem[_90] + _95 + _90 + -mem[64] + 84
                    mem[64] = _108 + _95 + _90 + 116
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    u = _118
                    continue 
                _120 = mem[64]
                mem[mem[64]] = mem[_90] + _95 + _90 + -mem[64] + 84
                mem[64] = _108 + _95 + _90 + 116
                if t == -1:
                    revert with 0, 17
                t = t + 1
                u = _120
                continue 
            mem[_90 + _95 + 96] = 0
            _109 = mem[_90]
            idx = 0
            while idx < mem[_90]:
                mem[idx + _95 + _90 + 96] = mem[_90 + idx + 32]
                idx = idx + 32
                continue 
            mem[mem[_90] + _95 + _90 + 96] = address(_88)
            if ceil32(mem[_90]) <= mem[_90]:
                _119 = mem[64]
                mem[mem[64]] = mem[_90] + _95 + _90 + -mem[64] + 84
                mem[64] = _109 + _95 + _90 + 116
                if t == -1:
                    revert with 0, 17
                t = t + 1
                u = _119
                continue 
            _121 = mem[64]
            mem[mem[64]] = mem[_90] + _95 + _90 + -mem[64] + 84
            mem[64] = _109 + _95 + _90 + 116
            if t == -1:
                revert with 0, 17
            t = t + 1
            u = _121
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + _63
        continue 
    mem[_31 + 64] = s
    _60 = mem[_31]
    require mem[_31] >= 32
    _64 = mem[_31 + 32]
    require mem[_31 + 32] <= test266151307()
    require _31 + mem[_31] + 32 > _31 + mem[_31 + 32] + 63
    _65 = mem[_31 + mem[_31 + 32] + 32]
    if mem[_31 + mem[_31 + 32] + 32] > test266151307():
        revert with 0, 65
    _68 = mem[64]
    if mem[64] + floor32(mem[_31 + mem[_31 + 32] + 32]) + 1 < mem[64] or mem[64] + floor32(mem[_31 + mem[_31 + 32] + 32]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + floor32(mem[_31 + mem[_31 + 32] + 32]) + 1
    mem[_68] = _65
    require _60 + 32 >= _64 + (32 * _65) + 64
    s = _31 + _64 + 64
    t = _68 + 32
    idx = 0
    while idx < _65:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _89 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _65
    idx = 0
    s = mem[64] + 64
    t = _68 + 32
    while idx < _65:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _89 + (32 * _65) + -mem[64] + 64
}



}
