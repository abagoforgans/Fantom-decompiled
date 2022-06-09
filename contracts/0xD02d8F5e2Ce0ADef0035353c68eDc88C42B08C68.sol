contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner; offset 16
address sub_9478e212Address;
address sub_208b0a18Address;
address sub_2074215dAddress;
address sub_f87c3c7aAddress;
address sub_7edd3da5Address;
address usdcAddress;
address daiAddress;
address sub_b1e921a4Address;
address stor9;

function usdcAddress() payable {
    return usdcAddress
}

function sub_2074215d(?) payable {
    return sub_2074215dAddress
}

function sub_208b0a18(?) payable {
    return sub_208b0a18Address
}

function daiAddress() payable {
    return daiAddress
}

function sub_7edd3da5(?) payable {
    return sub_7edd3da5Address
}

function owner() payable {
    return owner
}

function sub_9478e212(?) payable {
    return sub_9478e212Address
}

function sub_b1e921a4(?) payable {
    return sub_b1e921a4Address
}

function sub_f87c3c7a(?) payable {
    return sub_f87c3c7aAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_93f1603f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9 = address(arg1)
}

function sub_24cbc03f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2074215dAddress = address(arg1)
}

function sub_4f3e2738(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_208b0a18Address = address(arg1)
}

function sub_e83999e8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f87c3c7aAddress = address(arg1)
}

function setUniswapV2RouterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9478e212Address = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_0402f21c(?) payable {
    require ext_code.size(stor9)
    staticcall stor9.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 4, 0x5553444300000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0], 18
}

function sub_06abf1c6(?) payable {
    require ext_code.size(stor9)
    staticcall stor9.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x4a50590000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0], 18
}

function sub_12eb1119(?) payable {
    require ext_code.size(stor9)
    staticcall stor9.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0], 18
}

function sub_2dd67f24(?) payable {
    require ext_code.size(stor9)
    staticcall stor9.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x4441490000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0], 18
}

function sub_45dd2734(?) payable {
    require ext_code.size(stor9)
    staticcall stor9.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 4, 0x5553444300000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0], 18
}

function sub_7ce7723d(?) payable {
    require ext_code.size(stor9)
    staticcall stor9.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x5553440000000000000000000000000000000000000000000000000000000000, 3, 0x4a50590000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0], 18
}

function sub_97c5c451(?) payable {
    require ext_code.size(stor9)
    staticcall stor9.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 4, 0x5553444300000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0], 18
}

function sub_aa09d9bf(?) payable {
    require ext_code.size(stor9)
    staticcall stor9.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 4, 0x5553444300000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0], 18
}

function sub_e8ea721a(?) payable {
    require ext_code.size(stor9)
    staticcall stor9.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x4254430000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0], 18
}

function init(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9478e212Address = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    stor9 = 0x56e2898e0ceff0d1222827759b56b28ad812f92f
    sub_208b0a18Address = arg1
    sub_2074215dAddress = arg2
    sub_f87c3c7aAddress = arg3
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_1a505688(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if ceil32(arg1.length) <= arg1.length:
        require ext_code.size(stor9)
        staticcall stor9.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 27) + 256, 64) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 27) + 256) << (8 * ceil32(arg2.length)) - 256), ceil32(arg1.length) + 96
    else:
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 198] = arg2.length
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 230 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 27) + 256, 64) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 27) + 256
        if ceil32(arg2.length) > arg2.length:
            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg2.length + 230] = 0
        require ext_code.size(stor9)
        staticcall stor9.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg1.length + 230 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)]), ceil32(arg1.length) + 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 194 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0]
}

function sub_1b35a4a6(?) payable {
    mem[96] = 2
    mem[128] = sub_2074215dAddress
    mem[160] = daiAddress
    require ext_code.size(sub_2074215dAddress)
    staticcall sub_2074215dAddress.0x313ce567 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 1
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 292
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_9478e212Address)
        staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _83 = mem[ceil32(return_data.size) + 192 len 4], 0
        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
        _85 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _85
        require return_data.size >= _83 + (32 * _85) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _85] = mem[ceil32(return_data.size) + _83 + 224 len 32 * _85]
        if 1 >= _85:
            revert with 0, 50
        _146 = mem[(2 * ceil32(return_data.size)) + 256]
        require ext_code.size(daiAddress)
        staticcall daiAddress.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _152 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_152] == mem[_152 + 31 len 1]
        return _146, mem[_152 + 31 len 1]
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 0, 17
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 292
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_9478e212Address)
        staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _81 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _84 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _84
        require return_data.size >= _81 + (32 * _84) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _84] = mem[ceil32(return_data.size) + _81 + 224 len 32 * _84]
        if 1 >= _84:
            revert with 0, 50
        _143 = mem[(2 * ceil32(return_data.size)) + 256]
        require ext_code.size(daiAddress)
        staticcall daiAddress.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _151 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_151] == mem[_151 + 31 len 1]
        return _143, mem[_151 + 31 len 1]
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if s * t > -1:
        revert with 0, 17
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = s * t
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    u = ceil32(return_data.size) + 292
    v = 128
    while idx < 2:
        mem[u] = mem[v + 12 len 20]
        idx = idx + 1
        u = u + 32
        v = v + 32
        continue 
    require ext_code.size(sub_9478e212Address)
    staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        return 0
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _150 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _153 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _153
    require return_data.size >= _150 + (32 * _153) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _153] = mem[ceil32(return_data.size) + _150 + 224 len 32 * _153]
    if 1 >= _153:
        revert with 0, 50
    _176 = mem[(2 * ceil32(return_data.size)) + 256]
    require ext_code.size(daiAddress)
    staticcall daiAddress.0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _179 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_179] == mem[_179 + 31 len 1]
    return _176, mem[_179 + 31 len 1]
}

