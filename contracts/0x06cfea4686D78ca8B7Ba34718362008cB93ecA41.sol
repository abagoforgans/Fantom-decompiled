contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function getPrice(string arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307() or ceil32(ceil32(arg2.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if ceil32(arg1.length) <= arg1.length:
        require ext_code.size(stor0)
        staticcall stor0.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 27) + 256, 64) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 27) + 256), ceil32(arg1.length) + 96
    else:
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(arg1.length) + 198] = arg2.length
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(arg1.length) + 230 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 27) + 256, 64) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 27) + 256
        if ceil32(arg2.length) > arg2.length:
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(arg1.length) + arg2.length + 230] = 0
        require ext_code.size(stor0)
        staticcall stor0.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg1.length + 230 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)]), ceil32(arg1.length) + 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 194 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    return ext_call.return_data[0]
}

function getRandom(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 3
    s = 128
    idx = 3
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[224] = 3
    mem[256] = 'BTC'
    mem[128] = 224
    mem[288] = 3
    mem[320] = 'ETH'
    mem[160] = 288
    mem[352] = 3
    mem[384] = 'FTM'
    mem[192] = 352
    mem[416] = 3
    s = 448
    idx = 3
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[544] = 3
    mem[576] = 'USD'
    mem[448] = 544
    mem[608] = 4
    mem[640] = 'LINK'
    mem[480] = 608
    mem[64] = 736
    mem[672] = 3
    mem[704] = 'YFI'
    mem[512] = 672
    mem[736] = 0xe42a071b00000000000000000000000000000000000000000000000000000000
    mem[740] = 64
    mem[804] = 3
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 100
    u = mem[64] + 100
    while idx < 3:
        mem[u] = t - 836
        _59 = mem[s]
        _61 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _61:
            mem[t + v + 32] = mem[_59 + v + 32]
            v = v + 32
            continue 
        if ceil32(_61) > _61:
            mem[t + _61 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_61) + 32
        u = u + 32
        continue 
    mem[772] = t - 740
    _60 = mem[416]
    mem[t] = mem[416]
    idx = 0
    s = 448
    u = t + (32 * _60) + 32
    v = t + 32
    while idx < _60:
        mem[v] = u + -t - 32
        _100 = mem[s]
        _103 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        t = 0
        while t < _103:
            mem[u + t + 32] = mem[_100 + t + 32]
            t = t + 32
            continue 
        if ceil32(_103) > _103:
            mem[u + _103 + 32] = 0
        idx = idx + 1
        s = s + 32
        u = u + ceil32(_103) + 32
        v = v + 32
        continue 
    require ext_code.size(stor0)
    staticcall stor0.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len u + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _104 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _105 = mem[_104]
    require mem[_104] <= test266151307()
    require _104 + mem[_104] + 31 < _104 + return_data.size
    _106 = mem[_104 + mem[_104]]
    if mem[_104 + mem[_104]] > test266151307():
        revert with 'NH{q', 65
    if _104 + ceil32(return_data.size) + floor32(mem[_104 + mem[_104]]) + 1 > test266151307() or floor32(mem[_104 + mem[_104]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _104 + ceil32(return_data.size) + floor32(mem[_104 + mem[_104]]) + 1
    mem[_104 + ceil32(return_data.size)] = _106
    require _105 + (96 * _106) + 32 <= return_data.size
    idx = 0
    s = _104 + _105 + 32
    t = _104 + ceil32(return_data.size) + 32
    while idx < _106:
        require _104 + return_data.size - s >= 96
        _140 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 96
        require mem[s] == mem[s]
        mem[_140] = mem[s]
        require mem[s + 32] == mem[s + 32]
        mem[_140 + 32] = mem[s + 32]
        require mem[s + 64] == mem[s + 64]
        mem[_140 + 64] = mem[s + 64]
        mem[t] = _140
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    _139 = mem[64]
    mem[mem[64]] = 3
    mem[64] = mem[64] + 128
    mem[_139 + 32 len 96] = call.data[calldata.size len 96]
    idx = 0
    while idx < 3:
        if idx >= mem[_104 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if idx >= mem[_139]:
            revert with 'NH{q', 50
        mem[(32 * idx) + _139 + 32] = mem[mem[(32 * idx) + _104 + ceil32(return_data.size) + 32]]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _179 = mem[_139]
    mem[mem[64] + 32 len 32 * mem[_139]] = mem[_139 + 32 len 32 * mem[_139]]
    var110007 = mem[64] + (32 * _179) + 32
    mem[mem[64] + (32 * _179) + 32] = arg1
    _197 = mem[64]
    mem[mem[64]] = var110007 - mem[64]
    mem[64] = var110007 + 32
    mem[var110007 + 32] = sha3(mem[_197 + 32 len mem[_197]])
    return memory
      from var110007 + 32
       len 32
}

function sub_942422ba(?) payable {
    require calldata.size - 4 >= 64
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
        require cd[s] <= test266151307()
        require cd[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _42 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1
        mem[_42] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_42 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_42 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _42
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    _41 = mem[64]
    if mem[64] + floor32(('cd', 36).length) + 1 > test266151307() or mem[64] + floor32(('cd', 36).length) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(('cd', 36).length) + 1
    mem[_41] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = _41 + 32
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _83 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1
        mem[_83] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_83 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_83 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _83
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _80 = mem[96]
    _81 = mem[64]
    mem[mem[64]] = 0xe42a071b00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 64
    _82 = mem[96]
    mem[mem[64] + 68] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 100
    u = mem[64] + 100
    while idx < _82:
        mem[u] = t + -_81 - 100
        _117 = mem[s]
        _119 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _119:
            mem[t + v + 32] = mem[_117 + v + 32]
            v = v + 32
            continue 
        if ceil32(_119) > _119:
            mem[t + _119 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_119) + 32
        u = u + 32
        continue 
    mem[_81 + 36] = t + -_81 - 4
    _118 = mem[_41]
    mem[t] = mem[_41]
    idx = 0
    s = _41 + 32
    u = t + (32 * _118) + 32
    v = t + 32
    while idx < _118:
        mem[v] = u + -t - 32
        _150 = mem[s]
        _153 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        t = 0
        while t < _153:
            mem[u + t + 32] = mem[_150 + t + 32]
            t = t + 32
            continue 
        if ceil32(_153) > _153:
            mem[u + _153 + 32] = 0
        idx = idx + 1
        s = s + 32
        u = u + ceil32(_153) + 32
        v = v + 32
        continue 
    require ext_code.size(stor0)
    staticcall stor0.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len u + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _154 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _155 = mem[_154]
    require mem[_154] <= test266151307()
    require _154 + mem[_154] + 31 < _154 + return_data.size
    _156 = mem[_154 + mem[_154]]
    if mem[_154 + mem[_154]] > test266151307():
        revert with 'NH{q', 65
    if _154 + ceil32(return_data.size) + floor32(mem[_154 + mem[_154]]) + 1 > test266151307() or floor32(mem[_154 + mem[_154]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _154 + ceil32(return_data.size) + floor32(mem[_154 + mem[_154]]) + 1
    mem[_154 + ceil32(return_data.size)] = _156
    require _155 + (96 * _156) + 32 <= return_data.size
    idx = 0
    s = _154 + _155 + 32
    t = _154 + ceil32(return_data.size) + 32
    while idx < _156:
        require _154 + return_data.size - s >= 96
        _182 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 96
        require mem[s] == mem[s]
        mem[_182] = mem[s]
        require mem[s + 32] == mem[s + 32]
        mem[_182 + 32] = mem[s + 32]
        require mem[s + 64] == mem[s + 64]
        mem[_182 + 64] = mem[s + 64]
        mem[t] = _182
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    if _80 > test266151307():
        revert with 'NH{q', 65
    _181 = mem[64]
    mem[mem[64]] = _80
    mem[64] = mem[64] + (32 * _80) + 32
    if not _80:
        idx = 0
        while idx < _80:
            if idx >= mem[_154 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            if idx >= mem[_181]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _181 + 32] = mem[mem[(32 * idx) + _154 + ceil32(return_data.size) + 32]]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _212 = mem[_181]
        mem[mem[64] + 32] = mem[_181]
        mem[mem[64] + 64 len 32 * _212] = mem[_181 + 32 len 32 * _212]
        return 32, mem[mem[64] + 32 len (32 * _212) + 32]
    mem[_181 + 32 len 32 * _80] = call.data[calldata.size len 32 * _80]
    idx = 0
    while idx < _80:
        if idx >= mem[_154 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        if idx >= mem[_181]:
            revert with 'NH{q', 50
        mem[(32 * idx) + _181 + 32] = mem[mem[(32 * idx) + _154 + ceil32(return_data.size) + 32]]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _213 = mem[_181]
    mem[mem[64] + 32] = mem[_181]
    mem[mem[64] + 64 len 32 * _213] = mem[_181 + 32 len 32 * _213]
    return 32, mem[mem[64] + 32 len (32 * _213) + 32]
}



}
