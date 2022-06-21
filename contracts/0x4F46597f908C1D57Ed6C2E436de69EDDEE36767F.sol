contract main {




// =====================  Runtime code  =====================


#
#  - sub_60072b11(?)
#
address stor0;
address stor1;
address stor4;
address stor5;
address stor6;
address stor7;

function _fallback() payable {
    revert
}

function sub_a01bf1c2(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.summoner(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    return arg1, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[96], ext_call.return_data[64]
}

function getGold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    staticcall stor1.claimed(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0]
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
    require ext_code.size(stor4)
    staticcall stor4.adventurers_log(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
}

function sub_d3c2c634(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(this.address)
    staticcall this.address.0xa01bf1c2 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not bool(ceil32(return_data.size) + 640 <= test266151307()):
        revert with 0, 65
    require ext_code.size(this.address)
    staticcall this.address.0xb328d586 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool((2 * ceil32(return_data.size)) + 736 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[0],
           ext_call.return_data[32],
           ext_call.return_data[64]
}

function sub_42a5c23a(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == uint32(arg2)
    require ext_code.size(stor5)
    staticcall stor5.get_skills(uint256 arg1) with:
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
        require ext_code.size(stor5)
        staticcall stor5.skills_per_level(int256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args -1, arg3, arg4
    else:
        if uint32(arg2) < 0x800000000000000000000000000000000000000000000000000000000000000a:
            revert with 0, 17
        mem[ceil32(return_data.size) + 3716] = uint32(arg2) - 10 / 2
        mem[ceil32(return_data.size) + 3748] = arg3
        mem[ceil32(return_data.size) + 3780] = arg4
        require ext_code.size(stor5)
        staticcall stor5.skills_per_level(int256 arg1, uint256 arg2, uint256 arg3) with:
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
    require ext_code.size(stor5)
    staticcall stor5.0x67193047 with:
            gas gas_remaining wei
           args arg3, mem[(2 * ceil32(return_data.size)) + 3748 len 1152]
    mem[(2 * ceil32(return_data.size)) + 3712] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 3712] = ceil32(return_data.size) + 2560
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(stor5)
    staticcall stor5.class_skills(uint256 arg1) with:
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
            staticcall stor0.summoner(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _109 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _118 = mem[_109]
            _119 = mem[_109 + 32]
            _120 = mem[_109 + 64]
            _121 = mem[_109 + 96]
            _125 = mem[64]
            mem[64] = mem[64] + 160
            if idx >= mem[96]:
                revert with 0, 50
            mem[_125] = mem[(32 * idx) + 128]
            mem[_125 + 32] = _118
            mem[_125 + 64] = _119
            mem[_125 + 96] = _121
            mem[_125 + 128] = _120
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _125
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _103 = mem[64]
        mem[mem[64]] = 32
        _106 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = mem[64] + 64
        t = ceil32(32 * ('cd', 4).length) + 129
        while idx < _106:
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
           len _103 + (160 * _106) + -mem[64] + 64
    mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 289
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 0
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 0
    mem[var23001] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
    s = var23001
    idx = var23002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 0
        mem[s + 32] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    _178 = mem[96]
    idx = 0
    while idx < _178:
        if idx >= mem[96]:
            revert with 0, 50
        require ext_code.size(stor0)
        staticcall stor0.summoner(uint256 arg1) with:
                gas gas_remaining wei
               args mem[(32 * idx) + 128]
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _186 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _193 = mem[_186]
        _194 = mem[_186 + 32]
        _195 = mem[_186 + 64]
        _196 = mem[_186 + 96]
        _197 = mem[64]
        mem[64] = mem[64] + 160
        if idx >= mem[96]:
            revert with 0, 50
        mem[_197] = mem[(32 * idx) + 128]
        mem[_197 + 32] = _193
        mem[_197 + 64] = _194
        mem[_197 + 96] = _196
        mem[_197 + 128] = _195
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _197
        if idx == -1:
            revert with 0, 17
        _178 = mem[96]
        idx = idx + 1
        continue 
    _180 = mem[64]
    mem[mem[64]] = 32
    _183 = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
    idx = 0
    s = mem[64] + 64
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < _183:
        _201 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_201 + 32]
        mem[s + 64] = mem[_201 + 64]
        mem[s + 96] = mem[_201 + 96]
        mem[s + 128] = mem[_201 + 128]
        idx = idx + 1
        s = s + 160
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _180 + (160 * _183) + -mem[64] + 64
}

function getName(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 96
    mem[128] = 0
    mem[160] = 96
    mem[196] = arg1
    require ext_code.size(stor7)
    staticcall stor7.0x530a6e9a with:
            gas gas_remaining wei
           args arg1
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 288] = 0x12d39b4100000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 292] = arg1
    require ext_code.size(stor7)
    staticcall stor7.summoner_name(uint256 arg1) with:
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
    mem[(2 * ceil32(return_data.size)) + 288] = _10
    require _9 + _10 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 320 len ceil32(_10)] = mem[ceil32(return_data.size) + _9 + 320 len ceil32(_10)]
    if ceil32(_10) <= _10:
        mem[ceil32(return_data.size) + 192] = (2 * ceil32(return_data.size)) + 288
        mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
        mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0]
        require ext_code.size(stor7)
        staticcall stor7.tokenURI(uint256 arg1) with:
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
        if ceil32(_100) > _100:
            mem[_100 + _96 + ceil32(return_data.size) + 32] = 0
        mem[ceil32(return_data.size) + 256] = _96 + ceil32(return_data.size)
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 96
        mem[mem[64] + 128] = _10
        mem[mem[64] + 160 len ceil32(_10)] = mem[(2 * ceil32(return_data.size)) + 320 len ceil32(_10)]
        if ceil32(_10) > _10:
            mem[_10 + mem[64] + 160] = 0
        mem[mem[64] + 64] = ext_call.return_data[0]
        mem[mem[64] + 96] = ceil32(_10) + 128
        mem[ceil32(_10) + mem[64] + 160] = _100
        mem[ceil32(_10) + mem[64] + 192 len ceil32(_100)] = mem[_96 + ceil32(return_data.size) + 32 len ceil32(_100)]
        if ceil32(_100) > _100:
            mem[_100 + ceil32(_10) + mem[64] + 192] = 0
        return 32, 96, ext_call.return_data[0], ceil32(_10) + 128, _10, mem[mem[64] + 160 len ceil32(_100) + ceil32(_10) + 32]
    mem[_10 + (2 * ceil32(return_data.size)) + 320] = 0
    mem[ceil32(return_data.size) + 192] = (2 * ceil32(return_data.size)) + 288
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = ext_call.return_data[0]
    require ext_code.size(stor7)
    staticcall stor7.tokenURI(uint256 arg1) with:
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
    if ceil32(_101) > _101:
        mem[_101 + _97 + ceil32(return_data.size) + 32] = 0
    mem[ceil32(return_data.size) + 256] = _97 + ceil32(return_data.size)
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 96
    mem[mem[64] + 128] = _10
    mem[mem[64] + 160 len ceil32(_10)] = mem[(2 * ceil32(return_data.size)) + 320 len ceil32(_10)]
    if ceil32(_10) > _10:
        mem[_10 + mem[64] + 160] = 0
    mem[mem[64] + 64] = ext_call.return_data[0]
    mem[mem[64] + 96] = ceil32(_10) + 128
    mem[ceil32(_10) + mem[64] + 160] = _101
    mem[ceil32(_10) + mem[64] + 192 len ceil32(_101)] = mem[_97 + ceil32(return_data.size) + 32 len ceil32(_101)]
    if ceil32(_101) > _101:
        mem[_101 + ceil32(_10) + mem[64] + 192] = 0
    return 32, 96, ext_call.return_data[0], ceil32(_10) + 128, _10, mem[mem[64] + 160 len ceil32(_101) + ceil32(_10) + 32]
}