function sub_23db4bbc(?) payable {
    mem[96] = 2
    mem[128] = sub_2074215dAddress
    mem[160] = usdcAddress
    require ext_code.size(sub_2074215dAddress)
    staticcall sub_2074215dAddress.0x313ce567 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 1
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 292
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_9478e212Address)
        staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _83 = mem[ceil32(return_data.size) + 192 len 4], 0
        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
        _85 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _85
        require return_data.size >= _83 + (32 * _85) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _85] = mem[ceil32(return_data.size) + _83 + 224 len 32 * _85]
        if 1 >= _85:
            revert with 0, 50
        _146 = mem[(2 * ceil32(return_data.size)) + 256]
        require ext_code.size(usdcAddress)
        staticcall usdcAddress.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _152 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_152] == mem[_152 + 31 len 1]
        return _146, mem[_152 + 31 len 1]
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 0, 17
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 292
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_9478e212Address)
        staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _81 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _84 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _84
        require return_data.size >= _81 + (32 * _84) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _84] = mem[ceil32(return_data.size) + _81 + 224 len 32 * _84]
        if 1 >= _84:
            revert with 0, 50
        _143 = mem[(2 * ceil32(return_data.size)) + 256]
        require ext_code.size(usdcAddress)
        staticcall usdcAddress.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _151 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_151] == mem[_151 + 31 len 1]
        return _143, mem[_151 + 31 len 1]
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if s * t > -1:
        revert with 0, 17
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = s * t
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    u = ceil32(return_data.size) + 292
    v = 128
    while idx < 2:
        mem[u] = mem[v + 12 len 20]
        idx = idx + 1
        u = u + 32
        v = v + 32
        continue 
    require ext_code.size(sub_9478e212Address)
    staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        return 0
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _150 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _153 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _153
    require return_data.size >= _150 + (32 * _153) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _153] = mem[ceil32(return_data.size) + _150 + 224 len 32 * _153]
    if 1 >= _153:
        revert with 0, 50
    _176 = mem[(2 * ceil32(return_data.size)) + 256]
    require ext_code.size(usdcAddress)
    staticcall usdcAddress.0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _179 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_179] == mem[_179 + 31 len 1]
    return _176, mem[_179 + 31 len 1]
}

function sub_b634efe2(?) payable {
    mem[96] = 2
    mem[128] = sub_7edd3da5Address
    mem[160] = usdcAddress
    require ext_code.size(sub_7edd3da5Address)
    staticcall sub_7edd3da5Address.0x313ce567 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 1
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 292
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_9478e212Address)
        staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _83 = mem[ceil32(return_data.size) + 192 len 4], 0
        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
        _85 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _85
        require return_data.size >= _83 + (32 * _85) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _85] = mem[ceil32(return_data.size) + _83 + 224 len 32 * _85]
        if 1 >= _85:
            revert with 0, 50
        _146 = mem[(2 * ceil32(return_data.size)) + 256]
        require ext_code.size(usdcAddress)
        staticcall usdcAddress.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _152 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_152] == mem[_152 + 31 len 1]
        return _146, mem[_152 + 31 len 1]
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 0, 17
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 292
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_9478e212Address)
        staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _81 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _84 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _84
        require return_data.size >= _81 + (32 * _84) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _84] = mem[ceil32(return_data.size) + _81 + 224 len 32 * _84]
        if 1 >= _84:
            revert with 0, 50
        _143 = mem[(2 * ceil32(return_data.size)) + 256]
        require ext_code.size(usdcAddress)
        staticcall usdcAddress.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _151 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_151] == mem[_151 + 31 len 1]
        return _143, mem[_151 + 31 len 1]
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if s * t > -1:
        revert with 0, 17
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = s * t
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    u = ceil32(return_data.size) + 292
    v = 128
    while idx < 2:
        mem[u] = mem[v + 12 len 20]
        idx = idx + 1
        u = u + 32
        v = v + 32
        continue 
    require ext_code.size(sub_9478e212Address)
    staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        return 0
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _150 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _153 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _153
    require return_data.size >= _150 + (32 * _153) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _153] = mem[ceil32(return_data.size) + _150 + 224 len 32 * _153]
    if 1 >= _153:
        revert with 0, 50
    _176 = mem[(2 * ceil32(return_data.size)) + 256]
    require ext_code.size(usdcAddress)
    staticcall usdcAddress.0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _179 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_179] == mem[_179 + 31 len 1]
    return _176, mem[_179 + 31 len 1]
}

