contract main {




// =====================  Runtime code  =====================


#
#  - sub_0931fe80(?)
#  - sub_b22c10a9(?)
#
address rmAddress;
address sub_2f03e688Address;
address sAddress;
address gAddress;
address c1Address;
address nAddress;

function n() payable {
    return nAddress
}

function sub_2f03e688(?) payable {
    return sub_2f03e688Address
}

function rm() payable {
    return rmAddress
}

function c1() payable {
    return c1Address
}

function s() payable {
    return sAddress
}

function g() payable {
    return gAddress
}

function _fallback() payable {
    revert
}

function sub_b21eb303(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(c1Address)
    staticcall c1Address.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(c1Address)
    staticcall c1Address.scout(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0]
}

function sub_bc48adb9(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(gAddress)
    staticcall gAddress.claimable(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(gAddress)
    staticcall gAddress.balanceOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(gAddress)
    staticcall gAddress.claimed(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
}

function sub_313bf43b(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == uint32(arg2)
    require ext_code.size(sAddress)
    staticcall sAddress.get_skills(uint256 arg1) with:
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
        require ext_code.size(sAddress)
        staticcall sAddress.skills_per_level(int256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args -1, arg3, arg4
    else:
        if uint32(arg2) < 0x800000000000000000000000000000000000000000000000000000000000000a:
            revert with 0, 17
        mem[ceil32(return_data.size) + 3716] = uint32(arg2) - 10 / 2
        mem[ceil32(return_data.size) + 3748] = arg3
        mem[ceil32(return_data.size) + 3780] = arg4
        require ext_code.size(sAddress)
        staticcall sAddress.skills_per_level(int256 arg1, uint256 arg2, uint256 arg3) with:
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
    require ext_code.size(sAddress)
    staticcall sAddress.0x67193047 with:
            gas gas_remaining wei
           args arg3, mem[(2 * ceil32(return_data.size)) + 3748 len 1152]
    mem[(2 * ceil32(return_data.size)) + 3712] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 3712] = ceil32(return_data.size) + 2560
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(sAddress)
    staticcall sAddress.class_skills(uint256 arg1) with:
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

function sub_57ebc461(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 96
    require ext_code.size(rmAddress)
    staticcall rmAddress.summoner(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[352 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    mem[ceil32(return_data.size) + 356] = arg1
    require ext_code.size(rmAddress)
    staticcall rmAddress.xp_required(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 352] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 356] = arg1
    require ext_code.size(rmAddress)
    staticcall rmAddress.tokenURI(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 352
    require return_data.size >= 32
    _16 = mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg1) >> 32
    require mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg1) >> 32 + 383 < (2 * ceil32(return_data.size)) + return_data.size + 352
    _17 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg1) >> 32 + 352]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg1) >> 32 + 352] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg1) >> 32 + 352])) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg1) >> 32 + 352])) + 353 > test266151307():
        revert with 0, 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, arg1) >> 32 + 352])) + 353
    mem[(4 * ceil32(return_data.size)) + 352] = _17
    require _16 + _17 + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 384 len ceil32(_17)] = mem[(2 * ceil32(return_data.size)) + _16 + 384 len ceil32(_17)]
    if ceil32(_17) <= _17:
        _49 = mem[64]
        mem[64] = mem[64] + 256
        mem[_49] = arg1
        mem[_49 + 32] = ext_call.return_data[0]
        mem[_49 + 64] = ext_call.return_data[0]
        mem[_49 + 96] = ext_call.return_data[0] > ext_call.return_data[0]
        mem[_49 + 128] = ext_call.return_data[32]
        mem[_49 + 160] = ext_call.return_data[96]
        mem[_49 + 192] = ext_call.return_data[64]
        mem[_49 + 224] = (4 * ceil32(return_data.size)) + 352
    else:
        mem[_17 + (4 * ceil32(return_data.size)) + 384] = 0
        _50 = mem[64]
        mem[64] = mem[64] + 256
        mem[_50] = arg1
        mem[_50 + 32] = ext_call.return_data[0]
        mem[_50 + 64] = ext_call.return_data[0]
        mem[_50 + 96] = ext_call.return_data[0] > ext_call.return_data[0]
        mem[_50 + 128] = ext_call.return_data[32]
        mem[_50 + 160] = ext_call.return_data[96]
        mem[_50 + 192] = ext_call.return_data[64]
        mem[_50 + 224] = (4 * ceil32(return_data.size)) + 352
    mem[mem[64]] = 32
    mem[mem[64] + 32] = arg1
    mem[mem[64] + 64] = ext_call.return_data[0]
    mem[mem[64] + 96] = ext_call.return_data[0]
    mem[mem[64] + 128] = ext_call.return_data[0] > ext_call.return_data[0]
    mem[mem[64] + 160] = ext_call.return_data[32]
    mem[mem[64] + 192] = ext_call.return_data[96]
    mem[mem[64] + 224] = ext_call.return_data[64]
    mem[mem[64] + 256] = 256
    mem[mem[64] + 288] = _17
    mem[mem[64] + 320 len ceil32(_17)] = mem[(4 * ceil32(return_data.size)) + 384 len ceil32(_17)]
    if ceil32(_17) > _17:
        mem[_17 + mem[64] + 320] = 0
    return 32, arg1, 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0] > ext_call.return_data[0],
           ext_call.return_data[32],
           ext_call.return_data[96],
           ext_call.return_data[64],
           256,
           _17,
           mem[mem[64] + 320 len ceil32(_17)]
}