function sub_c04fb0fd(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            _69 = mem[64]
            mem[64] = mem[64] + 64
            require ext_code.size(this.address)
            staticcall this.address.0xa01bf1c2 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _78 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            _86 = mem[64]
            if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 160
            mem[_86] = mem[_78]
            mem[_86 + 32] = mem[_78 + 32]
            mem[_86 + 64] = mem[_78 + 64]
            mem[_86 + 96] = mem[_78 + 96]
            mem[_86 + 128] = mem[_78 + 128]
            mem[_69] = _86
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require ext_code.size(this.address)
            staticcall this.address.0xb328d586 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _103 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _108 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_108] = mem[_103]
            mem[_108 + 32] = mem[_103 + 32]
            mem[_108 + 64] = mem[_103 + 64]
            mem[_69 + 32] = _108
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _69
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _71 = mem[64]
        mem[mem[64]] = 32
        _74 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _74:
            _137 = mem[t]
            _140 = mem[mem[t]]
            mem[s] = mem[mem[mem[t]]]
            mem[s + 32] = mem[_140 + 32]
            mem[s + 64] = mem[_140 + 64]
            mem[s + 96] = mem[_140 + 96]
            mem[s + 128] = mem[_140 + 128]
            _147 = mem[_137 + 32]
            mem[s + 160] = mem[mem[_137 + 32]]
            mem[s + 192] = mem[_147 + 32]
            mem[s + 224] = mem[_147 + 64]
            idx = idx + 1
            s = s + 256
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _71 + (256 * _74) + -mem[64] + 64
    mem[(32 * ('cd', 4).length) + 192] = 0
    mem[(32 * ('cd', 4).length) + 224] = 0
    mem[(32 * ('cd', 4).length) + 256] = 0
    mem[(32 * ('cd', 4).length) + 288] = 0
    mem[(32 * ('cd', 4).length) + 320] = 0
    mem[(32 * ('cd', 4).length) + 128] = (32 * ('cd', 4).length) + 192
    mem[64] = (32 * ('cd', 4).length) + 448
    mem[(32 * ('cd', 4).length) + 352] = 0
    mem[(32 * ('cd', 4).length) + 384] = 0
    mem[(32 * ('cd', 4).length) + 416] = 0
    mem[(32 * ('cd', 4).length) + 160] = (32 * ('cd', 4).length) + 352
    mem[var20002] = (32 * ('cd', 4).length) + 128
    s = (32 * ('cd', 4).length) + 128
    s = (32 * ('cd', 4).length) + 128
    s = var20002
    idx = var20003
    while idx - 1:
        _186 = mem[64]
        mem[64] = mem[64] + 64
        mem[64] = mem[64] + 160
        mem[(32 * ('cd', 4).length) + 192] = 0
        mem[(32 * ('cd', 4).length) + 224] = 0
        mem[(32 * ('cd', 4).length) + 256] = 0
        mem[(32 * ('cd', 4).length) + 288] = 0
        mem[(32 * ('cd', 4).length) + 320] = 0
        mem[_186] = (32 * ('cd', 4).length) + 192
        mem[64] = mem[64] + 96
        mem[(32 * ('cd', 4).length) + 352] = 0
        mem[(32 * ('cd', 4).length) + 384] = 0
        mem[(32 * ('cd', 4).length) + 416] = 0
        mem[_186 + 32] = (32 * ('cd', 4).length) + 352
        mem[s + 32] = _186
        s = _186
        s = _186
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        _219 = mem[64]
        mem[64] = mem[64] + 64
        require ext_code.size(this.address)
        staticcall this.address.0xa01bf1c2 with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _225 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 160
        _233 = mem[64]
        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 160
        mem[_233] = mem[_225]
        mem[_233 + 32] = mem[_225 + 32]
        mem[_233 + 64] = mem[_225 + 64]
        mem[_233 + 96] = mem[_225 + 96]
        mem[_233 + 128] = mem[_225 + 128]
        mem[_219] = _233
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require ext_code.size(this.address)
        staticcall this.address.0xb328d586 with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _245 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _246 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_246] = mem[_245]
        mem[_246 + 32] = mem[_245 + 32]
        mem[_246 + 64] = mem[_245 + 64]
        mem[_219 + 32] = _246
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _219
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _220 = mem[64]
    mem[mem[64]] = 32
    _222 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _222:
        _251 = mem[t]
        _253 = mem[mem[t]]
        mem[s] = mem[mem[mem[t]]]
        mem[s + 32] = mem[_253 + 32]
        mem[s + 64] = mem[_253 + 64]
        mem[s + 96] = mem[_253 + 96]
        mem[s + 128] = mem[_253 + 128]
        _259 = mem[_251 + 32]
        mem[s + 160] = mem[mem[_251 + 32]]
        mem[s + 192] = mem[_259 + 32]
        mem[s + 224] = mem[_259 + 64]
        idx = idx + 1
        s = s + 256
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _220 + (256 * _222) + -mem[64] + 64
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
                require ext_code.size(stor7)
                staticcall stor7.mem[mem[64] len 4] with:
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
                require ext_code.size(stor7)
                staticcall stor7.mem[mem[64] len 4] with:
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
                require ext_code.size(stor7)
                staticcall stor7.mem[mem[64] len 4] with:
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
                require ext_code.size(stor7)
                staticcall stor7.mem[mem[64] len 4] with:
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