function getRate(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 2
    mem[128] = arg1
    mem[160] = arg2
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 1
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 292
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_9478e212Address)
        staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _83 = mem[ceil32(return_data.size) + 192 len 4], 0
        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
        _85 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _85
        require return_data.size >= _83 + (32 * _85) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _85] = mem[ceil32(return_data.size) + _83 + 224 len 32 * _85]
        if 1 >= _85:
            revert with 0, 50
        _146 = mem[(2 * ceil32(return_data.size)) + 256]
        require ext_code.size(arg2)
        staticcall arg2.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _152 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_152] == mem[_152 + 31 len 1]
        return _146, mem[_152 + 31 len 1]
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 0, 17
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 292
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_9478e212Address)
        staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _81 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _84 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _84
        require return_data.size >= _81 + (32 * _84) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _84] = mem[ceil32(return_data.size) + _81 + 224 len 32 * _84]
        if 1 >= _84:
            revert with 0, 50
        _143 = mem[(2 * ceil32(return_data.size)) + 256]
        require ext_code.size(arg2)
        staticcall arg2.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _151 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_151] == mem[_151 + 31 len 1]
        return _143, mem[_151 + 31 len 1]
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if s * t > -1:
        revert with 0, 17
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = s * t
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    u = ceil32(return_data.size) + 292
    v = 128
    while idx < 2:
        mem[u] = mem[v + 12 len 20]
        idx = idx + 1
        u = u + 32
        v = v + 32
        continue 
    require ext_code.size(sub_9478e212Address)
    staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        return 0
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _150 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _153 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _153
    require return_data.size >= _150 + (32 * _153) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _153] = mem[ceil32(return_data.size) + _150 + 224 len 32 * _153]
    if 1 >= _153:
        revert with 0, 50
    _176 = mem[(2 * ceil32(return_data.size)) + 256]
    require ext_code.size(arg2)
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _179 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_179] == mem[_179 + 31 len 1]
    return _176, mem[_179 + 31 len 1]
}

function sub_b1c0c6e8(?) payable {
    mem[96] = 2
    mem[128] = sub_208b0a18Address
    mem[160] = sub_7edd3da5Address
    require ext_code.size(sub_208b0a18Address)
    staticcall sub_208b0a18Address.0x313ce567 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 1
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 292
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_9478e212Address)
        staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _83 = mem[ceil32(return_data.size) + 192 len 4], 0
        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
        _85 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _85
        require return_data.size >= _83 + (32 * _85) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _85] = mem[ceil32(return_data.size) + _83 + 224 len 32 * _85]
        if 1 >= _85:
            revert with 0, 50
        _146 = mem[(2 * ceil32(return_data.size)) + 256]
        require ext_code.size(sub_7edd3da5Address)
        staticcall sub_7edd3da5Address.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _152 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_152] == mem[_152 + 31 len 1]
        return _146, mem[_152 + 31 len 1]
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 0, 17
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 292
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_9478e212Address)
        staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _81 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _84 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _84
        require return_data.size >= _81 + (32 * _84) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _84] = mem[ceil32(return_data.size) + _81 + 224 len 32 * _84]
        if 1 >= _84:
            revert with 0, 50
        _143 = mem[(2 * ceil32(return_data.size)) + 256]
        require ext_code.size(sub_7edd3da5Address)
        staticcall sub_7edd3da5Address.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _151 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_151] == mem[_151 + 31 len 1]
        return _143, mem[_151 + 31 len 1]
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if s * t > -1:
        revert with 0, 17
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = s * t
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    u = ceil32(return_data.size) + 292
    v = 128
    while idx < 2:
        mem[u] = mem[v + 12 len 20]
        idx = idx + 1
        u = u + 32
        v = v + 32
        continue 
    require ext_code.size(sub_9478e212Address)
    staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        return 0
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _150 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _153 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _153
    require return_data.size >= _150 + (32 * _153) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _153] = mem[ceil32(return_data.size) + _150 + 224 len 32 * _153]
    if 1 >= _153:
        revert with 0, 50
    _176 = mem[(2 * ceil32(return_data.size)) + 256]
    require ext_code.size(sub_7edd3da5Address)
    staticcall sub_7edd3da5Address.0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _179 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_179] == mem[_179 + 31 len 1]
    return _176, mem[_179 + 31 len 1]
}

function sub_edc808a3(?) payable {
    mem[96] = 2
    mem[128] = sub_f87c3c7aAddress
    mem[160] = sub_7edd3da5Address
    require ext_code.size(sub_f87c3c7aAddress)
    staticcall sub_f87c3c7aAddress.0x313ce567 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 1
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 292
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_9478e212Address)
        staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _83 = mem[ceil32(return_data.size) + 192 len 4], 0
        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
        _85 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _85
        require return_data.size >= _83 + (32 * _85) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _85] = mem[ceil32(return_data.size) + _83 + 224 len 32 * _85]
        if 1 >= _85:
            revert with 0, 50
        _146 = mem[(2 * ceil32(return_data.size)) + 256]
        require ext_code.size(sub_7edd3da5Address)
        staticcall sub_7edd3da5Address.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _152 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_152] == mem[_152 + 31 len 1]
        return _146, mem[_152 + 31 len 1]
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 0, 17
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 292
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_9478e212Address)
        staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _81 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _84 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _84
        require return_data.size >= _81 + (32 * _84) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _84] = mem[ceil32(return_data.size) + _81 + 224 len 32 * _84]
        if 1 >= _84:
            revert with 0, 50
        _143 = mem[(2 * ceil32(return_data.size)) + 256]
        require ext_code.size(sub_7edd3da5Address)
        staticcall sub_7edd3da5Address.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _151 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_151] == mem[_151 + 31 len 1]
        return _143, mem[_151 + 31 len 1]
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if s * t > -1:
        revert with 0, 17
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = s * t
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    u = ceil32(return_data.size) + 292
    v = 128
    while idx < 2:
        mem[u] = mem[v + 12 len 20]
        idx = idx + 1
        u = u + 32
        v = v + 32
        continue 
    require ext_code.size(sub_9478e212Address)
    staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        return 0
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _150 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _153 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _153
    require return_data.size >= _150 + (32 * _153) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _153] = mem[ceil32(return_data.size) + _150 + 224 len 32 * _153]
    if 1 >= _153:
        revert with 0, 50
    _176 = mem[(2 * ceil32(return_data.size)) + 256]
    require ext_code.size(sub_7edd3da5Address)
    staticcall sub_7edd3da5Address.0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _179 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_179] == mem[_179 + 31 len 1]
    return _176, mem[_179 + 31 len 1]
}