function sub_7d37fc13(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 96
    mem[128] = 0
    mem[160] = 96
    mem[196] = arg1
    require ext_code.size(nAddress)
    staticcall nAddress.0x530a6e9a with:
            gas gas_remaining wei
           args arg1
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 288] = 0x12d39b4100000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 292] = arg1
    require ext_code.size(nAddress)
    staticcall nAddress.summoner_name(uint256 arg1) with:
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
        require ext_code.size(nAddress)
        staticcall nAddress.tokenURI(uint256 arg1) with:
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
            _172 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 96
            mem[mem[64] + 128] = _10
            mem[mem[64] + 160 len ceil32(_10)] = mem[(2 * ceil32(return_data.size)) + 320 len ceil32(_10)]
            if ceil32(_10) <= _10:
                mem[mem[64] + 64] = ext_call.return_data[0]
                mem[mem[64] + 96] = ceil32(_10) + 128
                mem[ceil32(_10) + mem[64] + 160] = _100
                mem[ceil32(_10) + mem[64] + 192 len ceil32(_100)] = mem[_96 + ceil32(return_data.size) + 32 len ceil32(_100)]
                if ceil32(_100) > _100:
                    mem[_100 + ceil32(_10) + mem[64] + 192] = 0
                return 32, 96, ext_call.return_data[0], ceil32(_10) + 128, _10, mem[mem[64] + 160 len ceil32(_100) + ceil32(_10) + 32]
            mem[_10 + mem[64] + 160] = 0
            mem[mem[64] + 64] = ext_call.return_data[0]
            mem[_172 + 96] = ceil32(_10) + 128
            mem[ceil32(_10) + _172 + 160] = _100
            mem[ceil32(_10) + _172 + 192 len ceil32(_100)] = mem[_96 + ceil32(return_data.size) + 32 len ceil32(_100)]
            if ceil32(_100) > _100:
                mem[_100 + ceil32(_10) + _172 + 192] = 0
            return memory
              from mem[64]
               len ceil32(_100) + ceil32(_10) + _172 + -mem[64] + 192
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
    require ext_code.size(nAddress)
    staticcall nAddress.tokenURI(uint256 arg1) with:
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
        mem[mem[64] + 128] = _10
        mem[mem[64] + 160 len ceil32(_10)] = mem[(2 * ceil32(return_data.size)) + 320 len ceil32(_10)]
        if ceil32(_10) <= _10:
            mem[mem[64] + 64] = ext_call.return_data[0]
            mem[mem[64] + 96] = ceil32(_10) + 128
            mem[ceil32(_10) + mem[64] + 160] = _101
            mem[ceil32(_10) + mem[64] + 192 len ceil32(_101)] = mem[_97 + ceil32(return_data.size) + 32 len ceil32(_101)]
            if ceil32(_101) > _101:
                mem[_101 + ceil32(_10) + mem[64] + 192] = 0
            return 32, 96, ext_call.return_data[0], ceil32(_10) + 128, _10, mem[mem[64] + 160 len ceil32(_101) + ceil32(_10) + 32]
        mem[_10 + mem[64] + 160] = 0
        mem[mem[64] + 64] = ext_call.return_data[0]
        mem[_174 + 96] = ceil32(_10) + 128
        mem[ceil32(_10) + _174 + 160] = _101
        mem[ceil32(_10) + _174 + 192 len ceil32(_101)] = mem[_97 + ceil32(return_data.size) + 32 len ceil32(_101)]
        if ceil32(_101) > _101:
            mem[_101 + ceil32(_10) + _174 + 192] = 0
        return memory
          from mem[64]
           len ceil32(_101) + ceil32(_10) + _174 + -mem[64] + 192
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



}
