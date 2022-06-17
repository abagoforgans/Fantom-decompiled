contract main {




// =====================  Runtime code  =====================


#
#  - sub_60072b11(?)
#
address stor0;
address stor2;
address stor3;
address stor4;
address stor5;

function _fallback() payable {
    revert
}

function sub_a01bf1c2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.summoner(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    return arg1, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[96], ext_call.return_data[64]
}

function sub_b328d586(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor4)
    staticcall stor4.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor4)
    staticcall stor4.scout(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0], ext_call.return_data[0]
}

function getGold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor3)
    staticcall stor3.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    staticcall stor3.claimed(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0], ext_call.return_data[0]
}

function sub_42a5c23a(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == uint32(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require ext_code.size(stor2)
    staticcall stor2.getSkills(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[2560 len 1152] = ext_call.return_data[0 len 1152]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 1152
    require 2591 < return_data.size + 2560
    if not bool(ceil32(return_data.size) + 3712 <= test266151307()):
        revert with 'NH{q', 65
    require 1152 <= return_data.size
    idx = 0
    s = 2560
    t = ceil32(return_data.size) + 2560
    while idx < 36:
        require mem[s] == mem[s + 31 len 1]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if uint32(arg2) == 9:
        mem[ceil32(return_data.size) + 3716] = -1
        mem[ceil32(return_data.size) + 3748] = arg3
        mem[ceil32(return_data.size) + 3780] = arg4
        require ext_code.size(stor2)
        staticcall stor2.skills_per_level(int256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args -1, arg3, arg4
    else:
        if uint32(arg2) < 0x800000000000000000000000000000000000000000000000000000000000000a:
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 3716] = uint32(arg2) - 10 / 2
        mem[ceil32(return_data.size) + 3748] = arg3
        mem[ceil32(return_data.size) + 3780] = arg4
        require ext_code.size(stor2)
        staticcall stor2.skills_per_level(int256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args uint32(arg2) - 10 / 2, arg3, arg4
    mem[ceil32(return_data.size) + 3712] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 3712] = 0x6719304700000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 3716] = arg3
    idx = 0
    s = ceil32(return_data.size) + 2560
    t = (2 * ceil32(return_data.size)) + 3748
    while idx < 36:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor2)
    staticcall stor2.0x67193047 with:
            gas gas_remaining wei
           args arg3, mem[(2 * ceil32(return_data.size)) + 3748 len 1152]
    mem[(2 * ceil32(return_data.size)) + 3712] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 3712] = ceil32(return_data.size) + 2560
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(stor2)
    staticcall stor2.class_skills(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    mem[(4 * ceil32(return_data.size)) + 3872 len 1152] = ext_call.return_data[0 len 1152]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 1152
    require (4 * ceil32(return_data.size)) + 3903 < (4 * ceil32(return_data.size)) + return_data.size + 3872
    if not bool((6 * ceil32(return_data.size)) + 5024 <= test266151307()):
        revert with 'NH{q', 65
    require 1152 <= return_data.size
    idx = 0
    s = (4 * ceil32(return_data.size)) + 3872
    t = (6 * ceil32(return_data.size)) + 3872
    while idx < 36:
        require mem[s] == bool(mem[s])
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = ceil32(return_data.size) + 2560
    t = (6 * ceil32(return_data.size)) + 5024
    while idx < 36:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = (6 * ceil32(return_data.size)) + 3872
    t = (6 * ceil32(return_data.size)) + 6272
    while idx < 36:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return mem[(6 * ceil32(return_data.size)) + 5024 len 1152], 
           ext_call.return_data[0],
           ext_call.return_data[0],
           0,
           mem[(6 * ceil32(return_data.size)) + 6272 len 1152]
}

function sub_a9721c95(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _72 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(stor4)
            staticcall stor4.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args _72
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _81 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _84 = mem[_81]
            require mem[_81] == mem[_81]
            _94 = mem[64]
            mem[64] = mem[64] + 64
            mem[_94] = _72
            mem[_94 + 32] = _84
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _94
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _71 = mem[64]
        mem[mem[64]] = 32
        _74 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _74:
            _100 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_100 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _71 + (64 * _74) + -mem[64] + 64
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
    mem[var33001] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    s = var33001
    idx = var33002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
        mem[s + 32] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    _119 = mem[96]
    idx = 0
    while idx < _119:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _122 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor4)
        staticcall stor4.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args _122
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _128 = mem[_126]
        require mem[_126] == mem[_126]
        _132 = mem[64]
        mem[64] = mem[64] + 64
        mem[_132] = _122
        mem[_132 + 32] = _128
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _132
        if idx == -1:
            revert with 'NH{q', 17
        _119 = mem[96]
        idx = idx + 1
        continue 
    _121 = mem[64]
    mem[mem[64]] = 32
    _124 = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
    idx = 0
    s = floor32(('cd', 4).length) + 129
    t = mem[64] + 64
    while idx < _124:
        _134 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_134 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _121 + (64 * _124) + -mem[64] + 64
}

function sub_d71cbd12(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(stor0)
            staticcall stor0.summoner(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _113 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _116 = mem[_113]
            require mem[_113] == mem[_113]
            _126 = mem[_113 + 32]
            require mem[_113 + 32] == mem[_113 + 32]
            _131 = mem[_113 + 64]
            require mem[_113 + 64] == mem[_113 + 64]
            _136 = mem[_113 + 96]
            require mem[_113 + 96] == mem[_113 + 96]
            _139 = mem[64]
            mem[64] = mem[64] + 160
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[_139] = mem[(32 * idx) + 128]
            mem[_139 + 32] = _116
            mem[_139 + 64] = _126
            mem[_139 + 96] = _136
            mem[_139 + 128] = _131
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _139
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _103 = mem[64]
        mem[mem[64]] = 32
        _106 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _106:
            _148 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_148 + 32]
            mem[t + 64] = mem[_148 + 64]
            mem[t + 96] = mem[_148 + 96]
            mem[t + 128] = mem[_148 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _103 + (160 * _106) + -mem[64] + 64
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 0
    mem[var33001] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    s = var33001
    idx = var33002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 0
        mem[s + 32] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    _178 = mem[96]
    idx = 0
    while idx < _178:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require ext_code.size(stor0)
        staticcall stor0.summoner(uint256 arg1) with:
                gas gas_remaining wei
               args mem[(32 * idx) + 128]
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _185 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _187 = mem[_185]
        require mem[_185] == mem[_185]
        _191 = mem[_185 + 32]
        require mem[_185 + 32] == mem[_185 + 32]
        _194 = mem[_185 + 64]
        require mem[_185 + 64] == mem[_185 + 64]
        _196 = mem[_185 + 96]
        require mem[_185 + 96] == mem[_185 + 96]
        _197 = mem[64]
        mem[64] = mem[64] + 160
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[_197] = mem[(32 * idx) + 128]
        mem[_197 + 32] = _187
        mem[_197 + 64] = _191
        mem[_197 + 96] = _196
        mem[_197 + 128] = _194
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _197
        if idx == -1:
            revert with 'NH{q', 17
        _178 = mem[96]
        idx = idx + 1
        continue 
    _180 = mem[64]
    mem[mem[64]] = 32
    _183 = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
    idx = 0
    s = floor32(('cd', 4).length) + 129
    t = mem[64] + 64
    while idx < _183:
        _201 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_201 + 32]
        mem[t + 64] = mem[_201 + 64]
        mem[t + 96] = mem[_201 + 96]
        mem[t + 128] = mem[_201 + 128]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _180 + (160 * _183) + -mem[64] + 64
}

