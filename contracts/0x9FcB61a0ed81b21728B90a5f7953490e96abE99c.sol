contract main {




// =====================  Runtime code  =====================


#
#  - sub_60072b11(?)
#  - sub_c05bc01f(?)
#
address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;

function _fallback() payable {
    revert
}

function sub_a01bf1c2(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.0xc363b9eb with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    return arg1, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[96], ext_call.return_data[64]
}

function sub_b328d586(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor4)
    staticcall stor4.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    staticcall stor4.scout(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0]
}

function getGold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    staticcall stor3.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    staticcall stor3.claimed(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0]
}

function sub_98277cd8(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    require ('cd', 4)[0] == address(('cd', 4)[0])
    stor0 = address(('cd', 4)[0])
    if 1 >= ('cd', 4).length:
        revert with 0, 50
    require ('cd', 4)[1] == address(('cd', 4)[1])
    stor1 = address(('cd', 4)[1])
    if 2 >= ('cd', 4).length:
        revert with 0, 50
    require ('cd', 4)[2] == address(('cd', 4)[2])
    stor2 = address(('cd', 4)[2])
    if 3 >= ('cd', 4).length:
        revert with 0, 50
    require ('cd', 4)[3] == address(('cd', 4)[3])
    stor3 = address(('cd', 4)[3])
    if 4 >= ('cd', 4).length:
        revert with 0, 50
    require ('cd', 4)[4] == address(('cd', 4)[4])
    stor4 = address(('cd', 4)[4])
    if 5 >= ('cd', 4).length:
        revert with 0, 50
    require ('cd', 4)[5] == address(('cd', 4)[5])
    stor5 = address(('cd', 4)[5])
}

function sub_42a5c23a(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == uint32(arg2)
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
        revert with 0, 65
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
    if 9 == uint32(arg2):
        mem[ceil32(return_data.size) + 3716] = -1
        mem[ceil32(return_data.size) + 3748] = arg3
        mem[ceil32(return_data.size) + 3780] = arg4
        require ext_code.size(stor2)
        staticcall stor2.skills_per_level(int256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args -1, arg3, arg4
    else:
        if uint32(arg2) < 0x800000000000000000000000000000000000000000000000000000000000000a:
            revert with 0, 17
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
    mem[(4 * ceil32(return_data.size)) + 3712] = ceil32(return_data.size) + 2560
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
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
        revert with 0, 65
    require 1152 <= return_data.size
    s = (4 * ceil32(return_data.size)) + 3872
    t = (6 * ceil32(return_data.size)) + 3872
    idx = 0
    while idx < 36:
        require mem[s] == bool(mem[s])
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
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
    s = (6 * ceil32(return_data.size)) + 6272
    t = (6 * ceil32(return_data.size)) + 3872
    while idx < 36:
        mem[s] = bool(mem[t])
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
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _72 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(stor4)
            staticcall stor4.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args _72
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _77 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _87 = mem[_77]
            _89 = mem[64]
            mem[64] = mem[64] + 64
            mem[_89] = _72
            mem[_89 + 32] = _87
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _89
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _71 = mem[64]
        mem[mem[64]] = 32
        _75 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _75:
            _100 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_100 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _71 + (64 * _75) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 193
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
    mem[ceil32(32 * ('cd', 4).length) + 129] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    s = ceil32(32 * ('cd', 4).length) + 129
    idx = ('cd', 4).length
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
        mem[s + 32] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    _99 = mem[96]
    idx = 0
    while idx < _99:
        if idx >= mem[96]:
            revert with 0, 50
        _106 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor4)
        staticcall stor4.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args _106
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _110 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _115 = mem[_110]
        _116 = mem[64]
        mem[64] = mem[64] + 64
        mem[_116] = _106
        mem[_116 + 32] = _115
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _116
        if idx == -1:
            revert with 0, 17
        _99 = mem[96]
        idx = idx + 1
        continue 
    _105 = mem[64]
    mem[mem[64]] = 32
    _109 = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
    idx = 0
    s = ceil32(32 * ('cd', 4).length) + 129
    t = mem[64] + 64
    while idx < _109:
        _118 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_118 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _105 + (64 * _109) + -mem[64] + 64
}

