contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function aggregate(address arg1, bytes[] arg2) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] <= test266151307()
        require calldata.size + -arg1 + -cd[s] - 36 >= 64
        _56 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[s] + 36)] == address(cd[(arg1 + cd[s] + 36)])
        mem[_56] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 67 < calldata.size
        if cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _104 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)])) + 1
        mem[_104] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_104 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[_104 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_56 + 32] = _104
        mem[t] = _56
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _54 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _55 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _54) + 32
    if not _54:
        _106 = mem[96]
        idx = 0
        while idx < _106:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _110 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _113 = mem[mem[(32 * idx) + 128] + 32]
            _114 = mem[64]
            _121 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _121:
                mem[_114 + s] = mem[_113 + s + 32]
                _106 = mem[96]
                s = s + 32
                continue 
            if ceil32(_121) <= _121:
                call address(_110).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _114 + _121 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    if idx >= mem[_55]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _55 + 32] = 96
                else:
                    _168 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_168] = return_data.size
                    mem[_168 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    if idx >= mem[_55]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _55 + 32] = _168
            else:
                mem[_114 + _121] = 0
                call address(_110).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _114 + _121 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    if idx >= mem[_55]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _55 + 32] = 96
                else:
                    _171 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_171] = return_data.size
                    mem[_171 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    if idx >= mem[_55]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _55 + 32] = _171
            if idx == -1:
                revert with 'NH{q', 17
            _106 = mem[96]
            idx = idx + 1
            continue 
        _108 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _125 = mem[_55]
        mem[mem[64] + 64] = mem[_55]
        idx = 0
        s = _55 + 32
        t = mem[64] + (32 * _125) + 96
        u = mem[64] + 96
        while idx < _125:
            mem[u] = t + -_108 - 96
            _155 = mem[s]
            _166 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _166:
                mem[t + v + 32] = mem[_155 + v + 32]
                v = v + 32
                continue 
            if ceil32(_166) > _166:
                mem[t + _166 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_166) + 32
            u = u + 32
            continue 
    else:
        mem[_55 + 32] = 96
        s = _55 + 32
        idx = _54
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _154 = mem[96]
        idx = 0
        while idx < _154:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _160 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _164 = mem[mem[(32 * idx) + 128] + 32]
            _165 = mem[64]
            _170 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _170:
                mem[_165 + s] = mem[_164 + s + 32]
                _154 = mem[96]
                s = s + 32
                continue 
            if ceil32(_170) <= _170:
                call address(_160).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _165 + _170 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    if idx >= mem[_55]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _55 + 32] = 96
                else:
                    _197 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_197] = return_data.size
                    mem[_197 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    if idx >= mem[_55]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _55 + 32] = _197
            else:
                mem[_165 + _170] = 0
                call address(_160).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _165 + _170 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    if idx >= mem[_55]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _55 + 32] = 96
                else:
                    _199 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_199] = return_data.size
                    mem[_199 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    if idx >= mem[_55]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _55 + 32] = _199
            if idx == -1:
                revert with 'NH{q', 17
            _154 = mem[96]
            idx = idx + 1
            continue 
        _158 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _176 = mem[_55]
        mem[mem[64] + 64] = mem[_55]
        idx = 0
        s = _55 + 32
        t = mem[64] + (32 * _176) + 96
        u = mem[64] + 96
        while idx < _176:
            mem[u] = t + -_158 - 96
            _192 = mem[s]
            _195 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _195:
                mem[t + v + 32] = mem[_192 + v + 32]
                v = v + 32
                continue 
            if ceil32(_195) > _195:
                mem[t + _195 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_195) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function multicall(bytes[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = 0
            delegate 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb with:
                 gas gas_remaining wei
                args call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            if not return_data.size:
                if delegate.return_code:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = 96
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                require mem[96] >= 68
                _107 = mem[100]
                require mem[100] >= 32
                _111 = mem[132]
                require mem[132] <= test266151307()
                require mem[132] + 163 < mem[100] + 132
                _119 = mem[mem[132] + 132]
                if mem[mem[132] + 132] > test266151307():
                    revert with 'NH{q', 65
                _126 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                mem[_126] = mem[mem[132] + 132]
                require _111 + _119 + 164 <= _107 + 132
                idx = 0
                while idx < _119:
                    mem[_126 + idx + 32] = mem[_111 + idx + 164]
                    idx = idx + 32
                    continue 
                if ceil32(_119) <= _119:
                    _181 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _186 = mem[_126]
                    mem[mem[64] + 36] = mem[_126]
                    idx = 0
                    while idx < _186:
                        mem[_181 + idx + 68] = mem[_126 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_186) > _186:
                        mem[_181 + _186 + 68] = 0
                    revert with memory
                      from mem[64]
                       len _181 + ceil32(_186) + -mem[64] + 68
                mem[_126 + _119 + 32] = 0
                _183 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _189 = mem[_126]
                mem[mem[64] + 36] = mem[_126]
                idx = 0
                while idx < _189:
                    mem[_183 + idx + 68] = mem[_126 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_189) > _189:
                    mem[_183 + _189 + 68] = 0
                revert with memory
                  from mem[64]
                   len _183 + ceil32(_189) + -mem[64] + 68
            _99 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_99] = return_data.size
            mem[_99 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _99
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            require return_data.size >= 68
            _108 = Mask(224, 0, return_data.size), mem[_99 + 32 len 4]
            require Mask(224, 0, return_data.size), mem[_99 + 32 len 4] >= 32
            _112 = mem[_99 + 36]
            require mem[_99 + 36] <= test266151307()
            require _99 + mem[_99 + 36] + 67 < _99 + Mask(224, 0, return_data.size), mem[_99 + 32 len 4] + 36
            _120 = mem[_99 + mem[_99 + 36] + 36]
            if mem[_99 + mem[_99 + 36] + 36] > test266151307():
                revert with 'NH{q', 65
            _127 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_99 + mem[_99 + 36] + 36])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_99 + mem[_99 + 36] + 36])) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_99 + mem[_99 + 36] + 36])) + 1
            mem[_127] = _120
            require _112 + _120 + 68 <= _108 + 36
            idx = 0
            while idx < _120:
                mem[_127 + idx + 32] = mem[_99 + _112 + idx + 68]
                idx = idx + 32
                continue 
            if ceil32(_120) <= _120:
                _182 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _120
                idx = 0
                while idx < _120:
                    mem[_182 + idx + 68] = mem[_127 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_120) > _120:
                    mem[_182 + _120 + 68] = 0
                revert with memory
                  from mem[64]
                   len _182 + ceil32(_120) + -mem[64] + 68
            mem[_127 + _120 + 32] = 0
            _184 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _120
            idx = 0
            while idx < _120:
                mem[_184 + idx + 68] = mem[_127 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_120) > _120:
                mem[_184 + _120 + 68] = 0
            revert with memory
              from mem[64]
               len _184 + ceil32(_120) + -mem[64] + 68
        _88 = mem[64]
        mem[mem[64]] = 32
        _89 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _89:
            mem[u] = t + -_88 - 64
            _174 = mem[s]
            _179 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _179:
                mem[t + v + 32] = mem[_174 + v + 32]
                v = v + 32
                continue 
            if ceil32(_179) > _179:
                mem[t + _179 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_179) + 32
            u = u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = arg1.length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = 0
            delegate 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb with:
                 gas gas_remaining wei
                args call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            if not return_data.size:
                if delegate.return_code:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = 96
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                require mem[96] >= 68
                _204 = mem[100]
                require mem[100] >= 32
                _209 = mem[132]
                require mem[132] <= test266151307()
                require mem[132] + 163 < mem[100] + 132
                _217 = mem[mem[132] + 132]
                if mem[mem[132] + 132] > test266151307():
                    revert with 'NH{q', 65
                _219 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                mem[_219] = mem[mem[132] + 132]
                require _209 + _217 + 164 <= _204 + 132
                idx = 0
                while idx < _217:
                    mem[_219 + idx + 32] = mem[_209 + idx + 164]
                    idx = idx + 32
                    continue 
                if ceil32(_217) <= _217:
                    _253 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _265 = mem[_219]
                    mem[mem[64] + 36] = mem[_219]
                    idx = 0
                    while idx < _265:
                        mem[_253 + idx + 68] = mem[_219 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_265) > _265:
                        mem[_253 + _265 + 68] = 0
                    revert with memory
                      from mem[64]
                       len _253 + ceil32(_265) + -mem[64] + 68
                mem[_219 + _217 + 32] = 0
                _259 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _268 = mem[_219]
                mem[mem[64] + 36] = mem[_219]
                idx = 0
                while idx < _268:
                    mem[_259 + idx + 68] = mem[_219 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_268) > _268:
                    mem[_259 + _268 + 68] = 0
                revert with memory
                  from mem[64]
                   len _259 + ceil32(_268) + -mem[64] + 68
            _199 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_199] = return_data.size
            mem[_199 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _199
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            require return_data.size >= 68
            _205 = Mask(224, 0, return_data.size), mem[_199 + 32 len 4]
            require Mask(224, 0, return_data.size), mem[_199 + 32 len 4] >= 32
            _210 = mem[_199 + 36]
            require mem[_199 + 36] <= test266151307()
            require _199 + mem[_199 + 36] + 67 < _199 + Mask(224, 0, return_data.size), mem[_199 + 32 len 4] + 36
            _218 = mem[_199 + mem[_199 + 36] + 36]
            if mem[_199 + mem[_199 + 36] + 36] > test266151307():
                revert with 'NH{q', 65
            _220 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_199 + mem[_199 + 36] + 36])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_199 + mem[_199 + 36] + 36])) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_199 + mem[_199 + 36] + 36])) + 1
            mem[_220] = _218
            require _210 + _218 + 68 <= _205 + 36
            idx = 0
            while idx < _218:
                mem[_220 + idx + 32] = mem[_199 + _210 + idx + 68]
                idx = idx + 32
                continue 
            if ceil32(_218) <= _218:
                _254 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _218
                idx = 0
                while idx < _218:
                    mem[_254 + idx + 68] = mem[_220 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_218) > _218:
                    mem[_254 + _218 + 68] = 0
                revert with memory
                  from mem[64]
                   len _254 + ceil32(_218) + -mem[64] + 68
            mem[_220 + _218 + 32] = 0
            _260 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _218
            idx = 0
            while idx < _218:
                mem[_260 + idx + 68] = mem[_220 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_218) > _218:
                mem[_260 + _218 + 68] = 0
            revert with memory
              from mem[64]
               len _260 + ceil32(_218) + -mem[64] + 68
        _177 = mem[64]
        mem[mem[64]] = 32
        _180 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _180:
            mem[u] = t + -_177 - 64
            _248 = mem[s]
            _252 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _252:
                mem[t + v + 32] = mem[_248 + v + 32]
                v = v + 32
                continue 
            if ceil32(_252) > _252:
                mem[t + _252 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_252) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