function sub_0c55baa9(?) payable {
    require calldata.size - 4 >= 32
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[96] = 320
    mem[480] = 0
    mem[512] = 0
    mem[128] = 480
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[160] = 544
    mem[192] = 0
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    mem[736] = 0
    mem[768] = 0
    mem[800] = 0
    mem[224] = 640
    mem[832 len 1152] = call.data[calldata.size len 1152]
    mem[256] = 832
    mem[1984] = 96
    mem[2016] = 0
    mem[2048] = 96
    mem[288] = 1984
    require ext_code.size(this.address)
    staticcall this.address.0xa01bf1c2 with:
            gas gas_remaining wei
           args arg1
    mem[2080 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not bool(ceil32(return_data.size) + 2240 <= test266151307()):
        revert with 0, 65
    mem[ceil32(return_data.size) + 2080] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 2112] = ext_call.return_data[32]
    mem[ceil32(return_data.size) + 2144] = ext_call.return_data[64]
    mem[ceil32(return_data.size) + 2176] = ext_call.return_data[96]
    mem[ceil32(return_data.size) + 2208] = ext_call.return_data[128]
    require ext_code.size(stor6)
    staticcall stor6.ability_scores(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 2240 len 192] = ext_call.return_data[0 len 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    require ext_call.return_data[160] == ext_call.return_data[188 len 4]
    require ext_code.size(this.address)
    staticcall this.address.0x877e3817 with:
            gas gas_remaining wei
           args arg1
    mem[(2 * ceil32(return_data.size)) + 2240 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool((4 * ceil32(return_data.size)) + 2304 <= test266151307()):
        revert with 0, 65
    mem[(4 * ceil32(return_data.size)) + 2240] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 2272] = ext_call.return_data[32]
    require ext_code.size(this.address)
    staticcall this.address.0xb328d586 with:
            gas gas_remaining wei
           args arg1
    mem[(4 * ceil32(return_data.size)) + 2304 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool((6 * ceil32(return_data.size)) + 2400 <= test266151307()):
        revert with 0, 65
    mem[(6 * ceil32(return_data.size)) + 2304] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 2336] = ext_call.return_data[32]
    mem[(6 * ceil32(return_data.size)) + 2368] = ext_call.return_data[64]
    mem[(6 * ceil32(return_data.size)) + 2404] = arg1
    require ext_code.size(stor0)
    staticcall stor0.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[(6 * ceil32(return_data.size)) + 2400] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor5)
    staticcall stor5.get_skills(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[(7 * ceil32(return_data.size)) + 2400 len 1152] = ext_call.return_data[0 len 1152]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 1152
    require (7 * ceil32(return_data.size)) + 2431 < (7 * ceil32(return_data.size)) + return_data.size + 2400
    if not bool((8 * ceil32(return_data.size)) + 3552 <= test266151307()):
        revert with 0, 65
    require 1152 <= return_data.size
    idx = 0
    s = (7 * ceil32(return_data.size)) + 2400
    t = (8 * ceil32(return_data.size)) + 2400
    while idx < 36:
        require mem[s] == mem[s + 31 len 1]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(8 * ceil32(return_data.size)) + 3552] = 0x6b8ff57400000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 3556] = arg1
    require ext_code.size(this.address)
    staticcall this.address.0x6b8ff574 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(8 * ceil32(return_data.size)) + 3552 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _52 = mem[(8 * ceil32(return_data.size)) + 3552 len 4], Mask(224, 32, arg1) >> 32
    require mem[(8 * ceil32(return_data.size)) + 3552 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[(8 * ceil32(return_data.size)) + 3552 len 4], Mask(224, 32, arg1) >> 32 >= 96
    if not bool((10 * ceil32(return_data.size)) + 3648 <= test266151307()):
        revert with 0, 65
    mem[64] = (10 * ceil32(return_data.size)) + 3648
    _54 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 3552 len 4], Mask(224, 32, arg1) >> 32 + 3552]
    require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 3552 len 4], Mask(224, 32, arg1) >> 32 + 3552] <= test266151307()
    require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 3552 len 4], Mask(224, 32, arg1) >> 32 + mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 3552 len 4], Mask(224, 32, arg1) >> 32 + 3552] + 3583 < (8 * ceil32(return_data.size)) + return_data.size + 3552
    _55 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 3552 len 4], Mask(224, 32, arg1) >> 32 + mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 3552 len 4], Mask(224, 32, arg1) >> 32 + 3552] + 3552]
    if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 3552 len 4], Mask(224, 32, arg1) >> 32 + mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 3552 len 4], Mask(224, 32, arg1) >> 32 + 3552] + 3552] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 3552 len 4], Mask(224, 32, arg1) >> 32 + mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 3552 len 4], Mask(224, 32, arg1) >> 32 + 3552] + 3552])) + 97 < 96 or (10 * ceil32(return_data.size)) + ceil32(ceil32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 3552 len 4], Mask(224, 32, arg1) >> 32 + mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 3552 len 4], Mask(224, 32, arg1) >> 32 + 3552] + 3552])) + 3649 > test266151307():
        revert with 0, 65
    mem[64] = (10 * ceil32(return_data.size)) + ceil32(ceil32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 3552 len 4], Mask(224, 32, arg1) >> 32 + mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 3552 len 4], Mask(224, 32, arg1) >> 32 + 3552] + 3552])) + 3649
    mem[(10 * ceil32(return_data.size)) + 3648] = _55
    require mem[(8 * ceil32(return_data.size)) + 3552 len 4], Mask(224, 32, arg1) >> 32 + _54 + _55 + 32 <= return_data.size
    mem[(10 * ceil32(return_data.size)) + 3680 len ceil32(_55)] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 3552 len 4], Mask(224, 32, arg1) >> 32 + _54 + 3584 len ceil32(_55)]
    if ceil32(_55) <= _55:
        mem[(10 * ceil32(return_data.size)) + 3552] = (10 * ceil32(return_data.size)) + 3648
        mem[(10 * ceil32(return_data.size)) + 3584] = mem[(8 * ceil32(return_data.size)) + _52 + 3584]
        _174 = mem[(8 * ceil32(return_data.size)) + _52 + 3616]
        require mem[(8 * ceil32(return_data.size)) + _52 + 3616] <= test266151307()
        require (8 * ceil32(return_data.size)) + _52 + mem[(8 * ceil32(return_data.size)) + _52 + 3616] + 3583 < (8 * ceil32(return_data.size)) + return_data.size + 3552
        _177 = mem[(8 * ceil32(return_data.size)) + _52 + mem[(8 * ceil32(return_data.size)) + _52 + 3616] + 3552]
        if mem[(8 * ceil32(return_data.size)) + _52 + mem[(8 * ceil32(return_data.size)) + _52 + 3616] + 3552] > test266151307():
            revert with 0, 65
        _179 = mem[64]
        if mem[64] + ceil32(ceil32(mem[(8 * ceil32(return_data.size)) + _52 + mem[(8 * ceil32(return_data.size)) + _52 + 3616] + 3552])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[(8 * ceil32(return_data.size)) + _52 + mem[(8 * ceil32(return_data.size)) + _52 + 3616] + 3552])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[(8 * ceil32(return_data.size)) + _52 + mem[(8 * ceil32(return_data.size)) + _52 + 3616] + 3552])) + 1
        mem[_179] = _177
        require _52 + _174 + _177 + 32 <= return_data.size
        mem[_179 + 32 len ceil32(_177)] = mem[(8 * ceil32(return_data.size)) + _52 + _174 + 3584 len ceil32(_177)]
        if ceil32(_177) <= _177:
            mem[(10 * ceil32(return_data.size)) + 3616] = _179
            _289 = mem[64]
            mem[64] = mem[64] + 224
            mem[_289] = ceil32(return_data.size) + 2080
            mem[_289 + 32] = (4 * ceil32(return_data.size)) + 2240
            mem[_289 + 64] = (6 * ceil32(return_data.size)) + 2304
            mem[_289 + 96] = address(ext_call.return_data[0])
            _290 = mem[64]
            mem[64] = mem[64] + 192
            mem[_290] = uint32(ext_call.return_data[0])
            mem[_290 + 32] = uint32(ext_call.return_data[32])
            mem[_290 + 64] = uint32(ext_call.return_data[64])
            mem[_290 + 96] = uint32(ext_call.return_data[96])
            mem[_290 + 128] = uint32(ext_call.return_data[128])
            mem[_290 + 160] = uint32(ext_call.return_data[160])
            mem[_289 + 128] = _290
            mem[_289 + 160] = (8 * ceil32(return_data.size)) + 2400
            mem[_289 + 192] = (10 * ceil32(return_data.size)) + 3552
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 2080]
            mem[mem[64] + 64] = mem[ceil32(return_data.size) + 2112]
            mem[mem[64] + 96] = mem[ceil32(return_data.size) + 2144]
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 2176]
            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 2208]
            mem[mem[64] + 192] = mem[(4 * ceil32(return_data.size)) + 2240]
            mem[mem[64] + 224] = mem[(4 * ceil32(return_data.size)) + 2272]
            mem[mem[64] + 256] = mem[(6 * ceil32(return_data.size)) + 2304]
            mem[mem[64] + 288] = mem[(6 * ceil32(return_data.size)) + 2336]
            mem[mem[64] + 320] = mem[(6 * ceil32(return_data.size)) + 2368]
            mem[mem[64] + 352] = address(ext_call.return_data[0])
            mem[mem[64] + 384] = 0
            mem[mem[64] + 416] = 0
            mem[mem[64] + 448] = 0
            mem[mem[64] + 480] = 0
            mem[mem[64] + 512] = 0
            mem[mem[64] + 544] = 0
            idx = 0
            s = mem[_289 + 160]
            t = mem[64] + 576
            while idx < 36:
                mem[t] = mem[s + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _397 = mem[_289 + 192]
            mem[mem[64] + 1728] = 1728
            _401 = mem[_397]
            mem[mem[64] + 1760] = 96
            _405 = mem[_401]
            mem[mem[64] + 1856] = mem[_401]
            mem[mem[64] + 1888 len ceil32(_405)] = mem[_401 + 32 len ceil32(_405)]
            if ceil32(_405) <= _405:
                mem[mem[64] + 1792] = mem[_397 + 32]
                _466 = mem[_397 + 64]
                mem[mem[64] + 1824] = ceil32(_405) + 128
                _481 = mem[_466]
                mem[ceil32(_405) + mem[64] + 1888] = mem[_466]
                mem[ceil32(_405) + mem[64] + 1920 len ceil32(_481)] = mem[_466 + 32 len ceil32(_481)]
                if ceil32(_481) > _481:
                    mem[_481 + ceil32(_405) + mem[64] + 1920] = 0
                return 32, mem[mem[64] + 32 len 320], 
                       address(ext_call.return_data[0]),
                       0,
                       0,
                       0,
                       0,
                       0,
                       0,
                       mem[mem[64] + 576 len 1152],
                       1728,
                       96,
                       mem[mem[64] + 1792],
                       ceil32(_405) + 128,
                       mem[mem[64] + 1856 len ceil32(_481) + ceil32(_405) + 64]
            mem[_405 + mem[64] + 1888] = 0
            mem[mem[64] + 1792] = mem[_397 + 32]
            _468 = mem[_397 + 64]
            mem[mem[64] + 1824] = ceil32(_405) + 128
            _482 = mem[_468]
            mem[ceil32(_405) + mem[64] + 1888] = mem[_468]
            mem[ceil32(_405) + mem[64] + 1920 len ceil32(_482)] = mem[_468 + 32 len ceil32(_482)]
            if ceil32(_482) > _482:
                mem[_482 + ceil32(_405) + mem[64] + 1920] = 0
            return 32, mem[mem[64] + 32 len 320], 
                   address(ext_call.return_data[0]),
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   mem[mem[64] + 576 len 1152],
                   1728,
                   96,
                   mem[mem[64] + 1792],
                   ceil32(_405) + 128,
                   mem[mem[64] + 1856 len _405 + 32],
                   0,
                   mem[mem[64] + _405 + 1920 len ceil32(_482) + ceil32(_405) - _405]
        mem[_177 + _179 + 32] = 0
        mem[(10 * ceil32(return_data.size)) + 3616] = _179
        _291 = mem[64]
        mem[64] = mem[64] + 224
        mem[_291] = ceil32(return_data.size) + 2080
        mem[_291 + 32] = (4 * ceil32(return_data.size)) + 2240
        mem[_291 + 64] = (6 * ceil32(return_data.size)) + 2304
        mem[_291 + 96] = address(ext_call.return_data[0])
        _292 = mem[64]
        mem[64] = mem[64] + 192
        mem[_292] = uint32(ext_call.return_data[0])
        mem[_292 + 32] = uint32(ext_call.return_data[32])
        mem[_292 + 64] = uint32(ext_call.return_data[64])
        mem[_292 + 96] = uint32(ext_call.return_data[96])
        mem[_292 + 128] = uint32(ext_call.return_data[128])
        mem[_292 + 160] = uint32(ext_call.return_data[160])
        mem[_291 + 128] = _292
        mem[_291 + 160] = (8 * ceil32(return_data.size)) + 2400
        mem[_291 + 192] = (10 * ceil32(return_data.size)) + 3552
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 2080]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 2112]
        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 2144]
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 2176]
        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 2208]
        mem[mem[64] + 192] = mem[(4 * ceil32(return_data.size)) + 2240]
        mem[mem[64] + 224] = mem[(4 * ceil32(return_data.size)) + 2272]
        mem[mem[64] + 256] = mem[(6 * ceil32(return_data.size)) + 2304]
        mem[mem[64] + 288] = mem[(6 * ceil32(return_data.size)) + 2336]
        mem[mem[64] + 320] = mem[(6 * ceil32(return_data.size)) + 2368]
        mem[mem[64] + 352] = address(ext_call.return_data[0])
        mem[mem[64] + 384] = 0
        mem[mem[64] + 416] = 0
        mem[mem[64] + 448] = 0
        mem[mem[64] + 480] = 0
        mem[mem[64] + 512] = 0
        mem[mem[64] + 544] = 0
        idx = 0
        s = mem[_291 + 160]
        t = mem[64] + 576
        while idx < 36:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _398 = mem[_291 + 192]
        mem[mem[64] + 1728] = 1728
        _402 = mem[_398]
        mem[mem[64] + 1760] = 96
        _406 = mem[_402]
        mem[mem[64] + 1856] = mem[_402]
        mem[mem[64] + 1888 len ceil32(_406)] = mem[_402 + 32 len ceil32(_406)]
        if ceil32(_406) <= _406:
            mem[mem[64] + 1792] = mem[_398 + 32]
            _470 = mem[_398 + 64]
            mem[mem[64] + 1824] = ceil32(_406) + 128
            _483 = mem[_470]
            mem[ceil32(_406) + mem[64] + 1888] = mem[_470]
            mem[ceil32(_406) + mem[64] + 1920 len ceil32(_483)] = mem[_470 + 32 len ceil32(_483)]
            if ceil32(_483) > _483:
                mem[_483 + ceil32(_406) + mem[64] + 1920] = 0
            return 32, mem[mem[64] + 32 len 320], 
                   address(ext_call.return_data[0]),
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   mem[mem[64] + 576 len 1152],
                   1728,
                   96,
                   mem[mem[64] + 1792],
                   ceil32(_406) + 128,
                   mem[mem[64] + 1856 len ceil32(_483) + ceil32(_406) + 64]
        mem[_406 + mem[64] + 1888] = 0
        mem[mem[64] + 1792] = mem[_398 + 32]
        _472 = mem[_398 + 64]
        mem[mem[64] + 1824] = ceil32(_406) + 128
        _484 = mem[_472]
        mem[ceil32(_406) + mem[64] + 1888] = mem[_472]
        mem[ceil32(_406) + mem[64] + 1920 len ceil32(_484)] = mem[_472 + 32 len ceil32(_484)]
        if ceil32(_484) > _484:
            mem[_484 + ceil32(_406) + mem[64] + 1920] = 0
        return 32, mem[mem[64] + 32 len 320], 
               address(ext_call.return_data[0]),
               0,
               0,
               0,
               0,
               0,
               0,
               mem[mem[64] + 576 len 1152],
               1728,
               96,
               mem[mem[64] + 1792],
               ceil32(_406) + 128,
               mem[mem[64] + 1856 len _406 + 32],
               0,
               mem[mem[64] + _406 + 1920 len ceil32(_484) + ceil32(_406) - _406]
    mem[_55 + (10 * ceil32(return_data.size)) + 3680] = 0
    mem[(10 * ceil32(return_data.size)) + 3552] = (10 * ceil32(return_data.size)) + 3648
    mem[(10 * ceil32(return_data.size)) + 3584] = mem[(8 * ceil32(return_data.size)) + _52 + 3584]
    _176 = mem[(8 * ceil32(return_data.size)) + _52 + 3616]
    require mem[(8 * ceil32(return_data.size)) + _52 + 3616] <= test266151307()
    require (8 * ceil32(return_data.size)) + _52 + mem[(8 * ceil32(return_data.size)) + _52 + 3616] + 3583 < (8 * ceil32(return_data.size)) + return_data.size + 3552
    _178 = mem[(8 * ceil32(return_data.size)) + _52 + mem[(8 * ceil32(return_data.size)) + _52 + 3616] + 3552]
    if mem[(8 * ceil32(return_data.size)) + _52 + mem[(8 * ceil32(return_data.size)) + _52 + 3616] + 3552] > test266151307():
        revert with 0, 65
    _180 = mem[64]
    if mem[64] + ceil32(ceil32(mem[(8 * ceil32(return_data.size)) + _52 + mem[(8 * ceil32(return_data.size)) + _52 + 3616] + 3552])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[(8 * ceil32(return_data.size)) + _52 + mem[(8 * ceil32(return_data.size)) + _52 + 3616] + 3552])) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(ceil32(mem[(8 * ceil32(return_data.size)) + _52 + mem[(8 * ceil32(return_data.size)) + _52 + 3616] + 3552])) + 1
    mem[_180] = _178
    require _52 + _176 + _178 + 32 <= return_data.size
    mem[_180 + 32 len ceil32(_178)] = mem[(8 * ceil32(return_data.size)) + _52 + _176 + 3584 len ceil32(_178)]
    if ceil32(_178) <= _178:
        mem[(10 * ceil32(return_data.size)) + 3616] = _180
        _293 = mem[64]
        mem[64] = mem[64] + 224
        mem[_293] = ceil32(return_data.size) + 2080
        mem[_293 + 32] = (4 * ceil32(return_data.size)) + 2240
        mem[_293 + 64] = (6 * ceil32(return_data.size)) + 2304
        mem[_293 + 96] = address(ext_call.return_data[0])
        _294 = mem[64]
        mem[64] = mem[64] + 192
        mem[_294] = uint32(ext_call.return_data[0])
        mem[_294 + 32] = uint32(ext_call.return_data[32])
        mem[_294 + 64] = uint32(ext_call.return_data[64])
        mem[_294 + 96] = uint32(ext_call.return_data[96])
        mem[_294 + 128] = uint32(ext_call.return_data[128])
        mem[_294 + 160] = uint32(ext_call.return_data[160])
        mem[_293 + 128] = _294
        mem[_293 + 160] = (8 * ceil32(return_data.size)) + 2400
        mem[_293 + 192] = (10 * ceil32(return_data.size)) + 3552
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 2080]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 2112]
        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 2144]
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 2176]
        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 2208]
        mem[mem[64] + 192] = mem[(4 * ceil32(return_data.size)) + 2240]
        mem[mem[64] + 224] = mem[(4 * ceil32(return_data.size)) + 2272]
        mem[mem[64] + 256] = mem[(6 * ceil32(return_data.size)) + 2304]
        mem[mem[64] + 288] = mem[(6 * ceil32(return_data.size)) + 2336]
        mem[mem[64] + 320] = mem[(6 * ceil32(return_data.size)) + 2368]
        mem[mem[64] + 352] = address(ext_call.return_data[0])
        mem[mem[64] + 384] = 0
        mem[mem[64] + 416] = 0
        mem[mem[64] + 448] = 0
        mem[mem[64] + 480] = 0
        mem[mem[64] + 512] = 0
        mem[mem[64] + 544] = 0
        idx = 0
        s = mem[_293 + 160]
        t = mem[64] + 576
        while idx < 36:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _399 = mem[_293 + 192]
        mem[mem[64] + 1728] = 1728
        _403 = mem[_399]
        mem[mem[64] + 1760] = 96
        _407 = mem[_403]
        mem[mem[64] + 1856] = mem[_403]
        mem[mem[64] + 1888 len ceil32(_407)] = mem[_403 + 32 len ceil32(_407)]
        if ceil32(_407) <= _407:
            mem[mem[64] + 1792] = mem[_399 + 32]
            _474 = mem[_399 + 64]
            mem[mem[64] + 1824] = ceil32(_407) + 128
            _485 = mem[_474]
            mem[ceil32(_407) + mem[64] + 1888] = mem[_474]
            mem[ceil32(_407) + mem[64] + 1920 len ceil32(_485)] = mem[_474 + 32 len ceil32(_485)]
            if ceil32(_485) > _485:
                mem[_485 + ceil32(_407) + mem[64] + 1920] = 0
            return 32, mem[mem[64] + 32 len 320], 
                   address(ext_call.return_data[0]),
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   mem[mem[64] + 576 len 1152],
                   1728,
                   96,
                   mem[mem[64] + 1792],
                   ceil32(_407) + 128,
                   mem[mem[64] + 1856 len ceil32(_485) + ceil32(_407) + 64]
        mem[_407 + mem[64] + 1888] = 0
        mem[mem[64] + 1792] = mem[_399 + 32]
        _476 = mem[_399 + 64]
        mem[mem[64] + 1824] = ceil32(_407) + 128
        _486 = mem[_476]
        mem[ceil32(_407) + mem[64] + 1888] = mem[_476]
        mem[ceil32(_407) + mem[64] + 1920 len ceil32(_486)] = mem[_476 + 32 len ceil32(_486)]
        if ceil32(_486) > _486:
            mem[_486 + ceil32(_407) + mem[64] + 1920] = 0
        return 32, mem[mem[64] + 32 len 320], 
               address(ext_call.return_data[0]),
               0,
               0,
               0,
               0,
               0,
               0,
               mem[mem[64] + 576 len 1152],
               1728,
               96,
               mem[mem[64] + 1792],
               ceil32(_407) + 128,
               mem[mem[64] + 1856 len _407 + 32],
               0,
               mem[mem[64] + _407 + 1920 len ceil32(_486) + ceil32(_407) - _407]
    mem[_178 + _180 + 32] = 0
    mem[(10 * ceil32(return_data.size)) + 3616] = _180
    _295 = mem[64]
    mem[64] = mem[64] + 224
    mem[_295] = ceil32(return_data.size) + 2080
    mem[_295 + 32] = (4 * ceil32(return_data.size)) + 2240
    mem[_295 + 64] = (6 * ceil32(return_data.size)) + 2304
    mem[_295 + 96] = address(ext_call.return_data[0])
    _296 = mem[64]
    mem[64] = mem[64] + 192
    mem[_296] = uint32(ext_call.return_data[0])
    mem[_296 + 32] = uint32(ext_call.return_data[32])
    mem[_296 + 64] = uint32(ext_call.return_data[64])
    mem[_296 + 96] = uint32(ext_call.return_data[96])
    mem[_296 + 128] = uint32(ext_call.return_data[128])
    mem[_296 + 160] = uint32(ext_call.return_data[160])
    mem[_295 + 128] = _296
    mem[_295 + 160] = (8 * ceil32(return_data.size)) + 2400
    mem[_295 + 192] = (10 * ceil32(return_data.size)) + 3552
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 2080]
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 2112]
    mem[mem[64] + 96] = mem[ceil32(return_data.size) + 2144]
    mem[mem[64] + 128] = mem[ceil32(return_data.size) + 2176]
    mem[mem[64] + 160] = mem[ceil32(return_data.size) + 2208]
    mem[mem[64] + 192] = mem[(4 * ceil32(return_data.size)) + 2240]
    mem[mem[64] + 224] = mem[(4 * ceil32(return_data.size)) + 2272]
    mem[mem[64] + 256] = mem[(6 * ceil32(return_data.size)) + 2304]
    mem[mem[64] + 288] = mem[(6 * ceil32(return_data.size)) + 2336]
    mem[mem[64] + 320] = mem[(6 * ceil32(return_data.size)) + 2368]
    mem[mem[64] + 352] = address(ext_call.return_data[0])
    mem[mem[64] + 384] = 0
    mem[mem[64] + 416] = 0
    mem[mem[64] + 448] = 0
    mem[mem[64] + 480] = 0
    mem[mem[64] + 512] = 0
    mem[mem[64] + 544] = 0
    idx = 0
    s = mem[_295 + 160]
    t = mem[64] + 576
    while idx < 36:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _400 = mem[_295 + 192]
    mem[mem[64] + 1728] = 1728
    _404 = mem[_400]
    mem[mem[64] + 1760] = 96
    _408 = mem[_404]
    mem[mem[64] + 1856] = mem[_404]
    mem[mem[64] + 1888 len ceil32(_408)] = mem[_404 + 32 len ceil32(_408)]
    if ceil32(_408) <= _408:
        mem[mem[64] + 1792] = mem[_400 + 32]
        _478 = mem[_400 + 64]
        mem[mem[64] + 1824] = ceil32(_408) + 128
        _487 = mem[_478]
        mem[ceil32(_408) + mem[64] + 1888] = mem[_478]
        mem[ceil32(_408) + mem[64] + 1920 len ceil32(_487)] = mem[_478 + 32 len ceil32(_487)]
        if ceil32(_487) > _487:
            mem[_487 + ceil32(_408) + mem[64] + 1920] = 0
        return 32, mem[mem[64] + 32 len 320], 
               address(ext_call.return_data[0]),
               0,
               0,
               0,
               0,
               0,
               0,
               mem[mem[64] + 576 len 1152],
               1728,
               96,
               mem[mem[64] + 1792],
               ceil32(_408) + 128,
               mem[mem[64] + 1856 len ceil32(_487) + ceil32(_408) + 64]
    mem[_408 + mem[64] + 1888] = 0
    mem[mem[64] + 1792] = mem[_400 + 32]
    _480 = mem[_400 + 64]
    mem[mem[64] + 1824] = ceil32(_408) + 128
    _488 = mem[_480]
    mem[ceil32(_408) + mem[64] + 1888] = mem[_480]
    mem[ceil32(_408) + mem[64] + 1920 len ceil32(_488)] = mem[_480 + 32 len ceil32(_488)]
    if ceil32(_488) > _488:
        mem[_488 + ceil32(_408) + mem[64] + 1920] = 0
    return 32, mem[mem[64] + 32 len 320], 
           address(ext_call.return_data[0]),
           0,
           0,
           0,
           0,
           0,
           0,
           mem[mem[64] + 576 len 1152],
           1728,
           96,
           mem[mem[64] + 1792],
           ceil32(_408) + 128,
           mem[mem[64] + 1856 len _408 + 32],
           0,
           mem[mem[64] + _408 + 1920 len ceil32(_488) + ceil32(_408) - _408]
}