function sub_324ff895(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] <= test266151307()
        require calldata.size > cd[4] + cd[s] + 67
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _59 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1
        mem[_59] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_59 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_59 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _59
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _54 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _55 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _54) + 32
    if not _54:
        _106 = mem[96]
        idx = 0
        while idx < _106:
            if idx >= mem[96]:
                revert with 0, 50
            _110 = mem[(32 * idx) + 128]
            _111 = mem[64]
            mem[64] = mem[64] + 64
            mem[_111] = mem[(32 * idx) + 128]
            _112 = mem[64]
            mem[mem[64]] = 0x1a06682b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _115 = mem[_110]
            mem[mem[64] + 36] = mem[_110]
            s = 0
            while s < _115:
                mem[s + _112 + 68] = mem[s + _110 + 32]
                _106 = mem[96]
                s = s + 32
                continue 
            if ceil32(_115) <= _115:
                require ext_code.size(stor5)
                staticcall stor5.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len ceil32(_115) + _112 + -mem[64] + 64]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _175 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_175] == bool(mem[_175])
                mem[_111 + 32] = bool(mem[_175])
            else:
                mem[_115 + _112 + 68] = 0
                require ext_code.size(stor5)
                staticcall stor5.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len ceil32(_115) + _112 + -mem[64] + 64]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _176 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_176] == bool(mem[_176])
                mem[_111 + 32] = bool(mem[_176])
            if idx >= mem[_55]:
                revert with 0, 50
            mem[(32 * idx) + _55 + 32] = _111
            if idx == -1:
                revert with 0, 17
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
            _157 = mem[mem[s]]
            mem[t] = 64
            _161 = mem[_157]
            mem[t + 64] = mem[_157]
            v = 0
            while v < _161:
                mem[v + t + 96] = mem[v + _157 + 32]
                v = v + 32
                continue 
            if ceil32(_161) > _161:
                mem[_161 + t + 96] = 0
            mem[t + 32] = bool(mem[_156 + 32])
            idx = idx + 1
            s = s + 32
            t = ceil32(_161) + t + 96
            u = u + 32
            continue 
    else:
        mem[64] = _55 + (32 * _54) + 96
        mem[_55 + (32 * _54) + 32] = 96
        mem[_55 + (32 * _54) + 64] = 0
        mem[_55 + 32] = _55 + (32 * _54) + 32
        s = _55 + 32
        idx = _54
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_55 + (32 * _54) + 32] = 96
            mem[_55 + (32 * _54) + 64] = 0
            mem[s + 32] = _55 + (32 * _54) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _155 = mem[96]
        idx = 0
        while idx < _155:
            if idx >= mem[96]:
                revert with 0, 50
            _163 = mem[(32 * idx) + 128]
            _164 = mem[64]
            mem[64] = mem[64] + 64
            mem[_164] = mem[(32 * idx) + 128]
            _165 = mem[64]
            mem[mem[64]] = 0x1a06682b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _167 = mem[_163]
            mem[mem[64] + 36] = mem[_163]
            s = 0
            while s < _167:
                mem[s + _165 + 68] = mem[s + _163 + 32]
                _155 = mem[96]
                s = s + 32
                continue 
            if ceil32(_167) <= _167:
                require ext_code.size(stor5)
                staticcall stor5.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len ceil32(_167) + _165 + -mem[64] + 64]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _206 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_206] == bool(mem[_206])
                mem[_164 + 32] = bool(mem[_206])
            else:
                mem[_167 + _165 + 68] = 0
                require ext_code.size(stor5)
                staticcall stor5.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len ceil32(_167) + _165 + -mem[64] + 64]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _207 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_207] == bool(mem[_207])
                mem[_164 + 32] = bool(mem[_207])
            if idx >= mem[_55]:
                revert with 0, 50
            mem[(32 * idx) + _55 + 32] = _164
            if idx == -1:
                revert with 0, 17
            _155 = mem[96]
            idx = idx + 1
            continue 
        _162 = mem[64]
        mem[mem[64]] = 32
        _166 = mem[_55]
        mem[mem[64] + 32] = mem[_55]
        idx = 0
        s = _55 + 32
        t = mem[64] + (32 * _166) + 64
        u = mem[64] + 64
        while idx < _166:
            mem[u] = t + -_162 - 64
            _196 = mem[s]
            _197 = mem[mem[s]]
            mem[t] = 64
            _200 = mem[_197]
            mem[t + 64] = mem[_197]
            v = 0
            while v < _200:
                mem[v + t + 96] = mem[v + _197 + 32]
                v = v + 32
                continue 
            if ceil32(_200) > _200:
                mem[_200 + t + 96] = 0
            mem[t + 32] = bool(mem[_196 + 32])
            idx = idx + 1
            s = s + 32
            t = ceil32(_200) + t + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function getNames(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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
    _9 = mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 319 < ceil32(return_data.size) + return_data.size + 288
    _10 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288])) + 289 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288])) + 289
    mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg1) >> 32 + 288]
    require _9 + _10 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 320 len ceil32(_10)] = mem[ceil32(return_data.size) + _9 + 320 len ceil32(_10)]
    if ceil32(_10) <= _10:
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
        _96 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _98 = mem[_96]
        require mem[_96] <= test266151307()
        require _96 + mem[_96] + 31 < _96 + return_data.size
        _100 = mem[_96 + mem[_96]]
        if mem[_96 + mem[_96]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_96 + mem[_96]])) + 1 < 0 or _96 + ceil32(return_data.size) + ceil32(ceil32(mem[_96 + mem[_96]])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _96 + ceil32(return_data.size) + ceil32(ceil32(mem[_96 + mem[_96]])) + 1
        mem[_96 + ceil32(return_data.size)] = _100
        require _98 + _100 + 32 <= return_data.size
        mem[_96 + ceil32(return_data.size) + 32 len ceil32(_100)] = mem[_96 + _98 + 32 len ceil32(_100)]
        if ceil32(_100) <= _100:
            mem[ceil32(return_data.size) + 256] = _96 + ceil32(return_data.size)
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 96
            _180 = mem[(2 * ceil32(return_data.size)) + 288]
            mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 288]
            mem[mem[64] + 160 len ceil32(_180)] = mem[(2 * ceil32(return_data.size)) + 320 len ceil32(_180)]
            if ceil32(_180) <= _180:
                mem[mem[64] + 64] = ext_call.return_data[0]
                mem[mem[64] + 96] = ceil32(_180) + 128
                mem[ceil32(_180) + mem[64] + 160] = _100
                mem[ceil32(_180) + mem[64] + 192 len ceil32(_100)] = mem[_96 + ceil32(return_data.size) + 32 len ceil32(_100)]
                if ceil32(_100) > _100:
                    mem[_100 + ceil32(_180) + mem[64] + 192] = 0
                return 32, 96, 
                       ext_call.return_data[0],
                       ceil32(_180) + 128,
                       mem[mem[64] + 128 len ceil32(_180) + 32],
                       _100,
                       mem[mem[64] + ceil32(_180) + 192 len ceil32(_100)]
            mem[_180 + mem[64] + 160] = 0
            mem[mem[64] + 64] = ext_call.return_data[0]
            mem[mem[64] + 96] = ceil32(_180) + 128
            mem[ceil32(_180) + mem[64] + 160] = _100
            mem[ceil32(_180) + mem[64] + 192 len ceil32(_100)] = mem[_96 + ceil32(return_data.size) + 32 len ceil32(_100)]
            if ceil32(_100) > _100:
                mem[_100 + ceil32(_180) + mem[64] + 192] = 0
            return 32, 96, 
                   ext_call.return_data[0],
                   ceil32(_180) + 128,
                   mem[mem[64] + 128 len _180 + 32],
                   0,
                   mem[mem[64] + _180 + 192 len ceil32(_100) + ceil32(_180) - _180]
        mem[_100 + _96 + ceil32(return_data.size) + 32] = 0
        mem[ceil32(return_data.size) + 256] = _96 + ceil32(return_data.size)
        _173 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 96
        _181 = mem[(2 * ceil32(return_data.size)) + 288]
        mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 288]
        mem[mem[64] + 160 len ceil32(_181)] = mem[(2 * ceil32(return_data.size)) + 320 len ceil32(_181)]
        if ceil32(_181) <= _181:
            mem[mem[64] + 64] = ext_call.return_data[0]
            mem[mem[64] + 96] = ceil32(_181) + 128
            mem[ceil32(_181) + mem[64] + 160] = _100
            mem[ceil32(_181) + mem[64] + 192 len ceil32(_100)] = mem[_96 + ceil32(return_data.size) + 32 len ceil32(_100)]
            if ceil32(_100) > _100:
                mem[_100 + ceil32(_181) + mem[64] + 192] = 0
            return 32, 96, 
                   ext_call.return_data[0],
                   ceil32(_181) + 128,
                   mem[mem[64] + 128 len ceil32(_181) + 32],
                   _100,
                   mem[mem[64] + ceil32(_181) + 192 len ceil32(_100)]
        mem[_181 + mem[64] + 160] = 0
        mem[mem[64] + 64] = ext_call.return_data[0]
        mem[_173 + 96] = ceil32(_181) + 128
        mem[ceil32(_181) + _173 + 160] = _100
        mem[ceil32(_181) + _173 + 192 len ceil32(_100)] = mem[_96 + ceil32(return_data.size) + 32 len ceil32(_100)]
        if ceil32(_100) > _100:
            mem[_100 + ceil32(_181) + _173 + 192] = 0
        return memory
          from mem[64]
           len ceil32(_100) + ceil32(_181) + _173 + -mem[64] + 192
    mem[_10 + (2 * ceil32(return_data.size)) + 320] = 0
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
        revert with 0, 65
    if ceil32(ceil32(mem[_97 + mem[_97]])) + 1 < 0 or _97 + ceil32(return_data.size) + ceil32(ceil32(mem[_97 + mem[_97]])) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _97 + ceil32(return_data.size) + ceil32(ceil32(mem[_97 + mem[_97]])) + 1
    mem[_97 + ceil32(return_data.size)] = _101
    require _99 + _101 + 32 <= return_data.size
    mem[_97 + ceil32(return_data.size) + 32 len ceil32(_101)] = mem[_97 + _99 + 32 len ceil32(_101)]
    if ceil32(_101) <= _101:
        mem[ceil32(return_data.size) + 256] = _97 + ceil32(return_data.size)
        _174 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 96
        _182 = mem[(2 * ceil32(return_data.size)) + 288]
        mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 288]
        mem[mem[64] + 160 len ceil32(_182)] = mem[(2 * ceil32(return_data.size)) + 320 len ceil32(_182)]
        if ceil32(_182) <= _182:
            mem[mem[64] + 64] = ext_call.return_data[0]
            mem[mem[64] + 96] = ceil32(_182) + 128
            mem[ceil32(_182) + mem[64] + 160] = _101
            mem[ceil32(_182) + mem[64] + 192 len ceil32(_101)] = mem[_97 + ceil32(return_data.size) + 32 len ceil32(_101)]
            if ceil32(_101) > _101:
                mem[_101 + ceil32(_182) + mem[64] + 192] = 0
            return 32, 96, 
                   ext_call.return_data[0],
                   ceil32(_182) + 128,
                   mem[mem[64] + 128 len ceil32(_182) + 32],
                   _101,
                   mem[mem[64] + ceil32(_182) + 192 len ceil32(_101)]
        mem[_182 + mem[64] + 160] = 0
        mem[mem[64] + 64] = ext_call.return_data[0]
        mem[_174 + 96] = ceil32(_182) + 128
        mem[ceil32(_182) + _174 + 160] = _101
        mem[ceil32(_182) + _174 + 192 len ceil32(_101)] = mem[_97 + ceil32(return_data.size) + 32 len ceil32(_101)]
        if ceil32(_101) > _101:
            mem[_101 + ceil32(_182) + _174 + 192] = 0
        return memory
          from mem[64]
           len ceil32(_101) + ceil32(_182) + _174 + -mem[64] + 192
    mem[_101 + _97 + ceil32(return_data.size) + 32] = 0
    mem[ceil32(return_data.size) + 256] = _97 + ceil32(return_data.size)
    _175 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 96
    _183 = mem[(2 * ceil32(return_data.size)) + 288]
    mem[mem[64] + 128] = mem[(2 * ceil32(return_data.size)) + 288]
    mem[mem[64] + 160 len ceil32(_183)] = mem[(2 * ceil32(return_data.size)) + 320 len ceil32(_183)]
    if ceil32(_183) <= _183:
        mem[mem[64] + 64] = ext_call.return_data[0]
        mem[mem[64] + 96] = ceil32(_183) + 128
        mem[ceil32(_183) + mem[64] + 160] = _101
        mem[ceil32(_183) + mem[64] + 192 len ceil32(_101)] = mem[_97 + ceil32(return_data.size) + 32 len ceil32(_101)]
        if ceil32(_101) > _101:
            mem[_101 + ceil32(_183) + mem[64] + 192] = 0
        return 32, 96, 
               ext_call.return_data[0],
               ceil32(_183) + 128,
               mem[mem[64] + 128 len ceil32(_183) + 32],
               _101,
               mem[mem[64] + ceil32(_183) + 192 len ceil32(_101)]
    mem[_183 + mem[64] + 160] = 0
    mem[mem[64] + 64] = ext_call.return_data[0]
    mem[_175 + 96] = ceil32(_183) + 128
    mem[ceil32(_183) + _175 + 160] = _101
    mem[ceil32(_183) + _175 + 192 len ceil32(_101)] = mem[_97 + ceil32(return_data.size) + 32 len ceil32(_101)]
    if ceil32(_101) > _101:
        mem[_101 + ceil32(_183) + _175 + 192] = 0
    return memory
      from mem[64]
       len ceil32(_101) + ceil32(_183) + _175 + -mem[64] + 192
}