function sub_324ff895(?) payable {
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
        require cd[s] <= test266151307()
        require cd[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _63 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1
        mem[_63] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_63 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_63 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _63
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
            _110 = mem[(32 * idx) + 128]
            _111 = mem[64]
            mem[64] = mem[64] + 64
            mem[_111] = mem[(32 * idx) + 128]
            _112 = mem[64]
            mem[mem[64]] = 0x1a06682b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _114 = mem[_110]
            mem[mem[64] + 36] = mem[_110]
            s = 0
            while s < _114:
                mem[_112 + s + 68] = mem[_110 + s + 32]
                _106 = mem[96]
                s = s + 32
                continue 
            if ceil32(_114) <= _114:
                require ext_code.size(stor5)
                staticcall stor5.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _112 + ceil32(_114) + -mem[64] + 64]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _169 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_169] == bool(mem[_169])
                mem[_111 + 32] = bool(mem[_169])
            else:
                mem[_112 + _114 + 68] = 0
                require ext_code.size(stor5)
                staticcall stor5.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _112 + ceil32(_114) + -mem[64] + 64]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _172 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_172] == bool(mem[_172])
                mem[_111 + 32] = bool(mem[_172])
            if idx >= mem[_55]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _55 + 32] = _111
            if idx == -1:
                revert with 'NH{q', 17
            _106 = mem[96]
            idx = idx + 1
            continue 
        _109 = mem[64]
        mem[mem[64]] = 32
        _113 = mem[_55]
        mem[mem[64] + 32] = mem[_55]
        idx = 0
        s = _55 + 32
        t = mem[64] + (32 * _113) + 64
        u = mem[64] + 64
        while idx < _113:
            mem[u] = t + -_109 - 64
            _156 = mem[s]
            _159 = mem[mem[s]]
            mem[t] = 64
            _161 = mem[_159]
            mem[t + 64] = mem[_159]
            v = 0
            while v < _161:
                mem[t + v + 96] = mem[_159 + v + 32]
                v = v + 32
                continue 
            if ceil32(_161) > _161:
                mem[t + _161 + 96] = 0
            mem[t + 32] = bool(mem[_156 + 32])
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_161) + 96
            u = u + 32
            continue 
    else:
        mem[64] = _55 + (32 * _54) + 96
        mem[_55 + (32 * _54) + 32] = 96
        mem[_55 + (32 * _54) + 64] = 0
        mem[var33001] = _55 + (32 * _54) + 32
        s = var33001
        idx = var33002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_55 + (32 * _54) + 32] = 96
            mem[_55 + (32 * _54) + 64] = 0
            mem[s + 32] = _55 + (32 * _54) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _196 = mem[96]
        idx = 0
        while idx < _196:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _200 = mem[(32 * idx) + 128]
            _201 = mem[64]
            mem[64] = mem[64] + 64
            mem[_201] = mem[(32 * idx) + 128]
            _202 = mem[64]
            mem[mem[64]] = 0x1a06682b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _204 = mem[_200]
            mem[mem[64] + 36] = mem[_200]
            s = 0
            while s < _204:
                mem[_202 + s + 68] = mem[_200 + s + 32]
                _196 = mem[96]
                s = s + 32
                continue 
            if ceil32(_204) <= _204:
                require ext_code.size(stor5)
                staticcall stor5.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _202 + ceil32(_204) + -mem[64] + 64]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _230 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_230] == bool(mem[_230])
                mem[_201 + 32] = bool(mem[_230])
            else:
                mem[_202 + _204 + 68] = 0
                require ext_code.size(stor5)
                staticcall stor5.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _202 + ceil32(_204) + -mem[64] + 64]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _231 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_231] == bool(mem[_231])
                mem[_201 + 32] = bool(mem[_231])
            if idx >= mem[_55]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _55 + 32] = _201
            if idx == -1:
                revert with 'NH{q', 17
            _196 = mem[96]
            idx = idx + 1
            continue 
        _199 = mem[64]
        mem[mem[64]] = 32
        _203 = mem[_55]
        mem[mem[64] + 32] = mem[_55]
        idx = 0
        s = _55 + 32
        t = mem[64] + (32 * _203) + 64
        u = mem[64] + 64
        while idx < _203:
            mem[u] = t + -_199 - 64
            _223 = mem[s]
            _226 = mem[mem[s]]
            mem[t] = 64
            _227 = mem[_226]
            mem[t + 64] = mem[_226]
            v = 0
            while v < _227:
                mem[t + v + 96] = mem[_226 + v + 32]
                v = v + 32
                continue 
            if ceil32(_227) > _227:
                mem[t + _227 + 96] = 0
            mem[t + 32] = bool(mem[_223 + 32])
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_227) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function getNames(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 96
    mem[128] = 0
    mem[160] = 96
    mem[196] = arg1
    require ext_code.size(stor5)
    staticcall stor5.0x530a6e9a with:
            gas gas_remaining wei
           args arg1
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 288] = 0x12d39b4100000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 292] = arg1
    require ext_code.size(stor5)
    staticcall stor5.summoner_name(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _10 = mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 319 < ceil32(return_data.size) + return_data.size + 288
    _11 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288])) + 289 > test266151307() or ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288])) + 289
    mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
    require _10 + _11 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 320 len ceil32(_11)] = mem[ceil32(return_data.size) + _10 + 320 len ceil32(_11)]
    if ceil32(_11) <= _11:
        mem[ceil32(return_data.size) + 192] = (2 * ceil32(return_data.size)) + 288
        mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
        mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0]
        require ext_code.size(stor5)
        staticcall stor5.0xc87b56dd with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _97 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _99 = mem[_97]
        require mem[_97] <= test266151307()
        require _97 + mem[_97] + 31 < _97 + return_data.size
        _101 = mem[_97 + mem[_97]]
        if mem[_97 + mem[_97]] > test266151307():
            revert with 'NH{q', 65
        if _97 + ceil32(return_data.size) + ceil32(ceil32(mem[_97 + mem[_97]])) + 1 > test266151307() or ceil32(ceil32(mem[_97 + mem[_97]])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _97 + ceil32(return_data.size) + ceil32(ceil32(mem[_97 + mem[_97]])) + 1
        mem[_97 + ceil32(return_data.size)] = _101
        require _99 + _101 + 32 <= return_data.size
        mem[_97 + ceil32(return_data.size) + 32 len ceil32(_101)] = mem[_97 + _99 + 32 len ceil32(_101)]
        if ceil32(_101) <= _101:
            mem[ceil32(return_data.size) + 256] = _97 + ceil32(return_data.size)
            _173 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 96
            _181 = mem[(2 * ceil32(return_data.size)) + 288]
            mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 288]
            mem[mem[64] + 160 len ceil32(_181)] = mem[(2 * ceil32(return_data.size)) + 320 len ceil32(_181)]
            if ceil32(_181) <= _181:
                mem[mem[64] + 64] = ext_call.return_data[0]
                mem[mem[64] + 96] = ceil32(_181) + 128
                mem[mem[64] + ceil32(_181) + 160] = _101
                mem[mem[64] + ceil32(_181) + 192 len ceil32(_101)] = mem[_97 + ceil32(return_data.size) + 32 len ceil32(_101)]
                if ceil32(_101) > _101:
                    mem[mem[64] + ceil32(_181) + _101 + 192] = 0
                return 32, 96, 
                       ext_call.return_data[0],
                       ceil32(_181) + 128,
                       mem[mem[64] + 128 len ceil32(_181) + 32],
                       _101,
                       mem[mem[64] + ceil32(_181) + 192 len ceil32(_101)]
            mem[mem[64] + _181 + 160] = 0
            mem[mem[64] + 64] = ext_call.return_data[0]
            mem[_173 + 96] = ceil32(_181) + 128
            mem[_173 + ceil32(_181) + 160] = _101
            mem[_173 + ceil32(_181) + 192 len ceil32(_101)] = mem[_97 + ceil32(return_data.size) + 32 len ceil32(_101)]
            if ceil32(_101) > _101:
                mem[_173 + ceil32(_181) + _101 + 192] = 0
            return memory
              from mem[64]
               len _173 + ceil32(_181) + ceil32(_101) + -mem[64] + 192
        mem[_97 + ceil32(return_data.size) + _101 + 32] = 0
        mem[ceil32(return_data.size) + 256] = _97 + ceil32(return_data.size)
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 96
        _183 = mem[(2 * ceil32(return_data.size)) + 288]
        mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 288]
        mem[mem[64] + 160 len ceil32(_183)] = mem[(2 * ceil32(return_data.size)) + 320 len ceil32(_183)]
        if ceil32(_183) <= _183:
            mem[mem[64] + 64] = ext_call.return_data[0]
            mem[mem[64] + 96] = ceil32(_183) + 128
            mem[mem[64] + ceil32(_183) + 160] = _101
            mem[mem[64] + ceil32(_183) + 192 len ceil32(_101)] = mem[_97 + ceil32(return_data.size) + 32 len ceil32(_101)]
            if ceil32(_101) > _101:
                mem[mem[64] + ceil32(_183) + _101 + 192] = 0
            return 32, 96, 
                   ext_call.return_data[0],
                   ceil32(_183) + 128,
                   mem[mem[64] + 128 len ceil32(_183) + 32],
                   _101,
                   mem[mem[64] + ceil32(_183) + 192 len ceil32(_101)]
        mem[mem[64] + _183 + 160] = 0
        mem[mem[64] + 64] = ext_call.return_data[0]
        mem[mem[64] + 96] = ceil32(_183) + 128
        mem[mem[64] + ceil32(_183) + 160] = _101
        mem[mem[64] + ceil32(_183) + 192 len ceil32(_101)] = mem[_97 + ceil32(return_data.size) + 32 len ceil32(_101)]
        if ceil32(_101) > _101:
            mem[mem[64] + ceil32(_183) + _101 + 192] = 0
        return 32, 96, 
               ext_call.return_data[0],
               ceil32(_183) + 128,
               mem[mem[64] + 128 len _183 + 32],
               0,
               mem[mem[64] + _183 + 192 len ceil32(_183) + ceil32(_101) - _183]
    mem[(2 * ceil32(return_data.size)) + _11 + 320] = 0
    mem[ceil32(return_data.size) + 192] = (2 * ceil32(return_data.size)) + 288
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = ext_call.return_data[0]
    require ext_code.size(stor5)
    staticcall stor5.0xc87b56dd with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _98 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _100 = mem[_98]
    require mem[_98] <= test266151307()
    require _98 + mem[_98] + 31 < _98 + return_data.size
    _102 = mem[_98 + mem[_98]]
    if mem[_98 + mem[_98]] > test266151307():
        revert with 'NH{q', 65
    if _98 + ceil32(return_data.size) + ceil32(ceil32(mem[_98 + mem[_98]])) + 1 > test266151307() or ceil32(ceil32(mem[_98 + mem[_98]])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _98 + ceil32(return_data.size) + ceil32(ceil32(mem[_98 + mem[_98]])) + 1
    mem[_98 + ceil32(return_data.size)] = _102
    require _100 + _102 + 32 <= return_data.size
    mem[_98 + ceil32(return_data.size) + 32 len ceil32(_102)] = mem[_98 + _100 + 32 len ceil32(_102)]
    if ceil32(_102) <= _102:
        mem[ceil32(return_data.size) + 256] = _98 + ceil32(return_data.size)
        _174 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 96
        _182 = mem[(2 * ceil32(return_data.size)) + 288]
        mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 288]
        mem[mem[64] + 160 len ceil32(_182)] = mem[(2 * ceil32(return_data.size)) + 320 len ceil32(_182)]
        if ceil32(_182) <= _182:
            mem[mem[64] + 64] = ext_call.return_data[0]
            mem[mem[64] + 96] = ceil32(_182) + 128
            mem[mem[64] + ceil32(_182) + 160] = _102
            mem[mem[64] + ceil32(_182) + 192 len ceil32(_102)] = mem[_98 + ceil32(return_data.size) + 32 len ceil32(_102)]
            if ceil32(_102) > _102:
                mem[mem[64] + ceil32(_182) + _102 + 192] = 0
            return 32, 96, 
                   ext_call.return_data[0],
                   ceil32(_182) + 128,
                   mem[mem[64] + 128 len ceil32(_182) + 32],
                   _102,
                   mem[mem[64] + ceil32(_182) + 192 len ceil32(_102)]
        mem[mem[64] + _182 + 160] = 0
        mem[mem[64] + 64] = ext_call.return_data[0]
        mem[_174 + 96] = ceil32(_182) + 128
        mem[_174 + ceil32(_182) + 160] = _102
        mem[_174 + ceil32(_182) + 192 len ceil32(_102)] = mem[_98 + ceil32(return_data.size) + 32 len ceil32(_102)]
        if ceil32(_102) > _102:
            mem[_174 + ceil32(_182) + _102 + 192] = 0
        return memory
          from mem[64]
           len _174 + ceil32(_182) + ceil32(_102) + -mem[64] + 192
    mem[_98 + ceil32(return_data.size) + _102 + 32] = 0
    mem[ceil32(return_data.size) + 256] = _98 + ceil32(return_data.size)
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 96
    _184 = mem[(2 * ceil32(return_data.size)) + 288]
    mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 288]
    mem[mem[64] + 160 len ceil32(_184)] = mem[(2 * ceil32(return_data.size)) + 320 len ceil32(_184)]
    if ceil32(_184) <= _184:
        mem[mem[64] + 64] = ext_call.return_data[0]
        mem[mem[64] + 96] = ceil32(_184) + 128
        mem[mem[64] + ceil32(_184) + 160] = _102
        mem[mem[64] + ceil32(_184) + 192 len ceil32(_102)] = mem[_98 + ceil32(return_data.size) + 32 len ceil32(_102)]
        if ceil32(_102) > _102:
            mem[mem[64] + ceil32(_184) + _102 + 192] = 0
        return 32, 96, 
               ext_call.return_data[0],
               ceil32(_184) + 128,
               mem[mem[64] + 128 len ceil32(_184) + 32],
               _102,
               mem[mem[64] + ceil32(_184) + 192 len ceil32(_102)]
    mem[mem[64] + _184 + 160] = 0
    mem[mem[64] + 64] = ext_call.return_data[0]
    mem[mem[64] + 96] = ceil32(_184) + 128
    mem[mem[64] + ceil32(_184) + 160] = _102
    mem[mem[64] + ceil32(_184) + 192 len ceil32(_102)] = mem[_98 + ceil32(return_data.size) + 32 len ceil32(_102)]
    if ceil32(_102) > _102:
        mem[mem[64] + ceil32(_184) + _102 + 192] = 0
    return 32, 96, 
           ext_call.return_data[0],
           ceil32(_184) + 128,
           mem[mem[64] + 128 len _184 + 32],
           0,
           mem[mem[64] + _184 + 192 len ceil32(_184) + ceil32(_102) - _184]
}

