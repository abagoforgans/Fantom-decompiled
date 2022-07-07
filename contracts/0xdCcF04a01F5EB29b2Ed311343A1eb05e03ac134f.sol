contract main {




// =====================  Runtime code  =====================


#
#  - sub_12bc799f(?)
#  - sub_14760ad5(?)
#  - sub_92b0e37f(?)
#  - sub_b6e758c7(?)
#
function _fallback() payable {
    revert
}

function sub_204117ea(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint64(arg1)
    require arg2 == uint64(arg2)
    require arg3 == address(arg3)
    if uint64(arg2) < uint64(arg1):
        revert with 'NH{q', 17
    if uint64(uint64(arg2) - uint64(arg1)) > test266151307():
        revert with 'NH{q', 65
    mem[96] = uint64(uint64(arg2) - uint64(arg1))
    mem[64] = (32 * uint64(uint64(arg2) - uint64(arg1))) + 128
    if not uint64(uint64(arg2) - uint64(arg1)):
        s = 0
        idx = uint64(arg1)
        while idx < uint64(arg2):
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg3))
            staticcall address(arg3).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _68 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _77 = mem[_68]
            require mem[_68] == mem[_68 + 12 len 20]
            if not mem[_68 + 12 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                s = mem[_68]
                idx = idx + 1
                continue 
            require ext_code.size(mem[_68 + 12 len 20])
            staticcall mem[_68 + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _92 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _95 = mem[_92]
            require mem[_92] == mem[_92 + 12 len 20]
            require ext_code.size(address(_77))
            staticcall address(_77).0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _100 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _103 = mem[_100]
            require mem[_100] == mem[_100 + 12 len 20]
            _106 = mem[64]
            mem[64] = mem[64] + 160
            mem[_106 + 160] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[_106 + 164] = address(_77)
            require ext_code.size(address(_95))
            staticcall address(_95) with:
                 funct ext_call.return_data[0 len 4]
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _106 + -mem[64] + 192]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _108 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_106] = mem[_108]
            mem[mem[64] + 4] = address(_77)
            require ext_code.size(address(_103))
            staticcall address(_103).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_77)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _115 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_106 + 32] = mem[_115]
            mem[_106 + 64] = address(_77)
            mem[_106 + 96] = address(_95)
            mem[_106 + 128] = address(_103)
            if idx < uint64(arg1):
                revert with 'NH{q', 17
            if idx - uint64(arg1) >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx - uint64(arg1)) + 128] = _106
            if idx == -1:
                revert with 'NH{q', 17
            s = _77
            idx = idx + 1
            continue 
        _66 = mem[64]
        mem[mem[64]] = 32
        _67 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _67:
            _124 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_124 + 32]
            mem[t + 64] = mem[_124 + 76 len 20]
            mem[t + 96] = mem[_124 + 108 len 20]
            mem[t + 128] = mem[_124 + 140 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _66 + (160 * _67) + -mem[64] + 64
    mem[64] = (32 * uint64(uint64(arg2) - uint64(arg1))) + 288
    mem[(32 * uint64(uint64(arg2) - uint64(arg1))) + 128] = 0
    mem[(32 * uint64(uint64(arg2) - uint64(arg1))) + 160] = 0
    mem[(32 * uint64(uint64(arg2) - uint64(arg1))) + 192] = 0
    mem[(32 * uint64(uint64(arg2) - uint64(arg1))) + 224] = 0
    mem[(32 * uint64(uint64(arg2) - uint64(arg1))) + 256] = 0
    mem[128] = (32 * uint64(uint64(arg2) - uint64(arg1))) + 128
    s = 128
    idx = uint64(uint64(arg2) - uint64(arg1))
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[(32 * uint64(uint64(arg2) - uint64(arg1))) + 128] = 0
        mem[(32 * uint64(uint64(arg2) - uint64(arg1))) + 160] = 0
        mem[(32 * uint64(uint64(arg2) - uint64(arg1))) + 192] = 0
        mem[(32 * uint64(uint64(arg2) - uint64(arg1))) + 224] = 0
        mem[(32 * uint64(uint64(arg2) - uint64(arg1))) + 256] = 0
        mem[s + 32] = (32 * uint64(uint64(arg2) - uint64(arg1))) + 128
        s = s + 32
        idx = idx - 1
        continue 
    s = 0
    idx = uint64(arg1)
    while idx < uint64(arg2):
        mem[mem[64] + 4] = idx
        require ext_code.size(address(arg3))
        staticcall address(arg3).allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _135 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _142 = mem[_135]
        require mem[_135] == mem[_135 + 12 len 20]
        if not mem[_135 + 12 len 20]:
            if idx == -1:
                revert with 'NH{q', 17
            s = mem[_135]
            idx = idx + 1
            continue 
        require ext_code.size(mem[_135 + 12 len 20])
        staticcall mem[_135 + 12 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _146 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _147 = mem[_146]
        require mem[_146] == mem[_146 + 12 len 20]
        require ext_code.size(address(_142))
        staticcall address(_142).0xd21220a7 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _150 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _151 = mem[_150]
        require mem[_150] == mem[_150 + 12 len 20]
        _152 = mem[64]
        mem[64] = mem[64] + 160
        mem[_152 + 160] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[_152 + 164] = address(_142)
        require ext_code.size(address(_147))
        staticcall address(_147) with:
             funct ext_call.return_data[0 len 4]
                gas gas_remaining wei
               args mem[mem[64] + 4 len _152 + -mem[64] + 192]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _154 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_152] = mem[_154]
        mem[mem[64] + 4] = address(_142)
        require ext_code.size(address(_151))
        staticcall address(_151).0x70a08231 with:
                gas gas_remaining wei
               args address(_142)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _158 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_152 + 32] = mem[_158]
        mem[_152 + 64] = address(_142)
        mem[_152 + 96] = address(_147)
        mem[_152 + 128] = address(_151)
        if idx < uint64(arg1):
            revert with 'NH{q', 17
        if idx - uint64(arg1) >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx - uint64(arg1)) + 128] = _152
        if idx == -1:
            revert with 'NH{q', 17
        s = _142
        idx = idx + 1
        continue 
    _133 = mem[64]
    mem[mem[64]] = 32
    _134 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _134:
        _161 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_161 + 32]
        mem[t + 64] = mem[_161 + 76 len 20]
        mem[t + 96] = mem[_161 + 108 len 20]
        mem[t + 128] = mem[_161 + 140 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _133 + (160 * _134) + -mem[64] + 64
}