function sub_d71cbd12(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor0)
            staticcall stor0.0xc363b9eb with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _116 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _122 = mem[_116]
            _123 = mem[_116 + 32]
            _124 = mem[_116 + 64]
            _125 = mem[_116 + 96]
            _128 = mem[64]
            mem[64] = mem[64] + 160
            if idx >= mem[96]:
                revert with 0, 50
            mem[_128] = mem[(32 * idx) + 128]
            mem[_128 + 32] = _122
            mem[_128 + 64] = _123
            mem[_128 + 96] = _125
            mem[_128 + 128] = _124
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _128
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _103 = mem[64]
        mem[mem[64]] = 32
        _107 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = mem[64] + 64
        t = ceil32(32 * ('cd', 4).length) + 129
        while idx < _107:
            _148 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_148 + 32]
            mem[s + 64] = mem[_148 + 64]
            mem[s + 96] = mem[_148 + 96]
            mem[s + 128] = mem[_148 + 128]
            idx = idx + 1
            s = s + 160
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _103 + (160 * _107) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 289
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 0
    mem[var24002] = var24001
    if not var24003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor0)
            staticcall stor0.0xc363b9eb with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _219 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _226 = mem[_219]
            _227 = mem[_219 + 32]
            _228 = mem[_219 + 64]
            _229 = mem[_219 + 96]
            _230 = mem[64]
            mem[64] = mem[64] + 160
            if idx >= mem[96]:
                revert with 0, 50
            mem[_230] = mem[(32 * idx) + 128]
            mem[_230 + 32] = _226
            mem[_230 + 64] = _227
            mem[_230 + 96] = _229
            mem[_230 + 128] = _228
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _230
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _206 = mem[64]
        mem[mem[64]] = 32
        _209 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = mem[64] + 64
        t = ceil32(32 * ('cd', 4).length) + 129
        while idx < _209:
            _251 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_251 + 32]
            mem[s + 64] = mem[_251 + 64]
            mem[s + 96] = mem[_251 + 96]
            mem[s + 128] = mem[_251 + 128]
            idx = idx + 1
            s = s + 160
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _206 + (160 * _209) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 449
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 289] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 321] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 353] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 385] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 417] = 0
    mem[var28002] = var28001
    if not var28003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor0)
            staticcall stor0.0xc363b9eb with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _321 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _328 = mem[_321]
            _329 = mem[_321 + 32]
            _330 = mem[_321 + 64]
            _331 = mem[_321 + 96]
            _332 = mem[64]
            mem[64] = mem[64] + 160
            if idx >= mem[96]:
                revert with 0, 50
            mem[_332] = mem[(32 * idx) + 128]
            mem[_332 + 32] = _328
            mem[_332 + 64] = _329
            mem[_332 + 96] = _331
            mem[_332 + 128] = _330
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _332
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _308 = mem[64]
        mem[mem[64]] = 32
        _311 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = mem[64] + 64
        t = ceil32(32 * ('cd', 4).length) + 129
        while idx < _311:
            _353 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_353 + 32]
            mem[s + 64] = mem[_353 + 64]
            mem[s + 96] = mem[_353 + 96]
            mem[s + 128] = mem[_353 + 128]
            idx = idx + 1
            s = s + 160
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _308 + (160 * _311) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 609
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 449] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 481] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 513] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 545] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 577] = 0
    mem[var32002] = var32001
    if not var32003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor0)
            staticcall stor0.0xc363b9eb with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _423 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _430 = mem[_423]
            _431 = mem[_423 + 32]
            _432 = mem[_423 + 64]
            _433 = mem[_423 + 96]
            _434 = mem[64]
            mem[64] = mem[64] + 160
            if idx >= mem[96]:
                revert with 0, 50
            mem[_434] = mem[(32 * idx) + 128]
            mem[_434 + 32] = _430
            mem[_434 + 64] = _431
            mem[_434 + 96] = _433
            mem[_434 + 128] = _432
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _434
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _410 = mem[64]
        mem[mem[64]] = 32
        _413 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = mem[64] + 64
        t = ceil32(32 * ('cd', 4).length) + 129
        while idx < _413:
            _455 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_455 + 32]
            mem[s + 64] = mem[_455 + 64]
            mem[s + 96] = mem[_455 + 96]
            mem[s + 128] = mem[_455 + 128]
            idx = idx + 1
            s = s + 160
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _410 + (160 * _413) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 769
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 609] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 641] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 673] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 705] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 737] = 0
    mem[var36002] = var36001
    if not var36003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor0)
            staticcall stor0.0xc363b9eb with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _525 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _532 = mem[_525]
            _533 = mem[_525 + 32]
            _534 = mem[_525 + 64]
            _535 = mem[_525 + 96]
            _536 = mem[64]
            mem[64] = mem[64] + 160
            if idx >= mem[96]:
                revert with 0, 50
            mem[_536] = mem[(32 * idx) + 128]
            mem[_536 + 32] = _532
            mem[_536 + 64] = _533
            mem[_536 + 96] = _535
            mem[_536 + 128] = _534
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _536
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _512 = mem[64]
        mem[mem[64]] = 32
        _515 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = mem[64] + 64
        t = ceil32(32 * ('cd', 4).length) + 129
        while idx < _515:
            _557 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_557 + 32]
            mem[s + 64] = mem[_557 + 64]
            mem[s + 96] = mem[_557 + 96]
            mem[s + 128] = mem[_557 + 128]
            idx = idx + 1
            s = s + 160
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _512 + (160 * _515) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 929
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 769] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 801] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 833] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 865] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 897] = 0
    mem[var40002] = var40001
    if not var40003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor0)
            staticcall stor0.0xc363b9eb with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _627 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _634 = mem[_627]
            _635 = mem[_627 + 32]
            _636 = mem[_627 + 64]
            _637 = mem[_627 + 96]
            _638 = mem[64]
            mem[64] = mem[64] + 160
            if idx >= mem[96]:
                revert with 0, 50
            mem[_638] = mem[(32 * idx) + 128]
            mem[_638 + 32] = _634
            mem[_638 + 64] = _635
            mem[_638 + 96] = _637
            mem[_638 + 128] = _636
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _638
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _614 = mem[64]
        mem[mem[64]] = 32
        _617 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = mem[64] + 64
        t = ceil32(32 * ('cd', 4).length) + 129
        while idx < _617:
            _659 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_659 + 32]
            mem[s + 64] = mem[_659 + 64]
            mem[s + 96] = mem[_659 + 96]
            mem[s + 128] = mem[_659 + 128]
            idx = idx + 1
            s = s + 160
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _614 + (160 * _617) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1089
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 929] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 961] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 993] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1025] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1057] = 0
    mem[var44002] = var44001
    if not var44003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor0)
            staticcall stor0.0xc363b9eb with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _729 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _736 = mem[_729]
            _737 = mem[_729 + 32]
            _738 = mem[_729 + 64]
            _739 = mem[_729 + 96]
            _740 = mem[64]
            mem[64] = mem[64] + 160
            if idx >= mem[96]:
                revert with 0, 50
            mem[_740] = mem[(32 * idx) + 128]
            mem[_740 + 32] = _736
            mem[_740 + 64] = _737
            mem[_740 + 96] = _739
            mem[_740 + 128] = _738
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _740
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _716 = mem[64]
        mem[mem[64]] = 32
        _719 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = mem[64] + 64
        t = ceil32(32 * ('cd', 4).length) + 129
        while idx < _719:
            _761 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_761 + 32]
            mem[s + 64] = mem[_761 + 64]
            mem[s + 96] = mem[_761 + 96]
            mem[s + 128] = mem[_761 + 128]
            idx = idx + 1
            s = s + 160
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _716 + (160 * _719) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1249
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1089] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1121] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1153] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1185] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1217] = 0
    mem[var48002] = var48001
    if not var48003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor0)
            staticcall stor0.0xc363b9eb with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _831 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _838 = mem[_831]
            _839 = mem[_831 + 32]
            _840 = mem[_831 + 64]
            _841 = mem[_831 + 96]
            _842 = mem[64]
            mem[64] = mem[64] + 160
            if idx >= mem[96]:
                revert with 0, 50
            mem[_842] = mem[(32 * idx) + 128]
            mem[_842 + 32] = _838
            mem[_842 + 64] = _839
            mem[_842 + 96] = _841
            mem[_842 + 128] = _840
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _842
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _818 = mem[64]
        mem[mem[64]] = 32
        _821 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = mem[64] + 64
        t = ceil32(32 * ('cd', 4).length) + 129
        while idx < _821:
            _863 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_863 + 32]
            mem[s + 64] = mem[_863 + 64]
            mem[s + 96] = mem[_863 + 96]
            mem[s + 128] = mem[_863 + 128]
            idx = idx + 1
            s = s + 160
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _818 + (160 * _821) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1409
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1249] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1281] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1313] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1345] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 1377] = 0
    mem[var52002] = var52001
    if var52003 - 1:
        # nil
    else:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor0)
            staticcall stor0.0xc363b9eb with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _933 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _940 = mem[_933]
            _941 = mem[_933 + 32]
            _942 = mem[_933 + 64]
            _943 = mem[_933 + 96]
            _944 = mem[64]
            mem[64] = mem[64] + 160
            if idx >= mem[96]:
                revert with 0, 50
            mem[_944] = mem[(32 * idx) + 128]
            mem[_944 + 32] = _940
            mem[_944 + 64] = _941
            mem[_944 + 96] = _943
            mem[_944 + 128] = _942
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _944
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _920 = mem[64]
        mem[mem[64]] = 32
        _923 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = mem[64] + 64
        t = ceil32(32 * ('cd', 4).length) + 129
        while idx < _923:
            _965 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_965 + 32]
            mem[s + 64] = mem[_965 + 64]
            mem[s + 96] = mem[_965 + 96]
            mem[s + 128] = mem[_965 + 128]
            idx = idx + 1
            s = s + 160
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _920 + (160 * _923) + -mem[64] + 64
}