function sub_0c55baa9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[96] = 288
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    mem[736] = 0
    mem[448] = 576
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[128] = 448
    mem[768] = 0
    mem[800] = 0
    mem[160] = 768
    mem[832] = 0
    mem[864] = 0
    mem[192] = 832
    mem[1056 len 1152] = call.data[calldata.size len 1152]
    mem[896] = 1056
    mem[928] = 0
    mem[960] = 0
    mem[992] = 0
    mem[2208 len 1152] = call.data[calldata.size len 1152]
    mem[1024] = 2208
    mem[224] = 896
    mem[3360] = 96
    mem[3392] = 0
    mem[3424] = 96
    mem[256] = 3360
    require ext_code.size(this.address)
    staticcall this.address.0xa01bf1c2 with:
            gas gas_remaining wei
           args arg1
    mem[3456 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not bool(ceil32(return_data.size) + 3616 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 3456] = ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    mem[ceil32(return_data.size) + 3488] = ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    mem[ceil32(return_data.size) + 3520] = ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    mem[ceil32(return_data.size) + 3552] = ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    mem[ceil32(return_data.size) + 3584] = ext_call.return_data[128]
    require ext_code.size(this.address)
    staticcall this.address.0x60072b11 with:
            gas gas_remaining wei
           args arg1, ext_call.return_data[96]
    mem[ceil32(return_data.size) + 3616 len 288] = ext_call.return_data[0 len 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    if not bool((2 * ceil32(return_data.size)) + 3744 <= test266151307()):
        revert with 'NH{q', 65
    require return_data.size >= 192
    if not bool((2 * ceil32(return_data.size)) + 3936 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    mem[(2 * ceil32(return_data.size)) + 3744] = ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    mem[(2 * ceil32(return_data.size)) + 3776] = ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    mem[(2 * ceil32(return_data.size)) + 3808] = ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    mem[(2 * ceil32(return_data.size)) + 3840] = ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    mem[(2 * ceil32(return_data.size)) + 3872] = ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[188 len 4]
    mem[(2 * ceil32(return_data.size)) + 3904] = ext_call.return_data[160]
    mem[(2 * ceil32(return_data.size)) + 3616] = (2 * ceil32(return_data.size)) + 3744
    require ext_call.return_data[192] == ext_call.return_data[192]
    mem[(2 * ceil32(return_data.size)) + 3648] = ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[224]
    mem[(2 * ceil32(return_data.size)) + 3680] = ext_call.return_data[224]
    require ext_call.return_data[256] == ext_call.return_data[256]
    mem[(2 * ceil32(return_data.size)) + 3712] = ext_call.return_data[256]
    require ext_code.size(this.address)
    staticcall this.address.0x877e3817 with:
            gas gas_remaining wei
           args arg1
    mem[(2 * ceil32(return_data.size)) + 3936 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool((4 * ceil32(return_data.size)) + 4000 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 3936] = ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    mem[(4 * ceil32(return_data.size)) + 3968] = ext_call.return_data[32]
    require ext_code.size(this.address)
    staticcall this.address.0xb328d586 with:
            gas gas_remaining wei
           args arg1
    mem[(4 * ceil32(return_data.size)) + 4000 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool((6 * ceil32(return_data.size)) + 4064 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 4000] = ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    mem[(6 * ceil32(return_data.size)) + 4032] = ext_call.return_data[32]
    require ext_code.size(this.address)
    staticcall this.address.0x42a5c23a with:
            gas gas_remaining wei
           args arg1, ext_call.return_data[96] << 224, ext_call.return_data[128], ext_call.return_data[96]
    mem[(6 * ceil32(return_data.size)) + 4064 len 2400] = ext_call.return_data[0 len 2400]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 2400
    if not bool((7 * ceil32(return_data.size)) + 4224 <= test266151307()):
        revert with 'NH{q', 65
    require (6 * ceil32(return_data.size)) + 4095 < (6 * ceil32(return_data.size)) + return_data.size + 4064
    if not bool((7 * ceil32(return_data.size)) + 5376 <= test266151307()):
        revert with 'NH{q', 65
    require 1152 <= return_data.size
    idx = 0
    s = (6 * ceil32(return_data.size)) + 4064
    t = (7 * ceil32(return_data.size)) + 4224
    while idx < 36:
        require mem[s] == mem[s + 31 len 1]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(7 * ceil32(return_data.size)) + 4064] = (7 * ceil32(return_data.size)) + 4224
    require mem[(6 * ceil32(return_data.size)) + 5216] == mem[(6 * ceil32(return_data.size)) + 5216]
    mem[(7 * ceil32(return_data.size)) + 4096] = mem[(6 * ceil32(return_data.size)) + 5216]
    require mem[(6 * ceil32(return_data.size)) + 5248] == mem[(6 * ceil32(return_data.size)) + 5248]
    mem[(7 * ceil32(return_data.size)) + 4128] = mem[(6 * ceil32(return_data.size)) + 5248]
    require mem[(6 * ceil32(return_data.size)) + 5280] == mem[(6 * ceil32(return_data.size)) + 5280]
    mem[(7 * ceil32(return_data.size)) + 4160] = mem[(6 * ceil32(return_data.size)) + 5280]
    require (6 * ceil32(return_data.size)) + 5343 < (6 * ceil32(return_data.size)) + return_data.size + 4064
    if not bool((7 * ceil32(return_data.size)) + 6528 <= test266151307()):
        revert with 'NH{q', 65
    require 2400 <= return_data.size
    idx = 0
    s = (6 * ceil32(return_data.size)) + 5312
    t = (7 * ceil32(return_data.size)) + 5376
    while idx < 36:
        require mem[s] == bool(mem[s])
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(7 * ceil32(return_data.size)) + 4192] = (7 * ceil32(return_data.size)) + 5376
    mem[(7 * ceil32(return_data.size)) + 6528] = 0x5718e17b00000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 6532] = arg1
    require ext_code.size(this.address)
    staticcall this.address.0x5718e17b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 6528 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _67 = mem[(7 * ceil32(return_data.size)) + 6528 len 4], Mask(224, 32, arg1) >> 32
    require mem[(7 * ceil32(return_data.size)) + 6528 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[(7 * ceil32(return_data.size)) + 6528 len 4], Mask(224, 32, arg1) >> 32 >= 96
    if not bool((8 * ceil32(return_data.size)) + 6624 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = (8 * ceil32(return_data.size)) + 6624
    _69 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 6528 len 4], Mask(224, 32, arg1) >> 32 + 6528]
    require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 6528 len 4], Mask(224, 32, arg1) >> 32 + 6528] <= test266151307()
    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 6528 len 4], Mask(224, 32, arg1) >> 32 + mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 6528 len 4], Mask(224, 32, arg1) >> 32 + 6528] + 6559 < (7 * ceil32(return_data.size)) + return_data.size + 6528
    _70 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 6528 len 4], Mask(224, 32, arg1) >> 32 + mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 6528 len 4], Mask(224, 32, arg1) >> 32 + 6528] + 6528]
    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 6528 len 4], Mask(224, 32, arg1) >> 32 + mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 6528 len 4], Mask(224, 32, arg1) >> 32 + 6528] + 6528] > test266151307():
        revert with 'NH{q', 65
    if (8 * ceil32(return_data.size)) + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 6528 len 4], Mask(224, 32, arg1) >> 32 + mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 6528 len 4], Mask(224, 32, arg1) >> 32 + 6528] + 6528])) + 6625 > test266151307() or ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 6528 len 4], Mask(224, 32, arg1) >> 32 + mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 6528 len 4], Mask(224, 32, arg1) >> 32 + 6528] + 6528])) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = (8 * ceil32(return_data.size)) + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 6528 len 4], Mask(224, 32, arg1) >> 32 + mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 6528 len 4], Mask(224, 32, arg1) >> 32 + 6528] + 6528])) + 6625
    mem[(8 * ceil32(return_data.size)) + 6624] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 6528 len 4], Mask(224, 32, arg1) >> 32 + mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 6528 len 4], Mask(224, 32, arg1) >> 32 + 6528] + 6528]
    require mem[(7 * ceil32(return_data.size)) + 6528 len 4], Mask(224, 32, arg1) >> 32 + _69 + _70 + 32 <= return_data.size
    mem[(8 * ceil32(return_data.size)) + 6656 len ceil32(_70)] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 6528 len 4], Mask(224, 32, arg1) >> 32 + _69 + 6560 len ceil32(_70)]
    if ceil32(_70) <= _70:
        mem[(8 * ceil32(return_data.size)) + 6528] = (8 * ceil32(return_data.size)) + 6624
        require mem[(7 * ceil32(return_data.size)) + _67 + 6560] == mem[(7 * ceil32(return_data.size)) + _67 + 6560]
        mem[(8 * ceil32(return_data.size)) + 6560] = mem[(7 * ceil32(return_data.size)) + _67 + 6560]
        _198 = mem[(7 * ceil32(return_data.size)) + _67 + 6592]
        require mem[(7 * ceil32(return_data.size)) + _67 + 6592] <= test266151307()
        require (7 * ceil32(return_data.size)) + _67 + mem[(7 * ceil32(return_data.size)) + _67 + 6592] + 6559 < (7 * ceil32(return_data.size)) + return_data.size + 6528
        _200 = mem[(7 * ceil32(return_data.size)) + _67 + mem[(7 * ceil32(return_data.size)) + _67 + 6592] + 6528]
        if mem[(7 * ceil32(return_data.size)) + _67 + mem[(7 * ceil32(return_data.size)) + _67 + 6592] + 6528] > test266151307():
            revert with 'NH{q', 65
        _202 = mem[64]
        if mem[64] + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + _67 + mem[(7 * ceil32(return_data.size)) + _67 + 6592] + 6528])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + _67 + mem[(7 * ceil32(return_data.size)) + _67 + 6592] + 6528])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + _67 + mem[(7 * ceil32(return_data.size)) + _67 + 6592] + 6528])) + 1
        mem[_202] = _200
        require _67 + _198 + _200 + 32 <= return_data.size
        mem[_202 + 32 len ceil32(_200)] = mem[(7 * ceil32(return_data.size)) + _67 + _198 + 6560 len ceil32(_200)]
        if ceil32(_200) <= _200:
            mem[(8 * ceil32(return_data.size)) + 6592] = _202
            _320 = mem[64]
            mem[64] = mem[64] + 192
            mem[_320] = ceil32(return_data.size) + 3456
            mem[_320 + 32] = (2 * ceil32(return_data.size)) + 3616
            mem[_320 + 64] = (4 * ceil32(return_data.size)) + 3936
            mem[_320 + 96] = (6 * ceil32(return_data.size)) + 4000
            mem[_320 + 128] = (7 * ceil32(return_data.size)) + 4064
            mem[_320 + 160] = (8 * ceil32(return_data.size)) + 6528
            mem[mem[64]] = 32
            mem[mem[64] + 32] = ext_call.return_data[0]
            mem[mem[64] + 64] = ext_call.return_data[32]
            mem[mem[64] + 96] = ext_call.return_data[64]
            mem[mem[64] + 128] = ext_call.return_data[96]
            mem[mem[64] + 160] = ext_call.return_data[128]
            mem[mem[64] + 192] = ext_call.return_data[28 len 4]
            mem[mem[64] + 224] = ext_call.return_data[60 len 4]
            mem[mem[64] + 256] = ext_call.return_data[92 len 4]
            mem[mem[64] + 288] = ext_call.return_data[124 len 4]
            mem[mem[64] + 320] = ext_call.return_data[156 len 4]
            mem[mem[64] + 352] = ext_call.return_data[188 len 4]
            mem[mem[64] + 384] = ext_call.return_data[192]
            mem[mem[64] + 416] = ext_call.return_data[224]
            mem[mem[64] + 448] = ext_call.return_data[256]
            mem[mem[64] + 480] = ext_call.return_data[0]
            mem[mem[64] + 512] = ext_call.return_data[32]
            mem[mem[64] + 544] = ext_call.return_data[0]
            mem[mem[64] + 576] = ext_call.return_data[32]
            idx = 0
            s = mem[mem[_320 + 128]]
            t = mem[64] + 608
            while idx < 36:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 1760] = mem[(7 * ceil32(return_data.size)) + 4096]
            mem[mem[64] + 1792] = mem[(7 * ceil32(return_data.size)) + 4128]
            mem[mem[64] + 1824] = mem[(7 * ceil32(return_data.size)) + 4160]
            idx = 0
            s = mem[(7 * ceil32(return_data.size)) + 4192]
            t = mem[64] + 1856
            while idx < 36:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _460 = mem[_320 + 160]
            mem[mem[64] + 3008] = 3008
            _464 = mem[_460]
            mem[mem[64] + 3040] = 96
            _468 = mem[_464]
            mem[mem[64] + 3136] = mem[_464]
            mem[mem[64] + 3168 len ceil32(_468)] = mem[_464 + 32 len ceil32(_468)]
            if ceil32(_468) <= _468:
                mem[mem[64] + 3072] = mem[_460 + 32]
                _536 = mem[_460 + 64]
                mem[mem[64] + 3104] = ceil32(_468) + 128
                _544 = mem[_536]
                mem[mem[64] + ceil32(_468) + 3168] = mem[_536]
                mem[mem[64] + ceil32(_468) + 3200 len ceil32(_544)] = mem[_536 + 32 len ceil32(_544)]
                if ceil32(_544) > _544:
                    mem[mem[64] + ceil32(_468) + _544 + 3200] = 0
                return 32, ext_call.return_data[0], 
                       ext_call.return_data[32],
                       ext_call.return_data[64],
                       ext_call.return_data[96],
                       ext_call.return_data[128],
                       mem[mem[64] + 192 len 192],
                       ext_call.return_data[192],
                       ext_call.return_data[224],
                       ext_call.return_data[256],
                       ext_call.return_data[0],
                       ext_call.return_data[32],
                       ext_call.return_data[0],
                       ext_call.return_data[32],
                       mem[mem[64] + 608 len 2400],
                       3008,
                       96,
                       mem[mem[64] + 3072],
                       ceil32(_468) + 128,
                       mem[mem[64] + 3136 len ceil32(_468) + ceil32(_544) + 64]
            mem[mem[64] + _468 + 3168] = 0
            mem[mem[64] + 3072] = mem[_460 + 32]
            _540 = mem[_460 + 64]
            mem[mem[64] + 3104] = ceil32(_468) + 128
            _548 = mem[_540]
            mem[mem[64] + ceil32(_468) + 3168] = mem[_540]
            mem[mem[64] + ceil32(_468) + 3200 len ceil32(_548)] = mem[_540 + 32 len ceil32(_548)]
            if ceil32(_548) > _548:
                mem[mem[64] + ceil32(_468) + _548 + 3200] = 0
            return 32, ext_call.return_data[0], 
                   ext_call.return_data[32],
                   ext_call.return_data[64],
                   ext_call.return_data[96],
                   ext_call.return_data[128],
                   mem[mem[64] + 192 len 192],
                   ext_call.return_data[192],
                   ext_call.return_data[224],
                   ext_call.return_data[256],
                   ext_call.return_data[0],
                   ext_call.return_data[32],
                   ext_call.return_data[0],
                   ext_call.return_data[32],
                   mem[mem[64] + 608 len 2400],
                   3008,
                   96,
                   mem[mem[64] + 3072],
                   ceil32(_468) + 128,
                   mem[mem[64] + 3136 len _468 + 32],
                   0,
                   mem[mem[64] + _468 + 3200 len ceil32(_468) + ceil32(_548) - _468]
        mem[_202 + _200 + 32] = 0
        mem[(8 * ceil32(return_data.size)) + 6592] = _202
        _323 = mem[64]
        mem[64] = mem[64] + 192
        mem[_323] = ceil32(return_data.size) + 3456
        mem[_323 + 32] = (2 * ceil32(return_data.size)) + 3616
        mem[_323 + 64] = (4 * ceil32(return_data.size)) + 3936
        mem[_323 + 96] = (6 * ceil32(return_data.size)) + 4000
        mem[_323 + 128] = (7 * ceil32(return_data.size)) + 4064
        mem[_323 + 160] = (8 * ceil32(return_data.size)) + 6528
        mem[mem[64]] = 32
        mem[mem[64] + 32] = ext_call.return_data[0]
        mem[mem[64] + 64] = ext_call.return_data[32]
        mem[mem[64] + 96] = ext_call.return_data[64]
        mem[mem[64] + 128] = ext_call.return_data[96]
        mem[mem[64] + 160] = ext_call.return_data[128]
        mem[mem[64] + 192] = ext_call.return_data[28 len 4]
        mem[mem[64] + 224] = ext_call.return_data[60 len 4]
        mem[mem[64] + 256] = ext_call.return_data[92 len 4]
        mem[mem[64] + 288] = ext_call.return_data[124 len 4]
        mem[mem[64] + 320] = ext_call.return_data[156 len 4]
        mem[mem[64] + 352] = ext_call.return_data[188 len 4]
        mem[mem[64] + 384] = ext_call.return_data[192]
        mem[mem[64] + 416] = ext_call.return_data[224]
        mem[mem[64] + 448] = ext_call.return_data[256]
        mem[mem[64] + 480] = ext_call.return_data[0]
        mem[mem[64] + 512] = ext_call.return_data[32]
        mem[mem[64] + 544] = ext_call.return_data[0]
        mem[mem[64] + 576] = ext_call.return_data[32]
        idx = 0
        s = mem[mem[_323 + 128]]
        t = mem[64] + 608
        while idx < 36:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 1760] = mem[(7 * ceil32(return_data.size)) + 4096]
        mem[mem[64] + 1792] = mem[(7 * ceil32(return_data.size)) + 4128]
        mem[mem[64] + 1824] = mem[(7 * ceil32(return_data.size)) + 4160]
        idx = 0
        s = mem[(7 * ceil32(return_data.size)) + 4192]
        t = mem[64] + 1856
        while idx < 36:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _461 = mem[_323 + 160]
        mem[mem[64] + 3008] = 3008
        _465 = mem[_461]
        mem[mem[64] + 3040] = 96
        _469 = mem[_465]
        mem[mem[64] + 3136] = mem[_465]
        mem[mem[64] + 3168 len ceil32(_469)] = mem[_465 + 32 len ceil32(_469)]
        if ceil32(_469) <= _469:
            mem[mem[64] + 3072] = mem[_461 + 32]
            _537 = mem[_461 + 64]
            mem[mem[64] + 3104] = ceil32(_469) + 128
            _545 = mem[_537]
            mem[mem[64] + ceil32(_469) + 3168] = mem[_537]
            mem[mem[64] + ceil32(_469) + 3200 len ceil32(_545)] = mem[_537 + 32 len ceil32(_545)]
            if ceil32(_545) > _545:
                mem[mem[64] + ceil32(_469) + _545 + 3200] = 0
            return 32, ext_call.return_data[0], 
                   ext_call.return_data[32],
                   ext_call.return_data[64],
                   ext_call.return_data[96],
                   ext_call.return_data[128],
                   mem[mem[64] + 192 len 192],
                   ext_call.return_data[192],
                   ext_call.return_data[224],
                   ext_call.return_data[256],
                   ext_call.return_data[0],
                   ext_call.return_data[32],
                   ext_call.return_data[0],
                   ext_call.return_data[32],
                   mem[mem[64] + 608 len 2400],
                   3008,
                   96,
                   mem[mem[64] + 3072],
                   ceil32(_469) + 128,
                   mem[mem[64] + 3136 len ceil32(_469) + ceil32(_545) + 64]
        mem[mem[64] + _469 + 3168] = 0
        mem[mem[64] + 3072] = mem[_461 + 32]
        _541 = mem[_461 + 64]
        mem[mem[64] + 3104] = ceil32(_469) + 128
        _549 = mem[_541]
        mem[mem[64] + ceil32(_469) + 3168] = mem[_541]
        mem[mem[64] + ceil32(_469) + 3200 len ceil32(_549)] = mem[_541 + 32 len ceil32(_549)]
        if ceil32(_549) > _549:
            mem[mem[64] + ceil32(_469) + _549 + 3200] = 0
        return 32, ext_call.return_data[0], 
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96],
               ext_call.return_data[128],
               mem[mem[64] + 192 len 192],
               ext_call.return_data[192],
               ext_call.return_data[224],
               ext_call.return_data[256],
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[0],
               ext_call.return_data[32],
               mem[mem[64] + 608 len 2400],
               3008,
               96,
               mem[mem[64] + 3072],
               ceil32(_469) + 128,
               mem[mem[64] + 3136 len _469 + 32],
               0,
               mem[mem[64] + _469 + 3200 len ceil32(_469) + ceil32(_549) - _469]
    mem[(8 * ceil32(return_data.size)) + _70 + 6656] = 0
    mem[(8 * ceil32(return_data.size)) + 6528] = (8 * ceil32(return_data.size)) + 6624
    require mem[(7 * ceil32(return_data.size)) + _67 + 6560] == mem[(7 * ceil32(return_data.size)) + _67 + 6560]
    mem[(8 * ceil32(return_data.size)) + 6560] = mem[(7 * ceil32(return_data.size)) + _67 + 6560]
    _199 = mem[(7 * ceil32(return_data.size)) + _67 + 6592]
    require mem[(7 * ceil32(return_data.size)) + _67 + 6592] <= test266151307()
    require (7 * ceil32(return_data.size)) + _67 + mem[(7 * ceil32(return_data.size)) + _67 + 6592] + 6559 < (7 * ceil32(return_data.size)) + return_data.size + 6528
    _201 = mem[(7 * ceil32(return_data.size)) + _67 + mem[(7 * ceil32(return_data.size)) + _67 + 6592] + 6528]
    if mem[(7 * ceil32(return_data.size)) + _67 + mem[(7 * ceil32(return_data.size)) + _67 + 6592] + 6528] > test266151307():
        revert with 'NH{q', 65
    _203 = mem[64]
    if mem[64] + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + _67 + mem[(7 * ceil32(return_data.size)) + _67 + 6592] + 6528])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + _67 + mem[(7 * ceil32(return_data.size)) + _67 + 6592] + 6528])) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + _67 + mem[(7 * ceil32(return_data.size)) + _67 + 6592] + 6528])) + 1
    mem[_203] = _201
    require _67 + _199 + _201 + 32 <= return_data.size
    mem[_203 + 32 len ceil32(_201)] = mem[(7 * ceil32(return_data.size)) + _67 + _199 + 6560 len ceil32(_201)]
    if ceil32(_201) <= _201:
        mem[(8 * ceil32(return_data.size)) + 6592] = _203
        _321 = mem[64]
        mem[64] = mem[64] + 192
        mem[_321] = ceil32(return_data.size) + 3456
        mem[_321 + 32] = (2 * ceil32(return_data.size)) + 3616
        mem[_321 + 64] = (4 * ceil32(return_data.size)) + 3936
        mem[_321 + 96] = (6 * ceil32(return_data.size)) + 4000
        mem[_321 + 128] = (7 * ceil32(return_data.size)) + 4064
        mem[_321 + 160] = (8 * ceil32(return_data.size)) + 6528
        mem[mem[64]] = 32
        mem[mem[64] + 32] = ext_call.return_data[0]
        mem[mem[64] + 64] = ext_call.return_data[32]
        mem[mem[64] + 96] = ext_call.return_data[64]
        mem[mem[64] + 128] = ext_call.return_data[96]
        mem[mem[64] + 160] = ext_call.return_data[128]
        mem[mem[64] + 192] = ext_call.return_data[28 len 4]
        mem[mem[64] + 224] = ext_call.return_data[60 len 4]
        mem[mem[64] + 256] = ext_call.return_data[92 len 4]
        mem[mem[64] + 288] = ext_call.return_data[124 len 4]
        mem[mem[64] + 320] = ext_call.return_data[156 len 4]
        mem[mem[64] + 352] = ext_call.return_data[188 len 4]
        mem[mem[64] + 384] = ext_call.return_data[192]
        mem[mem[64] + 416] = ext_call.return_data[224]
        mem[mem[64] + 448] = ext_call.return_data[256]
        mem[mem[64] + 480] = ext_call.return_data[0]
        mem[mem[64] + 512] = ext_call.return_data[32]
        mem[mem[64] + 544] = ext_call.return_data[0]
        mem[mem[64] + 576] = ext_call.return_data[32]
        idx = 0
        s = mem[mem[_321 + 128]]
        t = mem[64] + 608
        while idx < 36:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 1760] = mem[(7 * ceil32(return_data.size)) + 4096]
        mem[mem[64] + 1792] = mem[(7 * ceil32(return_data.size)) + 4128]
        mem[mem[64] + 1824] = mem[(7 * ceil32(return_data.size)) + 4160]
        idx = 0
        s = mem[(7 * ceil32(return_data.size)) + 4192]
        t = mem[64] + 1856
        while idx < 36:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _462 = mem[_321 + 160]
        mem[mem[64] + 3008] = 3008
        _466 = mem[_462]
        mem[mem[64] + 3040] = 96
        _470 = mem[_466]
        mem[mem[64] + 3136] = mem[_466]
        mem[mem[64] + 3168 len ceil32(_470)] = mem[_466 + 32 len ceil32(_470)]
        if ceil32(_470) <= _470:
            mem[mem[64] + 3072] = mem[_462 + 32]
            _538 = mem[_462 + 64]
            mem[mem[64] + 3104] = ceil32(_470) + 128
            _546 = mem[_538]
            mem[mem[64] + ceil32(_470) + 3168] = mem[_538]
            mem[mem[64] + ceil32(_470) + 3200 len ceil32(_546)] = mem[_538 + 32 len ceil32(_546)]
            if ceil32(_546) > _546:
                mem[mem[64] + ceil32(_470) + _546 + 3200] = 0
            return 32, ext_call.return_data[0], 
                   ext_call.return_data[32],
                   ext_call.return_data[64],
                   ext_call.return_data[96],
                   ext_call.return_data[128],
                   mem[mem[64] + 192 len 192],
                   ext_call.return_data[192],
                   ext_call.return_data[224],
                   ext_call.return_data[256],
                   ext_call.return_data[0],
                   ext_call.return_data[32],
                   ext_call.return_data[0],
                   ext_call.return_data[32],
                   mem[mem[64] + 608 len 2400],
                   3008,
                   96,
                   mem[mem[64] + 3072],
                   ceil32(_470) + 128,
                   mem[mem[64] + 3136 len ceil32(_470) + ceil32(_546) + 64]
        mem[mem[64] + _470 + 3168] = 0
        mem[mem[64] + 3072] = mem[_462 + 32]
        _542 = mem[_462 + 64]
        mem[mem[64] + 3104] = ceil32(_470) + 128
        _550 = mem[_542]
        mem[mem[64] + ceil32(_470) + 3168] = mem[_542]
        mem[mem[64] + ceil32(_470) + 3200 len ceil32(_550)] = mem[_542 + 32 len ceil32(_550)]
        if ceil32(_550) > _550:
            mem[mem[64] + ceil32(_470) + _550 + 3200] = 0
        return 32, ext_call.return_data[0], 
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96],
               ext_call.return_data[128],
               mem[mem[64] + 192 len 192],
               ext_call.return_data[192],
               ext_call.return_data[224],
               ext_call.return_data[256],
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[0],
               ext_call.return_data[32],
               mem[mem[64] + 608 len 2400],
               3008,
               96,
               mem[mem[64] + 3072],
               ceil32(_470) + 128,
               mem[mem[64] + 3136 len _470 + 32],
               0,
               mem[mem[64] + _470 + 3200 len ceil32(_470) + ceil32(_550) - _470]
    mem[_203 + _201 + 32] = 0
    mem[(8 * ceil32(return_data.size)) + 6592] = _203
    _325 = mem[64]
    mem[64] = mem[64] + 192
    mem[_325] = ceil32(return_data.size) + 3456
    mem[_325 + 32] = (2 * ceil32(return_data.size)) + 3616
    mem[_325 + 64] = (4 * ceil32(return_data.size)) + 3936
    mem[_325 + 96] = (6 * ceil32(return_data.size)) + 4000
    mem[_325 + 128] = (7 * ceil32(return_data.size)) + 4064
    mem[_325 + 160] = (8 * ceil32(return_data.size)) + 6528
    mem[mem[64]] = 32
    mem[mem[64] + 32] = ext_call.return_data[0]
    mem[mem[64] + 64] = ext_call.return_data[32]
    mem[mem[64] + 96] = ext_call.return_data[64]
    mem[mem[64] + 128] = ext_call.return_data[96]
    mem[mem[64] + 160] = ext_call.return_data[128]
    mem[mem[64] + 192] = ext_call.return_data[28 len 4]
    mem[mem[64] + 224] = ext_call.return_data[60 len 4]
    mem[mem[64] + 256] = ext_call.return_data[92 len 4]
    mem[mem[64] + 288] = ext_call.return_data[124 len 4]
    mem[mem[64] + 320] = ext_call.return_data[156 len 4]
    mem[mem[64] + 352] = ext_call.return_data[188 len 4]
    mem[mem[64] + 384] = ext_call.return_data[192]
    mem[mem[64] + 416] = ext_call.return_data[224]
    mem[mem[64] + 448] = ext_call.return_data[256]
    mem[mem[64] + 480] = ext_call.return_data[0]
    mem[mem[64] + 512] = ext_call.return_data[32]
    mem[mem[64] + 544] = ext_call.return_data[0]
    mem[mem[64] + 576] = ext_call.return_data[32]
    idx = 0
    s = mem[mem[_325 + 128]]
    t = mem[64] + 608
    while idx < 36:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 1760] = mem[(7 * ceil32(return_data.size)) + 4096]
    mem[mem[64] + 1792] = mem[(7 * ceil32(return_data.size)) + 4128]
    mem[mem[64] + 1824] = mem[(7 * ceil32(return_data.size)) + 4160]
    idx = 0
    s = mem[(7 * ceil32(return_data.size)) + 4192]
    t = mem[64] + 1856
    while idx < 36:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _463 = mem[_325 + 160]
    mem[mem[64] + 3008] = 3008
    _467 = mem[_463]
    mem[mem[64] + 3040] = 96
    _471 = mem[_467]
    mem[mem[64] + 3136] = mem[_467]
    mem[mem[64] + 3168 len ceil32(_471)] = mem[_467 + 32 len ceil32(_471)]
    if ceil32(_471) <= _471:
        mem[mem[64] + 3072] = mem[_463 + 32]
        _539 = mem[_463 + 64]
        mem[mem[64] + 3104] = ceil32(_471) + 128
        _547 = mem[_539]
        mem[mem[64] + ceil32(_471) + 3168] = mem[_539]
        mem[mem[64] + ceil32(_471) + 3200 len ceil32(_547)] = mem[_539 + 32 len ceil32(_547)]
        if ceil32(_547) > _547:
            mem[mem[64] + ceil32(_471) + _547 + 3200] = 0
        return 32, ext_call.return_data[0], 
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96],
               ext_call.return_data[128],
               mem[mem[64] + 192 len 192],
               ext_call.return_data[192],
               ext_call.return_data[224],
               ext_call.return_data[256],
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[0],
               ext_call.return_data[32],
               mem[mem[64] + 608 len 2400],
               3008,
               96,
               mem[mem[64] + 3072],
               ceil32(_471) + 128,
               mem[mem[64] + 3136 len ceil32(_471) + ceil32(_547) + 64]
    mem[mem[64] + _471 + 3168] = 0
    mem[mem[64] + 3072] = mem[_463 + 32]
    _543 = mem[_463 + 64]
    mem[mem[64] + 3104] = ceil32(_471) + 128
    _551 = mem[_543]
    mem[mem[64] + ceil32(_471) + 3168] = mem[_543]
    mem[mem[64] + ceil32(_471) + 3200 len ceil32(_551)] = mem[_543 + 32 len ceil32(_551)]
    if ceil32(_551) > _551:
        mem[mem[64] + ceil32(_471) + _551 + 3200] = 0
    return 32, ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           mem[mem[64] + 192 len 192],
           ext_call.return_data[192],
           ext_call.return_data[224],
           ext_call.return_data[256],
           ext_call.return_data[0],
           ext_call.return_data[32],
           ext_call.return_data[0],
           ext_call.return_data[32],
           mem[mem[64] + 608 len 2400],
           3008,
           96,
           mem[mem[64] + 3072],
           ceil32(_471) + 128,
           mem[mem[64] + 3136 len _471 + 32],
           0,
           mem[mem[64] + _471 + 3200 len ceil32(_471) + ceil32(_551) - _471]
}