function sub_130a1718(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == uint64(arg2)
    require arg3 == uint64(arg3)
    mem[96] = 0x204117ea00000000000000000000000000000000000000000000000000000000
    mem[100] = uint64(arg2)
    mem[132] = uint64(arg3)
    mem[164] = address(arg1)
    require ext_code.size(this.address)
    staticcall this.address.0x204117ea with:
            gas gas_remaining wei
           args arg2 << 192, arg3 << 192, address(arg1)
    if ext_call.success:
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _4 = mem[96 len 4], uint64(arg2) << 160
        require mem[96 len 4], uint64(arg2) << 160 <= test266151307()
        require return_data.size + 96 > mem[96 len 4], uint64(arg2) << 160 + 127
        _5 = mem[mem[96 len 4], uint64(arg2) << 160 + 96]
        if mem[mem[96 len 4], uint64(arg2) << 160 + 96] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[mem[96 len 4], uint64(arg2) << 160 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], uint64(arg2) << 160 + 96]) + 97 > test266151307():
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], uint64(arg2) << 160 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _5
        require _4 + (160 * _5) + 32 <= return_data.size
        s = ceil32(return_data.size) + 128
        idx = _4 + 128
        while idx < _4 + (160 * _5) + 128:
            require return_data.size + -idx + 96 >= 160
            _74 = mem[64]
            if mem[64] + 160 < mem[64] or mem[64] + 160 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + 160
            mem[_74] = mem[idx]
            mem[_74 + 32] = mem[idx + 32]
            require mem[idx + 64] == mem[idx + 76 len 20]
            mem[_74 + 64] = mem[idx + 64]
            require mem[idx + 96] == mem[idx + 108 len 20]
            mem[_74 + 96] = mem[idx + 96]
            require mem[idx + 128] == mem[idx + 140 len 20]
            mem[_74 + 128] = mem[idx + 128]
            mem[s] = _74
            s = s + 32
            idx = idx + 160
            continue 
        _89 = mem[64]
        mem[mem[64]] = 32
        _94 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _94:
            _142 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_142 + 32]
            mem[t + 64] = mem[_142 + 76 len 20]
            mem[t + 96] = mem[_142 + 108 len 20]
            mem[t + 128] = mem[_142 + 140 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _89 + (160 * _94) + -mem[64] + 64
    if uint64(arg3) < uint64(arg2):
        revert with 'NH{q', 17
    if uint64(uint64(arg3) - uint64(arg2)) > test266151307():
        revert with 'NH{q', 65
    mem[96] = uint64(uint64(arg3) - uint64(arg2))
    mem[64] = (32 * uint64(uint64(arg3) - uint64(arg2))) + 128
    if not uint64(uint64(arg3) - uint64(arg2)):
        idx = arg2
        while uint64(idx) < uint64(arg3):
            if 1 > -uint64(idx) + test266151307():
                revert with 'NH{q', 17
            mem[mem[64]] = 0x204117ea00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = uint64(idx)
            mem[mem[64] + 36] = uint64(uint64(idx) + 1)
            mem[mem[64] + 68] = address(arg1)
            require ext_code.size(this.address)
            staticcall this.address.0x204117ea with:
                    gas gas_remaining wei
                   args idx << 192, uint64(idx) + 1 << 192, address(arg1)
            if ext_call.success:
                _87 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _95 = mem[_87]
                require mem[_87] <= test266151307()
                require _87 + return_data.size > _87 + mem[_87] + 31
                _110 = mem[_87 + mem[_87]]
                if mem[_87 + mem[_87]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[_87 + mem[_87]]) + 1 < 0 or _87 + ceil32(return_data.size) + ceil32(32 * mem[_87 + mem[_87]]) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _87 + ceil32(return_data.size) + ceil32(32 * mem[_87 + mem[_87]]) + 1
                mem[_87 + ceil32(return_data.size)] = _110
                require _95 + (160 * _110) + 32 <= return_data.size
                t = _87 + ceil32(return_data.size) + 32
                s = _87 + _95 + 32
                while s < _87 + _95 + (160 * _110) + 32:
                    require _87 + return_data.size - s >= 160
                    _150 = mem[64]
                    if mem[64] + 160 < mem[64] or mem[64] + 160 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 160
                    mem[_150] = mem[s]
                    mem[_150 + 32] = mem[s + 32]
                    require mem[s + 64] == mem[s + 76 len 20]
                    mem[_150 + 64] = mem[s + 64]
                    require mem[s + 96] == mem[s + 108 len 20]
                    mem[_150 + 96] = mem[s + 96]
                    require mem[s + 128] == mem[s + 140 len 20]
                    mem[_150 + 128] = mem[s + 128]
                    mem[t] = _150
                    t = t + 32
                    s = s + 160
                    continue 
                if 0 >= mem[_87 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if uint64(idx) < uint64(arg2):
                    revert with 'NH{q', 17
                if uint64(uint64(idx) - uint64(arg2)) >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * uint64(uint64(idx) - uint64(arg2))) + 128] = mem[_87 + ceil32(return_data.size) + 32]
            if uint64(idx) == test266151307():
                revert with 'NH{q', 17
            idx = uint64(idx) + 1
            continue 
        _73 = mem[64]
        mem[mem[64]] = 32
        _75 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _75:
            _136 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_136 + 32]
            mem[t + 64] = mem[_136 + 76 len 20]
            mem[t + 96] = mem[_136 + 108 len 20]
            mem[t + 128] = mem[_136 + 140 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _73 + (160 * _75) + -mem[64] + 64
    mem[64] = (32 * uint64(uint64(arg3) - uint64(arg2))) + 288
    mem[(32 * uint64(uint64(arg3) - uint64(arg2))) + 128] = 0
    mem[(32 * uint64(uint64(arg3) - uint64(arg2))) + 160] = 0
    mem[(32 * uint64(uint64(arg3) - uint64(arg2))) + 192] = 0
    mem[(32 * uint64(uint64(arg3) - uint64(arg2))) + 224] = 0
    mem[(32 * uint64(uint64(arg3) - uint64(arg2))) + 256] = 0
    mem[128] = (32 * uint64(uint64(arg3) - uint64(arg2))) + 128
    s = 128
    idx = uint64(uint64(arg3) - uint64(arg2))
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[(32 * uint64(uint64(arg3) - uint64(arg2))) + 128] = 0
        mem[(32 * uint64(uint64(arg3) - uint64(arg2))) + 160] = 0
        mem[(32 * uint64(uint64(arg3) - uint64(arg2))) + 192] = 0
        mem[(32 * uint64(uint64(arg3) - uint64(arg2))) + 224] = 0
        mem[(32 * uint64(uint64(arg3) - uint64(arg2))) + 256] = 0
        mem[s + 32] = (32 * uint64(uint64(arg3) - uint64(arg2))) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = arg2
    while uint64(idx) < uint64(arg3):
        if 1 > -uint64(idx) + test266151307():
            revert with 'NH{q', 17
        mem[mem[64]] = 0x204117ea00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = uint64(idx)
        mem[mem[64] + 36] = uint64(uint64(idx) + 1)
        mem[mem[64] + 68] = address(arg1)
        require ext_code.size(this.address)
        staticcall this.address.0x204117ea with:
                gas gas_remaining wei
               args idx << 192, uint64(idx) + 1 << 192, address(arg1)
        if ext_call.success:
            _166 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _170 = mem[_166]
            require mem[_166] <= test266151307()
            require _166 + return_data.size > _166 + mem[_166] + 31
            _171 = mem[_166 + mem[_166]]
            if mem[_166 + mem[_166]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[_166 + mem[_166]]) + 1 < 0 or _166 + ceil32(return_data.size) + ceil32(32 * mem[_166 + mem[_166]]) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _166 + ceil32(return_data.size) + ceil32(32 * mem[_166 + mem[_166]]) + 1
            mem[_166 + ceil32(return_data.size)] = _171
            require _170 + (160 * _171) + 32 <= return_data.size
            t = _166 + ceil32(return_data.size) + 32
            s = _166 + _170 + 32
            while s < _166 + _170 + (160 * _171) + 32:
                require _166 + return_data.size - s >= 160
                _190 = mem[64]
                if mem[64] + 160 < mem[64] or mem[64] + 160 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 160
                mem[_190] = mem[s]
                mem[_190 + 32] = mem[s + 32]
                require mem[s + 64] == mem[s + 76 len 20]
                mem[_190 + 64] = mem[s + 64]
                require mem[s + 96] == mem[s + 108 len 20]
                mem[_190 + 96] = mem[s + 96]
                require mem[s + 128] == mem[s + 140 len 20]
                mem[_190 + 128] = mem[s + 128]
                mem[t] = _190
                t = t + 32
                s = s + 160
                continue 
            if 0 >= mem[_166 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            if uint64(idx) < uint64(arg2):
                revert with 'NH{q', 17
            if uint64(uint64(idx) - uint64(arg2)) >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * uint64(uint64(idx) - uint64(arg2))) + 128] = mem[_166 + ceil32(return_data.size) + 32]
        if uint64(idx) == test266151307():
            revert with 'NH{q', 17
        idx = uint64(idx) + 1
        continue 
    _151 = mem[64]
    mem[mem[64]] = 32
    _153 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _153:
        _183 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_183 + 32]
        mem[t + 64] = mem[_183 + 76 len 20]
        mem[t + 96] = mem[_183 + 108 len 20]
        mem[t + 128] = mem[_183 + 140 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _151 + (160 * _153) + -mem[64] + 64
}

