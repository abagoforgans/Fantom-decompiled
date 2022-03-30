contract main {




// =====================  Runtime code  =====================


array of struct rounds;
uint256 bftValue;
uint256 lastRound;

function bftValue() payable {
    return bftValue
}

function lastRound() payable {
    return lastRound
}

function rounds(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < rounds[arg1].field_0
    return rounds[arg1][arg2].field_0
}

function _fallback() payable {
    revert
}

function getConsuls() payable {
    if not rounds[stor2].field_0:
        mem[(32 * rounds[stor2].field_0) + 128] = 32
        mem[(32 * rounds[stor2].field_0) + 160] = rounds[stor2].field_0
        mem[(32 * rounds[stor2].field_0) + 192 len floor32(rounds[stor2].field_0)] = mem[128 len floor32(rounds[stor2].field_0)]
        return memory
          from (32 * rounds[stor2].field_0) + 128
           len (96 * rounds[stor2].field_0) + 64
    mem[128] = rounds[stor2].field_0
    idx = 128
    s = 0
    while (32 * rounds[stor2].field_0) + 96 > idx:
        mem[idx + 32] = rounds[stor2][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * rounds[stor2].field_0) + 192 len floor32(rounds[stor2].field_0)] = mem[128 len floor32(rounds[stor2].field_0)]
    return Array(len=rounds[stor2].field_0, data=mem[128 len floor32(rounds[stor2].field_0)], mem[(32 * rounds[stor2].field_0) + floor32(rounds[stor2].field_0) + 192 len (32 * rounds[stor2].field_0) - floor32(rounds[stor2].field_0)]), 
}

function getConsulsByRoundId(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not rounds[arg1].field_0:
        mem[(32 * rounds[arg1].field_0) + 128] = 32
        mem[(32 * rounds[arg1].field_0) + 160] = rounds[arg1].field_0
        mem[(32 * rounds[arg1].field_0) + 192 len floor32(rounds[arg1].field_0)] = mem[128 len floor32(rounds[arg1].field_0)]
        return memory
          from (32 * rounds[arg1].field_0) + 128
           len (96 * rounds[arg1].field_0) + 64
    mem[128] = rounds[arg1].field_0
    idx = 128
    s = 0
    while (32 * rounds[arg1].field_0) + 96 > idx:
        mem[idx + 32] = rounds[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * rounds[arg1].field_0) + 192 len floor32(rounds[arg1].field_0)] = mem[128 len floor32(rounds[arg1].field_0)]
    return Array(len=rounds[arg1].field_0, data=mem[128 len floor32(rounds[arg1].field_0)], mem[(32 * rounds[arg1].field_0) + floor32(rounds[arg1].field_0) + 192 len (32 * rounds[arg1].field_0) - floor32(rounds[arg1].field_0)]), 
}