function sub_e61574b0(?) payable {
    mem[96] = 2
    mem[128] = sub_2074215dAddress
    mem[160] = usdcAddress
    require ext_code.size(sub_2074215dAddress)
    staticcall sub_2074215dAddress.0x313ce567 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 1
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 292
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_9478e212Address)
        staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            require ext_code.size(stor9)
            staticcall stor9.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 4, 0x5553444300000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not return_data.size:
                if not bool((2 * ceil32(return_data.size)) + 288 <= test266151307()):
                    revert with 0, 65
            else:
                if not bool((2 * ceil32(return_data.size)) + ceil32(return_data.size) + 289 <= test266151307()):
                    revert with 0, 65
            if False and ext_call.return_data[0] > 0:
                revert with 0, 17
            return 0, 18
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _167 = mem[ceil32(return_data.size) + 192 len 4], 0
        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
        _169 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _169
        require return_data.size >= _167 + (32 * _169) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _169] = mem[ceil32(return_data.size) + _167 + 224 len 32 * _169]
        if 1 >= _169:
            revert with 0, 50
        _314 = mem[(2 * ceil32(return_data.size)) + 256]
        require ext_code.size(usdcAddress)
        staticcall usdcAddress.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _320 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _323 = mem[_320]
        require mem[_320] == mem[_320 + 31 len 1]
        mem[mem[64] + 68] = 4
        mem[mem[64] + 100] = 0x5553444300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 132] = 3
        mem[mem[64] + 164] = 0x5553440000000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor9)
        staticcall stor9.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 4, 0x5553444300000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _352 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _355 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_355] = mem[_352]
        mem[_355 + 32] = mem[_352 + 32]
        mem[_355 + 64] = mem[_352 + 64]
        if not uint8(_323):
            if _314 and mem[_355] > -1 / _314:
                revert with 0, 17
            mem[mem[64]] = _314 * mem[_355]
        else:
            if bool(bool(uint8(_323) < 78)) or bool(bool(uint8(_323) < 32)):
                if _314 and mem[_355] > -1 / _314:
                    revert with 0, 17
                if not 10^uint8(_323):
                    revert with 0, 18
                mem[mem[64]] = _314 * mem[_355] / 10^uint8(_323)
            else:
                s = 10
                t = 1
                idx = uint8(_323)
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if _314 and mem[_355] > -1 / _314:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                mem[mem[64]] = _314 * mem[_355] / s * t
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 0, 17
            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 228] = 64
            mem[ceil32(return_data.size) + 260] = 2
            idx = 0
            s = ceil32(return_data.size) + 292
            t = 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(sub_9478e212Address)
            staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
            if not ext_call.success:
                require ext_code.size(stor9)
                staticcall stor9.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args 64, 128, 4, 0x5553444300000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not return_data.size:
                    if not bool((2 * ceil32(return_data.size)) + 288 <= test266151307()):
                        revert with 0, 65
                else:
                    if not bool((2 * ceil32(return_data.size)) + ceil32(return_data.size) + 289 <= test266151307()):
                        revert with 0, 65
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                return 0, 18
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _165 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _168 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = _168
            require return_data.size >= _165 + (32 * _168) + 32
            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _168] = mem[ceil32(return_data.size) + _165 + 224 len 32 * _168]
            if 1 >= _168:
                revert with 0, 50
            _311 = mem[(2 * ceil32(return_data.size)) + 256]
            require ext_code.size(usdcAddress)
            staticcall usdcAddress.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _319 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _322 = mem[_319]
            require mem[_319] == mem[_319 + 31 len 1]
            mem[mem[64] + 68] = 4
            mem[mem[64] + 100] = 0x5553444300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 132] = 3
            mem[mem[64] + 164] = 0x5553440000000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor9)
            staticcall stor9.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 4, 0x5553444300000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _351 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _354 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_354] = mem[_351]
            mem[_354 + 32] = mem[_351 + 32]
            mem[_354 + 64] = mem[_351 + 64]
            if not uint8(_322):
                if _311 and mem[_354] > -1 / _311:
                    revert with 0, 17
                mem[mem[64]] = _311 * mem[_354]
            else:
                if bool(bool(uint8(_322) < 78)) or bool(bool(uint8(_322) < 32)):
                    if _311 and mem[_354] > -1 / _311:
                        revert with 0, 17
                    if not 10^uint8(_322):
                        revert with 0, 18
                    mem[mem[64]] = _311 * mem[_354] / 10^uint8(_322)
                else:
                    s = 10
                    t = 1
                    idx = uint8(_322)
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if _311 and mem[_354] > -1 / _311:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    mem[mem[64]] = _311 * mem[_354] / s * t
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if s * t > -1:
                revert with 0, 17
            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = s * t
            mem[ceil32(return_data.size) + 228] = 64
            mem[ceil32(return_data.size) + 260] = 2
            idx = 0
            u = ceil32(return_data.size) + 292
            v = 128
            while idx < 2:
                mem[u] = mem[v + 12 len 20]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(sub_9478e212Address)
            staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
            if not ext_call.success:
                require ext_code.size(stor9)
                staticcall stor9.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args 64, 128, 4, 0x5553444300000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not return_data.size:
                    if not bool((2 * ceil32(return_data.size)) + 288 <= test266151307()):
                        revert with 0, 65
                else:
                    if not bool((2 * ceil32(return_data.size)) + ceil32(return_data.size) + 289 <= test266151307()):
                        revert with 0, 65
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                return 0, 18
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _318 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _321 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = _321
            require return_data.size >= _318 + (32 * _321) + 32
            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _321] = mem[ceil32(return_data.size) + _318 + 224 len 32 * _321]
            if 1 >= _321:
                revert with 0, 50
            _396 = mem[(2 * ceil32(return_data.size)) + 256]
            require ext_code.size(usdcAddress)
            staticcall usdcAddress.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _399 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _400 = mem[_399]
            require mem[_399] == mem[_399 + 31 len 1]
            mem[mem[64] + 68] = 4
            mem[mem[64] + 100] = 0x5553444300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 132] = 3
            mem[mem[64] + 164] = 0x5553440000000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor9)
            staticcall stor9.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 4, 0x5553444300000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _407 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _408 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_408] = mem[_407]
            mem[_408 + 32] = mem[_407 + 32]
            mem[_408 + 64] = mem[_407 + 64]
            if not uint8(_400):
                if _396 and mem[_408] > -1 / _396:
                    revert with 0, 17
                mem[mem[64]] = _396 * mem[_408]
            else:
                if bool(bool(uint8(_400) < 78)) or bool(bool(uint8(_400) < 32)):
                    if _396 and mem[_408] > -1 / _396:
                        revert with 0, 17
                    if not 10^uint8(_400):
                        revert with 0, 18
                    mem[mem[64]] = _396 * mem[_408] / 10^uint8(_400)
                else:
                    s = 10
                    t = 1
                    idx = uint8(_400)
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if _396 and mem[_408] > -1 / _396:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    mem[mem[64]] = _396 * mem[_408] / s * t
    return mem[mem[64]], 18
}