function sub_8079ec3a(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    mem[ceil32(32 * ('cd', 4).length) + 97] = 0
    mem[ceil32(32 * ('cd', 4).length) + 129] = 0
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 4).length) + 161] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 193
    if not ('cd', 4).length:
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 97
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _161 = mem[64]
            mem[64] = mem[64] + 64
            staticcall mem[(32 * idx) + 128].getReserves() with:
                    gas gas_remaining wei
            mem[_161 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 18613433206
            _168 = mem[64]
            mem[64] = mem[64] + 128
            mem[_168] = ext_call.return_data[0]
            mem[_168 + 32] = ext_call.return_data[32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _181 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _191 = mem[_181]
            require mem[_181] == mem[_181 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _199 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _199
            staticcall _191.0x70a08231 with:
                    gas gas_remaining wei
                   args _199
            mem[0] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 55927394
            mem[_168 + 64] = ext_call.return_data[0]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _209 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _212 = mem[_209]
            require mem[_209] == mem[_209 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _219 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _219
            staticcall _212.0x70a08231 with:
                    gas gas_remaining wei
                   args _219
            mem[0] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 55927394
            mem[_168 + 96] = ext_call.return_data[0]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 193] = _168
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _161
            continue 
        _157 = mem[64]
        mem[mem[64]] = 32
        _160 = mem[ceil32(32 * ('cd', 4).length) + 161]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 161]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 193
        t = mem[64] + 64
        while idx < _160:
            _228 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_228 + 32]
            mem[t + 64] = mem[_228 + 64]
            mem[t + 96] = mem[_228 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _157 + (128 * _160) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 321
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 289] = 0
    mem[var25002] = var25001
    if not var25003 - 1:
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 97
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _314 = mem[64]
            mem[64] = mem[64] + 64
            staticcall mem[(32 * idx) + 128].getReserves() with:
                    gas gas_remaining wei
            mem[_314 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 18613433206
            _322 = mem[64]
            mem[64] = mem[64] + 128
            mem[_322] = ext_call.return_data[0]
            mem[_322 + 32] = ext_call.return_data[32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _334 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _348 = mem[_334]
            require mem[_334] == mem[_334 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _352 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _352
            staticcall _348.0x70a08231 with:
                    gas gas_remaining wei
                   args _352
            mem[0] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 55927394
            mem[_322 + 64] = ext_call.return_data[0]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _363 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _368 = mem[_363]
            require mem[_363] == mem[_363 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _372 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _372
            staticcall _368.0x70a08231 with:
                    gas gas_remaining wei
                   args _372
            mem[0] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 55927394
            mem[_322 + 96] = ext_call.return_data[0]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 193] = _322
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _314
            continue 
        _311 = mem[64]
        mem[mem[64]] = 32
        _313 = mem[ceil32(32 * ('cd', 4).length) + 161]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 161]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 193
        t = mem[64] + 64
        while idx < _313:
            _382 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_382 + 32]
            mem[t + 64] = mem[_382 + 64]
            mem[t + 96] = mem[_382 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _311 + (128 * _313) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 449
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 321] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 353] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 385] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 417] = 0
    mem[var29002] = var29001
    if not var29003 - 1:
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 97
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _467 = mem[64]
            mem[64] = mem[64] + 64
            staticcall mem[(32 * idx) + 128].getReserves() with:
                    gas gas_remaining wei
            mem[_467 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 18613433206
            _475 = mem[64]
            mem[64] = mem[64] + 128
            mem[_475] = ext_call.return_data[0]
            mem[_475 + 32] = ext_call.return_data[32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _487 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _501 = mem[_487]
            require mem[_487] == mem[_487 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _505 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _505
            staticcall _501.0x70a08231 with:
                    gas gas_remaining wei
                   args _505
            mem[0] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 55927394
            mem[_475 + 64] = ext_call.return_data[0]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _516 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _521 = mem[_516]
            require mem[_516] == mem[_516 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _525 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _525
            staticcall _521.0x70a08231 with:
                    gas gas_remaining wei
                   args _525
            mem[0] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 55927394
            mem[_475 + 96] = ext_call.return_data[0]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 193] = _475
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _467
            continue 
        _464 = mem[64]
        mem[mem[64]] = 32
        _466 = mem[ceil32(32 * ('cd', 4).length) + 161]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 161]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 193
        t = mem[64] + 64
        while idx < _466:
            _535 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_535 + 32]
            mem[t + 64] = mem[_535 + 64]
            mem[t + 96] = mem[_535 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _464 + (128 * _466) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 577
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 449] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 481] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 513] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 545] = 0
    mem[var33002] = var33001
    if not var33003 - 1:
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 97
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _620 = mem[64]
            mem[64] = mem[64] + 64
            staticcall mem[(32 * idx) + 128].getReserves() with:
                    gas gas_remaining wei
            mem[_620 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 18613433206
            _628 = mem[64]
            mem[64] = mem[64] + 128
            mem[_628] = ext_call.return_data[0]
            mem[_628 + 32] = ext_call.return_data[32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _640 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _654 = mem[_640]
            require mem[_640] == mem[_640 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _658 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _658
            staticcall _654.0x70a08231 with:
                    gas gas_remaining wei
                   args _658
            mem[0] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 55927394
            mem[_628 + 64] = ext_call.return_data[0]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _669 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _674 = mem[_669]
            require mem[_669] == mem[_669 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _678 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _678
            staticcall _674.0x70a08231 with:
                    gas gas_remaining wei
                   args _678
            mem[0] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 55927394
            mem[_628 + 96] = ext_call.return_data[0]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 193] = _628
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _620
            continue 
        _617 = mem[64]
        mem[mem[64]] = 32
        _619 = mem[ceil32(32 * ('cd', 4).length) + 161]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 161]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 193
        t = mem[64] + 64
        while idx < _619:
            _688 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_688 + 32]
            mem[t + 64] = mem[_688 + 64]
            mem[t + 96] = mem[_688 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _617 + (128 * _619) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 705
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 577] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 609] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 641] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 673] = 0
    mem[var37002] = var37001
    if not var37003 - 1:
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 97
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _773 = mem[64]
            mem[64] = mem[64] + 64
            staticcall mem[(32 * idx) + 128].getReserves() with:
                    gas gas_remaining wei
            mem[_773 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 18613433206
            _781 = mem[64]
            mem[64] = mem[64] + 128
            mem[_781] = ext_call.return_data[0]
            mem[_781 + 32] = ext_call.return_data[32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _793 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _807 = mem[_793]
            require mem[_793] == mem[_793 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _811 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _811
            staticcall _807.0x70a08231 with:
                    gas gas_remaining wei
                   args _811
            mem[0] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 55927394
            mem[_781 + 64] = ext_call.return_data[0]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _822 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _827 = mem[_822]
            require mem[_822] == mem[_822 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _831 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _831
            staticcall _827.0x70a08231 with:
                    gas gas_remaining wei
                   args _831
            mem[0] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 55927394
            mem[_781 + 96] = ext_call.return_data[0]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 193] = _781
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _773
            continue 
        _770 = mem[64]
        mem[mem[64]] = 32
        _772 = mem[ceil32(32 * ('cd', 4).length) + 161]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 161]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 193
        t = mem[64] + 64
        while idx < _772:
            _841 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_841 + 32]
            mem[t + 64] = mem[_841 + 64]
            mem[t + 96] = mem[_841 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _770 + (128 * _772) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 833
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 705] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 737] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 769] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 801] = 0
    mem[var41002] = var41001
    if not var41003 - 1:
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 97
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _926 = mem[64]
            mem[64] = mem[64] + 64
            staticcall mem[(32 * idx) + 128].getReserves() with:
                    gas gas_remaining wei
            mem[_926 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 18613433206
            _934 = mem[64]
            mem[64] = mem[64] + 128
            mem[_934] = ext_call.return_data[0]
            mem[_934 + 32] = ext_call.return_data[32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _946 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _960 = mem[_946]
            require mem[_946] == mem[_946 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _964 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _964
            staticcall _960.0x70a08231 with:
                    gas gas_remaining wei
                   args _964
            mem[0] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 55927394
            mem[_934 + 64] = ext_call.return_data[0]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _975 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _980 = mem[_975]
            require mem[_975] == mem[_975 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _984 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _984
            staticcall _980.0x70a08231 with:
                    gas gas_remaining wei
                   args _984
            mem[0] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 55927394
            mem[_934 + 96] = ext_call.return_data[0]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 193] = _934
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _926
            continue 
        _923 = mem[64]
        mem[mem[64]] = 32
        _925 = mem[ceil32(32 * ('cd', 4).length) + 161]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 161]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 193
        t = mem[64] + 64
        while idx < _925:
            _994 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_994 + 32]
            mem[t + 64] = mem[_994 + 64]
            mem[t + 96] = mem[_994 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _923 + (128 * _925) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 961
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 833] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 865] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 897] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 929] = 0
    mem[var45002] = var45001
    if not var45003 - 1:
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 97
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1079 = mem[64]
            mem[64] = mem[64] + 64
            staticcall mem[(32 * idx) + 128].getReserves() with:
                    gas gas_remaining wei
            mem[_1079 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 18613433206
            _1087 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1087] = ext_call.return_data[0]
            mem[_1087 + 32] = ext_call.return_data[32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1099 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1113 = mem[_1099]
            require mem[_1099] == mem[_1099 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1117 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1117
            staticcall _1113.0x70a08231 with:
                    gas gas_remaining wei
                   args _1117
            mem[0] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 55927394
            mem[_1087 + 64] = ext_call.return_data[0]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1128 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1133 = mem[_1128]
            require mem[_1128] == mem[_1128 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1137 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1137
            staticcall _1133.0x70a08231 with:
                    gas gas_remaining wei
                   args _1137
            mem[0] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 55927394
            mem[_1087 + 96] = ext_call.return_data[0]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 193] = _1087
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1079
            continue 
        _1076 = mem[64]
        mem[mem[64]] = 32
        _1078 = mem[ceil32(32 * ('cd', 4).length) + 161]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 161]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 193
        t = mem[64] + 64
        while idx < _1078:
            _1147 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1147 + 32]
            mem[t + 64] = mem[_1147 + 64]
            mem[t + 96] = mem[_1147 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _1076 + (128 * _1078) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1089
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 961] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 993] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1025] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1057] = 0
    mem[var49002] = var49001
    if not var49003 - 1:
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 97
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1232 = mem[64]
            mem[64] = mem[64] + 64
            staticcall mem[(32 * idx) + 128].getReserves() with:
                    gas gas_remaining wei
            mem[_1232 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 18613433206
            _1240 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1240] = ext_call.return_data[0]
            mem[_1240 + 32] = ext_call.return_data[32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1252 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1266 = mem[_1252]
            require mem[_1252] == mem[_1252 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1270 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1270
            staticcall _1266.0x70a08231 with:
                    gas gas_remaining wei
                   args _1270
            mem[0] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 55927394
            mem[_1240 + 64] = ext_call.return_data[0]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1281 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1286 = mem[_1281]
            require mem[_1281] == mem[_1281 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1290 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1290
            staticcall _1286.0x70a08231 with:
                    gas gas_remaining wei
                   args _1290
            mem[0] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 55927394
            mem[_1240 + 96] = ext_call.return_data[0]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 193] = _1240
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1232
            continue 
        _1229 = mem[64]
        mem[mem[64]] = 32
        _1231 = mem[ceil32(32 * ('cd', 4).length) + 161]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 161]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 193
        t = mem[64] + 64
        while idx < _1231:
            _1300 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1300 + 32]
            mem[t + 64] = mem[_1300 + 64]
            mem[t + 96] = mem[_1300 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _1229 + (128 * _1231) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1217
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1089] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1121] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1153] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1185] = 0
    mem[var53002] = var53001
    if var53003 - 1:
        # nil
    else:
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 97
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1385 = mem[64]
            mem[64] = mem[64] + 64
            staticcall mem[(32 * idx) + 128].getReserves() with:
                    gas gas_remaining wei
            mem[_1385 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 18613433206
            _1393 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1393] = ext_call.return_data[0]
            mem[_1393 + 32] = ext_call.return_data[32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1405 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1419 = mem[_1405]
            require mem[_1405] == mem[_1405 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1423 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1423
            staticcall _1419.0x70a08231 with:
                    gas gas_remaining wei
                   args _1423
            mem[0] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 55927394
            mem[_1393 + 64] = ext_call.return_data[0]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1434 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1439 = mem[_1434]
            require mem[_1434] == mem[_1434 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1443 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1443
            staticcall _1439.0x70a08231 with:
                    gas gas_remaining wei
                   args _1443
            mem[0] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 55927394
            mem[_1393 + 96] = ext_call.return_data[0]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 193] = _1393
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _1385
            continue 
        _1382 = mem[64]
        mem[mem[64]] = 32
        _1384 = mem[ceil32(32 * ('cd', 4).length) + 161]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 161]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 193
        t = mem[64] + 64
        while idx < _1384:
            _1453 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1453 + 32]
            mem[t + 64] = mem[_1453 + 64]
            mem[t + 96] = mem[_1453 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _1382 + (128 * _1384) + -mem[64] + 64
}



}