function sub_c05bc01f(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _627 = mem[(32 * idx) + 128]
            _629 = mem[64]
            mem[64] = mem[64] + 192
            _632 = mem[64]
            mem[64] = mem[64] + 160
            mem[_632] = 0
            mem[_632 + 32] = 0
            mem[_632 + 64] = 0
            mem[_632 + 96] = 0
            mem[_632 + 128] = 0
            mem[_629] = _632
            _634 = mem[64]
            mem[64] = mem[64] + 128
            _635 = mem[64]
            mem[64] = mem[64] + 192
            mem[_635] = 0
            mem[_635 + 32] = 0
            mem[_635 + 64] = 0
            mem[_635 + 96] = 0
            mem[_635 + 128] = 0
            mem[_635 + 160] = 0
            mem[_634] = _635
            mem[_634 + 32] = 0
            mem[_634 + 64] = 0
            mem[_634 + 96] = 0
            mem[_629 + 32] = _634
            _638 = mem[64]
            mem[64] = mem[64] + 64
            mem[_638] = 0
            mem[_638 + 32] = 0
            mem[_629 + 64] = _638
            _641 = mem[64]
            mem[64] = mem[64] + 64
            mem[_641] = 0
            mem[_641 + 32] = 0
            mem[_629 + 96] = _641
            _646 = mem[64]
            mem[64] = mem[64] + 160
            _647 = mem[64]
            mem[64] = mem[64] + 1152
            mem[_647 len 1152] = call.data[calldata.size len 1152]
            mem[_646] = _647
            mem[_646 + 32] = 0
            mem[_646 + 64] = 0
            mem[_646 + 96] = 0
            _648 = mem[64]
            mem[64] = mem[64] + 1152
            mem[_648 len 1152] = call.data[calldata.size len 1152]
            mem[_646 + 128] = _648
            mem[_629 + 128] = _646
            _651 = mem[64]
            mem[64] = mem[64] + 96
            mem[_651] = 96
            mem[_651 + 32] = 0
            mem[_651 + 64] = 96
            mem[_629 + 160] = _651
            require ext_code.size(this.address)
            staticcall this.address.0xa01bf1c2 with:
                    gas gas_remaining wei
                   args _627
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _659 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            _663 = mem[64]
            if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 160
            require mem[_659] == mem[_659]
            mem[_663] = mem[_659]
            require mem[_659 + 32] == mem[_659 + 32]
            mem[_663 + 32] = mem[_659 + 32]
            require mem[_659 + 64] == mem[_659 + 64]
            mem[_663 + 64] = mem[_659 + 64]
            require mem[_659 + 96] == mem[_659 + 96]
            mem[_663 + 96] = mem[_659 + 96]
            require mem[_659 + 128] == mem[_659 + 128]
            mem[_663 + 128] = mem[_659 + 128]
            require ext_code.size(this.address)
            staticcall this.address.0x60072b11 with:
                    gas gas_remaining wei
                   args _627, mem[_663 + 96]
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _698 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _703 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 128
            require return_data.size >= 192
            _706 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[_698] == mem[_698 + 28 len 4]
            mem[_706] = mem[_698]
            require mem[_698 + 32] == mem[_698 + 60 len 4]
            mem[_706 + 32] = mem[_698 + 32]
            require mem[_698 + 64] == mem[_698 + 92 len 4]
            mem[_706 + 64] = mem[_698 + 64]
            require mem[_698 + 96] == mem[_698 + 124 len 4]
            mem[_706 + 96] = mem[_698 + 96]
            require mem[_698 + 128] == mem[_698 + 156 len 4]
            mem[_706 + 128] = mem[_698 + 128]
            require mem[_698 + 160] == mem[_698 + 188 len 4]
            mem[_706 + 160] = mem[_698 + 160]
            mem[_703] = _706
            require mem[_698 + 192] == mem[_698 + 192]
            mem[_703 + 32] = mem[_698 + 192]
            require mem[_698 + 224] == mem[_698 + 224]
            mem[_703 + 64] = mem[_698 + 224]
            require mem[_698 + 256] == mem[_698 + 256]
            mem[_703 + 96] = mem[_698 + 256]
            require ext_code.size(this.address)
            staticcall this.address.0x877e3817 with:
                    gas gas_remaining wei
                   args _627
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _720 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _721 = mem[64]
            if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 64
            require mem[_720] == mem[_720]
            mem[_721] = mem[_720]
            require mem[_720 + 32] == mem[_720 + 32]
            mem[_721 + 32] = mem[_720 + 32]
            require ext_code.size(this.address)
            staticcall this.address.0xb328d586 with:
                    gas gas_remaining wei
                   args _627
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _747 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _751 = mem[64]
            if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 64
            require mem[_747] == mem[_747]
            mem[_751] = mem[_747]
            require mem[_747 + 32] == mem[_747 + 32]
            mem[_751 + 32] = mem[_747 + 32]
            require ext_code.size(this.address)
            staticcall this.address.0x42a5c23a with:
                    gas gas_remaining wei
                   args _627, mem[_706 + 96] << 224, mem[_663 + 128], mem[_663 + 96]
            mem[mem[64] len 2400] = ext_call.return_data[0 len 2400]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _761 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 2400
            _762 = mem[64]
            if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 160
            require _761 + 31 < _761 + return_data.size
            _763 = mem[64]
            if mem[64] + 1152 > test266151307() or mem[64] + 1152 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 1152
            require 1152 <= return_data.size
            s = 0
            t = _761
            u = _763
            while s < 36:
                require mem[t] == mem[t + 31 len 1]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_762] = _763
            require mem[_761 + 1152] == mem[_761 + 1152]
            mem[_762 + 32] = mem[_761 + 1152]
            require mem[_761 + 1184] == mem[_761 + 1184]
            mem[_762 + 64] = mem[_761 + 1184]
            require mem[_761 + 1216] == mem[_761 + 1216]
            mem[_762 + 96] = mem[_761 + 1216]
            require _761 + 1279 < _761 + return_data.size
            _802 = mem[64]
            if mem[64] + 1152 > test266151307() or mem[64] + 1152 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 1152
            require 2400 <= return_data.size
            s = 0
            t = _761 + 1248
            u = _802
            while s < 36:
                require mem[t] == bool(mem[t])
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_762 + 128] = _802
            mem[mem[64]] = 0x5718e17b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _627
            require ext_code.size(this.address)
            staticcall this.address.0x5718e17b with:
                    gas gas_remaining wei
                   args _627
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _860 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _864 = mem[_860]
            require mem[_860] <= test266151307()
            require return_data.size - mem[_860] >= 96
            if not bool(_860 + ceil32(return_data.size) + 96 <= test266151307()):
                revert with 'NH{q', 65
            mem[64] = _860 + ceil32(return_data.size) + 96
            _879 = mem[_860 + _864]
            require mem[_860 + _864] <= test266151307()
            require _860 + _864 + mem[_860 + _864] + 31 < _860 + return_data.size
            _882 = mem[_860 + _864 + mem[_860 + _864]]
            if mem[_860 + _864 + mem[_860 + _864]] > test266151307():
                revert with 'NH{q', 65
            if _860 + ceil32(return_data.size) + ceil32(ceil32(mem[_860 + _864 + mem[_860 + _864]])) + 97 > test266151307() or ceil32(ceil32(mem[_860 + _864 + mem[_860 + _864]])) + 97 < 96:
                revert with 'NH{q', 65
            mem[64] = _860 + ceil32(return_data.size) + ceil32(ceil32(mem[_860 + _864 + mem[_860 + _864]])) + 97
            mem[_860 + ceil32(return_data.size) + 96] = _882
            require _864 + _879 + _882 + 32 <= return_data.size
            s = 0
            while s < _882:
                mem[_860 + ceil32(return_data.size) + s + 128] = mem[_860 + _864 + _879 + s + 32]
                s = s + 32
                continue 
            if ceil32(_882) <= _882:
                mem[_860 + ceil32(return_data.size)] = _860 + ceil32(return_data.size) + 96
                require mem[_860 + _864 + 32] == mem[_860 + _864 + 32]
                mem[_860 + ceil32(return_data.size) + 32] = mem[_860 + _864 + 32]
                _979 = mem[_860 + _864 + 64]
                require mem[_860 + _864 + 64] <= test266151307()
                require _860 + _864 + mem[_860 + _864 + 64] + 31 < _860 + return_data.size
                _984 = mem[_860 + _864 + mem[_860 + _864 + 64]]
                if mem[_860 + _864 + mem[_860 + _864 + 64]] > test266151307():
                    revert with 'NH{q', 65
                _988 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_860 + _864 + mem[_860 + _864 + 64]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_860 + _864 + mem[_860 + _864 + 64]])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_860 + _864 + mem[_860 + _864 + 64]])) + 1
                mem[_988] = _984
                require _864 + _979 + _984 + 32 <= return_data.size
                s = 0
                while s < _984:
                    mem[_988 + s + 32] = mem[_860 + _864 + _979 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_984) <= _984:
                    mem[_860 + ceil32(return_data.size) + 64] = _988
                    _1028 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1028] = _663
                    mem[_1028 + 32] = _703
                    mem[_1028 + 64] = _721
                    mem[_1028 + 96] = _751
                    mem[_1028 + 128] = _762
                    mem[_1028 + 160] = _860 + ceil32(return_data.size)
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1028
                else:
                    mem[_988 + _984 + 32] = 0
                    mem[_860 + ceil32(return_data.size) + 64] = _988
                    _1031 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1031] = _663
                    mem[_1031 + 32] = _703
                    mem[_1031 + 64] = _721
                    mem[_1031 + 96] = _751
                    mem[_1031 + 128] = _762
                    mem[_1031 + 160] = _860 + ceil32(return_data.size)
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1031
            else:
                mem[_860 + ceil32(return_data.size) + _882 + 128] = 0
                mem[_860 + ceil32(return_data.size)] = _860 + ceil32(return_data.size) + 96
                require mem[_860 + _864 + 32] == mem[_860 + _864 + 32]
                mem[_860 + ceil32(return_data.size) + 32] = mem[_860 + _864 + 32]
                _981 = mem[_860 + _864 + 64]
                require mem[_860 + _864 + 64] <= test266151307()
                require _860 + _864 + mem[_860 + _864 + 64] + 31 < _860 + return_data.size
                _985 = mem[_860 + _864 + mem[_860 + _864 + 64]]
                if mem[_860 + _864 + mem[_860 + _864 + 64]] > test266151307():
                    revert with 'NH{q', 65
                _990 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_860 + _864 + mem[_860 + _864 + 64]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_860 + _864 + mem[_860 + _864 + 64]])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_860 + _864 + mem[_860 + _864 + 64]])) + 1
                mem[_990] = _985
                require _864 + _981 + _985 + 32 <= return_data.size
                s = 0
                while s < _985:
                    mem[_990 + s + 32] = mem[_860 + _864 + _981 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_985) <= _985:
                    mem[_860 + ceil32(return_data.size) + 64] = _990
                    _1029 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1029] = _663
                    mem[_1029 + 32] = _703
                    mem[_1029 + 64] = _721
                    mem[_1029 + 96] = _751
                    mem[_1029 + 128] = _762
                    mem[_1029 + 160] = _860 + ceil32(return_data.size)
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1029
                else:
                    mem[_990 + _985 + 32] = 0
                    mem[_860 + ceil32(return_data.size) + 64] = _990
                    _1033 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1033] = _663
                    mem[_1033 + 32] = _703
                    mem[_1033 + 64] = _721
                    mem[_1033 + 96] = _751
                    mem[_1033 + 128] = _762
                    mem[_1033 + 160] = _860 + ceil32(return_data.size)
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1033
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _626 = mem[64]
        mem[mem[64]] = 32
        _631 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + (32 * _631) + 64
        u = mem[64] + 64
        while idx < _631:
            mem[u] = t + -_626 - 64
            _841 = mem[s]
            _847 = mem[mem[s]]
            mem[t] = mem[mem[mem[s]]]
            mem[t + 32] = mem[_847 + 32]
            mem[t + 64] = mem[_847 + 64]
            mem[t + 96] = mem[_847 + 96]
            mem[t + 128] = mem[_847 + 128]
            _876 = mem[_841 + 32]
            _877 = mem[mem[_841 + 32]]
            mem[t + 160] = mem[mem[mem[_841 + 32]] + 28 len 4]
            mem[t + 192] = mem[_877 + 60 len 4]
            mem[t + 224] = mem[_877 + 92 len 4]
            mem[t + 256] = mem[_877 + 124 len 4]
            mem[t + 288] = mem[_877 + 156 len 4]
            mem[t + 320] = mem[_877 + 188 len 4]
            mem[t + 352] = mem[_876 + 32]
            mem[t + 384] = mem[_876 + 64]
            mem[t + 416] = mem[_876 + 96]
            _914 = mem[_841 + 64]
            mem[t + 448] = mem[mem[_841 + 64]]
            mem[t + 480] = mem[_914 + 32]
            _923 = mem[_841 + 96]
            mem[t + 512] = mem[mem[_841 + 96]]
            mem[t + 544] = mem[_923 + 32]
            _933 = mem[_841 + 128]
            v = 0
            w = mem[mem[_841 + 128]]
            x = t + 576
            while v < 36:
                mem[x] = mem[w + 31 len 1]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            mem[t + 1728] = mem[_933 + 32]
            mem[t + 1760] = mem[_933 + 64]
            mem[t + 1792] = mem[_933 + 96]
            v = 0
            w = mem[_933 + 128]
            x = t + 1824
            while v < 36:
                mem[x] = bool(mem[w])
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _1021 = mem[_841 + 160]
            mem[t + 2976] = 3008
            _1023 = mem[_1021]
            mem[t + 3008] = 96
            _1026 = mem[_1023]
            mem[t + 3104] = mem[_1023]
            v = 0
            while v < _1026:
                mem[t + v + 3136] = mem[_1023 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1026) <= _1026:
                mem[t + 3040] = mem[_1021 + 32]
                _1068 = mem[_1021 + 64]
                mem[t + 3072] = ceil32(_1026) + 128
                _1071 = mem[_1068]
                mem[t + ceil32(_1026) + 3136] = mem[_1068]
                v = 0
                while v < _1071:
                    mem[t + ceil32(_1026) + v + 3168] = mem[_1068 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1071) > _1071:
                    mem[t + ceil32(_1026) + _1071 + 3168] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_1026) + ceil32(_1071) + 3168
                u = u + 32
                continue 
            mem[t + _1026 + 3136] = 0
            mem[t + 3040] = mem[_1021 + 32]
            _1069 = mem[_1021 + 64]
            mem[t + 3072] = ceil32(_1026) + 128
            _1073 = mem[_1069]
            mem[t + ceil32(_1026) + 3136] = mem[_1069]
            v = 0
            while v < _1073:
                mem[t + ceil32(_1026) + v + 3168] = mem[_1069 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1073) > _1073:
                mem[t + ceil32(_1026) + _1073 + 3168] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_1026) + ceil32(_1073) + 3168
            u = u + 32
            continue 
    else:
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 321] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 353] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 385] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 417] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 449] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 321
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 609] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 641] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 673] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 705] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 737] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 769] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 481] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 609
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 513] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 545] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 577] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 481
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 801] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 833] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 801
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 865] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 897] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 865
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1089 len 1152] = call.data[calldata.size len 1152]
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 929] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1089
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 961] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 993] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1025] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 2241 len 1152] = call.data[calldata.size len 1152]
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1057] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 2241
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 929
        mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 3489
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 3393] = 96
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 3425] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 3457] = 96
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 3393
        mem[var53002] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = var53002
        idx = var53003
        while idx - 1:
            _513 = mem[64]
            mem[64] = mem[64] + 192
            mem[64] = mem[64] + 160
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 321] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 353] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 385] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 417] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 449] = 0
            mem[_513] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 321
            mem[64] = mem[64] + 128
            mem[64] = mem[64] + 192
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 609] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 641] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 673] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 705] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 737] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 769] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 481] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 609
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 513] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 545] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 577] = 0
            mem[_513 + 32] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 481
            mem[64] = mem[64] + 64
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 801] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 833] = 0
            mem[_513 + 64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 801
            mem[64] = mem[64] + 64
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 865] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 897] = 0
            mem[_513 + 96] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 865
            mem[64] = mem[64] + 160
            mem[64] = mem[64] + 1152
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1089 len 1152] = call.data[calldata.size len 1152]
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 929] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1089
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 961] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 993] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1025] = 0
            mem[64] = mem[64] + 1152
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 2241 len 1152] = call.data[calldata.size len 1152]
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1057] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 2241
            mem[_513 + 128] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 929
            mem[64] = mem[64] + 96
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 3393] = 96
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 3425] = 0
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 3457] = 96
            mem[_513 + 160] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 3393
            mem[s + 32] = _513
            s = _513
            s = _513
            s = s + 32
            idx = idx - 1
            continue 
        _840 = mem[96]
        idx = 0
        while idx < _840:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _845 = mem[(32 * idx) + 128]
            _849 = mem[64]
            mem[64] = mem[64] + 192
            _852 = mem[64]
            mem[64] = mem[64] + 160
            mem[_852] = 0
            mem[_852 + 32] = 0
            mem[_852 + 64] = 0
            mem[_852 + 96] = 0
            mem[_852 + 128] = 0
            mem[_849] = _852
            _853 = mem[64]
            mem[64] = mem[64] + 128
            _855 = mem[64]
            mem[64] = mem[64] + 192
            mem[_855] = 0
            mem[_855 + 32] = 0
            mem[_855 + 64] = 0
            mem[_855 + 96] = 0
            mem[_855 + 128] = 0
            mem[_855 + 160] = 0
            mem[_853] = _855
            mem[_853 + 32] = 0
            mem[_853 + 64] = 0
            mem[_853 + 96] = 0
            mem[_849 + 32] = _853
            _857 = mem[64]
            mem[64] = mem[64] + 64
            mem[_857] = 0
            mem[_857 + 32] = 0
            mem[_849 + 64] = _857
            _861 = mem[64]
            mem[64] = mem[64] + 64
            mem[_861] = 0
            mem[_861 + 32] = 0
            mem[_849 + 96] = _861
            _866 = mem[64]
            mem[64] = mem[64] + 160
            _868 = mem[64]
            mem[64] = mem[64] + 1152
            mem[_868 len 1152] = call.data[calldata.size len 1152]
            mem[_866] = _868
            mem[_866 + 32] = 0
            mem[_866 + 64] = 0
            mem[_866 + 96] = 0
            _869 = mem[64]
            mem[64] = mem[64] + 1152
            mem[_869 len 1152] = call.data[calldata.size len 1152]
            mem[_866 + 128] = _869
            mem[_849 + 128] = _866
            _873 = mem[64]
            mem[64] = mem[64] + 96
            mem[_873] = 96
            mem[_873 + 32] = 0
            mem[_873 + 64] = 96
            mem[_849 + 160] = _873
            require ext_code.size(this.address)
            staticcall this.address.0xa01bf1c2 with:
                    gas gas_remaining wei
                   args _845
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _885 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            _889 = mem[64]
            if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 160
            require mem[_885] == mem[_885]
            mem[_889] = mem[_885]
            require mem[_885 + 32] == mem[_885 + 32]
            mem[_889 + 32] = mem[_885 + 32]
            require mem[_885 + 64] == mem[_885 + 64]
            mem[_889 + 64] = mem[_885 + 64]
            require mem[_885 + 96] == mem[_885 + 96]
            mem[_889 + 96] = mem[_885 + 96]
            require mem[_885 + 128] == mem[_885 + 128]
            mem[_889 + 128] = mem[_885 + 128]
            require ext_code.size(this.address)
            staticcall this.address.0x60072b11 with:
                    gas gas_remaining wei
                   args _845, mem[_889 + 96]
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _947 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _951 = mem[64]
            if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 128
            require return_data.size >= 192
            _953 = mem[64]
            if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 192
            require mem[_947] == mem[_947 + 28 len 4]
            mem[_953] = mem[_947]
            require mem[_947 + 32] == mem[_947 + 60 len 4]
            mem[_953 + 32] = mem[_947 + 32]
            require mem[_947 + 64] == mem[_947 + 92 len 4]
            mem[_953 + 64] = mem[_947 + 64]
            require mem[_947 + 96] == mem[_947 + 124 len 4]
            mem[_953 + 96] = mem[_947 + 96]
            require mem[_947 + 128] == mem[_947 + 156 len 4]
            mem[_953 + 128] = mem[_947 + 128]
            require mem[_947 + 160] == mem[_947 + 188 len 4]
            mem[_953 + 160] = mem[_947 + 160]
            mem[_951] = _953
            require mem[_947 + 192] == mem[_947 + 192]
            mem[_951 + 32] = mem[_947 + 192]
            require mem[_947 + 224] == mem[_947 + 224]
            mem[_951 + 64] = mem[_947 + 224]
            require mem[_947 + 256] == mem[_947 + 256]
            mem[_951 + 96] = mem[_947 + 256]
            require ext_code.size(this.address)
            staticcall this.address.0x877e3817 with:
                    gas gas_remaining wei
                   args _845
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _965 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _966 = mem[64]
            if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 64
            require mem[_965] == mem[_965]
            mem[_966] = mem[_965]
            require mem[_965 + 32] == mem[_965 + 32]
            mem[_966 + 32] = mem[_965 + 32]
            require ext_code.size(this.address)
            staticcall this.address.0xb328d586 with:
                    gas gas_remaining wei
                   args _845
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _992 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _994 = mem[64]
            if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 64
            require mem[_992] == mem[_992]
            mem[_994] = mem[_992]
            require mem[_992 + 32] == mem[_992 + 32]
            mem[_994 + 32] = mem[_992 + 32]
            require ext_code.size(this.address)
            staticcall this.address.0x42a5c23a with:
                    gas gas_remaining wei
                   args _845, mem[_953 + 96] << 224, mem[_889 + 128], mem[_889 + 96]
            mem[mem[64] len 2400] = ext_call.return_data[0 len 2400]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1012 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 2400
            _1013 = mem[64]
            if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 160
            require _1012 + 31 < _1012 + return_data.size
            _1014 = mem[64]
            if mem[64] + 1152 > test266151307() or mem[64] + 1152 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 1152
            require 1152 <= return_data.size
            s = 0
            t = _1012
            u = _1014
            while s < 36:
                require mem[t] == mem[t + 31 len 1]
                mem[u] = mem[t]
                _840 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_1013] = _1014
            require mem[_1012 + 1152] == mem[_1012 + 1152]
            mem[_1013 + 32] = mem[_1012 + 1152]
            require mem[_1012 + 1184] == mem[_1012 + 1184]
            mem[_1013 + 64] = mem[_1012 + 1184]
            require mem[_1012 + 1216] == mem[_1012 + 1216]
            mem[_1013 + 96] = mem[_1012 + 1216]
            require _1012 + 1279 < _1012 + return_data.size
            _1056 = mem[64]
            if mem[64] + 1152 > test266151307() or mem[64] + 1152 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 1152
            require 2400 <= return_data.size
            s = 0
            t = _1012 + 1248
            u = _1056
            while s < 36:
                require mem[t] == bool(mem[t])
                mem[u] = mem[t]
                _840 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_1013 + 128] = _1056
            mem[mem[64]] = 0x5718e17b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _845
            require ext_code.size(this.address)
            staticcall this.address.0x5718e17b with:
                    gas gas_remaining wei
                   args _845
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1074 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1075 = mem[_1074]
            require mem[_1074] <= test266151307()
            require return_data.size - mem[_1074] >= 96
            if not bool(_1074 + ceil32(return_data.size) + 96 <= test266151307()):
                revert with 'NH{q', 65
            mem[64] = _1074 + ceil32(return_data.size) + 96
            _1084 = mem[_1074 + _1075]
            require mem[_1074 + _1075] <= test266151307()
            require _1074 + _1075 + mem[_1074 + _1075] + 31 < _1074 + return_data.size
            _1085 = mem[_1074 + _1075 + mem[_1074 + _1075]]
            if mem[_1074 + _1075 + mem[_1074 + _1075]] > test266151307():
                revert with 'NH{q', 65
            if _1074 + ceil32(return_data.size) + ceil32(ceil32(mem[_1074 + _1075 + mem[_1074 + _1075]])) + 97 > test266151307() or ceil32(ceil32(mem[_1074 + _1075 + mem[_1074 + _1075]])) + 97 < 96:
                revert with 'NH{q', 65
            mem[64] = _1074 + ceil32(return_data.size) + ceil32(ceil32(mem[_1074 + _1075 + mem[_1074 + _1075]])) + 97
            mem[_1074 + ceil32(return_data.size) + 96] = _1085
            require _1075 + _1084 + _1085 + 32 <= return_data.size
            s = 0
            while s < _1085:
                mem[_1074 + ceil32(return_data.size) + s + 128] = mem[_1074 + _1075 + _1084 + s + 32]
                _840 = mem[96]
                s = s + 32
                continue 
            if ceil32(_1085) <= _1085:
                mem[_1074 + ceil32(return_data.size)] = _1074 + ceil32(return_data.size) + 96
                require mem[_1074 + _1075 + 32] == mem[_1074 + _1075 + 32]
                mem[_1074 + ceil32(return_data.size) + 32] = mem[_1074 + _1075 + 32]
                _1132 = mem[_1074 + _1075 + 64]
                require mem[_1074 + _1075 + 64] <= test266151307()
                require _1074 + _1075 + mem[_1074 + _1075 + 64] + 31 < _1074 + return_data.size
                _1135 = mem[_1074 + _1075 + mem[_1074 + _1075 + 64]]
                if mem[_1074 + _1075 + mem[_1074 + _1075 + 64]] > test266151307():
                    revert with 'NH{q', 65
                _1138 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_1074 + _1075 + mem[_1074 + _1075 + 64]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1074 + _1075 + mem[_1074 + _1075 + 64]])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_1074 + _1075 + mem[_1074 + _1075 + 64]])) + 1
                mem[_1138] = _1135
                require _1075 + _1132 + _1135 + 32 <= return_data.size
                s = 0
                while s < _1135:
                    mem[_1138 + s + 32] = mem[_1074 + _1075 + _1132 + s + 32]
                    _840 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_1135) <= _1135:
                    mem[_1074 + ceil32(return_data.size) + 64] = _1138
                    _1156 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1156] = _889
                    mem[_1156 + 32] = _951
                    mem[_1156 + 64] = _966
                    mem[_1156 + 96] = _994
                    mem[_1156 + 128] = _1013
                    mem[_1156 + 160] = _1074 + ceil32(return_data.size)
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1156
                else:
                    mem[_1138 + _1135 + 32] = 0
                    mem[_1074 + ceil32(return_data.size) + 64] = _1138
                    _1159 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1159] = _889
                    mem[_1159 + 32] = _951
                    mem[_1159 + 64] = _966
                    mem[_1159 + 96] = _994
                    mem[_1159 + 128] = _1013
                    mem[_1159 + 160] = _1074 + ceil32(return_data.size)
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1159
            else:
                mem[_1074 + ceil32(return_data.size) + _1085 + 128] = 0
                mem[_1074 + ceil32(return_data.size)] = _1074 + ceil32(return_data.size) + 96
                require mem[_1074 + _1075 + 32] == mem[_1074 + _1075 + 32]
                mem[_1074 + ceil32(return_data.size) + 32] = mem[_1074 + _1075 + 32]
                _1133 = mem[_1074 + _1075 + 64]
                require mem[_1074 + _1075 + 64] <= test266151307()
                require _1074 + _1075 + mem[_1074 + _1075 + 64] + 31 < _1074 + return_data.size
                _1136 = mem[_1074 + _1075 + mem[_1074 + _1075 + 64]]
                if mem[_1074 + _1075 + mem[_1074 + _1075 + 64]] > test266151307():
                    revert with 'NH{q', 65
                _1139 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_1074 + _1075 + mem[_1074 + _1075 + 64]])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_1074 + _1075 + mem[_1074 + _1075 + 64]])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_1074 + _1075 + mem[_1074 + _1075 + 64]])) + 1
                mem[_1139] = _1136
                require _1075 + _1133 + _1136 + 32 <= return_data.size
                s = 0
                while s < _1136:
                    mem[_1139 + s + 32] = mem[_1074 + _1075 + _1133 + s + 32]
                    _840 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_1136) <= _1136:
                    mem[_1074 + ceil32(return_data.size) + 64] = _1139
                    _1157 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1157] = _889
                    mem[_1157 + 32] = _951
                    mem[_1157 + 64] = _966
                    mem[_1157 + 96] = _994
                    mem[_1157 + 128] = _1013
                    mem[_1157 + 160] = _1074 + ceil32(return_data.size)
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1157
                else:
                    mem[_1139 + _1136 + 32] = 0
                    mem[_1074 + ceil32(return_data.size) + 64] = _1139
                    _1161 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1161] = _889
                    mem[_1161 + 32] = _951
                    mem[_1161 + 64] = _966
                    mem[_1161 + 96] = _994
                    mem[_1161 + 128] = _1013
                    mem[_1161 + 160] = _1074 + ceil32(return_data.size)
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1161
            if idx == -1:
                revert with 'NH{q', 17
            _840 = mem[96]
            idx = idx + 1
            continue 
        _844 = mem[64]
        mem[mem[64]] = 32
        _851 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + (32 * _851) + 64
        u = mem[64] + 64
        while idx < _851:
            mem[u] = t + -_844 - 64
            _1059 = mem[s]
            _1062 = mem[mem[s]]
            mem[t] = mem[mem[mem[s]]]
            mem[t + 32] = mem[_1062 + 32]
            mem[t + 64] = mem[_1062 + 64]
            mem[t + 96] = mem[_1062 + 96]
            mem[t + 128] = mem[_1062 + 128]
            _1081 = mem[_1059 + 32]
            _1082 = mem[mem[_1059 + 32]]
            mem[t + 160] = mem[mem[mem[_1059 + 32]] + 28 len 4]
            mem[t + 192] = mem[_1082 + 60 len 4]
            mem[t + 224] = mem[_1082 + 92 len 4]
            mem[t + 256] = mem[_1082 + 124 len 4]
            mem[t + 288] = mem[_1082 + 156 len 4]
            mem[t + 320] = mem[_1082 + 188 len 4]
            mem[t + 352] = mem[_1081 + 32]
            mem[t + 384] = mem[_1081 + 64]
            mem[t + 416] = mem[_1081 + 96]
            _1102 = mem[_1059 + 64]
            mem[t + 448] = mem[mem[_1059 + 64]]
            mem[t + 480] = mem[_1102 + 32]
            _1107 = mem[_1059 + 96]
            mem[t + 512] = mem[mem[_1059 + 96]]
            mem[t + 544] = mem[_1107 + 32]
            _1112 = mem[_1059 + 128]
            v = 0
            w = mem[mem[_1059 + 128]]
            x = t + 576
            while v < 36:
                mem[x] = mem[w + 31 len 1]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            mem[t + 1728] = mem[_1112 + 32]
            mem[t + 1760] = mem[_1112 + 64]
            mem[t + 1792] = mem[_1112 + 96]
            v = 0
            w = mem[_1112 + 128]
            x = t + 1824
            while v < 36:
                mem[x] = bool(mem[w])
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _1153 = mem[_1059 + 160]
            mem[t + 2976] = 3008
            _1154 = mem[_1153]
            mem[t + 3008] = 96
            _1155 = mem[_1154]
            mem[t + 3104] = mem[_1154]
            v = 0
            while v < _1155:
                mem[t + v + 3136] = mem[_1154 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1155) <= _1155:
                mem[t + 3040] = mem[_1153 + 32]
                _1176 = mem[_1153 + 64]
                mem[t + 3072] = ceil32(_1155) + 128
                _1178 = mem[_1176]
                mem[t + ceil32(_1155) + 3136] = mem[_1176]
                v = 0
                while v < _1178:
                    mem[t + ceil32(_1155) + v + 3168] = mem[_1176 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1178) > _1178:
                    mem[t + ceil32(_1155) + _1178 + 3168] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_1155) + ceil32(_1178) + 3168
                u = u + 32
                continue 
            mem[t + _1155 + 3136] = 0
            mem[t + 3040] = mem[_1153 + 32]
            _1177 = mem[_1153 + 64]
            mem[t + 3072] = ceil32(_1155) + 128
            _1179 = mem[_1177]
            mem[t + ceil32(_1155) + 3136] = mem[_1177]
            v = 0
            while v < _1179:
                mem[t + ceil32(_1155) + v + 3168] = mem[_1177 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1179) > _1179:
                mem[t + ceil32(_1155) + _1179 + 3168] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_1155) + ceil32(_1179) + 3168
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