function sub_43be1230(?) payable {
    mem[96] = 2
    mem[128] = sub_208b0a18Address
    mem[160] = sub_7edd3da5Address
    require ext_code.size(sub_208b0a18Address)
    staticcall sub_208b0a18Address.0x313ce567 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 1
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 292
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_9478e212Address)
        staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            require ext_code.size(stor9)
            staticcall stor9.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not return_data.size:
                if not bool((2 * ceil32(return_data.size)) + 288 <= test266151307()):
                    revert with 0, 65
            else:
                if not bool((2 * ceil32(return_data.size)) + ceil32(return_data.size) + 289 <= test266151307()):
                    revert with 0, 65
            if False and ext_call.return_data[0] > 0:
                revert with 0, 17
            return 0, 18
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _167 = mem[ceil32(return_data.size) + 192 len 4], 0
        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
        _169 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _169
        require return_data.size >= _167 + (32 * _169) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _169] = mem[ceil32(return_data.size) + _167 + 224 len 32 * _169]
        if 1 >= _169:
            revert with 0, 50
        _314 = mem[(2 * ceil32(return_data.size)) + 256]
        require ext_code.size(sub_7edd3da5Address)
        staticcall sub_7edd3da5Address.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _320 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _323 = mem[_320]
        require mem[_320] == mem[_320 + 31 len 1]
        mem[mem[64] + 68] = 3
        mem[mem[64] + 100] = 0x46544d0000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 132] = 3
        mem[mem[64] + 164] = 0x5553440000000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor9)
        staticcall stor9.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _352 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _355 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_355] = mem[_352]
        mem[_355 + 32] = mem[_352 + 32]
        mem[_355 + 64] = mem[_352 + 64]
        if not uint8(_323):
            if _314 and mem[_355] > -1 / _314:
                revert with 0, 17
            mem[mem[64]] = _314 * mem[_355]
        else:
            if bool(bool(uint8(_323) < 78)) or bool(bool(uint8(_323) < 32)):
                if _314 and mem[_355] > -1 / _314:
                    revert with 0, 17
                if not 10^uint8(_323):
                    revert with 0, 18
                mem[mem[64]] = _314 * mem[_355] / 10^uint8(_323)
            else:
                s = 10
                t = 1
                idx = uint8(_323)
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if _314 and mem[_355] > -1 / _314:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                mem[mem[64]] = _314 * mem[_355] / s * t
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 0, 17
            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 228] = 64
            mem[ceil32(return_data.size) + 260] = 2
            idx = 0
            s = ceil32(return_data.size) + 292
            t = 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(sub_9478e212Address)
            staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
            if not ext_call.success:
                require ext_code.size(stor9)
                staticcall stor9.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not return_data.size:
                    if not bool((2 * ceil32(return_data.size)) + 288 <= test266151307()):
                        revert with 0, 65
                else:
                    if not bool((2 * ceil32(return_data.size)) + ceil32(return_data.size) + 289 <= test266151307()):
                        revert with 0, 65
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                return 0, 18
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _165 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _168 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = _168
            require return_data.size >= _165 + (32 * _168) + 32
            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _168] = mem[ceil32(return_data.size) + _165 + 224 len 32 * _168]
            if 1 >= _168:
                revert with 0, 50
            _311 = mem[(2 * ceil32(return_data.size)) + 256]
            require ext_code.size(sub_7edd3da5Address)
            staticcall sub_7edd3da5Address.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _319 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _322 = mem[_319]
            require mem[_319] == mem[_319 + 31 len 1]
            mem[mem[64] + 68] = 3
            mem[mem[64] + 100] = 0x46544d0000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 132] = 3
            mem[mem[64] + 164] = 0x5553440000000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor9)
            staticcall stor9.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _351 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _354 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_354] = mem[_351]
            mem[_354 + 32] = mem[_351 + 32]
            mem[_354 + 64] = mem[_351 + 64]
            if not uint8(_322):
                if _311 and mem[_354] > -1 / _311:
                    revert with 0, 17
                mem[mem[64]] = _311 * mem[_354]
            else:
                if bool(bool(uint8(_322) < 78)) or bool(bool(uint8(_322) < 32)):
                    if _311 and mem[_354] > -1 / _311:
                        revert with 0, 17
                    if not 10^uint8(_322):
                        revert with 0, 18
                    mem[mem[64]] = _311 * mem[_354] / 10^uint8(_322)
                else:
                    s = 10
                    t = 1
                    idx = uint8(_322)
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if _311 and mem[_354] > -1 / _311:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    mem[mem[64]] = _311 * mem[_354] / s * t
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if s * t > -1:
                revert with 0, 17
            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = s * t
            mem[ceil32(return_data.size) + 228] = 64
            mem[ceil32(return_data.size) + 260] = 2
            idx = 0
            u = ceil32(return_data.size) + 292
            v = 128
            while idx < 2:
                mem[u] = mem[v + 12 len 20]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(sub_9478e212Address)
            staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
            if not ext_call.success:
                require ext_code.size(stor9)
                staticcall stor9.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not return_data.size:
                    if not bool((2 * ceil32(return_data.size)) + 288 <= test266151307()):
                        revert with 0, 65
                else:
                    if not bool((2 * ceil32(return_data.size)) + ceil32(return_data.size) + 289 <= test266151307()):
                        revert with 0, 65
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                return 0, 18
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _318 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _321 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = _321
            require return_data.size >= _318 + (32 * _321) + 32
            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _321] = mem[ceil32(return_data.size) + _318 + 224 len 32 * _321]
            if 1 >= _321:
                revert with 0, 50
            _396 = mem[(2 * ceil32(return_data.size)) + 256]
            require ext_code.size(sub_7edd3da5Address)
            staticcall sub_7edd3da5Address.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _399 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _400 = mem[_399]
            require mem[_399] == mem[_399 + 31 len 1]
            mem[mem[64] + 68] = 3
            mem[mem[64] + 100] = 0x46544d0000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 132] = 3
            mem[mem[64] + 164] = 0x5553440000000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor9)
            staticcall stor9.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _407 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _408 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_408] = mem[_407]
            mem[_408 + 32] = mem[_407 + 32]
            mem[_408 + 64] = mem[_407 + 64]
            if not uint8(_400):
                if _396 and mem[_408] > -1 / _396:
                    revert with 0, 17
                mem[mem[64]] = _396 * mem[_408]
            else:
                if bool(bool(uint8(_400) < 78)) or bool(bool(uint8(_400) < 32)):
                    if _396 and mem[_408] > -1 / _396:
                        revert with 0, 17
                    if not 10^uint8(_400):
                        revert with 0, 18
                    mem[mem[64]] = _396 * mem[_408] / 10^uint8(_400)
                else:
                    s = 10
                    t = 1
                    idx = uint8(_400)
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if _396 and mem[_408] > -1 / _396:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    mem[mem[64]] = _396 * mem[_408] / s * t
    return mem[mem[64]], 18
}