function sub_0c55baa9(?) payable {
    require calldata.size - 4 >= 32
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
    mem[896 len 1152] = call.data[calldata.size len 1152]
    mem[224] = 896
    mem[2048] = 96
    mem[2080] = 0
    mem[2112] = 96
    mem[256] = 2048
    require ext_code.size(this.address)
    staticcall this.address.0xa01bf1c2 with:
            gas gas_remaining wei
           args arg1
    mem[2144 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not bool(ceil32(return_data.size) + 2304 <= test266151307()):
        revert with 0, 65
    mem[ceil32(return_data.size) + 2144] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 2176] = ext_call.return_data[32]
    mem[ceil32(return_data.size) + 2208] = ext_call.return_data[64]
    mem[ceil32(return_data.size) + 2240] = ext_call.return_data[96]
    mem[ceil32(return_data.size) + 2272] = ext_call.return_data[128]
    require ext_code.size(this.address)
    staticcall this.address.0x60072b11 with:
            gas gas_remaining wei
           args arg1, ext_call.return_data[96]
    mem[ceil32(return_data.size) + 2304 len 288] = ext_call.return_data[0 len 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    if not bool((2 * ceil32(return_data.size)) + 2432 <= test266151307()):
        revert with 0, 65
    require return_data.size >= 192
    if not bool((2 * ceil32(return_data.size)) + 2624 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    mem[(2 * ceil32(return_data.size)) + 2432] = ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    mem[(2 * ceil32(return_data.size)) + 2464] = ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    mem[(2 * ceil32(return_data.size)) + 2496] = ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    mem[(2 * ceil32(return_data.size)) + 2528] = ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    mem[(2 * ceil32(return_data.size)) + 2560] = ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[188 len 4]
    mem[(2 * ceil32(return_data.size)) + 2592] = ext_call.return_data[160]
    mem[(2 * ceil32(return_data.size)) + 2304] = (2 * ceil32(return_data.size)) + 2432
    mem[(2 * ceil32(return_data.size)) + 2336] = ext_call.return_data[192]
    mem[(2 * ceil32(return_data.size)) + 2368] = ext_call.return_data[224]
    mem[(2 * ceil32(return_data.size)) + 2400] = ext_call.return_data[256]
    require ext_code.size(this.address)
    staticcall this.address.0x877e3817 with:
            gas gas_remaining wei
           args arg1
    mem[(2 * ceil32(return_data.size)) + 2624 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool((4 * ceil32(return_data.size)) + 2688 <= test266151307()):
        revert with 0, 65
    mem[(4 * ceil32(return_data.size)) + 2624] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 2656] = ext_call.return_data[32]
    require ext_code.size(this.address)
    staticcall this.address.0xb328d586 with:
            gas gas_remaining wei
           args arg1
    mem[(4 * ceil32(return_data.size)) + 2688 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool((6 * ceil32(return_data.size)) + 2752 <= test266151307()):
        revert with 0, 65
    mem[(6 * ceil32(return_data.size)) + 2688] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 2720] = ext_call.return_data[32]
    require ext_code.size(stor2)
    staticcall stor2.getSkills(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[(6 * ceil32(return_data.size)) + 2752 len 1152] = ext_call.return_data[0 len 1152]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 1152
    require (6 * ceil32(return_data.size)) + 2783 < (6 * ceil32(return_data.size)) + return_data.size + 2752
    if not bool((7 * ceil32(return_data.size)) + 3904 <= test266151307()):
        revert with 0, 65
    require 1152 <= return_data.size
    idx = 0
    s = (6 * ceil32(return_data.size)) + 2752
    t = (7 * ceil32(return_data.size)) + 2752
    while idx < 36:
        require mem[s] == mem[s + 31 len 1]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(7 * ceil32(return_data.size)) + 3904] = 0x5718e17b00000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 3908] = arg1
    require ext_code.size(this.address)
    staticcall this.address.0x5718e17b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 3904 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _53 = mem[(7 * ceil32(return_data.size)) + 3904 len 4], Mask(224, 32, arg1) >> 32
    require mem[(7 * ceil32(return_data.size)) + 3904 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[(7 * ceil32(return_data.size)) + 3904 len 4], Mask(224, 32, arg1) >> 32 >= 96
    if not bool((8 * ceil32(return_data.size)) + 4000 <= test266151307()):
        revert with 0, 65
    mem[64] = (8 * ceil32(return_data.size)) + 4000
    _55 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 3904 len 4], Mask(224, 32, arg1) >> 32 + 3904]
    require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 3904 len 4], Mask(224, 32, arg1) >> 32 + 3904] <= test266151307()
    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 3904 len 4], Mask(224, 32, arg1) >> 32 + mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 3904 len 4], Mask(224, 32, arg1) >> 32 + 3904] + 3935 < (7 * ceil32(return_data.size)) + return_data.size + 3904
    _56 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 3904 len 4], Mask(224, 32, arg1) >> 32 + mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 3904 len 4], Mask(224, 32, arg1) >> 32 + 3904] + 3904]
    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 3904 len 4], Mask(224, 32, arg1) >> 32 + mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 3904 len 4], Mask(224, 32, arg1) >> 32 + 3904] + 3904] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 3904 len 4], Mask(224, 32, arg1) >> 32 + mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 3904 len 4], Mask(224, 32, arg1) >> 32 + 3904] + 3904])) + 97 < 96 or (8 * ceil32(return_data.size)) + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 3904 len 4], Mask(224, 32, arg1) >> 32 + mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 3904 len 4], Mask(224, 32, arg1) >> 32 + 3904] + 3904])) + 4001 > test266151307():
        revert with 0, 65
    mem[64] = (8 * ceil32(return_data.size)) + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 3904 len 4], Mask(224, 32, arg1) >> 32 + mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 3904 len 4], Mask(224, 32, arg1) >> 32 + 3904] + 3904])) + 4001
    mem[(8 * ceil32(return_data.size)) + 4000] = _56
    require mem[(7 * ceil32(return_data.size)) + 3904 len 4], Mask(224, 32, arg1) >> 32 + _55 + _56 + 32 <= return_data.size
    mem[(8 * ceil32(return_data.size)) + 4032 len ceil32(_56)] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 3904 len 4], Mask(224, 32, arg1) >> 32 + _55 + 3936 len ceil32(_56)]
    if ceil32(_56) <= _56:
        mem[(8 * ceil32(return_data.size)) + 3904] = (8 * ceil32(return_data.size)) + 4000
        mem[(8 * ceil32(return_data.size)) + 3936] = mem[(7 * ceil32(return_data.size)) + _53 + 3936]
        _179 = mem[(7 * ceil32(return_data.size)) + _53 + 3968]
        require mem[(7 * ceil32(return_data.size)) + _53 + 3968] <= test266151307()
        require (7 * ceil32(return_data.size)) + _53 + mem[(7 * ceil32(return_data.size)) + _53 + 3968] + 3935 < (7 * ceil32(return_data.size)) + return_data.size + 3904
        _182 = mem[(7 * ceil32(return_data.size)) + _53 + mem[(7 * ceil32(return_data.size)) + _53 + 3968] + 3904]
        if mem[(7 * ceil32(return_data.size)) + _53 + mem[(7 * ceil32(return_data.size)) + _53 + 3968] + 3904] > test266151307():
            revert with 0, 65
        _184 = mem[64]
        if mem[64] + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + _53 + mem[(7 * ceil32(return_data.size)) + _53 + 3968] + 3904])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + _53 + mem[(7 * ceil32(return_data.size)) + _53 + 3968] + 3904])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + _53 + mem[(7 * ceil32(return_data.size)) + _53 + 3968] + 3904])) + 1
        mem[_184] = _182
        require _53 + _179 + _182 + 32 <= return_data.size
        mem[_184 + 32 len ceil32(_182)] = mem[(7 * ceil32(return_data.size)) + _53 + _179 + 3936 len ceil32(_182)]
        if ceil32(_182) <= _182:
            mem[(8 * ceil32(return_data.size)) + 3968] = _184
            _298 = mem[64]
            mem[64] = mem[64] + 192
            mem[_298] = ceil32(return_data.size) + 2144
            mem[_298 + 32] = (2 * ceil32(return_data.size)) + 2304
            mem[_298 + 64] = (4 * ceil32(return_data.size)) + 2624
            mem[_298 + 96] = (6 * ceil32(return_data.size)) + 2688
            mem[_298 + 128] = (7 * ceil32(return_data.size)) + 2752
            mem[_298 + 160] = (8 * ceil32(return_data.size)) + 3904
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
            s = mem[_298 + 128]
            t = mem[64] + 608
            while idx < 36:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _410 = mem[_298 + 160]
            mem[mem[64] + 1760] = 1760
            _414 = mem[_410]
            mem[mem[64] + 1792] = 96
            _418 = mem[_414]
            mem[mem[64] + 1888] = mem[_414]
            mem[mem[64] + 1920 len ceil32(_418)] = mem[_414 + 32 len ceil32(_418)]
            if ceil32(_418) <= _418:
                mem[mem[64] + 1824] = mem[_410 + 32]
                _479 = mem[_410 + 64]
                mem[mem[64] + 1856] = ceil32(_418) + 128
                _494 = mem[_479]
                mem[ceil32(_418) + mem[64] + 1920] = mem[_479]
                mem[ceil32(_418) + mem[64] + 1952 len ceil32(_494)] = mem[_479 + 32 len ceil32(_494)]
                if ceil32(_494) > _494:
                    mem[_494 + ceil32(_418) + mem[64] + 1952] = 0
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
                       mem[mem[64] + 608 len 1152],
                       1760,
                       96,
                       mem[mem[64] + 1824],
                       ceil32(_418) + 128,
                       mem[mem[64] + 1888 len ceil32(_494) + ceil32(_418) + 64]
            mem[_418 + mem[64] + 1920] = 0
            mem[mem[64] + 1824] = mem[_410 + 32]
            _481 = mem[_410 + 64]
            mem[mem[64] + 1856] = ceil32(_418) + 128
            _495 = mem[_481]
            mem[ceil32(_418) + mem[64] + 1920] = mem[_481]
            mem[ceil32(_418) + mem[64] + 1952 len ceil32(_495)] = mem[_481 + 32 len ceil32(_495)]
            if ceil32(_495) > _495:
                mem[_495 + ceil32(_418) + mem[64] + 1952] = 0
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
                   mem[mem[64] + 608 len 1152],
                   1760,
                   96,
                   mem[mem[64] + 1824],
                   ceil32(_418) + 128,
                   mem[mem[64] + 1888 len _418 + 32],
                   0,
                   mem[mem[64] + _418 + 1952 len ceil32(_495) + ceil32(_418) - _418]
        mem[_182 + _184 + 32] = 0
        mem[(8 * ceil32(return_data.size)) + 3968] = _184
        _299 = mem[64]
        mem[64] = mem[64] + 192
        mem[_299] = ceil32(return_data.size) + 2144
        mem[_299 + 32] = (2 * ceil32(return_data.size)) + 2304
        mem[_299 + 64] = (4 * ceil32(return_data.size)) + 2624
        mem[_299 + 96] = (6 * ceil32(return_data.size)) + 2688
        mem[_299 + 128] = (7 * ceil32(return_data.size)) + 2752
        mem[_299 + 160] = (8 * ceil32(return_data.size)) + 3904
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
        s = mem[_299 + 128]
        t = mem[64] + 608
        while idx < 36:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _411 = mem[_299 + 160]
        mem[mem[64] + 1760] = 1760
        _415 = mem[_411]
        mem[mem[64] + 1792] = 96
        _419 = mem[_415]
        mem[mem[64] + 1888] = mem[_415]
        mem[mem[64] + 1920 len ceil32(_419)] = mem[_415 + 32 len ceil32(_419)]
        if ceil32(_419) <= _419:
            mem[mem[64] + 1824] = mem[_411 + 32]
            _483 = mem[_411 + 64]
            mem[mem[64] + 1856] = ceil32(_419) + 128
            _496 = mem[_483]
            mem[ceil32(_419) + mem[64] + 1920] = mem[_483]
            mem[ceil32(_419) + mem[64] + 1952 len ceil32(_496)] = mem[_483 + 32 len ceil32(_496)]
            if ceil32(_496) > _496:
                mem[_496 + ceil32(_419) + mem[64] + 1952] = 0
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
                   mem[mem[64] + 608 len 1152],
                   1760,
                   96,
                   mem[mem[64] + 1824],
                   ceil32(_419) + 128,
                   mem[mem[64] + 1888 len ceil32(_496) + ceil32(_419) + 64]
        mem[_419 + mem[64] + 1920] = 0
        mem[mem[64] + 1824] = mem[_411 + 32]
        _485 = mem[_411 + 64]
        mem[mem[64] + 1856] = ceil32(_419) + 128
        _497 = mem[_485]
        mem[ceil32(_419) + mem[64] + 1920] = mem[_485]
        mem[ceil32(_419) + mem[64] + 1952 len ceil32(_497)] = mem[_485 + 32 len ceil32(_497)]
        if ceil32(_497) > _497:
            mem[_497 + ceil32(_419) + mem[64] + 1952] = 0
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
               mem[mem[64] + 608 len 1152],
               1760,
               96,
               mem[mem[64] + 1824],
               ceil32(_419) + 128,
               mem[mem[64] + 1888 len _419 + 32],
               0,
               mem[mem[64] + _419 + 1952 len ceil32(_497) + ceil32(_419) - _419]
    mem[_56 + (8 * ceil32(return_data.size)) + 4032] = 0
    mem[(8 * ceil32(return_data.size)) + 3904] = (8 * ceil32(return_data.size)) + 4000
    mem[(8 * ceil32(return_data.size)) + 3936] = mem[(7 * ceil32(return_data.size)) + _53 + 3936]
    _181 = mem[(7 * ceil32(return_data.size)) + _53 + 3968]
    require mem[(7 * ceil32(return_data.size)) + _53 + 3968] <= test266151307()
    require (7 * ceil32(return_data.size)) + _53 + mem[(7 * ceil32(return_data.size)) + _53 + 3968] + 3935 < (7 * ceil32(return_data.size)) + return_data.size + 3904
    _183 = mem[(7 * ceil32(return_data.size)) + _53 + mem[(7 * ceil32(return_data.size)) + _53 + 3968] + 3904]
    if mem[(7 * ceil32(return_data.size)) + _53 + mem[(7 * ceil32(return_data.size)) + _53 + 3968] + 3904] > test266151307():
        revert with 0, 65
    _185 = mem[64]
    if mem[64] + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + _53 + mem[(7 * ceil32(return_data.size)) + _53 + 3968] + 3904])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + _53 + mem[(7 * ceil32(return_data.size)) + _53 + 3968] + 3904])) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(ceil32(mem[(7 * ceil32(return_data.size)) + _53 + mem[(7 * ceil32(return_data.size)) + _53 + 3968] + 3904])) + 1
    mem[_185] = _183
    require _53 + _181 + _183 + 32 <= return_data.size
    mem[_185 + 32 len ceil32(_183)] = mem[(7 * ceil32(return_data.size)) + _53 + _181 + 3936 len ceil32(_183)]
    if ceil32(_183) <= _183:
        mem[(8 * ceil32(return_data.size)) + 3968] = _185
        _300 = mem[64]
        mem[64] = mem[64] + 192
        mem[_300] = ceil32(return_data.size) + 2144
        mem[_300 + 32] = (2 * ceil32(return_data.size)) + 2304
        mem[_300 + 64] = (4 * ceil32(return_data.size)) + 2624
        mem[_300 + 96] = (6 * ceil32(return_data.size)) + 2688
        mem[_300 + 128] = (7 * ceil32(return_data.size)) + 2752
        mem[_300 + 160] = (8 * ceil32(return_data.size)) + 3904
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
        s = mem[_300 + 128]
        t = mem[64] + 608
        while idx < 36:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _412 = mem[_300 + 160]
        mem[mem[64] + 1760] = 1760
        _416 = mem[_412]
        mem[mem[64] + 1792] = 96
        _420 = mem[_416]
        mem[mem[64] + 1888] = mem[_416]
        mem[mem[64] + 1920 len ceil32(_420)] = mem[_416 + 32 len ceil32(_420)]
        if ceil32(_420) <= _420:
            mem[mem[64] + 1824] = mem[_412 + 32]
            _487 = mem[_412 + 64]
            mem[mem[64] + 1856] = ceil32(_420) + 128
            _498 = mem[_487]
            mem[ceil32(_420) + mem[64] + 1920] = mem[_487]
            mem[ceil32(_420) + mem[64] + 1952 len ceil32(_498)] = mem[_487 + 32 len ceil32(_498)]
            if ceil32(_498) > _498:
                mem[_498 + ceil32(_420) + mem[64] + 1952] = 0
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
                   mem[mem[64] + 608 len 1152],
                   1760,
                   96,
                   mem[mem[64] + 1824],
                   ceil32(_420) + 128,
                   mem[mem[64] + 1888 len ceil32(_498) + ceil32(_420) + 64]
        mem[_420 + mem[64] + 1920] = 0
        mem[mem[64] + 1824] = mem[_412 + 32]
        _489 = mem[_412 + 64]
        mem[mem[64] + 1856] = ceil32(_420) + 128
        _499 = mem[_489]
        mem[ceil32(_420) + mem[64] + 1920] = mem[_489]
        mem[ceil32(_420) + mem[64] + 1952 len ceil32(_499)] = mem[_489 + 32 len ceil32(_499)]
        if ceil32(_499) > _499:
            mem[_499 + ceil32(_420) + mem[64] + 1952] = 0
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
               mem[mem[64] + 608 len 1152],
               1760,
               96,
               mem[mem[64] + 1824],
               ceil32(_420) + 128,
               mem[mem[64] + 1888 len _420 + 32],
               0,
               mem[mem[64] + _420 + 1952 len ceil32(_499) + ceil32(_420) - _420]
    mem[_183 + _185 + 32] = 0
    mem[(8 * ceil32(return_data.size)) + 3968] = _185
    _301 = mem[64]
    mem[64] = mem[64] + 192
    mem[_301] = ceil32(return_data.size) + 2144
    mem[_301 + 32] = (2 * ceil32(return_data.size)) + 2304
    mem[_301 + 64] = (4 * ceil32(return_data.size)) + 2624
    mem[_301 + 96] = (6 * ceil32(return_data.size)) + 2688
    mem[_301 + 128] = (7 * ceil32(return_data.size)) + 2752
    mem[_301 + 160] = (8 * ceil32(return_data.size)) + 3904
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
    s = mem[_301 + 128]
    t = mem[64] + 608
    while idx < 36:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _413 = mem[_301 + 160]
    mem[mem[64] + 1760] = 1760
    _417 = mem[_413]
    mem[mem[64] + 1792] = 96
    _421 = mem[_417]
    mem[mem[64] + 1888] = mem[_417]
    mem[mem[64] + 1920 len ceil32(_421)] = mem[_417 + 32 len ceil32(_421)]
    if ceil32(_421) <= _421:
        mem[mem[64] + 1824] = mem[_413 + 32]
        _491 = mem[_413 + 64]
        mem[mem[64] + 1856] = ceil32(_421) + 128
        _500 = mem[_491]
        mem[ceil32(_421) + mem[64] + 1920] = mem[_491]
        mem[ceil32(_421) + mem[64] + 1952 len ceil32(_500)] = mem[_491 + 32 len ceil32(_500)]
        if ceil32(_500) > _500:
            mem[_500 + ceil32(_421) + mem[64] + 1952] = 0
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
               mem[mem[64] + 608 len 1152],
               1760,
               96,
               mem[mem[64] + 1824],
               ceil32(_421) + 128,
               mem[mem[64] + 1888 len ceil32(_500) + ceil32(_421) + 64]
    mem[_421 + mem[64] + 1920] = 0
    mem[mem[64] + 1824] = mem[_413 + 32]
    _493 = mem[_413 + 64]
    mem[mem[64] + 1856] = ceil32(_421) + 128
    _501 = mem[_493]
    mem[ceil32(_421) + mem[64] + 1920] = mem[_493]
    mem[ceil32(_421) + mem[64] + 1952 len ceil32(_501)] = mem[_493 + 32 len ceil32(_501)]
    if ceil32(_501) > _501:
        mem[_501 + ceil32(_421) + mem[64] + 1952] = 0
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
           mem[mem[64] + 608 len 1152],
           1760,
           96,
           mem[mem[64] + 1824],
           ceil32(_421) + 128,
           mem[mem[64] + 1888 len _421 + 32],
           0,
           mem[mem[64] + _421 + 1952 len ceil32(_501) + ceil32(_421) - _421]
}



}