function sub_c85f8d33(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    s = 96
    while idx < arg1.length:
        require idx < mem[96]
        _37 = mem[(32 * idx) + 128]
        _39 = mem[s]
        u = s + 32
        v = mem[64] + 32
        t = mem[s]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[mem[64] + floor32(mem[s]) + 32] = mem[s + floor32(mem[s]) + -(mem[s] % 32) + 64 len mem[s] % 32] or Mask(8 * -(mem[s] % 32) + 32, -(8 * -(mem[s] % 32) + 32) + 256, mem[mem[64] + floor32(mem[s]) + 32])
        mem[_39 + mem[64] + 32] = address(_37)
        _60 = mem[64]
        mem[mem[64]] = _39 + 20
        mem[64] = _39 + mem[64] + 52
        idx = idx + 1
        s = _60
        continue 
    _34 = mem[64]
    _35 = mem[s]
    mem[mem[64] + 32 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
    mem[mem[64] + floor32(mem[s]) + -(mem[s] % 32) + 64 len mem[s] % 32] = mem[s + floor32(mem[s]) + -(mem[s] % 32) + 64 len mem[s] % 32]
    mem[_35 + mem[64] + 32] = arg2
    _54 = mem[64]
    mem[mem[64]] = _35 + 32
    mem[64] = _35 + mem[64] + 64
    mem[_35 + _34 + 64] = sha3(mem[_54 + 32 len mem[_54]])
    return memory
      from _35 + _34 + 64
       len 32
}

function sub_92c388ab(?) payable {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0
    if arg5 <= lastRound:
        revert with 0, 'round less last round'
    idx = 0
    s = 96
    while idx < arg1.length:
        require idx < mem[96]
        _84 = mem[(32 * idx) + 128]
        _86 = mem[s]
        u = s + 32
        v = mem[64] + 32
        t = mem[s]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[mem[64] + floor32(mem[s]) + 32] = mem[s + floor32(mem[s]) + -(mem[s] % 32) + 64 len mem[s] % 32] or Mask(8 * -(mem[s] % 32) + 32, -(8 * -(mem[s] % 32) + 32) + 256, mem[mem[64] + floor32(mem[s]) + 32])
        mem[_86 + mem[64] + 32] = address(_84)
        _128 = mem[64]
        mem[mem[64]] = _86 + 20
        mem[64] = _86 + mem[64] + 52
        idx = idx + 1
        s = _128
        continue 
    _81 = mem[64]
    _82 = mem[s]
    mem[mem[64] + 32 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
    mem[mem[64] + floor32(mem[s]) + -(mem[s] % 32) + 64 len mem[s] % 32] = mem[s + floor32(mem[s]) + -(mem[s] % 32) + 64 len mem[s] % 32]
    mem[_82 + mem[64] + 32] = arg5
    _122 = mem[64]
    mem[mem[64]] = _82 + 32
    mem[64] = _82 + mem[64] + 64
    _124 = sha3(mem[_122 + 32 len mem[_122]])
    mem[64] = _82 + _81 + (32 * rounds[stor2].field_0) + 96
    mem[_82 + _81 + 64] = rounds[stor2].field_0
    if not rounds[stor2].field_0:
        idx = 0
        while idx < rounds[stor2].field_0:
            require idx < mem[_82 + _81 + 64]
            _159 = mem[(32 * idx) + _82 + _81 + 96]
            require idx < mem[(32 * arg1.length) + 128]
            _162 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            _164 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
            _166 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
            _167 = mem[64]
            mem[64] = mem[64] + 32
            mem[_167 + 32] = _124
            mem[_167 + 64] = uint8(_162)
            mem[_167 + 96] = _164
            mem[_167 + 128] = _166
            signer = erecover(_124, _162 << 248, _164, _166) 
            mem[_167] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[_82 + _81 + 96] = rounds[stor2].field_0
        idx = _82 + _81 + 96
        s = 0
        while _82 + _81 + (32 * rounds[stor2].field_0) + 64 > idx:
            mem[idx + 32] = rounds[stor2][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < rounds[stor2].field_0:
            require idx < mem[_82 + _81 + 64]
            _200 = mem[(32 * idx) + _82 + _81 + 96]
            require idx < mem[(32 * arg1.length) + 128]
            _203 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            _205 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
            _207 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
            _208 = mem[64]
            mem[64] = mem[64] + 32
            mem[_208 + 32] = _124
            mem[_208 + 64] = uint8(_203)
            mem[_208 + 96] = _205
            mem[_208 + 128] = _207
            signer = erecover(_124, _203 << 248, _205, _207) 
            mem[_208] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    if 0 < bftValue:
        revert with 0, 'invalid bft count'
    rounds[arg5].field_0 = mem[96]
    if not mem[96]:
        s = 0
        while rounds[arg5].field_0 > s:
            rounds[arg5][s].field_0 = 0
            s = s + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            rounds[arg5][s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        while rounds[arg5].field_0 > idx:
            rounds[arg5][idx].field_0 = 0
            idx = idx + 1
            continue 
    lastRound = arg5
}



}