function sub_ac5c4b11(?) payable {
    mem[96] = 2
    mem[128] = sub_f87c3c7aAddress
    mem[160] = sub_7edd3da5Address
    require ext_code.size(sub_f87c3c7aAddress)
    staticcall sub_f87c3c7aAddress.0x313ce567 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 1
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 292
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_9478e212Address)
        staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            require ext_code.size(stor9)
            staticcall stor9.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not return_data.size:
                if not bool((2 * ceil32(return_data.size)) + 288 <= test266151307()):
                    revert with 0, 65
            else:
                if not bool((2 * ceil32(return_data.size)) + ceil32(return_data.size) + 289 <= test266151307()):
                    revert with 0, 65
            if False and ext_call.return_data[0] > 0:
                revert with 0, 17
            return 0, 18
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _167 = mem[ceil32(return_data.size) + 192 len 4], 0
        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
        _169 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _169
        require return_data.size >= _167 + (32 * _169) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _169] = mem[ceil32(return_data.size) + _167 + 224 len 32 * _169]
        if 1 >= _169:
            revert with 0, 50
        _314 = mem[(2 * ceil32(return_data.size)) + 256]
        require ext_code.size(sub_7edd3da5Address)
        staticcall sub_7edd3da5Address.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _320 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _323 = mem[_320]
        require mem[_320] == mem[_320 + 31 len 1]
        mem[mem[64] + 68] = 3
        mem[mem[64] + 100] = 0x46544d0000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 132] = 3
        mem[mem[64] + 164] = 0x5553440000000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor9)
        staticcall stor9.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _352 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _355 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_355] = mem[_352]
        mem[_355 + 32] = mem[_352 + 32]
        mem[_355 + 64] = mem[_352 + 64]
        if not uint8(_323):
            if _314 and mem[_355] > -1 / _314:
                revert with 0, 17
            mem[mem[64]] = _314 * mem[_355]
        else:
            if bool(bool(uint8(_323) < 78)) or bool(bool(uint8(_323) < 32)):
                if _314 and mem[_355] > -1 / _314:
                    revert with 0, 17
                if not 10^uint8(_323):
                    revert with 0, 18
                mem[mem[64]] = _314 * mem[_355] / 10^uint8(_323)
            else:
                s = 10
                t = 1
                idx = uint8(_323)
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if _314 and mem[_355] > -1 / _314:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                mem[mem[64]] = _314 * mem[_355] / s * t
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 0, 17
            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 228] = 64
            mem[ceil32(return_data.size) + 260] = 2
            idx = 0
            s = ceil32(return_data.size) + 292
            t = 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(sub_9478e212Address)
            staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
            if not ext_call.success:
                require ext_code.size(stor9)
                staticcall stor9.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not return_data.size:
                    if not bool((2 * ceil32(return_data.size)) + 288 <= test266151307()):
                        revert with 0, 65
                else:
                    if not bool((2 * ceil32(return_data.size)) + ceil32(return_data.size) + 289 <= test266151307()):
                        revert with 0, 65
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                return 0, 18
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _165 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _168 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = _168
            require return_data.size >= _165 + (32 * _168) + 32
            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _168] = mem[ceil32(return_data.size) + _165 + 224 len 32 * _168]
            if 1 >= _168:
                revert with 0, 50
            _311 = mem[(2 * ceil32(return_data.size)) + 256]
            require ext_code.size(sub_7edd3da5Address)
            staticcall sub_7edd3da5Address.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _319 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _322 = mem[_319]
            require mem[_319] == mem[_319 + 31 len 1]
            mem[mem[64] + 68] = 3
            mem[mem[64] + 100] = 0x46544d0000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 132] = 3
            mem[mem[64] + 164] = 0x5553440000000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor9)
            staticcall stor9.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _351 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _354 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_354] = mem[_351]
            mem[_354 + 32] = mem[_351 + 32]
            mem[_354 + 64] = mem[_351 + 64]
            if not uint8(_322):
                if _311 and mem[_354] > -1 / _311:
                    revert with 0, 17
                mem[mem[64]] = _311 * mem[_354]
            else:
                if bool(bool(uint8(_322) < 78)) or bool(bool(uint8(_322) < 32)):
                    if _311 and mem[_354] > -1 / _311:
                        revert with 0, 17
                    if not 10^uint8(_322):
                        revert with 0, 18
                    mem[mem[64]] = _311 * mem[_354] / 10^uint8(_322)
                else:
                    s = 10
                    t = 1
                    idx = uint8(_322)
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if _311 and mem[_354] > -1 / _311:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    mem[mem[64]] = _311 * mem[_354] / s * t
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if s * t > -1:
                revert with 0, 17
            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = s * t
            mem[ceil32(return_data.size) + 228] = 64
            mem[ceil32(return_data.size) + 260] = 2
            idx = 0
            u = ceil32(return_data.size) + 292
            v = 128
            while idx < 2:
                mem[u] = mem[v + 12 len 20]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(sub_9478e212Address)
            staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
            if not ext_call.success:
                require ext_code.size(stor9)
                staticcall stor9.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not return_data.size:
                    if not bool((2 * ceil32(return_data.size)) + 288 <= test266151307()):
                        revert with 0, 65
                else:
                    if not bool((2 * ceil32(return_data.size)) + ceil32(return_data.size) + 289 <= test266151307()):
                        revert with 0, 65
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                return 0, 18
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _318 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _321 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = _321
            require return_data.size >= _318 + (32 * _321) + 32
            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _321] = mem[ceil32(return_data.size) + _318 + 224 len 32 * _321]
            if 1 >= _321:
                revert with 0, 50
            _396 = mem[(2 * ceil32(return_data.size)) + 256]
            require ext_code.size(sub_7edd3da5Address)
            staticcall sub_7edd3da5Address.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _399 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _400 = mem[_399]
            require mem[_399] == mem[_399 + 31 len 1]
            mem[mem[64] + 68] = 3
            mem[mem[64] + 100] = 0x46544d0000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 132] = 3
            mem[mem[64] + 164] = 0x5553440000000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor9)
            staticcall stor9.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _407 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _408 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_408] = mem[_407]
            mem[_408 + 32] = mem[_407 + 32]
            mem[_408 + 64] = mem[_407 + 64]
            if not uint8(_400):
                if _396 and mem[_408] > -1 / _396:
                    revert with 0, 17
                mem[mem[64]] = _396 * mem[_408]
            else:
                if bool(bool(uint8(_400) < 78)) or bool(bool(uint8(_400) < 32)):
                    if _396 and mem[_408] > -1 / _396:
                        revert with 0, 17
                    if not 10^uint8(_400):
                        revert with 0, 18
                    mem[mem[64]] = _396 * mem[_408] / 10^uint8(_400)
                else:
                    s = 10
                    t = 1
                    idx = uint8(_400)
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if _396 and mem[_408] > -1 / _396:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    mem[mem[64]] = _396 * mem[_408] / s * t
    return mem[mem[64]], 18
}

