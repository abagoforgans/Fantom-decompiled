contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_9bf4af23(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg2 < 2:
        revert with 0, 'too smol'
    if arg2 > 8:
        revert with 0, 'too big'
    idx = 0
    s = 96
    while idx < arg1.length:
        if arg2 + 31 < arg2:
            revert with 0, 'overflow'
        if mem[96] < idx + arg2:
            revert with 0, 'oob'
        if arg2:
            _99 = mem[64]
            u = (arg2 % 32) + (32 * not arg2 % 32) + idx + 96
            t = mem[64] + (arg2 % 32) + (32 * not arg2 % 32)
            while t < _99 + (arg2 % 32) + (32 * not arg2 % 32) + arg2:
                mem[t] = mem[u]
                u = u + 32
                t = t + 32
                continue 
            mem[_99] = arg2
            mem[ceil32(t)] = arg2
            mem[64] = ceil32(t) + ceil32(arg2) + 32
            if not arg2:
                u = 0
                while u < arg2:
                    require u < mem[_99]
                    require mem[_99] + -u - 1 < mem[ceil32(t)]
                    mem[mem[_99] + -u + ceil32(t) + 31 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    u = u + 1
                    continue 
                _221 = mem[64]
                _222 = mem[s]
                mem[mem[64]] = mem[s]
                v = s + 32
                u = mem[64] + 32
                while u < _221 + _222 + 32:
                    mem[u] = mem[v]
                    v = v + 32
                    u = u + 32
                    continue 
                _239 = mem[ceil32(t)]
                mem[_221] = mem[ceil32(t)] + mem[_221]
                v = ceil32(t) + 32
                u = _221 + _222 + 32
                while u < _221 + _222 + _239 + 32:
                    mem[u] = mem[v]
                    v = v + 32
                    u = u + 32
                    continue 
                mem[64] = floor32(_221 + _222 + _239 + not _239 + mem[s] + 31) + 1
                idx = idx + arg2
                s = _221
                continue 
            mem[ceil32(t) + 32 len arg2] = code.data[1721 len arg2]
            u = 0
            while u < arg2:
                require u < mem[_99]
                require mem[_99] + -u - 1 < mem[ceil32(t)]
                mem[mem[_99] + -u + ceil32(t) + 31 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                u = u + 1
                continue 
            _223 = mem[64]
            _224 = mem[s]
            mem[mem[64]] = mem[s]
            v = s + 32
            u = mem[64] + 32
            while u < _223 + _224 + 32:
                mem[u] = mem[v]
                v = v + 32
                u = u + 32
                continue 
            _242 = mem[ceil32(t)]
            mem[_223] = mem[ceil32(t)] + mem[_223]
            u = ceil32(t) + 32
            idx = _223 + _224 + 32
            while idx < _223 + _224 + _242 + 32:
                mem[idx] = mem[u]
                u = u + 32
                idx = idx + 32
                continue 
            mem[64] = floor32(_223 + _224 + _242 + not _242 + mem[s] + 31) + 1
            v = s + ceil32(_224) + arg2 + 32
            s = _223
            continue 
        _100 = mem[64]
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        _102 = mem[_100]
        mem[_100 + 32] = mem[_100]
        mem[64] = _100 + ceil32(mem[_100]) + 64
        if not _102:
            _154 = mem[_100]
            t = 0
            while t < _154:
                require t < mem[_100]
                require mem[_100] + -t - 1 < mem[_100 + 32]
                mem[mem[_100] + -t + _100 + 63 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                t = t + 1
                continue 
            _165 = mem[64]
            _166 = mem[s]
            mem[mem[64]] = mem[s]
            u = s + 32
            t = mem[64] + 32
            while t < _165 + _166 + 32:
                mem[t] = mem[u]
                u = u + 32
                t = t + 32
                continue 
            _209 = mem[_100 + 32]
            mem[_165] = mem[_100 + 32] + mem[_165]
            u = _100 + 64
            t = _165 + _166 + 32
            while t < _165 + _166 + _209 + 32:
                mem[t] = mem[u]
                u = u + 32
                t = t + 32
                continue 
            mem[64] = floor32(_165 + _166 + _209 + not _209 + mem[s] + 31) + 1
            idx = idx + arg2
            s = _165
            continue 
        mem[_100 + 64 len _102] = code.data[1721 len _102]
        _155 = mem[_100]
        t = 0
        while t < _155:
            require t < mem[_100]
            require mem[_100] + -t - 1 < mem[_100 + 32]
            mem[mem[_100] + -t + _100 + 63 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            t = t + 1
            continue 
        _167 = mem[64]
        _168 = mem[s]
        mem[mem[64]] = mem[s]
        u = s + 32
        t = mem[64] + 32
        while t < _167 + _168 + 32:
            mem[t] = mem[u]
            u = u + 32
            t = t + 32
            continue 
        _212 = mem[_100 + 32]
        mem[_167] = mem[_100 + 32] + mem[_167]
        u = _100 + 64
        t = _167 + _168 + 32
        while t < _167 + _168 + _212 + 32:
            mem[t] = mem[u]
            u = u + 32
            t = t + 32
            continue 
        mem[64] = floor32(_167 + _168 + _212 + not _212 + mem[s] + 31) + 1
        u = _100 + ceil32(_212) + arg2 + 64
        s = _167
        continue 
    mem[mem[64]] = mem[s + 32 len 20]
    return memory
      from mem[64]
       len 32
}

function sub_f1d428be(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg2 < 2:
        revert with 0, 'too smol'
    if arg2 > 8:
        revert with 0, 'too big'
    idx = 0
    s = 96
    while idx < arg1.length:
        if arg2 + 31 < arg2:
            revert with 0, 'overflow'
        if mem[96] < idx + arg2:
            revert with 0, 'oob'
        if arg2:
            _106 = mem[64]
            u = (arg2 % 32) + (32 * not arg2 % 32) + idx + 96
            t = mem[64] + (arg2 % 32) + (32 * not arg2 % 32)
            while t < _106 + (arg2 % 32) + (32 * not arg2 % 32) + arg2:
                mem[t] = mem[u]
                u = u + 32
                t = t + 32
                continue 
            mem[_106] = arg2
            mem[ceil32(t)] = arg2
            mem[64] = ceil32(t) + ceil32(arg2) + 32
            if not arg2:
                u = 0
                while u < arg2:
                    require u < mem[_106]
                    require mem[_106] + -u - 1 < mem[ceil32(t)]
                    mem[mem[_106] + -u + ceil32(t) + 31 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    u = u + 1
                    continue 
                _233 = mem[64]
                _234 = mem[s]
                mem[mem[64]] = mem[s]
                v = s + 32
                u = mem[64] + 32
                while u < _233 + _234 + 32:
                    mem[u] = mem[v]
                    v = v + 32
                    u = u + 32
                    continue 
                _251 = mem[ceil32(t)]
                mem[_233] = mem[ceil32(t)] + mem[_233]
                v = ceil32(t) + 32
                u = _233 + _234 + 32
                while u < _233 + _234 + _251 + 32:
                    mem[u] = mem[v]
                    v = v + 32
                    u = u + 32
                    continue 
                mem[64] = floor32(_233 + _234 + _251 + not _251 + mem[s] + 31) + 1
                idx = idx + arg2
                s = _233
                continue 
            mem[ceil32(t) + 32 len arg2] = code.data[1721 len arg2]
            u = 0
            while u < arg2:
                require u < mem[_106]
                require mem[_106] + -u - 1 < mem[ceil32(t)]
                mem[mem[_106] + -u + ceil32(t) + 31 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                u = u + 1
                continue 
            _235 = mem[64]
            _236 = mem[s]
            mem[mem[64]] = mem[s]
            v = s + 32
            u = mem[64] + 32
            while u < _235 + _236 + 32:
                mem[u] = mem[v]
                v = v + 32
                u = u + 32
                continue 
            _254 = mem[ceil32(t)]
            mem[_235] = mem[ceil32(t)] + mem[_235]
            u = ceil32(t) + 32
            idx = _235 + _236 + 32
            while idx < _235 + _236 + _254 + 32:
                mem[idx] = mem[u]
                u = u + 32
                idx = idx + 32
                continue 
            mem[64] = floor32(_235 + _236 + _254 + not _254 + mem[s] + 31) + 1
            v = s + ceil32(_236) + arg2 + 32
            s = _235
            continue 
        _107 = mem[64]
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        _110 = mem[_107]
        mem[_107 + 32] = mem[_107]
        mem[64] = _107 + ceil32(mem[_107]) + 64
        if not _110:
            _162 = mem[_107]
            t = 0
            while t < _162:
                require t < mem[_107]
                require mem[_107] + -t - 1 < mem[_107 + 32]
                mem[mem[_107] + -t + _107 + 63 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                t = t + 1
                continue 
            _177 = mem[64]
            _178 = mem[s]
            mem[mem[64]] = mem[s]
            u = s + 32
            t = mem[64] + 32
            while t < _177 + _178 + 32:
                mem[t] = mem[u]
                u = u + 32
                t = t + 32
                continue 
            _221 = mem[_107 + 32]
            mem[_177] = mem[_107 + 32] + mem[_177]
            u = _107 + 64
            t = _177 + _178 + 32
            while t < _177 + _178 + _221 + 32:
                mem[t] = mem[u]
                u = u + 32
                t = t + 32
                continue 
            mem[64] = floor32(_177 + _178 + _221 + not _221 + mem[s] + 31) + 1
            idx = idx + arg2
            s = _177
            continue 
        mem[_107 + 64 len _110] = code.data[1721 len _110]
        _163 = mem[_107]
        t = 0
        while t < _163:
            require t < mem[_107]
            require mem[_107] + -t - 1 < mem[_107 + 32]
            mem[mem[_107] + -t + _107 + 63 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            t = t + 1
            continue 
        _179 = mem[64]
        _180 = mem[s]
        mem[mem[64]] = mem[s]
        u = s + 32
        t = mem[64] + 32
        while t < _179 + _180 + 32:
            mem[t] = mem[u]
            u = u + 32
            t = t + 32
            continue 
        _224 = mem[_107 + 32]
        mem[_179] = mem[_107 + 32] + mem[_179]
        u = _107 + 64
        t = _179 + _180 + 32
        while t < _179 + _180 + _224 + 32:
            mem[t] = mem[u]
            u = u + 32
            t = t + 32
            continue 
        mem[64] = floor32(_179 + _180 + _224 + not _224 + mem[s] + 31) + 1
        u = _107 + ceil32(_224) + arg2 + 64
        s = _179
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[s]
    _97 = mem[s]
    mem[mem[64] + 64 len ceil32(mem[s])] = mem[s + 32 len ceil32(mem[s])]
    if not _97 % 32:
        return 32, mem[mem[64] + 32 len _97 + 32]
    mem[floor32(_97) + mem[64] + 64] = mem[floor32(_97) + mem[64] + -(_97 % 32) + 96 len _97 % 32]
    return 32, mem[mem[64] + 32 len floor32(_97) + 64]
}



}
