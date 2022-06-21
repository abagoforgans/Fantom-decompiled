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
            staticcall stor0.summoner(uint256 arg1) with:
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
            staticcall stor0.summoner(uint256 arg1) with:
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
            staticcall stor0.summoner(uint256 arg1) with:
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
            staticcall stor0.summoner(uint256 arg1) with:
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
            staticcall stor0.summoner(uint256 arg1) with:
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
            staticcall stor0.summoner(uint256 arg1) with:
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
            staticcall stor0.summoner(uint256 arg1) with:
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
            staticcall stor0.summoner(uint256 arg1) with:
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
            _463 = mem[(32 * idx) + 128]
            _467 = mem[64]
            mem[64] = mem[64] + 224
            _468 = mem[64]
            mem[64] = mem[64] + 160
            mem[_468] = 0
            mem[_468 + 32] = 0
            mem[_468 + 64] = 0
            mem[_468 + 96] = 0
            mem[_468 + 128] = 0
            mem[_467] = _468
            _470 = mem[64]
            mem[64] = mem[64] + 64
            mem[_470] = 0
            mem[_470 + 32] = 0
            mem[_467 + 32] = _470
            _479 = mem[64]
            mem[64] = mem[64] + 96
            mem[_479] = 0
            mem[_479 + 32] = 0
            mem[_479 + 64] = 0
            mem[_467 + 64] = _479
            mem[_467 + 96] = 0
            _490 = mem[64]
            mem[64] = mem[64] + 192
            mem[_490] = 0
            mem[_490 + 32] = 0
            mem[_490 + 64] = 0
            mem[_490 + 96] = 0
            mem[_490 + 128] = 0
            mem[_490 + 160] = 0
            mem[_467 + 128] = _490
            _498 = mem[64]
            mem[64] = mem[64] + 1152
            mem[_498 len 1152] = call.data[calldata.size len 1152]
            mem[_467 + 160] = _498
            _499 = mem[64]
            mem[64] = mem[64] + 96
            mem[_499] = 96
            mem[_499 + 32] = 0
            mem[_499 + 64] = 96
            mem[_467 + 192] = _499
            require ext_code.size(this.address)
            staticcall this.address.0xa01bf1c2 with:
                    gas gas_remaining wei
                   args _463
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _509 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            _513 = mem[64]
            if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 160
            mem[_513] = mem[_509]
            mem[_513 + 32] = mem[_509 + 32]
            mem[_513 + 64] = mem[_509 + 64]
            mem[_513 + 96] = mem[_509 + 96]
            mem[_513 + 128] = mem[_509 + 128]
            require ext_code.size(stor6)
            staticcall stor6.ability_scores(uint256 arg1) with:
                    gas gas_remaining wei
                   args _463
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _547 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _551 = mem[_547]
            require mem[_547] == mem[_547 + 28 len 4]
            _555 = mem[_547 + 32]
            require mem[_547 + 32] == mem[_547 + 60 len 4]
            _558 = mem[_547 + 64]
            require mem[_547 + 64] == mem[_547 + 92 len 4]
            _566 = mem[_547 + 96]
            require mem[_547 + 96] == mem[_547 + 124 len 4]
            _569 = mem[_547 + 128]
            require mem[_547 + 128] == mem[_547 + 156 len 4]
            _571 = mem[_547 + 160]
            require mem[_547 + 160] == mem[_547 + 188 len 4]
            require ext_code.size(this.address)
            staticcall this.address.0x877e3817 with:
                    gas gas_remaining wei
                   args _463
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _576 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _578 = mem[64]
            if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 64
            mem[_578] = mem[_576]
            mem[_578 + 32] = mem[_576 + 32]
            require ext_code.size(this.address)
            staticcall this.address.0xb328d586 with:
                    gas gas_remaining wei
                   args _463
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _584 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _585 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_585] = mem[_584]
            mem[_585 + 32] = mem[_584 + 32]
            mem[_585 + 64] = mem[_584 + 64]
            mem[mem[64] + 4] = _463
            require ext_code.size(stor0)
            staticcall stor0.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args _463
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _594 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _596 = mem[_594]
            require mem[_594] == mem[_594 + 12 len 20]
            require ext_code.size(stor5)
            staticcall stor5.get_skills(uint256 arg1) with:
                    gas gas_remaining wei
                   args _463
            mem[mem[64] len 1152] = ext_call.return_data[0 len 1152]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _604 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 1152
            require _604 + 31 < _604 + return_data.size
            _611 = mem[64]
            if mem[64] + 1152 < mem[64] or mem[64] + 1152 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 1152
            require 1152 <= return_data.size
            s = 0
            t = _604
            u = _611
            while s < 36:
                require mem[t] == mem[t + 31 len 1]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64]] = 0x6b8ff57400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _463
            require ext_code.size(this.address)
            staticcall this.address.0x6b8ff574 with:
                    gas gas_remaining wei
                   args _463
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _630 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _633 = mem[_630]
            require mem[_630] <= test266151307()
            require return_data.size - mem[_630] >= 96
            if not bool(_630 + ceil32(return_data.size) + 96 <= test266151307()):
                revert with 0, 65
            mem[64] = _630 + ceil32(return_data.size) + 96
            _636 = mem[_630 + _633]
            require mem[_630 + _633] <= test266151307()
            require _630 + _633 + mem[_630 + _633] + 31 < _630 + return_data.size
            _647 = mem[_630 + _633 + mem[_630 + _633]]
            if mem[_630 + _633 + mem[_630 + _633]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_630 + _633 + mem[_630 + _633]])) + 97 < 96 or _630 + ceil32(return_data.size) + ceil32(ceil32(mem[_630 + _633 + mem[_630 + _633]])) + 97 > test266151307():
                revert with 0, 65
            mem[64] = _630 + ceil32(return_data.size) + ceil32(ceil32(mem[_630 + _633 + mem[_630 + _633]])) + 97
            mem[_630 + ceil32(return_data.size) + 96] = _647
            require _633 + _636 + _647 + 32 <= return_data.size
            s = 0
            while s < _647:
                mem[s + _630 + ceil32(return_data.size) + 128] = mem[s + _630 + _633 + _636 + 32]
                s = s + 32
                continue 
            if ceil32(_647) <= _647:
                mem[_630 + ceil32(return_data.size)] = _630 + ceil32(return_data.size) + 96
                mem[_630 + ceil32(return_data.size) + 32] = mem[_630 + _633 + 32]
                _780 = mem[_630 + _633 + 64]
                require mem[_630 + _633 + 64] <= test266151307()
                require _630 + _633 + mem[_630 + _633 + 64] + 31 < _630 + return_data.size
                _787 = mem[_630 + _633 + mem[_630 + _633 + 64]]
                if mem[_630 + _633 + mem[_630 + _633 + 64]] > test266151307():
                    revert with 0, 65
                _797 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_630 + _633 + mem[_630 + _633 + 64]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_630 + _633 + mem[_630 + _633 + 64]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_630 + _633 + mem[_630 + _633 + 64]])) + 1
                mem[_797] = _787
                require _633 + _780 + _787 + 32 <= return_data.size
                s = 0
                while s < _787:
                    mem[s + _797 + 32] = mem[s + _630 + _633 + _780 + 32]
                    s = s + 32
                    continue 
                if ceil32(_787) <= _787:
                    mem[_630 + ceil32(return_data.size) + 64] = _797
                    _855 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_855] = _513
                    mem[_855 + 32] = _578
                    mem[_855 + 64] = _585
                    mem[_855 + 96] = address(_596)
                    _856 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_856] = uint32(_551)
                    mem[_856 + 32] = uint32(_555)
                    mem[_856 + 64] = uint32(_558)
                    mem[_856 + 96] = uint32(_566)
                    mem[_856 + 128] = uint32(_569)
                    mem[_856 + 160] = uint32(_571)
                    mem[_855 + 128] = _856
                    mem[_855 + 160] = _611
                    mem[_855 + 192] = _630 + ceil32(return_data.size)
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _855
                else:
                    mem[_787 + _797 + 32] = 0
                    mem[_630 + ceil32(return_data.size) + 64] = _797
                    _857 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_857] = _513
                    mem[_857 + 32] = _578
                    mem[_857 + 64] = _585
                    mem[_857 + 96] = address(_596)
                    _858 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_858] = uint32(_551)
                    mem[_858 + 32] = uint32(_555)
                    mem[_858 + 64] = uint32(_558)
                    mem[_858 + 96] = uint32(_566)
                    mem[_858 + 128] = uint32(_569)
                    mem[_858 + 160] = uint32(_571)
                    mem[_857 + 128] = _858
                    mem[_857 + 160] = _611
                    mem[_857 + 192] = _630 + ceil32(return_data.size)
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _857
            else:
                mem[_647 + _630 + ceil32(return_data.size) + 128] = 0
                mem[_630 + ceil32(return_data.size)] = _630 + ceil32(return_data.size) + 96
                mem[_630 + ceil32(return_data.size) + 32] = mem[_630 + _633 + 32]
                _782 = mem[_630 + _633 + 64]
                require mem[_630 + _633 + 64] <= test266151307()
                require _630 + _633 + mem[_630 + _633 + 64] + 31 < _630 + return_data.size
                _788 = mem[_630 + _633 + mem[_630 + _633 + 64]]
                if mem[_630 + _633 + mem[_630 + _633 + 64]] > test266151307():
                    revert with 0, 65
                _798 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_630 + _633 + mem[_630 + _633 + 64]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_630 + _633 + mem[_630 + _633 + 64]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_630 + _633 + mem[_630 + _633 + 64]])) + 1
                mem[_798] = _788
                require _633 + _782 + _788 + 32 <= return_data.size
                s = 0
                while s < _788:
                    mem[s + _798 + 32] = mem[s + _630 + _633 + _782 + 32]
                    s = s + 32
                    continue 
                if ceil32(_788) <= _788:
                    mem[_630 + ceil32(return_data.size) + 64] = _798
                    _859 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_859] = _513
                    mem[_859 + 32] = _578
                    mem[_859 + 64] = _585
                    mem[_859 + 96] = address(_596)
                    _860 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_860] = uint32(_551)
                    mem[_860 + 32] = uint32(_555)
                    mem[_860 + 64] = uint32(_558)
                    mem[_860 + 96] = uint32(_566)
                    mem[_860 + 128] = uint32(_569)
                    mem[_860 + 160] = uint32(_571)
                    mem[_859 + 128] = _860
                    mem[_859 + 160] = _611
                    mem[_859 + 192] = _630 + ceil32(return_data.size)
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _859
                else:
                    mem[_788 + _798 + 32] = 0
                    mem[_630 + ceil32(return_data.size) + 64] = _798
                    _861 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_861] = _513
                    mem[_861 + 32] = _578
                    mem[_861 + 64] = _585
                    mem[_861 + 96] = address(_596)
                    _862 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_862] = uint32(_551)
                    mem[_862 + 32] = uint32(_555)
                    mem[_862 + 64] = uint32(_558)
                    mem[_862 + 96] = uint32(_566)
                    mem[_862 + 128] = uint32(_569)
                    mem[_862 + 160] = uint32(_571)
                    mem[_861 + 128] = _862
                    mem[_861 + 160] = _611
                    mem[_861 + 192] = _630 + ceil32(return_data.size)
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _861
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _462 = mem[64]
        mem[mem[64]] = 32
        _465 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _465) + 64
        while idx < _465:
            mem[t] = u + -_462 - 64
            _749 = mem[s]
            _754 = mem[mem[s]]
            mem[u] = mem[mem[mem[s]]]
            mem[u + 32] = mem[_754 + 32]
            mem[u + 64] = mem[_754 + 64]
            mem[u + 96] = mem[_754 + 96]
            mem[u + 128] = mem[_754 + 128]
            _763 = mem[_749 + 32]
            mem[u + 160] = mem[mem[_749 + 32]]
            mem[u + 192] = mem[_763 + 32]
            _766 = mem[_749 + 64]
            mem[u + 224] = mem[mem[_749 + 64]]
            mem[u + 256] = mem[_766 + 32]
            mem[u + 288] = mem[_766 + 64]
            mem[u + 320] = mem[_749 + 108 len 20]
            _771 = mem[_749 + 128]
            mem[u + 352] = mem[mem[_749 + 128] + 28 len 4]
            mem[u + 384] = mem[_771 + 60 len 4]
            mem[u + 416] = mem[_771 + 92 len 4]
            mem[u + 448] = mem[_771 + 124 len 4]
            mem[u + 480] = mem[_771 + 156 len 4]
            mem[u + 512] = mem[_771 + 188 len 4]
            v = 0
            w = mem[_749 + 160]
            x = u + 544
            while v < 36:
                mem[x] = mem[w + 31 len 1]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _847 = mem[_749 + 192]
            mem[u + 1696] = 1728
            _850 = mem[_847]
            mem[u + 1728] = 96
            _852 = mem[_850]
            mem[u + 1824] = mem[_850]
            v = 0
            while v < _852:
                mem[v + u + 1856] = mem[v + _850 + 32]
                v = v + 32
                continue 
            if ceil32(_852) <= _852:
                mem[u + 1760] = mem[_847 + 32]
                _954 = mem[_847 + 64]
                mem[u + 1792] = ceil32(_852) + 128
                _959 = mem[_954]
                mem[ceil32(_852) + u + 1856] = mem[_954]
                v = 0
                while v < _959:
                    mem[v + ceil32(_852) + u + 1888] = mem[v + _954 + 32]
                    v = v + 32
                    continue 
                if ceil32(_959) > _959:
                    mem[_959 + ceil32(_852) + u + 1888] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_959) + ceil32(_852) + u + 1888
                continue 
            mem[_852 + u + 1856] = 0
            mem[u + 1760] = mem[_847 + 32]
            _956 = mem[_847 + 64]
            mem[u + 1792] = ceil32(_852) + 128
            _960 = mem[_956]
            mem[ceil32(_852) + u + 1856] = mem[_956]
            v = 0
            while v < _960:
                mem[v + ceil32(_852) + u + 1888] = mem[v + _956 + 32]
                v = v + 32
                continue 
            if ceil32(_960) > _960:
                mem[_960 + ceil32(_852) + u + 1888] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_960) + ceil32(_852) + u + 1888
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
        mem[var32002] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 353
        s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = var32002
        idx = var32003
        while idx - 1:
            _637 = mem[64]
            mem[64] = mem[64] + 224
            _638 = mem[64]
            mem[64] = mem[64] + 160
            mem[_638] = 0
            mem[_638 + 32] = 0
            mem[_638 + 64] = 0
            mem[_638 + 96] = 0
            mem[_638 + 128] = 0
            mem[_637] = _638
            mem[64] = mem[64] + 64
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 513] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 545] = 0
            mem[_637 + 32] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 513
            mem[64] = mem[64] + 96
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 577] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 609] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 641] = 0
            mem[_637 + 64] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 577
            mem[_637 + 96] = 0
            mem[64] = mem[64] + 192
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 673] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 705] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 737] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 769] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 801] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 833] = 0
            mem[_637 + 128] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 673
            mem[64] = mem[64] + 1152
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 865 len 1152] = call.data[calldata.size len 1152]
            mem[_637 + 160] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 865
            mem[64] = mem[64] + 96
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2017] = 96
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2049] = 0
            mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2081] = 96
            mem[_637 + 192] = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 2017
            mem[s + 32] = _637
            s = _638
            s = _637
            s = _637
            s = s + 32
            idx = idx - 1
            continue 
        _842 = mem[96]
        idx = 0
        while idx < _842:
            if idx >= mem[96]:
                revert with 0, 50
            _849 = mem[(32 * idx) + 128]
            _853 = mem[64]
            mem[64] = mem[64] + 224
            _854 = mem[64]
            mem[64] = mem[64] + 160
            mem[_854] = 0
            mem[_854 + 32] = 0
            mem[_854 + 64] = 0
            mem[_854 + 96] = 0
            mem[_854 + 128] = 0
            mem[_853] = _854
            _864 = mem[64]
            mem[64] = mem[64] + 64
            mem[_864] = 0
            mem[_864 + 32] = 0
            mem[_853 + 32] = _864
            _876 = mem[64]
            mem[64] = mem[64] + 96
            mem[_876] = 0
            mem[_876 + 32] = 0
            mem[_876 + 64] = 0
            mem[_853 + 64] = _876
            mem[_853 + 96] = 0
            _887 = mem[64]
            mem[64] = mem[64] + 192
            mem[_887] = 0
            mem[_887 + 32] = 0
            mem[_887 + 64] = 0
            mem[_887 + 96] = 0
            mem[_887 + 128] = 0
            mem[_887 + 160] = 0
            mem[_853 + 128] = _887
            _895 = mem[64]
            mem[64] = mem[64] + 1152
            mem[_895 len 1152] = call.data[calldata.size len 1152]
            mem[_853 + 160] = _895
            _900 = mem[64]
            mem[64] = mem[64] + 96
            mem[_900] = 96
            mem[_900 + 32] = 0
            mem[_900 + 64] = 96
            mem[_853 + 192] = _900
            require ext_code.size(this.address)
            staticcall this.address.0xa01bf1c2 with:
                    gas gas_remaining wei
                   args _849
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _908 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            _909 = mem[64]
            if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 160
            mem[_909] = mem[_908]
            mem[_909 + 32] = mem[_908 + 32]
            mem[_909 + 64] = mem[_908 + 64]
            mem[_909 + 96] = mem[_908 + 96]
            mem[_909 + 128] = mem[_908 + 128]
            require ext_code.size(stor6)
            staticcall stor6.ability_scores(uint256 arg1) with:
                    gas gas_remaining wei
                   args _849
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _917 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _918 = mem[_917]
            require mem[_917] == mem[_917 + 28 len 4]
            _919 = mem[_917 + 32]
            require mem[_917 + 32] == mem[_917 + 60 len 4]
            _920 = mem[_917 + 64]
            require mem[_917 + 64] == mem[_917 + 92 len 4]
            _921 = mem[_917 + 96]
            require mem[_917 + 96] == mem[_917 + 124 len 4]
            _922 = mem[_917 + 128]
            require mem[_917 + 128] == mem[_917 + 156 len 4]
            _923 = mem[_917 + 160]
            require mem[_917 + 160] == mem[_917 + 188 len 4]
            require ext_code.size(this.address)
            staticcall this.address.0x877e3817 with:
                    gas gas_remaining wei
                   args _849
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _926 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _927 = mem[64]
            if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 64
            mem[_927] = mem[_926]
            mem[_927 + 32] = mem[_926 + 32]
            require ext_code.size(this.address)
            staticcall this.address.0xb328d586 with:
                    gas gas_remaining wei
                   args _849
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _932 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _933 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_933] = mem[_932]
            mem[_933 + 32] = mem[_932 + 32]
            mem[_933 + 64] = mem[_932 + 64]
            mem[mem[64] + 4] = _849
            require ext_code.size(stor0)
            staticcall stor0.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args _849
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _939 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _940 = mem[_939]
            require mem[_939] == mem[_939 + 12 len 20]
            require ext_code.size(stor5)
            staticcall stor5.get_skills(uint256 arg1) with:
                    gas gas_remaining wei
                   args _849
            mem[mem[64] len 1152] = ext_call.return_data[0 len 1152]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _943 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 1152
            require _943 + 31 < _943 + return_data.size
            _944 = mem[64]
            if mem[64] + 1152 < mem[64] or mem[64] + 1152 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 1152
            require 1152 <= return_data.size
            s = 0
            t = _943
            u = _944
            while s < 36:
                require mem[t] == mem[t + 31 len 1]
                mem[u] = mem[t]
                _842 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64]] = 0x6b8ff57400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _849
            require ext_code.size(this.address)
            staticcall this.address.0x6b8ff574 with:
                    gas gas_remaining wei
                   args _849
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _958 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _961 = mem[_958]
            require mem[_958] <= test266151307()
            require return_data.size - mem[_958] >= 96
            if not bool(_958 + ceil32(return_data.size) + 96 <= test266151307()):
                revert with 0, 65
            mem[64] = _958 + ceil32(return_data.size) + 96
            _966 = mem[_958 + _961]
            require mem[_958 + _961] <= test266151307()
            require _958 + _961 + mem[_958 + _961] + 31 < _958 + return_data.size
            _973 = mem[_958 + _961 + mem[_958 + _961]]
            if mem[_958 + _961 + mem[_958 + _961]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_958 + _961 + mem[_958 + _961]])) + 97 < 96 or _958 + ceil32(return_data.size) + ceil32(ceil32(mem[_958 + _961 + mem[_958 + _961]])) + 97 > test266151307():
                revert with 0, 65
            mem[64] = _958 + ceil32(return_data.size) + ceil32(ceil32(mem[_958 + _961 + mem[_958 + _961]])) + 97
            mem[_958 + ceil32(return_data.size) + 96] = _973
            require _961 + _966 + _973 + 32 <= return_data.size
            s = 0
            while s < _973:
                mem[s + _958 + ceil32(return_data.size) + 128] = mem[s + _958 + _961 + _966 + 32]
                _842 = mem[96]
                s = s + 32
                continue 
            if ceil32(_973) <= _973:
                mem[_958 + ceil32(return_data.size)] = _958 + ceil32(return_data.size) + 96
                mem[_958 + ceil32(return_data.size) + 32] = mem[_958 + _961 + 32]
                _1027 = mem[_958 + _961 + 64]
                require mem[_958 + _961 + 64] <= test266151307()
                require _958 + _961 + mem[_958 + _961 + 64] + 31 < _958 + return_data.size
                _1031 = mem[_958 + _961 + mem[_958 + _961 + 64]]
                if mem[_958 + _961 + mem[_958 + _961 + 64]] > test266151307():
                    revert with 0, 65
                _1034 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_958 + _961 + mem[_958 + _961 + 64]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_958 + _961 + mem[_958 + _961 + 64]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_958 + _961 + mem[_958 + _961 + 64]])) + 1
                mem[_1034] = _1031
                require _961 + _1027 + _1031 + 32 <= return_data.size
                s = 0
                while s < _1031:
                    mem[s + _1034 + 32] = mem[s + _958 + _961 + _1027 + 32]
                    _842 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_1031) <= _1031:
                    mem[_958 + ceil32(return_data.size) + 64] = _1034
                    _1056 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_1056] = _909
                    mem[_1056 + 32] = _927
                    mem[_1056 + 64] = _933
                    mem[_1056 + 96] = address(_940)
                    _1057 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1057] = uint32(_918)
                    mem[_1057 + 32] = uint32(_919)
                    mem[_1057 + 64] = uint32(_920)
                    mem[_1057 + 96] = uint32(_921)
                    mem[_1057 + 128] = uint32(_922)
                    mem[_1057 + 160] = uint32(_923)
                    mem[_1056 + 128] = _1057
                    mem[_1056 + 160] = _944
                    mem[_1056 + 192] = _958 + ceil32(return_data.size)
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1056
                else:
                    mem[_1031 + _1034 + 32] = 0
                    mem[_958 + ceil32(return_data.size) + 64] = _1034
                    _1058 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_1058] = _909
                    mem[_1058 + 32] = _927
                    mem[_1058 + 64] = _933
                    mem[_1058 + 96] = address(_940)
                    _1059 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1059] = uint32(_918)
                    mem[_1059 + 32] = uint32(_919)
                    mem[_1059 + 64] = uint32(_920)
                    mem[_1059 + 96] = uint32(_921)
                    mem[_1059 + 128] = uint32(_922)
                    mem[_1059 + 160] = uint32(_923)
                    mem[_1058 + 128] = _1059
                    mem[_1058 + 160] = _944
                    mem[_1058 + 192] = _958 + ceil32(return_data.size)
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1058
            else:
                mem[_973 + _958 + ceil32(return_data.size) + 128] = 0
                mem[_958 + ceil32(return_data.size)] = _958 + ceil32(return_data.size) + 96
                mem[_958 + ceil32(return_data.size) + 32] = mem[_958 + _961 + 32]
                _1029 = mem[_958 + _961 + 64]
                require mem[_958 + _961 + 64] <= test266151307()
                require _958 + _961 + mem[_958 + _961 + 64] + 31 < _958 + return_data.size
                _1032 = mem[_958 + _961 + mem[_958 + _961 + 64]]
                if mem[_958 + _961 + mem[_958 + _961 + 64]] > test266151307():
                    revert with 0, 65
                _1035 = mem[64]
                if mem[64] + ceil32(ceil32(mem[_958 + _961 + mem[_958 + _961 + 64]])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_958 + _961 + mem[_958 + _961 + 64]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[_958 + _961 + mem[_958 + _961 + 64]])) + 1
                mem[_1035] = _1032
                require _961 + _1029 + _1032 + 32 <= return_data.size
                s = 0
                while s < _1032:
                    mem[s + _1035 + 32] = mem[s + _958 + _961 + _1029 + 32]
                    _842 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_1032) <= _1032:
                    mem[_958 + ceil32(return_data.size) + 64] = _1035
                    _1060 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_1060] = _909
                    mem[_1060 + 32] = _927
                    mem[_1060 + 64] = _933
                    mem[_1060 + 96] = address(_940)
                    _1061 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1061] = uint32(_918)
                    mem[_1061 + 32] = uint32(_919)
                    mem[_1061 + 64] = uint32(_920)
                    mem[_1061 + 96] = uint32(_921)
                    mem[_1061 + 128] = uint32(_922)
                    mem[_1061 + 160] = uint32(_923)
                    mem[_1060 + 128] = _1061
                    mem[_1060 + 160] = _944
                    mem[_1060 + 192] = _958 + ceil32(return_data.size)
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1060
                else:
                    mem[_1032 + _1035 + 32] = 0
                    mem[_958 + ceil32(return_data.size) + 64] = _1035
                    _1062 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_1062] = _909
                    mem[_1062 + 32] = _927
                    mem[_1062 + 64] = _933
                    mem[_1062 + 96] = address(_940)
                    _1063 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1063] = uint32(_918)
                    mem[_1063 + 32] = uint32(_919)
                    mem[_1063 + 64] = uint32(_920)
                    mem[_1063 + 96] = uint32(_921)
                    mem[_1063 + 128] = uint32(_922)
                    mem[_1063 + 160] = uint32(_923)
                    mem[_1062 + 128] = _1063
                    mem[_1062 + 160] = _944
                    mem[_1062 + 192] = _958 + ceil32(return_data.size)
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = _1062
            if idx == -1:
                revert with 0, 17
            _842 = mem[96]
            idx = idx + 1
            continue 
        _848 = mem[64]
        mem[mem[64]] = 32
        _851 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _851) + 64
        while idx < _851:
            mem[t] = u + -_848 - 64
            _1002 = mem[s]
            _1005 = mem[mem[s]]
            mem[u] = mem[mem[mem[s]]]
            mem[u + 32] = mem[_1005 + 32]
            mem[u + 64] = mem[_1005 + 64]
            mem[u + 96] = mem[_1005 + 96]
            mem[u + 128] = mem[_1005 + 128]
            _1011 = mem[_1002 + 32]
            mem[u + 160] = mem[mem[_1002 + 32]]
            mem[u + 192] = mem[_1011 + 32]
            _1014 = mem[_1002 + 64]
            mem[u + 224] = mem[mem[_1002 + 64]]
            mem[u + 256] = mem[_1014 + 32]
            mem[u + 288] = mem[_1014 + 64]
            mem[u + 320] = mem[_1002 + 108 len 20]
            _1019 = mem[_1002 + 128]
            mem[u + 352] = mem[mem[_1002 + 128] + 28 len 4]
            mem[u + 384] = mem[_1019 + 60 len 4]
            mem[u + 416] = mem[_1019 + 92 len 4]
            mem[u + 448] = mem[_1019 + 124 len 4]
            mem[u + 480] = mem[_1019 + 156 len 4]
            mem[u + 512] = mem[_1019 + 188 len 4]
            v = 0
            w = mem[_1002 + 160]
            x = u + 544
            while v < 36:
                mem[x] = mem[w + 31 len 1]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _1053 = mem[_1002 + 192]
            mem[u + 1696] = 1728
            _1054 = mem[_1053]
            mem[u + 1728] = 96
            _1055 = mem[_1054]
            mem[u + 1824] = mem[_1054]
            v = 0
            while v < _1055:
                mem[v + u + 1856] = mem[v + _1054 + 32]
                v = v + 32
                continue 
            if ceil32(_1055) <= _1055:
                mem[u + 1760] = mem[_1053 + 32]
                _1079 = mem[_1053 + 64]
                mem[u + 1792] = ceil32(_1055) + 128
                _1082 = mem[_1079]
                mem[ceil32(_1055) + u + 1856] = mem[_1079]
                v = 0
                while v < _1082:
                    mem[v + ceil32(_1055) + u + 1888] = mem[v + _1079 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1082) > _1082:
                    mem[_1082 + ceil32(_1055) + u + 1888] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_1082) + ceil32(_1055) + u + 1888
                continue 
            mem[_1055 + u + 1856] = 0
            mem[u + 1760] = mem[_1053 + 32]
            _1081 = mem[_1053 + 64]
            mem[u + 1792] = ceil32(_1055) + 128
            _1083 = mem[_1081]
            mem[ceil32(_1055) + u + 1856] = mem[_1081]
            v = 0
            while v < _1083:
                mem[v + ceil32(_1055) + u + 1888] = mem[v + _1081 + 32]
                v = v + 32
                continue 
            if ceil32(_1083) > _1083:
                mem[_1083 + ceil32(_1055) + u + 1888] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_1083) + ceil32(_1055) + u + 1888
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