function getPriceInUSD(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'need to token address '
    mem[96] = 2
    mem[128] = arg1
    mem[160] = sub_7edd3da5Address
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 1
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 292
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_9478e212Address)
        staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            require ext_code.size(stor9)
            staticcall stor9.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not return_data.size:
                if not bool((2 * ceil32(return_data.size)) + 288 <= test266151307()):
                    revert with 0, 65
            else:
                if not bool((2 * ceil32(return_data.size)) + ceil32(return_data.size) + 289 <= test266151307()):
                    revert with 0, 65
            if False and ext_call.return_data[0] > 0:
                revert with 0, 17
            return 0, 18
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _169 = mem[ceil32(return_data.size) + 192 len 4], 0
        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
        _171 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _171
        require return_data.size >= _169 + (32 * _171) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _171] = mem[ceil32(return_data.size) + _169 + 224 len 32 * _171]
        if 1 >= _171:
            revert with 0, 50
        _316 = mem[(2 * ceil32(return_data.size)) + 256]
        require ext_code.size(sub_7edd3da5Address)
        staticcall sub_7edd3da5Address.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _322 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _325 = mem[_322]
        require mem[_322] == mem[_322 + 31 len 1]
        mem[mem[64] + 68] = 3
        mem[mem[64] + 100] = 0x46544d0000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 132] = 3
        mem[mem[64] + 164] = 0x5553440000000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor9)
        staticcall stor9.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _354 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _357 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_357] = mem[_354]
        mem[_357 + 32] = mem[_354 + 32]
        mem[_357 + 64] = mem[_354 + 64]
        if not uint8(_325):
            if _316 and mem[_357] > -1 / _316:
                revert with 0, 17
            mem[mem[64]] = _316 * mem[_357]
        else:
            if bool(bool(uint8(_325) < 78)) or bool(bool(uint8(_325) < 32)):
                if _316 and mem[_357] > -1 / _316:
                    revert with 0, 17
                if not 10^uint8(_325):
                    revert with 0, 18
                mem[mem[64]] = _316 * mem[_357] / 10^uint8(_325)
            else:
                s = 10
                t = 1
                idx = uint8(_325)
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if _316 and mem[_357] > -1 / _316:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                mem[mem[64]] = _316 * mem[_357] / s * t
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 0, 17
            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = 10^uint8(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 228] = 64
            mem[ceil32(return_data.size) + 260] = 2
            idx = 0
            s = ceil32(return_data.size) + 292
            t = 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(sub_9478e212Address)
            staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
            if not ext_call.success:
                require ext_code.size(stor9)
                staticcall stor9.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not return_data.size:
                    if not bool((2 * ceil32(return_data.size)) + 288 <= test266151307()):
                        revert with 0, 65
                else:
                    if not bool((2 * ceil32(return_data.size)) + ceil32(return_data.size) + 289 <= test266151307()):
                        revert with 0, 65
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                return 0, 18
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _167 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _170 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = _170
            require return_data.size >= _167 + (32 * _170) + 32
            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _170] = mem[ceil32(return_data.size) + _167 + 224 len 32 * _170]
            if 1 >= _170:
                revert with 0, 50
            _313 = mem[(2 * ceil32(return_data.size)) + 256]
            require ext_code.size(sub_7edd3da5Address)
            staticcall sub_7edd3da5Address.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _321 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _324 = mem[_321]
            require mem[_321] == mem[_321 + 31 len 1]
            mem[mem[64] + 68] = 3
            mem[mem[64] + 100] = 0x46544d0000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 132] = 3
            mem[mem[64] + 164] = 0x5553440000000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor9)
            staticcall stor9.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _353 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _356 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_356] = mem[_353]
            mem[_356 + 32] = mem[_353 + 32]
            mem[_356 + 64] = mem[_353 + 64]
            if not uint8(_324):
                if _313 and mem[_356] > -1 / _313:
                    revert with 0, 17
                mem[mem[64]] = _313 * mem[_356]
            else:
                if bool(bool(uint8(_324) < 78)) or bool(bool(uint8(_324) < 32)):
                    if _313 and mem[_356] > -1 / _313:
                        revert with 0, 17
                    if not 10^uint8(_324):
                        revert with 0, 18
                    mem[mem[64]] = _313 * mem[_356] / 10^uint8(_324)
                else:
                    s = 10
                    t = 1
                    idx = uint8(_324)
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if _313 and mem[_356] > -1 / _313:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    mem[mem[64]] = _313 * mem[_356] / s * t
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if s * t > -1:
                revert with 0, 17
            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = s * t
            mem[ceil32(return_data.size) + 228] = 64
            mem[ceil32(return_data.size) + 260] = 2
            idx = 0
            u = ceil32(return_data.size) + 292
            v = 128
            while idx < 2:
                mem[u] = mem[v + 12 len 20]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(sub_9478e212Address)
            staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s * t, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
            if not ext_call.success:
                require ext_code.size(stor9)
                staticcall stor9.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not return_data.size:
                    if not bool((2 * ceil32(return_data.size)) + 288 <= test266151307()):
                        revert with 0, 65
                else:
                    if not bool((2 * ceil32(return_data.size)) + ceil32(return_data.size) + 289 <= test266151307()):
                        revert with 0, 65
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                return 0, 18
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _320 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _323 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = _323
            require return_data.size >= _320 + (32 * _323) + 32
            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _323] = mem[ceil32(return_data.size) + _320 + 224 len 32 * _323]
            if 1 >= _323:
                revert with 0, 50
            _398 = mem[(2 * ceil32(return_data.size)) + 256]
            require ext_code.size(sub_7edd3da5Address)
            staticcall sub_7edd3da5Address.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _401 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _402 = mem[_401]
            require mem[_401] == mem[_401 + 31 len 1]
            mem[mem[64] + 68] = 3
            mem[mem[64] + 100] = 0x46544d0000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 132] = 3
            mem[mem[64] + 164] = 0x5553440000000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor9)
            staticcall stor9.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _409 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _410 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_410] = mem[_409]
            mem[_410 + 32] = mem[_409 + 32]
            mem[_410 + 64] = mem[_409 + 64]
            if not uint8(_402):
                if _398 and mem[_410] > -1 / _398:
                    revert with 0, 17
                mem[mem[64]] = _398 * mem[_410]
            else:
                if bool(bool(uint8(_402) < 78)) or bool(bool(uint8(_402) < 32)):
                    if _398 and mem[_410] > -1 / _398:
                        revert with 0, 17
                    if not 10^uint8(_402):
                        revert with 0, 18
                    mem[mem[64]] = _398 * mem[_410] / 10^uint8(_402)
                else:
                    s = 10
                    t = 1
                    idx = uint8(_402)
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if _398 and mem[_410] > -1 / _398:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    mem[mem[64]] = _398 * mem[_410] / s * t
    return mem[mem[64]], 18
}



}