function sub_c05bc01f(?) payable {
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
            _462 = mem[(32 * idx) + 128]
            _466 = mem[64]
            mem[64] = mem[64] + 224
            _469 = mem[64]
            mem[64] = mem[64] + 160
            mem[_469] = 0
            mem[_469 + 32] = 0
            mem[_469 + 64] = 0
            mem[_469 + 96] = 0
            mem[_469 + 128] = 0
            mem[_466] = _469
            _472 = mem[64]
            mem[64] = mem[64] + 64
            mem[_472] = 0
            mem[_472 + 32] = 0
            mem[_466 + 32] = _472
            _479 = mem[64]
            mem[64] = mem[64] + 96
            mem[_479] = 0
            mem[_479 + 32] = 0
            mem[_479 + 64] = 0
            mem[_466 + 64] = _479
            mem[_466 + 96] = 0
            _490 = mem[64]
            mem[64] = mem[64] + 192
            mem[_490] = 0
            mem[_490 + 32] = 0
            mem[_490 + 64] = 0
            mem[_490 + 96] = 0
            mem[_490 + 128] = 0
            mem[_490 + 160] = 0
            mem[_466 + 128] = _490
            _498 = mem[64]
            mem[64] = mem[64] + 1152
            mem[_498 len 1152] = call.data[calldata.size len 1152]
            mem[_466 + 160] = _498
            _499 = mem[64]
            mem[64] = mem[64] + 96
            mem[_499] = 96
            mem[_499 + 32] = 0
            mem[_499 + 64] = 96
            mem[_466 + 192] = _499
            require ext_code.size(this.address)
            staticcall this.address.0xa01bf1c2 with:
                    gas gas_remaining wei
                   args _462
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _508 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            _511 = mem[64]
            if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 160
            mem[_511] = mem[_508]
            mem[_511 + 32] = mem[_508 + 32]
            mem[_511 + 64] = mem[_508 + 64]
            mem[_511 + 96] = mem[_508 + 96]
            mem[_511 + 128] = mem[_508 + 128]
            require ext_code.size(stor6)
            staticcall stor6.ability_scores(uint256 arg1) with:
                    gas gas_remaining wei
                   args _462
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _540 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _549 = mem[_540]
            require mem[_540] == mem[_540 + 28 len 4]
            _554 = mem[_540 + 32]
            require mem[_540 + 32] == mem[_540 + 60 len 4]
            _556 = mem[_540 + 64]
            require mem[_540 + 64] == mem[_540 + 92 len 4]
            _565 = mem[_540 + 96]
            require mem[_540 + 96] == mem[_540 + 124 len 4]
            _567 = mem[_540 + 128]
            require mem[_540 + 128] == mem[_540 + 156 len 4]
            _569 = mem[_540 + 160]
            require mem[_540 + 160] == mem[_540 + 188 len 4]
            require ext_code.size(this.address)
            staticcall this.address.0x877e3817 with:
                    gas gas_remaining wei
                   args _462
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _575 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _576 = mem[64]
            if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 64
            mem[_576] = mem[_575]
            mem[_576 + 32] = mem[_575 + 32]
            require ext_code.size(this.address)
            staticcall this.address.0xb328d586 with:
                    gas gas_remaining wei
                   args _462
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _583 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _584 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_584] = mem[_583]
            mem[_584 + 32] = mem[_583 + 32]
            mem[_584 + 64] = mem[_583 + 64]
            mem[mem[64] + 4] = _462
            require ext_code.size(stor0)
            staticcall stor0.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args _462
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _592 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _594 = mem[_592]
            require mem[_592] == mem[_592 + 12 len 20]
            require ext_code.size(stor5)
            staticcall stor5.get_skills(uint256 arg1) with:
                    gas gas_remaining wei
                   args _462
            mem[mem[64] len 1152] = ext_call.return_data[0 len 1152]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _602 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 1152
            require _602 + 31 < _602 + return_data.size
            _608 = mem[64]
            if mem[64] + 1152 < mem[64] or mem[64] + 1152 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 1152
            require 1152 <= return_data.size
            s = 0
            t = _602
            u = _608
            while s < 36:
                require mem[t] == mem[t + 31 len 1]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64]] = 0x6b8ff57400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _462
            require ext_code.size(this.address)
            staticcall this.address.0x6b8ff574 with:
                    gas gas_remaining wei
                   args _462
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _630 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _632 = mem[_630]
            require mem[_630] <= test266151307()
            require return_data.size - mem[_630] >= 96
            if not bool(_630 + ceil32(return_data.size) + 96 <= test266151307()):
                revert with 0, 65
            mem[64] = _630 + ceil32(return_data.size) + 96
            _636 = mem[_630 + _632]
            require mem[_630 + _632] <= test266151307()
            require _630 + _632 + mem[_630 + _632] + 31 < _630 + return_data.size
            _645 = mem[_630 + _632 + mem[_630 + _632]]
            if mem[_630 + _632 + mem[_630 + _632]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_630 + _632 + mem[_630 + _632]])) + 97 < 96 or _630 + ceil32(return_data.size) + ceil32(ceil32(mem[_630 + _632 + mem[_630 + _632]])) + 97 > test266151307():
                revert with 0, 65
            mem[64] = _630 + ceil32(return_data.size) + ceil32(ceil32(mem[_630 + _632 + mem[_630 + _632]])) + 97
            mem[_630 + ceil32(return_data.size) + 96] = _645
            require _632 + _636 + _645 + 32 <= return_data.size
            s = 0
            while s < _645:
                mem[s + _630 + ceil32(return_data.size) + 128] = mem[s + _630 + _632 + _636 + 32]
                s = s + 32
                continue 
            if ceil32(_645) <= _645:
                mem[_630 + ceil32(return_data.size)] = _630 + ceil32(return_data.size) + 96
                mem[_630 + ceil32(return_data.size) + 32] = mem[_630 + _632 + 32]
                _773 = mem[_630 + _632 + 64]
                require mem[_630 + _632 + 64] <= test266151307()
                require _630 + _632 + mem[_630 + _632 + 64] + 31 < _630 + return_data.size
                _786 = mem[_630 + _632 + mem[_630 + _632 + 64]]
                if mem[_630 + _632 + mem[_630 + _632 + 64]] > test266151307():
                    revert with 0, 65
                _796 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_630 + _632 + mem[_630 + _632 + 64]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_630 + _632 + mem[_630 + _632 + 64]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_630 + _632 + mem[_630 + _632 + 64]])) + 1
                mem[_796] = _786
                require _632 + _773 + _786 + 32 <= return_data.size
                s = 0
                while s < _786:
                    mem[s + _796 + 32] = mem[s + _630 + _632 + _773 + 32]
                    s = s + 32
                    continue 
                if ceil32(_786) <= _786:
                    mem[_630 + ceil32(return_data.size) + 64] = _796
                    _853 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_853] = _511
                    mem[_853 + 32] = _576
                    mem[_853 + 64] = _584
                    mem[_853 + 96] = address(_594)
                    _854 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_854] = uint32(_549)
                    mem[_854 + 32] = uint32(_554)
                    mem[_854 + 64] = uint32(_556)
                    mem[_854 + 96] = uint32(_565)
                    mem[_854 + 128] = uint32(_567)
                    mem[_854 + 160] = uint32(_569)
                    mem[_853 + 128] = _854
                    mem[_853 + 160] = _608
                    mem[_853 + 192] = _630 + ceil32(return_data.size)
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _853
                else:
                    mem[_786 + _796 + 32] = 0
                    mem[_630 + ceil32(return_data.size) + 64] = _796
                    _855 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_855] = _511
                    mem[_855 + 32] = _576
                    mem[_855 + 64] = _584
                    mem[_855 + 96] = address(_594)
                    _856 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_856] = uint32(_549)
                    mem[_856 + 32] = uint32(_554)
                    mem[_856 + 64] = uint32(_556)
                    mem[_856 + 96] = uint32(_565)
                    mem[_856 + 128] = uint32(_567)
                    mem[_856 + 160] = uint32(_569)
                    mem[_855 + 128] = _856
                    mem[_855 + 160] = _608
                    mem[_855 + 192] = _630 + ceil32(return_data.size)
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _855
            else:
                mem[_645 + _630 + ceil32(return_data.size) + 128] = 0
                mem[_630 + ceil32(return_data.size)] = _630 + ceil32(return_data.size) + 96
                mem[_630 + ceil32(return_data.size) + 32] = mem[_630 + _632 + 32]
                _775 = mem[_630 + _632 + 64]
                require mem[_630 + _632 + 64] <= test266151307()
                require _630 + _632 + mem[_630 + _632 + 64] + 31 < _630 + return_data.size
                _787 = mem[_630 + _632 + mem[_630 + _632 + 64]]
                if mem[_630 + _632 + mem[_630 + _632 + 64]] > test266151307():
                    revert with 0, 65
                _797 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_630 + _632 + mem[_630 + _632 + 64]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_630 + _632 + mem[_630 + _632 + 64]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_630 + _632 + mem[_630 + _632 + 64]])) + 1
                mem[_797] = _787
                require _632 + _775 + _787 + 32 <= return_data.size
                s = 0
                while s < _787:
                    mem[s + _797 + 32] = mem[s + _630 + _632 + _775 + 32]
                    s = s + 32
                    continue 
                if ceil32(_787) <= _787:
                    mem[_630 + ceil32(return_data.size) + 64] = _797
                    _857 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_857] = _511
                    mem[_857 + 32] = _576
                    mem[_857 + 64] = _584
                    mem[_857 + 96] = address(_594)
                    _858 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_858] = uint32(_549)
                    mem[_858 + 32] = uint32(_554)
                    mem[_858 + 64] = uint32(_556)
                    mem[_858 + 96] = uint32(_565)
                    mem[_858 + 128] = uint32(_567)
                    mem[_858 + 160] = uint32(_569)
                    mem[_857 + 128] = _858
                    mem[_857 + 160] = _608
                    mem[_857 + 192] = _630 + ceil32(return_data.size)
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _857
                else:
                    mem[_787 + _797 + 32] = 0
                    mem[_630 + ceil32(return_data.size) + 64] = _797
                    _859 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_859] = _511
                    mem[_859 + 32] = _576
                    mem[_859 + 64] = _584
                    mem[_859 + 96] = address(_594)
                    _860 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_860] = uint32(_549)
                    mem[_860 + 32] = uint32(_554)
                    mem[_860 + 64] = uint32(_556)
                    mem[_860 + 96] = uint32(_565)
                    mem[_860 + 128] = uint32(_567)
                    mem[_860 + 160] = uint32(_569)
                    mem[_859 + 128] = _860
                    mem[_859 + 160] = _608
                    mem[_859 + 192] = _630 + ceil32(return_data.size)
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _859
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _461 = mem[64]
        mem[mem[64]] = 32
        _464 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _464) + 64
        while idx < _464:
            mem[t] = u + -_461 - 64
            _748 = mem[s]
            _753 = mem[mem[s]]
            mem[u] = mem[mem[mem[s]]]
            mem[u + 32] = mem[_753 + 32]
            mem[u + 64] = mem[_753 + 64]
            mem[u + 96] = mem[_753 + 96]
            mem[u + 128] = mem[_753 + 128]
            _763 = mem[_748 + 32]
            mem[u + 160] = mem[mem[_748 + 32]]
            mem[u + 192] = mem[_763 + 32]
            _766 = mem[_748 + 64]
            mem[u + 224] = mem[mem[_748 + 64]]
            mem[u + 256] = mem[_766 + 32]
            mem[u + 288] = mem[_766 + 64]
            mem[u + 320] = mem[_748 + 108 len 20]
            _771 = mem[_748 + 128]
            mem[u + 352] = mem[mem[_748 + 128] + 28 len 4]
            mem[u + 384] = mem[_771 + 60 len 4]
            mem[u + 416] = mem[_771 + 92 len 4]
            mem[u + 448] = mem[_771 + 124 len 4]
            mem[u + 480] = mem[_771 + 156 len 4]
            mem[u + 512] = mem[_771 + 188 len 4]
            v = 0
            w = mem[_748 + 160]
            x = u + 544
            while v < 36:
                mem[x] = mem[w + 31 len 1]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _846 = mem[_748 + 192]
            mem[u + 1696] = 1728
            _849 = mem[_846]
            mem[u + 1728] = 96
            _851 = mem[_849]
            mem[u + 1824] = mem[_849]
            v = 0
            while v < _851:
                mem[v + u + 1856] = mem[v + _849 + 32]
                v = v + 32
                continue 
            if ceil32(_851) <= _851:
                mem[u + 1760] = mem[_846 + 32]
                _953 = mem[_846 + 64]
                mem[u + 1792] = ceil32(_851) + 128
                _958 = mem[_953]
                mem[ceil32(_851) + u + 1856] = mem[_953]
                v = 0
                while v < _958:
                    mem[v + ceil32(_851) + u + 1888] = mem[v + _953 + 32]
                    v = v + 32
                    continue 
                if ceil32(_958) > _958:
                    mem[_958 + ceil32(_851) + u + 1888] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_958) + ceil32(_851) + u + 1888
                continue 
            mem[_851 + u + 1856] = 0
            mem[u + 1760] = mem[_846 + 32]
            _955 = mem[_846 + 64]
            mem[u + 1792] = ceil32(_851) + 128
            _959 = mem[_955]
            mem[ceil32(_851) + u + 1856] = mem[_955]
            v = 0
            while v < _959:
                mem[v + ceil32(_851) + u + 1888] = mem[v + _955 + 32]
                v = v + 32
                continue 
            if ceil32(_959) > _959:
                mem[_959 + ceil32(_851) + u + 1888] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_959) + ceil32(_851) + u + 1888
            continue 
    else:
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 353] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 385] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 417] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 449] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 481] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 353
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 513] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 545] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 513
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 577] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 609] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 641] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 193] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 577
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 673] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 705] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 737] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 769] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 801] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 833] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 257] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 673
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 865 len 1152] = call.data[calldata.size len 1152]
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 289] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 865
        mem[64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2113
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2017] = 96
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2049] = 0
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2081] = 96
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 321] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2017
        mem[var33002] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = var33002
        idx = var33003
        while idx - 1:
            _641 = mem[64]
            mem[64] = mem[64] + 224
            mem[64] = mem[64] + 160
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 353] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 385] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 417] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 449] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 481] = 0
            mem[_641] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 353
            mem[64] = mem[64] + 64
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 513] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 545] = 0
            mem[_641 + 32] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 513
            mem[64] = mem[64] + 96
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 577] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 609] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 641] = 0
            mem[_641 + 64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 577
            mem[_641 + 96] = 0
            mem[64] = mem[64] + 192
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 673] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 705] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 737] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 769] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 801] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 833] = 0
            mem[_641 + 128] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 673
            mem[64] = mem[64] + 1152
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 865 len 1152] = call.data[calldata.size len 1152]
            mem[_641 + 160] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 865
            mem[64] = mem[64] + 96
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2017] = 96
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2049] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2081] = 96
            mem[_641 + 192] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2017
            mem[s + 32] = _641
            s = _641
            s = _641
            s = s + 32
            idx = idx - 1
            continue 
        _841 = mem[96]
        idx = 0
        while idx < _841:
            if idx >= mem[96]:
                revert with 0, 50
            _848 = mem[(32 * idx) + 128]
            _852 = mem[64]
            mem[64] = mem[64] + 224
            _862 = mem[64]
            mem[64] = mem[64] + 160
            mem[_862] = 0
            mem[_862 + 32] = 0
            mem[_862 + 64] = 0
            mem[_862 + 96] = 0
            mem[_862 + 128] = 0
            mem[_852] = _862
            _869 = mem[64]
            mem[64] = mem[64] + 64
            mem[_869] = 0
            mem[_869 + 32] = 0
            mem[_852 + 32] = _869
            _876 = mem[64]
            mem[64] = mem[64] + 96
            mem[_876] = 0
            mem[_876 + 32] = 0
            mem[_876 + 64] = 0
            mem[_852 + 64] = _876
            mem[_852 + 96] = 0
            _886 = mem[64]
            mem[64] = mem[64] + 192
            mem[_886] = 0
            mem[_886 + 32] = 0
            mem[_886 + 64] = 0
            mem[_886 + 96] = 0
            mem[_886 + 128] = 0
            mem[_886 + 160] = 0
            mem[_852 + 128] = _886
            _898 = mem[64]
            mem[64] = mem[64] + 1152
            mem[_898 len 1152] = call.data[calldata.size len 1152]
            mem[_852 + 160] = _898
            _901 = mem[64]
            mem[64] = mem[64] + 96
            mem[_901] = 96
            mem[_901 + 32] = 0
            mem[_901 + 64] = 96
            mem[_852 + 192] = _901
            require ext_code.size(this.address)
            staticcall this.address.0xa01bf1c2 with:
                    gas gas_remaining wei
                   args _848
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _907 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            _908 = mem[64]
            if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 160
            mem[_908] = mem[_907]
            mem[_908 + 32] = mem[_907 + 32]
            mem[_908 + 64] = mem[_907 + 64]
            mem[_908 + 96] = mem[_907 + 96]
            mem[_908 + 128] = mem[_907 + 128]
            require ext_code.size(stor6)
            staticcall stor6.ability_scores(uint256 arg1) with:
                    gas gas_remaining wei
                   args _848
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _916 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _917 = mem[_916]
            require mem[_916] == mem[_916 + 28 len 4]
            _918 = mem[_916 + 32]
            require mem[_916 + 32] == mem[_916 + 60 len 4]
            _919 = mem[_916 + 64]
            require mem[_916 + 64] == mem[_916 + 92 len 4]
            _920 = mem[_916 + 96]
            require mem[_916 + 96] == mem[_916 + 124 len 4]
            _921 = mem[_916 + 128]
            require mem[_916 + 128] == mem[_916 + 156 len 4]
            _922 = mem[_916 + 160]
            require mem[_916 + 160] == mem[_916 + 188 len 4]
            require ext_code.size(this.address)
            staticcall this.address.0x877e3817 with:
                    gas gas_remaining wei
                   args _848
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _925 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _926 = mem[64]
            if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 64
            mem[_926] = mem[_925]
            mem[_926 + 32] = mem[_925 + 32]
            require ext_code.size(this.address)
            staticcall this.address.0xb328d586 with:
                    gas gas_remaining wei
                   args _848
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _931 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _932 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_932] = mem[_931]
            mem[_932 + 32] = mem[_931 + 32]
            mem[_932 + 64] = mem[_931 + 64]
            mem[mem[64] + 4] = _848
            require ext_code.size(stor0)
            staticcall stor0.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args _848
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _938 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _939 = mem[_938]
            require mem[_938] == mem[_938 + 12 len 20]
            require ext_code.size(stor5)
            staticcall stor5.get_skills(uint256 arg1) with:
                    gas gas_remaining wei
                   args _848
            mem[mem[64] len 1152] = ext_call.return_data[0 len 1152]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _942 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 1152
            require _942 + 31 < _942 + return_data.size
            _943 = mem[64]
            if mem[64] + 1152 < mem[64] or mem[64] + 1152 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 1152
            require 1152 <= return_data.size
            s = 0
            t = _942
            u = _943
            while s < 36:
                require mem[t] == mem[t + 31 len 1]
                mem[u] = mem[t]
                _841 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64]] = 0x6b8ff57400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _848
            require ext_code.size(this.address)
            staticcall this.address.0x6b8ff574 with:
                    gas gas_remaining wei
                   args _848
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _957 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _960 = mem[_957]
            require mem[_957] <= test266151307()
            require return_data.size - mem[_957] >= 96
            if not bool(_957 + ceil32(return_data.size) + 96 <= test266151307()):
                revert with 0, 65
            mem[64] = _957 + ceil32(return_data.size) + 96
            _965 = mem[_957 + _960]
            require mem[_957 + _960] <= test266151307()
            require _957 + _960 + mem[_957 + _960] + 31 < _957 + return_data.size
            _972 = mem[_957 + _960 + mem[_957 + _960]]
            if mem[_957 + _960 + mem[_957 + _960]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_957 + _960 + mem[_957 + _960]])) + 97 < 96 or _957 + ceil32(return_data.size) + ceil32(ceil32(mem[_957 + _960 + mem[_957 + _960]])) + 97 > test266151307():
                revert with 0, 65
            mem[64] = _957 + ceil32(return_data.size) + ceil32(ceil32(mem[_957 + _960 + mem[_957 + _960]])) + 97
            mem[_957 + ceil32(return_data.size) + 96] = _972
            require _960 + _965 + _972 + 32 <= return_data.size
            s = 0
            while s < _972:
                mem[s + _957 + ceil32(return_data.size) + 128] = mem[s + _957 + _960 + _965 + 32]
                _841 = mem[96]
                s = s + 32
                continue 
            if ceil32(_972) <= _972:
                mem[_957 + ceil32(return_data.size)] = _957 + ceil32(return_data.size) + 96
                mem[_957 + ceil32(return_data.size) + 32] = mem[_957 + _960 + 32]
                _1020 = mem[_957 + _960 + 64]
                require mem[_957 + _960 + 64] <= test266151307()
                require _957 + _960 + mem[_957 + _960 + 64] + 31 < _957 + return_data.size
                _1030 = mem[_957 + _960 + mem[_957 + _960 + 64]]
                if mem[_957 + _960 + mem[_957 + _960 + 64]] > test266151307():
                    revert with 0, 65
                _1033 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_957 + _960 + mem[_957 + _960 + 64]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_957 + _960 + mem[_957 + _960 + 64]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_957 + _960 + mem[_957 + _960 + 64]])) + 1
                mem[_1033] = _1030
                require _960 + _1020 + _1030 + 32 <= return_data.size
                s = 0
                while s < _1030:
                    mem[s + _1033 + 32] = mem[s + _957 + _960 + _1020 + 32]
                    _841 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_1030) <= _1030:
                    mem[_957 + ceil32(return_data.size) + 64] = _1033
                    _1055 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_1055] = _908
                    mem[_1055 + 32] = _926
                    mem[_1055 + 64] = _932
                    mem[_1055 + 96] = address(_939)
                    _1056 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1056] = uint32(_917)
                    mem[_1056 + 32] = uint32(_918)
                    mem[_1056 + 64] = uint32(_919)
                    mem[_1056 + 96] = uint32(_920)
                    mem[_1056 + 128] = uint32(_921)
                    mem[_1056 + 160] = uint32(_922)
                    mem[_1055 + 128] = _1056
                    mem[_1055 + 160] = _943
                    mem[_1055 + 192] = _957 + ceil32(return_data.size)
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1055
                else:
                    mem[_1030 + _1033 + 32] = 0
                    mem[_957 + ceil32(return_data.size) + 64] = _1033
                    _1057 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_1057] = _908
                    mem[_1057 + 32] = _926
                    mem[_1057 + 64] = _932
                    mem[_1057 + 96] = address(_939)
                    _1058 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1058] = uint32(_917)
                    mem[_1058 + 32] = uint32(_918)
                    mem[_1058 + 64] = uint32(_919)
                    mem[_1058 + 96] = uint32(_920)
                    mem[_1058 + 128] = uint32(_921)
                    mem[_1058 + 160] = uint32(_922)
                    mem[_1057 + 128] = _1058
                    mem[_1057 + 160] = _943
                    mem[_1057 + 192] = _957 + ceil32(return_data.size)
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1057
            else:
                mem[_972 + _957 + ceil32(return_data.size) + 128] = 0
                mem[_957 + ceil32(return_data.size)] = _957 + ceil32(return_data.size) + 96
                mem[_957 + ceil32(return_data.size) + 32] = mem[_957 + _960 + 32]
                _1022 = mem[_957 + _960 + 64]
                require mem[_957 + _960 + 64] <= test266151307()
                require _957 + _960 + mem[_957 + _960 + 64] + 31 < _957 + return_data.size
                _1031 = mem[_957 + _960 + mem[_957 + _960 + 64]]
                if mem[_957 + _960 + mem[_957 + _960 + 64]] > test266151307():
                    revert with 0, 65
                _1034 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_957 + _960 + mem[_957 + _960 + 64]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_957 + _960 + mem[_957 + _960 + 64]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_957 + _960 + mem[_957 + _960 + 64]])) + 1
                mem[_1034] = _1031
                require _960 + _1022 + _1031 + 32 <= return_data.size
                s = 0
                while s < _1031:
                    mem[s + _1034 + 32] = mem[s + _957 + _960 + _1022 + 32]
                    _841 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_1031) <= _1031:
                    mem[_957 + ceil32(return_data.size) + 64] = _1034
                    _1059 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_1059] = _908
                    mem[_1059 + 32] = _926
                    mem[_1059 + 64] = _932
                    mem[_1059 + 96] = address(_939)
                    _1060 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1060] = uint32(_917)
                    mem[_1060 + 32] = uint32(_918)
                    mem[_1060 + 64] = uint32(_919)
                    mem[_1060 + 96] = uint32(_920)
                    mem[_1060 + 128] = uint32(_921)
                    mem[_1060 + 160] = uint32(_922)
                    mem[_1059 + 128] = _1060
                    mem[_1059 + 160] = _943
                    mem[_1059 + 192] = _957 + ceil32(return_data.size)
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1059
                else:
                    mem[_1031 + _1034 + 32] = 0
                    mem[_957 + ceil32(return_data.size) + 64] = _1034
                    _1061 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_1061] = _908
                    mem[_1061 + 32] = _926
                    mem[_1061 + 64] = _932
                    mem[_1061 + 96] = address(_939)
                    _1062 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1062] = uint32(_917)
                    mem[_1062 + 32] = uint32(_918)
                    mem[_1062 + 64] = uint32(_919)
                    mem[_1062 + 96] = uint32(_920)
                    mem[_1062 + 128] = uint32(_921)
                    mem[_1062 + 160] = uint32(_922)
                    mem[_1061 + 128] = _1062
                    mem[_1061 + 160] = _943
                    mem[_1061 + 192] = _957 + ceil32(return_data.size)
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1061
            if idx == -1:
                revert with 0, 17
            _841 = mem[96]
            idx = idx + 1
            continue 
        _847 = mem[64]
        mem[mem[64]] = 32
        _850 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _850) + 64
        while idx < _850:
            mem[t] = u + -_847 - 64
            _1001 = mem[s]
            _1004 = mem[mem[s]]
            mem[u] = mem[mem[mem[s]]]
            mem[u + 32] = mem[_1004 + 32]
            mem[u + 64] = mem[_1004 + 64]
            mem[u + 96] = mem[_1004 + 96]
            mem[u + 128] = mem[_1004 + 128]
            _1010 = mem[_1001 + 32]
            mem[u + 160] = mem[mem[_1001 + 32]]
            mem[u + 192] = mem[_1010 + 32]
            _1013 = mem[_1001 + 64]
            mem[u + 224] = mem[mem[_1001 + 64]]
            mem[u + 256] = mem[_1013 + 32]
            mem[u + 288] = mem[_1013 + 64]
            mem[u + 320] = mem[_1001 + 108 len 20]
            _1018 = mem[_1001 + 128]
            mem[u + 352] = mem[mem[_1001 + 128] + 28 len 4]
            mem[u + 384] = mem[_1018 + 60 len 4]
            mem[u + 416] = mem[_1018 + 92 len 4]
            mem[u + 448] = mem[_1018 + 124 len 4]
            mem[u + 480] = mem[_1018 + 156 len 4]
            mem[u + 512] = mem[_1018 + 188 len 4]
            v = 0
            w = mem[_1001 + 160]
            x = u + 544
            while v < 36:
                mem[x] = mem[w + 31 len 1]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _1052 = mem[_1001 + 192]
            mem[u + 1696] = 1728
            _1053 = mem[_1052]
            mem[u + 1728] = 96
            _1054 = mem[_1053]
            mem[u + 1824] = mem[_1053]
            v = 0
            while v < _1054:
                mem[v + u + 1856] = mem[v + _1053 + 32]
                v = v + 32
                continue 
            if ceil32(_1054) <= _1054:
                mem[u + 1760] = mem[_1052 + 32]
                _1078 = mem[_1052 + 64]
                mem[u + 1792] = ceil32(_1054) + 128
                _1081 = mem[_1078]
                mem[ceil32(_1054) + u + 1856] = mem[_1078]
                v = 0
                while v < _1081:
                    mem[v + ceil32(_1054) + u + 1888] = mem[v + _1078 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1081) > _1081:
                    mem[_1081 + ceil32(_1054) + u + 1888] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_1081) + ceil32(_1054) + u + 1888
                continue 
            mem[_1054 + u + 1856] = 0
            mem[u + 1760] = mem[_1052 + 32]
            _1080 = mem[_1052 + 64]
            mem[u + 1792] = ceil32(_1054) + 128
            _1082 = mem[_1080]
            mem[ceil32(_1054) + u + 1856] = mem[_1080]
            v = 0
            while v < _1082:
                mem[v + ceil32(_1054) + u + 1888] = mem[v + _1080 + 32]
                v = v + 32
                continue 
            if ceil32(_1082) > _1082:
                mem[_1082 + ceil32(_1054) + u + 1888] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_1082) + ceil32(_1054) + u + 1888
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
