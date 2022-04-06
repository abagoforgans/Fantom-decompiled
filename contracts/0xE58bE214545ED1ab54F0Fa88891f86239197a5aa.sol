contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function toUint(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 + 32)
}

function toAddr(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return address(arg1 + 32)
}

function sub_84fa067a(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
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
    if not ('cd', 4).length:
        mem[floor32(('cd', 4).length) + 97] = 32
        mem[floor32(('cd', 4).length) + 129] = ('cd', 4).length
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < ('cd', 4).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len floor32(('cd', 4).length) + (32 * ('cd', 4).length) + -mem[64] + 161
    if ('cd', 4).length == 1:
        mem[floor32(('cd', 4).length) + 97] = 32
        mem[floor32(('cd', 4).length) + 129] = ('cd', 4).length
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < ('cd', 4).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len floor32(('cd', 4).length) + (32 * ('cd', 4).length) + -mem[64] + 161
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    _31 = mem[128]
    if var45001 >= ('cd', 4).length:
        revert with 'NH{q', 50
    if var51001 == mem[128] + 32:
        if var59001 == -1:
            revert with 'NH{q', 17
        if var63001 != ('cd', 4).length:
            idx = var63001
            while idx < ('cd', 4).length:
                if mem[(32 * idx) + 128] + 32 == mem[128] + 32:
                    if idx == -1:
                        revert with 'NH{q', 17
                    if idx + 1 != ('cd', 4).length:
                        idx = idx + 1
                        continue 
                    mem[floor32(('cd', 4).length) + 97] = 1
                    mem[64] = floor32(('cd', 4).length) + 161
                    mem[floor32(('cd', 4).length) + 129] = call.data[calldata.size]
                    idx = 0
                    while idx != 1:
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        if idx == -1:
                            revert with 'NH{q', 17
                        if idx >= 1:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[(32 * idx) + 140 len 20]
                        idx = idx + 1
                        continue 
                    mem[floor32(('cd', 4).length) + 161] = 32
                    mem[floor32(('cd', 4).length) + 193] = 1
                    idx = 0
                    s = floor32(('cd', 4).length) + 129
                    t = mem[64] + 64
                    while idx < 1:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len floor32(('cd', 4).length) + -mem[64] + 257
                mem[64] = floor32(('cd', 4).length) + 10113
                mem[floor32(('cd', 4).length) + 97 len 10016] = call.data[calldata.size len 10016]
                if _31 + 32 > 0x9ec3ed8763c099c5abbcaafac361e1da2afe8929f8695eaa0aac55f07bba1199:
                    revert with 'NH{q', 17
                if _31 + 32 % 313 >= 313:
                    revert with 'NH{q', 50
                mem[(32 * _31 + 32 % 313) + floor32(('cd', 4).length) + 97] = _31 + 0x613c12789c3f663a544355053c9e1e25d50176d60796a155f553aa0f8445ee86
                s = idx
                t = _31 + 32
                while s != ('cd', 4).length:
                    if s >= mem[96]:
                        revert with 'NH{q', 50
                    _347 = mem[(32 * s) + 128]
                    if mem[(32 * s) + 128] + 32 == t:
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = mem[(32 * s) + 128] + 32
                        continue 
                    if mem[(32 * s) + 128] + 32 > 0x9ec3ed8763c099c5abbcaafac361e1da2afe8929f8695eaa0aac55f07bba1199:
                        revert with 'NH{q', 17
                    if mem[(32 * s) + 128] + 32 % 313 >= 313:
                        revert with 'NH{q', 50
                    if mem[(32 * mem[(32 * s) + 128] + 32 % 313) + floor32(('cd', 4).length) + 97]:
                        idx = mem[(32 * mem[(32 * s) + 128] + 32 % 313) + floor32(('cd', 4).length) + 97]
                        t = mem[(32 * s) + 128] + 32 % 313
                        while idx != _347 + 0x613c12789c3f663a544355053c9e1e25d50176d60796a155f553aa0f8445ee86:
                            if t > -2:
                                revert with 'NH{q', 17
                            if t + 1 % 313 >= 313:
                                revert with 'NH{q', 50
                            if mem[(32 * t + 1 % 313) + floor32(('cd', 4).length) + 97]:
                                idx = mem[(32 * t + 1 % 313) + floor32(('cd', 4).length) + 97]
                                t = t + 1 % 313
                                continue 
                            if s != 1:
                                if 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[160] = address(_347 + 64)
                            if t + 1 % 313 >= 313:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1 % 313) + floor32(('cd', 4).length) + 97] = _347 + 0x613c12789c3f663a544355053c9e1e25d50176d60796a155f553aa0f8445ee86
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = _347 + 32
                            continue 
                        if s == -1:
                            revert with 'NH{q', 17
                    else:
                        if s == -1:
                            revert with 'NH{q', 17
                        if 1 == s:
                            if mem[(32 * s) + 128] + 32 % 313 >= 313:
                                revert with 'NH{q', 50
                            mem[(32 * mem[(32 * s) + 128] + 32 % 313) + floor32(('cd', 4).length) + 97] = mem[(32 * s) + 128] + 0x613c12789c3f663a544355053c9e1e25d50176d60796a155f553aa0f8445ee86
                        else:
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[160] = address(mem[(32 * s) + 128] + 64)
                            if _347 + 32 % 313 >= 313:
                                revert with 'NH{q', 50
                            mem[(32 * _347 + 32 % 313) + floor32(('cd', 4).length) + 97] = _347 + 0x613c12789c3f663a544355053c9e1e25d50176d60796a155f553aa0f8445ee86
                    s = s + 1
                    t = _347 + 32
                    continue 
                if s == 1:
                    _352 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 64
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _352 + (32 * mem[96]) + -mem[64] + 64
                _350 = mem[64]
                mem[mem[64]] = 1
                mem[64] = mem[64] + 64
                mem[_350 + 32] = call.data[calldata.size]
                idx = 0
                while idx != 1:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx == -1:
                        revert with 'NH{q', 17
                    if idx >= mem[_350]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _350 + 32] = mem[(32 * idx) + 140 len 20]
                    idx = idx + 1
                    continue 
                _373 = mem[64]
                mem[mem[64]] = 32
                _375 = mem[_350]
                mem[mem[64] + 32] = mem[_350]
                idx = 0
                s = _350 + 32
                t = mem[64] + 64
                while idx < _375:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _373 + (32 * _375) + -mem[64] + 64
            revert with 'NH{q', 50
        mem[floor32(('cd', 4).length) + 97] = 1
        mem[64] = floor32(('cd', 4).length) + 161
        mem[floor32(('cd', 4).length) + 129] = call.data[calldata.size]
        idx = 0
        while idx != 1:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            if idx >= 1:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[(32 * idx) + 140 len 20]
            idx = idx + 1
            continue 
        mem[floor32(('cd', 4).length) + 161] = 32
        mem[floor32(('cd', 4).length) + 193] = 1
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len floor32(('cd', 4).length) + -mem[64] + 257
    mem[64] = floor32(('cd', 4).length) + 10113
    mem[floor32(('cd', 4).length) + 97 len 10016] = call.data[calldata.size len 10016]
    if _31 + 32 > 0x9ec3ed8763c099c5abbcaafac361e1da2afe8929f8695eaa0aac55f07bba1199:
        revert with 'NH{q', 17
    if _31 + 32 % 313 >= 313:
        revert with 'NH{q', 50
    mem[(32 * _31 + 32 % 313) + floor32(('cd', 4).length) + 97] = _31 + 0x613c12789c3f663a544355053c9e1e25d50176d60796a155f553aa0f8445ee86
    idx = var51003
    s = _31 + 32
    while idx != ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _160 = mem[(32 * idx) + 128]
        if mem[(32 * idx) + 128] + 32 == s:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[(32 * idx) + 128] + 32
            continue 
        if mem[(32 * idx) + 128] + 32 > 0x9ec3ed8763c099c5abbcaafac361e1da2afe8929f8695eaa0aac55f07bba1199:
            revert with 'NH{q', 17
        if mem[(32 * idx) + 128] + 32 % 313 >= 313:
            revert with 'NH{q', 50
        if mem[(32 * mem[(32 * idx) + 128] + 32 % 313) + floor32(('cd', 4).length) + 97]:
            s = mem[(32 * mem[(32 * idx) + 128] + 32 % 313) + floor32(('cd', 4).length) + 97]
            t = mem[(32 * idx) + 128] + 32 % 313
            while s != _160 + 0x613c12789c3f663a544355053c9e1e25d50176d60796a155f553aa0f8445ee86:
                if t > -2:
                    revert with 'NH{q', 17
                if t + 1 % 313 >= 313:
                    revert with 'NH{q', 50
                if mem[(32 * t + 1 % 313) + floor32(('cd', 4).length) + 97]:
                    s = mem[(32 * t + 1 % 313) + floor32(('cd', 4).length) + 97]
                    t = t + 1 % 313
                    continue 
                if idx != 1:
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[160] = address(_160 + 64)
                if t + 1 % 313 >= 313:
                    revert with 'NH{q', 50
                mem[(32 * t + 1 % 313) + floor32(('cd', 4).length) + 97] = _160 + 0x613c12789c3f663a544355053c9e1e25d50176d60796a155f553aa0f8445ee86
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _160 + 32
                continue 
            if idx == -1:
                revert with 'NH{q', 17
        else:
            if idx == -1:
                revert with 'NH{q', 17
            if 1 == idx:
                if mem[(32 * idx) + 128] + 32 % 313 >= 313:
                    revert with 'NH{q', 50
                mem[(32 * mem[(32 * idx) + 128] + 32 % 313) + floor32(('cd', 4).length) + 97] = mem[(32 * idx) + 128] + 0x613c12789c3f663a544355053c9e1e25d50176d60796a155f553aa0f8445ee86
            else:
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[160] = address(mem[(32 * idx) + 128] + 64)
                if _160 + 32 % 313 >= 313:
                    revert with 'NH{q', 50
                mem[(32 * _160 + 32 % 313) + floor32(('cd', 4).length) + 97] = _160 + 0x613c12789c3f663a544355053c9e1e25d50176d60796a155f553aa0f8445ee86
        idx = idx + 1
        s = _160 + 32
        continue 
    if idx == 1:
        _162 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _162 + (32 * mem[96]) + -mem[64] + 64
    _161 = mem[64]
    mem[mem[64]] = 1
    mem[64] = mem[64] + 64
    mem[_161 + 32] = call.data[calldata.size]
    idx = 0
    while idx != 1:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        if idx >= mem[_161]:
            revert with 'NH{q', 50
        mem[(32 * idx) + _161 + 32] = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
    _198 = mem[64]
    mem[mem[64]] = 32
    _203 = mem[_161]
    mem[mem[64] + 32] = mem[_161]
    idx = 0
    s = _161 + 32
    t = mem[64] + 64
    while idx < _203:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _198 + (32 * _203) + -mem[64] + 64
}



}
