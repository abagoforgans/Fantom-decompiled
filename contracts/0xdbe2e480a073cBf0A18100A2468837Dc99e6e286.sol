contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner; offset 16
address sub_9478e212Address;
address sub_593a48c1Address;
address dollarAddress;
address sub_339d2e38Address;
address wftmAddress;
address usdcAddress;
address daiAddress;
address booAddress;
address stor9;

function sub_339d2e38(?) payable {
    return sub_339d2e38Address
}

function usdc() payable {
    return usdcAddress
}

function boo() payable {
    return booAddress
}

function dollar() payable {
    return dollarAddress
}

function sub_593a48c1(?) payable {
    return sub_593a48c1Address
}

function owner() payable {
    return owner
}

function sub_9478e212(?) payable {
    return sub_9478e212Address
}

function dai() payable {
    return daiAddress
}

function wftm() payable {
    return wftmAddress
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

function setDollarAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    dollarAddress = arg1
}

function sub_4f3e2738(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_593a48c1Address = address(arg1)
}

function sub_e83999e8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_339d2e38Address = address(arg1)
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
    sub_593a48c1Address = arg1
    dollarAddress = arg2
    sub_339d2e38Address = arg3
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

function sub_fc59574c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(sub_9478e212Address)
    staticcall sub_9478e212Address.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != address(arg1):
        require ext_code.size(address(arg2))
        staticcall address(arg2).decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            require ext_code.size(address(arg1))
            staticcall address(arg1).decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            return Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), uint8(ext_call.return_data[0])
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            require ext_code.size(address(arg1))
            staticcall address(arg1).decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            return Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 
                   uint8(ext_call.return_data[0])
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
        if Mask(112, 0, ext_call.return_data[0]) and s * t > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        require ext_code.size(address(arg1))
        staticcall address(arg1).decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        return Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]), uint8(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    staticcall address(arg1).decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 18
        require ext_code.size(address(arg2))
        staticcall address(arg2).decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        return Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), uint8(ext_call.return_data[0])
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 18
        require ext_code.size(address(arg2))
        staticcall address(arg2).decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        return Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]), 
               uint8(ext_call.return_data[0])
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
    if Mask(112, 0, ext_call.return_data[32]) and s * t > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 18
    require ext_code.size(address(arg2))
    staticcall address(arg2).decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]), uint8(ext_call.return_data[0])
}

function sub_b634efe2(?) payable {
    mem[96] = 2
    mem[128] = wftmAddress
    mem[160] = usdcAddress
    require ext_code.size(sub_9478e212Address)
    staticcall sub_9478e212Address.factory() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 196] = wftmAddress
    mem[ceil32(return_data.size) + 228] = usdcAddress
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args wftmAddress, usdcAddress
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(wftmAddress)
    staticcall wftmAddress.decimals() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = 1
        mem[(4 * ceil32(return_data.size)) + 228] = 64
        mem[(4 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 292
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
               args 1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _93 = mem[(4 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _96 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = _96
        require return_data.size >= _93 + (32 * _96) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _96] = mem[(4 * ceil32(return_data.size)) + _93 + 224 len 32 * _96]
        if 1 >= _96:
            revert with 0, 50
        _156 = mem[(6 * ceil32(return_data.size)) + 256]
        require ext_code.size(usdcAddress)
        staticcall usdcAddress.decimals() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _162 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_162] == mem[_162 + 31 len 1]
        return _156, mem[_162 + 31 len 1]
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 228] = 64
        mem[(4 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 292
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
               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _91 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _95 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = _95
        require return_data.size >= _91 + (32 * _95) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _95] = mem[(4 * ceil32(return_data.size)) + _91 + 224 len 32 * _95]
        if 1 >= _95:
            revert with 0, 50
        _153 = mem[(6 * ceil32(return_data.size)) + 256]
        require ext_code.size(usdcAddress)
        staticcall usdcAddress.decimals() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _161 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_161] == mem[_161 + 31 len 1]
        return _153, mem[_161 + 31 len 1]
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
    mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = s * t
    mem[(4 * ceil32(return_data.size)) + 228] = 64
    mem[(4 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    u = (4 * ceil32(return_data.size)) + 292
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
           args s * t, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        return 0
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _160 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _163 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = _163
    require return_data.size >= _160 + (32 * _163) + 32
    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _163] = mem[(4 * ceil32(return_data.size)) + _160 + 224 len 32 * _163]
    if 1 >= _163:
        revert with 0, 50
    _186 = mem[(6 * ceil32(return_data.size)) + 256]
    require ext_code.size(usdcAddress)
    staticcall usdcAddress.decimals() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _189 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_189] == mem[_189 + 31 len 1]
    return _186, mem[_189 + 31 len 1]
}

function sub_1b35a4a6(?) payable {
    mem[96] = 2
    mem[128] = dollarAddress
    mem[160] = daiAddress
    require ext_code.size(sub_9478e212Address)
    staticcall sub_9478e212Address.factory() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 196] = dollarAddress
    mem[ceil32(return_data.size) + 228] = daiAddress
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args dollarAddress, daiAddress
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.decimals() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = 1
        mem[(4 * ceil32(return_data.size)) + 228] = 64
        mem[(4 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 292
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
               args 1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _93 = mem[(4 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _96 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = _96
        require return_data.size >= _93 + (32 * _96) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _96] = mem[(4 * ceil32(return_data.size)) + _93 + 224 len 32 * _96]
        if 1 >= _96:
            revert with 0, 50
        _156 = mem[(6 * ceil32(return_data.size)) + 256]
        require ext_code.size(daiAddress)
        staticcall daiAddress.decimals() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _162 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_162] == mem[_162 + 31 len 1]
        return _156, mem[_162 + 31 len 1]
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 228] = 64
        mem[(4 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 292
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
               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _91 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _95 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = _95
        require return_data.size >= _91 + (32 * _95) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _95] = mem[(4 * ceil32(return_data.size)) + _91 + 224 len 32 * _95]
        if 1 >= _95:
            revert with 0, 50
        _153 = mem[(6 * ceil32(return_data.size)) + 256]
        require ext_code.size(daiAddress)
        staticcall daiAddress.decimals() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _161 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_161] == mem[_161 + 31 len 1]
        return _153, mem[_161 + 31 len 1]
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
    mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = s * t
    mem[(4 * ceil32(return_data.size)) + 228] = 64
    mem[(4 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    u = (4 * ceil32(return_data.size)) + 292
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
           args s * t, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        return 0
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _160 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _163 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = _163
    require return_data.size >= _160 + (32 * _163) + 32
    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _163] = mem[(4 * ceil32(return_data.size)) + _160 + 224 len 32 * _163]
    if 1 >= _163:
        revert with 0, 50
    _186 = mem[(6 * ceil32(return_data.size)) + 256]
    require ext_code.size(daiAddress)
    staticcall daiAddress.decimals() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _189 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_189] == mem[_189 + 31 len 1]
    return _186, mem[_189 + 31 len 1]
}

function sub_23db4bbc(?) payable {
    mem[96] = 2
    mem[128] = dollarAddress
    mem[160] = usdcAddress
    require ext_code.size(sub_9478e212Address)
    staticcall sub_9478e212Address.factory() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 196] = dollarAddress
    mem[ceil32(return_data.size) + 228] = usdcAddress
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args dollarAddress, usdcAddress
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.decimals() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = 1
        mem[(4 * ceil32(return_data.size)) + 228] = 64
        mem[(4 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 292
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
               args 1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _93 = mem[(4 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _96 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = _96
        require return_data.size >= _93 + (32 * _96) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _96] = mem[(4 * ceil32(return_data.size)) + _93 + 224 len 32 * _96]
        if 1 >= _96:
            revert with 0, 50
        _156 = mem[(6 * ceil32(return_data.size)) + 256]
        require ext_code.size(usdcAddress)
        staticcall usdcAddress.decimals() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _162 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_162] == mem[_162 + 31 len 1]
        return _156, mem[_162 + 31 len 1]
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 228] = 64
        mem[(4 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 292
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
               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _91 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _95 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = _95
        require return_data.size >= _91 + (32 * _95) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _95] = mem[(4 * ceil32(return_data.size)) + _91 + 224 len 32 * _95]
        if 1 >= _95:
            revert with 0, 50
        _153 = mem[(6 * ceil32(return_data.size)) + 256]
        require ext_code.size(usdcAddress)
        staticcall usdcAddress.decimals() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _161 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_161] == mem[_161 + 31 len 1]
        return _153, mem[_161 + 31 len 1]
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
    mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = s * t
    mem[(4 * ceil32(return_data.size)) + 228] = 64
    mem[(4 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    u = (4 * ceil32(return_data.size)) + 292
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
           args s * t, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        return 0
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _160 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _163 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = _163
    require return_data.size >= _160 + (32 * _163) + 32
    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _163] = mem[(4 * ceil32(return_data.size)) + _160 + 224 len 32 * _163]
    if 1 >= _163:
        revert with 0, 50
    _186 = mem[(6 * ceil32(return_data.size)) + 256]
    require ext_code.size(usdcAddress)
    staticcall usdcAddress.decimals() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _189 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_189] == mem[_189 + 31 len 1]
    return _186, mem[_189 + 31 len 1]
}

function sub_f7f398a5(?) payable {
    mem[96] = 2
    mem[128] = dollarAddress
    mem[160] = wftmAddress
    require ext_code.size(sub_9478e212Address)
    staticcall sub_9478e212Address.factory() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 196] = dollarAddress
    mem[ceil32(return_data.size) + 228] = wftmAddress
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args dollarAddress, wftmAddress
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.decimals() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = 1
        mem[(4 * ceil32(return_data.size)) + 228] = 64
        mem[(4 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 292
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
               args 1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _93 = mem[(4 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _96 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = _96
        require return_data.size >= _93 + (32 * _96) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _96] = mem[(4 * ceil32(return_data.size)) + _93 + 224 len 32 * _96]
        if 1 >= _96:
            revert with 0, 50
        _156 = mem[(6 * ceil32(return_data.size)) + 256]
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.decimals() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _162 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_162] == mem[_162 + 31 len 1]
        return _156, mem[_162 + 31 len 1]
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 228] = 64
        mem[(4 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 292
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
               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _91 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _95 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = _95
        require return_data.size >= _91 + (32 * _95) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _95] = mem[(4 * ceil32(return_data.size)) + _91 + 224 len 32 * _95]
        if 1 >= _95:
            revert with 0, 50
        _153 = mem[(6 * ceil32(return_data.size)) + 256]
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.decimals() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _161 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_161] == mem[_161 + 31 len 1]
        return _153, mem[_161 + 31 len 1]
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
    mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = s * t
    mem[(4 * ceil32(return_data.size)) + 228] = 64
    mem[(4 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    u = (4 * ceil32(return_data.size)) + 292
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
           args s * t, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        return 0
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _160 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _163 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = _163
    require return_data.size >= _160 + (32 * _163) + 32
    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _163] = mem[(4 * ceil32(return_data.size)) + _160 + 224 len 32 * _163]
    if 1 >= _163:
        revert with 0, 50
    _186 = mem[(6 * ceil32(return_data.size)) + 256]
    require ext_code.size(wftmAddress)
    staticcall wftmAddress.decimals() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _189 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_189] == mem[_189 + 31 len 1]
    return _186, mem[_189 + 31 len 1]
}

function getRate(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 2
    mem[128] = arg1
    mem[160] = arg2
    require ext_code.size(sub_9478e212Address)
    staticcall sub_9478e212Address.factory() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 228] = arg2
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.decimals() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = 1
        mem[(4 * ceil32(return_data.size)) + 228] = 64
        mem[(4 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 292
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
               args 1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _93 = mem[(4 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _96 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = _96
        require return_data.size >= _93 + (32 * _96) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _96] = mem[(4 * ceil32(return_data.size)) + _93 + 224 len 32 * _96]
        if 1 >= _96:
            revert with 0, 50
        _156 = mem[(6 * ceil32(return_data.size)) + 256]
        require ext_code.size(arg2)
        staticcall arg2.decimals() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _162 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_162] == mem[_162 + 31 len 1]
        return _156, mem[_162 + 31 len 1]
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 228] = 64
        mem[(4 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 292
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
               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _91 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _95 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = _95
        require return_data.size >= _91 + (32 * _95) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _95] = mem[(4 * ceil32(return_data.size)) + _91 + 224 len 32 * _95]
        if 1 >= _95:
            revert with 0, 50
        _153 = mem[(6 * ceil32(return_data.size)) + 256]
        require ext_code.size(arg2)
        staticcall arg2.decimals() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _161 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_161] == mem[_161 + 31 len 1]
        return _153, mem[_161 + 31 len 1]
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
    mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = s * t
    mem[(4 * ceil32(return_data.size)) + 228] = 64
    mem[(4 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    u = (4 * ceil32(return_data.size)) + 292
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
           args s * t, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        return 0
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _160 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _163 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = _163
    require return_data.size >= _160 + (32 * _163) + 32
    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _163] = mem[(4 * ceil32(return_data.size)) + _160 + 224 len 32 * _163]
    if 1 >= _163:
        revert with 0, 50
    _186 = mem[(6 * ceil32(return_data.size)) + 256]
    require ext_code.size(arg2)
    staticcall arg2.decimals() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _189 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_189] == mem[_189 + 31 len 1]
    return _186, mem[_189 + 31 len 1]
}

function sub_b1c0c6e8(?) payable {
    mem[96] = 2
    mem[128] = sub_593a48c1Address
    mem[160] = wftmAddress
    require ext_code.size(sub_9478e212Address)
    staticcall sub_9478e212Address.factory() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 196] = sub_593a48c1Address
    mem[ceil32(return_data.size) + 228] = wftmAddress
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args sub_593a48c1Address, wftmAddress
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(sub_593a48c1Address)
    staticcall sub_593a48c1Address.decimals() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = 1
        mem[(4 * ceil32(return_data.size)) + 228] = 64
        mem[(4 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 292
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
               args 1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _93 = mem[(4 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _96 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = _96
        require return_data.size >= _93 + (32 * _96) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _96] = mem[(4 * ceil32(return_data.size)) + _93 + 224 len 32 * _96]
        if 1 >= _96:
            revert with 0, 50
        _156 = mem[(6 * ceil32(return_data.size)) + 256]
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.decimals() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _162 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_162] == mem[_162 + 31 len 1]
        return _156, mem[_162 + 31 len 1]
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 228] = 64
        mem[(4 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 292
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
               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _91 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _95 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = _95
        require return_data.size >= _91 + (32 * _95) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _95] = mem[(4 * ceil32(return_data.size)) + _91 + 224 len 32 * _95]
        if 1 >= _95:
            revert with 0, 50
        _153 = mem[(6 * ceil32(return_data.size)) + 256]
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.decimals() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _161 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_161] == mem[_161 + 31 len 1]
        return _153, mem[_161 + 31 len 1]
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
    mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = s * t
    mem[(4 * ceil32(return_data.size)) + 228] = 64
    mem[(4 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    u = (4 * ceil32(return_data.size)) + 292
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
           args s * t, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        return 0
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _160 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _163 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = _163
    require return_data.size >= _160 + (32 * _163) + 32
    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _163] = mem[(4 * ceil32(return_data.size)) + _160 + 224 len 32 * _163]
    if 1 >= _163:
        revert with 0, 50
    _186 = mem[(6 * ceil32(return_data.size)) + 256]
    require ext_code.size(wftmAddress)
    staticcall wftmAddress.decimals() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _189 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_189] == mem[_189 + 31 len 1]
    return _186, mem[_189 + 31 len 1]
}

function sub_edc808a3(?) payable {
    mem[96] = 2
    mem[128] = sub_339d2e38Address
    mem[160] = wftmAddress
    require ext_code.size(sub_9478e212Address)
    staticcall sub_9478e212Address.factory() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 196] = sub_339d2e38Address
    mem[ceil32(return_data.size) + 228] = wftmAddress
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args sub_339d2e38Address, wftmAddress
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(sub_339d2e38Address)
    staticcall sub_339d2e38Address.decimals() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = 1
        mem[(4 * ceil32(return_data.size)) + 228] = 64
        mem[(4 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 292
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
               args 1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _93 = mem[(4 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _96 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = _96
        require return_data.size >= _93 + (32 * _96) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _96] = mem[(4 * ceil32(return_data.size)) + _93 + 224 len 32 * _96]
        if 1 >= _96:
            revert with 0, 50
        _156 = mem[(6 * ceil32(return_data.size)) + 256]
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.decimals() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _162 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_162] == mem[_162 + 31 len 1]
        return _156, mem[_162 + 31 len 1]
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 228] = 64
        mem[(4 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 292
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
               args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            return 0
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _91 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _95 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = _95
        require return_data.size >= _91 + (32 * _95) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _95] = mem[(4 * ceil32(return_data.size)) + _91 + 224 len 32 * _95]
        if 1 >= _95:
            revert with 0, 50
        _153 = mem[(6 * ceil32(return_data.size)) + 256]
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.decimals() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _161 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_161] == mem[_161 + 31 len 1]
        return _153, mem[_161 + 31 len 1]
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
    mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = s * t
    mem[(4 * ceil32(return_data.size)) + 228] = 64
    mem[(4 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    u = (4 * ceil32(return_data.size)) + 292
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
           args s * t, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        return 0
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _160 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _163 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = _163
    require return_data.size >= _160 + (32 * _163) + 32
    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _163] = mem[(4 * ceil32(return_data.size)) + _160 + 224 len 32 * _163]
    if 1 >= _163:
        revert with 0, 50
    _186 = mem[(6 * ceil32(return_data.size)) + 256]
    require ext_code.size(wftmAddress)
    staticcall wftmAddress.decimals() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _189 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_189] == mem[_189 + 31 len 1]
    return _186, mem[_189 + 31 len 1]
}

function sub_e61574b0(?) payable {
    mem[96] = 2
    mem[128] = dollarAddress
    mem[160] = wftmAddress
    require ext_code.size(sub_9478e212Address)
    staticcall sub_9478e212Address.factory() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 196] = dollarAddress
    mem[ceil32(return_data.size) + 228] = wftmAddress
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args dollarAddress, wftmAddress
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        require ext_code.size(stor9)
        staticcall stor9.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not bool((4 * ceil32(return_data.size)) + 288 <= test266151307()):
            revert with 0, 65
        if False and ext_call.return_data[0] > 0:
            revert with 0, 17
        return 0, 18
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.decimals() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = 1
        mem[(4 * ceil32(return_data.size)) + 228] = 64
        mem[(4 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 292
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
               args 1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            require ext_code.size(stor9)
            staticcall stor9.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not return_data.size:
                if not bool((6 * ceil32(return_data.size)) + 288 <= test266151307()):
                    revert with 0, 65
            else:
                if not bool((6 * ceil32(return_data.size)) + ceil32(return_data.size) + 289 <= test266151307()):
                    revert with 0, 65
            if False and ext_call.return_data[0] > 0:
                revert with 0, 17
            return 0, 18
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _185 = mem[(4 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _188 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = _188
        require return_data.size >= _185 + (32 * _188) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _188] = mem[(4 * ceil32(return_data.size)) + _185 + 224 len 32 * _188]
        if 1 >= _188:
            revert with 0, 50
        _332 = mem[(6 * ceil32(return_data.size)) + 256]
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.decimals() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _338 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _341 = mem[_338]
        require mem[_338] == mem[_338 + 31 len 1]
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
        _370 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _373 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_373] = mem[_370]
        mem[_373 + 32] = mem[_370 + 32]
        mem[_373 + 64] = mem[_370 + 64]
        if not uint8(_341):
            if _332 and mem[_373] > -1 / _332:
                revert with 0, 17
            mem[mem[64]] = _332 * mem[_373]
        else:
            if bool(bool(uint8(_341) < 78)) or bool(bool(uint8(_341) < 32)):
                if _332 and mem[_373] > -1 / _332:
                    revert with 0, 17
                if not 10^uint8(_341):
                    revert with 0, 18
                mem[mem[64]] = _332 * mem[_373] / 10^uint8(_341)
            else:
                s = 10
                t = 1
                idx = uint8(_341)
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
                if _332 and mem[_373] > -1 / _332:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                mem[mem[64]] = _332 * mem[_373] / s * t
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 0, 17
            mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 228] = 64
            mem[(4 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 292
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
                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                require ext_code.size(stor9)
                staticcall stor9.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not return_data.size:
                    if not bool((6 * ceil32(return_data.size)) + 288 <= test266151307()):
                        revert with 0, 65
                else:
                    if not bool((6 * ceil32(return_data.size)) + ceil32(return_data.size) + 289 <= test266151307()):
                        revert with 0, 65
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                return 0, 18
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _183 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
            _187 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
            mem[(6 * ceil32(return_data.size)) + 192] = _187
            require return_data.size >= _183 + (32 * _187) + 32
            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _187] = mem[(4 * ceil32(return_data.size)) + _183 + 224 len 32 * _187]
            if 1 >= _187:
                revert with 0, 50
            _329 = mem[(6 * ceil32(return_data.size)) + 256]
            require ext_code.size(wftmAddress)
            staticcall wftmAddress.decimals() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _337 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _340 = mem[_337]
            require mem[_337] == mem[_337 + 31 len 1]
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
            _369 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _372 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_372] = mem[_369]
            mem[_372 + 32] = mem[_369 + 32]
            mem[_372 + 64] = mem[_369 + 64]
            if not uint8(_340):
                if _329 and mem[_372] > -1 / _329:
                    revert with 0, 17
                mem[mem[64]] = _329 * mem[_372]
            else:
                if bool(bool(uint8(_340) < 78)) or bool(bool(uint8(_340) < 32)):
                    if _329 and mem[_372] > -1 / _329:
                        revert with 0, 17
                    if not 10^uint8(_340):
                        revert with 0, 18
                    mem[mem[64]] = _329 * mem[_372] / 10^uint8(_340)
                else:
                    s = 10
                    t = 1
                    idx = uint8(_340)
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
                    if _329 and mem[_372] > -1 / _329:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    mem[mem[64]] = _329 * mem[_372] / s * t
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
            mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = s * t
            mem[(4 * ceil32(return_data.size)) + 228] = 64
            mem[(4 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            u = (4 * ceil32(return_data.size)) + 292
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
                   args s * t, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                require ext_code.size(stor9)
                staticcall stor9.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not return_data.size:
                    if not bool((6 * ceil32(return_data.size)) + 288 <= test266151307()):
                        revert with 0, 65
                else:
                    if not bool((6 * ceil32(return_data.size)) + ceil32(return_data.size) + 289 <= test266151307()):
                        revert with 0, 65
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                return 0, 18
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _336 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
            _339 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
            mem[(6 * ceil32(return_data.size)) + 192] = _339
            require return_data.size >= _336 + (32 * _339) + 32
            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _339] = mem[(4 * ceil32(return_data.size)) + _336 + 224 len 32 * _339]
            if 1 >= _339:
                revert with 0, 50
            _414 = mem[(6 * ceil32(return_data.size)) + 256]
            require ext_code.size(wftmAddress)
            staticcall wftmAddress.decimals() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _417 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _418 = mem[_417]
            require mem[_417] == mem[_417 + 31 len 1]
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
            _425 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _426 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_426] = mem[_425]
            mem[_426 + 32] = mem[_425 + 32]
            mem[_426 + 64] = mem[_425 + 64]
            if not uint8(_418):
                if _414 and mem[_426] > -1 / _414:
                    revert with 0, 17
                mem[mem[64]] = _414 * mem[_426]
            else:
                if bool(bool(uint8(_418) < 78)) or bool(bool(uint8(_418) < 32)):
                    if _414 and mem[_426] > -1 / _414:
                        revert with 0, 17
                    if not 10^uint8(_418):
                        revert with 0, 18
                    mem[mem[64]] = _414 * mem[_426] / 10^uint8(_418)
                else:
                    s = 10
                    t = 1
                    idx = uint8(_418)
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
                    if _414 and mem[_426] > -1 / _414:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    mem[mem[64]] = _414 * mem[_426] / s * t
    return mem[mem[64]], 18
}

function sub_43be1230(?) payable {
    mem[96] = 2
    mem[128] = sub_593a48c1Address
    mem[160] = wftmAddress
    require ext_code.size(sub_9478e212Address)
    staticcall sub_9478e212Address.factory() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 196] = sub_593a48c1Address
    mem[ceil32(return_data.size) + 228] = wftmAddress
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args sub_593a48c1Address, wftmAddress
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        require ext_code.size(stor9)
        staticcall stor9.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not bool((4 * ceil32(return_data.size)) + 288 <= test266151307()):
            revert with 0, 65
        if False and ext_call.return_data[0] > 0:
            revert with 0, 17
        return 0, 18
    require ext_code.size(sub_593a48c1Address)
    staticcall sub_593a48c1Address.decimals() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = 1
        mem[(4 * ceil32(return_data.size)) + 228] = 64
        mem[(4 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 292
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
               args 1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            require ext_code.size(stor9)
            staticcall stor9.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not return_data.size:
                if not bool((6 * ceil32(return_data.size)) + 288 <= test266151307()):
                    revert with 0, 65
            else:
                if not bool((6 * ceil32(return_data.size)) + ceil32(return_data.size) + 289 <= test266151307()):
                    revert with 0, 65
            if False and ext_call.return_data[0] > 0:
                revert with 0, 17
            return 0, 18
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _185 = mem[(4 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _188 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = _188
        require return_data.size >= _185 + (32 * _188) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _188] = mem[(4 * ceil32(return_data.size)) + _185 + 224 len 32 * _188]
        if 1 >= _188:
            revert with 0, 50
        _332 = mem[(6 * ceil32(return_data.size)) + 256]
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.decimals() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _338 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _341 = mem[_338]
        require mem[_338] == mem[_338 + 31 len 1]
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
        _370 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _373 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_373] = mem[_370]
        mem[_373 + 32] = mem[_370 + 32]
        mem[_373 + 64] = mem[_370 + 64]
        if not uint8(_341):
            if _332 and mem[_373] > -1 / _332:
                revert with 0, 17
            mem[mem[64]] = _332 * mem[_373]
        else:
            if bool(bool(uint8(_341) < 78)) or bool(bool(uint8(_341) < 32)):
                if _332 and mem[_373] > -1 / _332:
                    revert with 0, 17
                if not 10^uint8(_341):
                    revert with 0, 18
                mem[mem[64]] = _332 * mem[_373] / 10^uint8(_341)
            else:
                s = 10
                t = 1
                idx = uint8(_341)
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
                if _332 and mem[_373] > -1 / _332:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                mem[mem[64]] = _332 * mem[_373] / s * t
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 0, 17
            mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 228] = 64
            mem[(4 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 292
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
                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                require ext_code.size(stor9)
                staticcall stor9.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not return_data.size:
                    if not bool((6 * ceil32(return_data.size)) + 288 <= test266151307()):
                        revert with 0, 65
                else:
                    if not bool((6 * ceil32(return_data.size)) + ceil32(return_data.size) + 289 <= test266151307()):
                        revert with 0, 65
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                return 0, 18
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _183 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
            _187 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
            mem[(6 * ceil32(return_data.size)) + 192] = _187
            require return_data.size >= _183 + (32 * _187) + 32
            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _187] = mem[(4 * ceil32(return_data.size)) + _183 + 224 len 32 * _187]
            if 1 >= _187:
                revert with 0, 50
            _329 = mem[(6 * ceil32(return_data.size)) + 256]
            require ext_code.size(wftmAddress)
            staticcall wftmAddress.decimals() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _337 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _340 = mem[_337]
            require mem[_337] == mem[_337 + 31 len 1]
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
            _369 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _372 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_372] = mem[_369]
            mem[_372 + 32] = mem[_369 + 32]
            mem[_372 + 64] = mem[_369 + 64]
            if not uint8(_340):
                if _329 and mem[_372] > -1 / _329:
                    revert with 0, 17
                mem[mem[64]] = _329 * mem[_372]
            else:
                if bool(bool(uint8(_340) < 78)) or bool(bool(uint8(_340) < 32)):
                    if _329 and mem[_372] > -1 / _329:
                        revert with 0, 17
                    if not 10^uint8(_340):
                        revert with 0, 18
                    mem[mem[64]] = _329 * mem[_372] / 10^uint8(_340)
                else:
                    s = 10
                    t = 1
                    idx = uint8(_340)
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
                    if _329 and mem[_372] > -1 / _329:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    mem[mem[64]] = _329 * mem[_372] / s * t
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
            mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = s * t
            mem[(4 * ceil32(return_data.size)) + 228] = 64
            mem[(4 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            u = (4 * ceil32(return_data.size)) + 292
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
                   args s * t, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                require ext_code.size(stor9)
                staticcall stor9.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not return_data.size:
                    if not bool((6 * ceil32(return_data.size)) + 288 <= test266151307()):
                        revert with 0, 65
                else:
                    if not bool((6 * ceil32(return_data.size)) + ceil32(return_data.size) + 289 <= test266151307()):
                        revert with 0, 65
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                return 0, 18
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _336 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
            _339 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
            mem[(6 * ceil32(return_data.size)) + 192] = _339
            require return_data.size >= _336 + (32 * _339) + 32
            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _339] = mem[(4 * ceil32(return_data.size)) + _336 + 224 len 32 * _339]
            if 1 >= _339:
                revert with 0, 50
            _414 = mem[(6 * ceil32(return_data.size)) + 256]
            require ext_code.size(wftmAddress)
            staticcall wftmAddress.decimals() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _417 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _418 = mem[_417]
            require mem[_417] == mem[_417 + 31 len 1]
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
            _425 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _426 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_426] = mem[_425]
            mem[_426 + 32] = mem[_425 + 32]
            mem[_426 + 64] = mem[_425 + 64]
            if not uint8(_418):
                if _414 and mem[_426] > -1 / _414:
                    revert with 0, 17
                mem[mem[64]] = _414 * mem[_426]
            else:
                if bool(bool(uint8(_418) < 78)) or bool(bool(uint8(_418) < 32)):
                    if _414 and mem[_426] > -1 / _414:
                        revert with 0, 17
                    if not 10^uint8(_418):
                        revert with 0, 18
                    mem[mem[64]] = _414 * mem[_426] / 10^uint8(_418)
                else:
                    s = 10
                    t = 1
                    idx = uint8(_418)
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
                    if _414 and mem[_426] > -1 / _414:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    mem[mem[64]] = _414 * mem[_426] / s * t
    return mem[mem[64]], 18
}

function sub_ac5c4b11(?) payable {
    mem[96] = 2
    mem[128] = sub_339d2e38Address
    mem[160] = wftmAddress
    require ext_code.size(sub_9478e212Address)
    staticcall sub_9478e212Address.factory() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 196] = sub_339d2e38Address
    mem[ceil32(return_data.size) + 228] = wftmAddress
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args sub_339d2e38Address, wftmAddress
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        require ext_code.size(stor9)
        staticcall stor9.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not bool((4 * ceil32(return_data.size)) + 288 <= test266151307()):
            revert with 0, 65
        if False and ext_call.return_data[0] > 0:
            revert with 0, 17
        return 0, 18
    require ext_code.size(sub_339d2e38Address)
    staticcall sub_339d2e38Address.decimals() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = 1
        mem[(4 * ceil32(return_data.size)) + 228] = 64
        mem[(4 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 292
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
               args 1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            require ext_code.size(stor9)
            staticcall stor9.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not return_data.size:
                if not bool((6 * ceil32(return_data.size)) + 288 <= test266151307()):
                    revert with 0, 65
            else:
                if not bool((6 * ceil32(return_data.size)) + ceil32(return_data.size) + 289 <= test266151307()):
                    revert with 0, 65
            if False and ext_call.return_data[0] > 0:
                revert with 0, 17
            return 0, 18
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _185 = mem[(4 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _188 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = _188
        require return_data.size >= _185 + (32 * _188) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _188] = mem[(4 * ceil32(return_data.size)) + _185 + 224 len 32 * _188]
        if 1 >= _188:
            revert with 0, 50
        _332 = mem[(6 * ceil32(return_data.size)) + 256]
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.decimals() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _338 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _341 = mem[_338]
        require mem[_338] == mem[_338 + 31 len 1]
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
        _370 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _373 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_373] = mem[_370]
        mem[_373 + 32] = mem[_370 + 32]
        mem[_373 + 64] = mem[_370 + 64]
        if not uint8(_341):
            if _332 and mem[_373] > -1 / _332:
                revert with 0, 17
            mem[mem[64]] = _332 * mem[_373]
        else:
            if bool(bool(uint8(_341) < 78)) or bool(bool(uint8(_341) < 32)):
                if _332 and mem[_373] > -1 / _332:
                    revert with 0, 17
                if not 10^uint8(_341):
                    revert with 0, 18
                mem[mem[64]] = _332 * mem[_373] / 10^uint8(_341)
            else:
                s = 10
                t = 1
                idx = uint8(_341)
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
                if _332 and mem[_373] > -1 / _332:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                mem[mem[64]] = _332 * mem[_373] / s * t
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 0, 17
            mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 228] = 64
            mem[(4 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 292
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
                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                require ext_code.size(stor9)
                staticcall stor9.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not return_data.size:
                    if not bool((6 * ceil32(return_data.size)) + 288 <= test266151307()):
                        revert with 0, 65
                else:
                    if not bool((6 * ceil32(return_data.size)) + ceil32(return_data.size) + 289 <= test266151307()):
                        revert with 0, 65
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                return 0, 18
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _183 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
            _187 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
            mem[(6 * ceil32(return_data.size)) + 192] = _187
            require return_data.size >= _183 + (32 * _187) + 32
            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _187] = mem[(4 * ceil32(return_data.size)) + _183 + 224 len 32 * _187]
            if 1 >= _187:
                revert with 0, 50
            _329 = mem[(6 * ceil32(return_data.size)) + 256]
            require ext_code.size(wftmAddress)
            staticcall wftmAddress.decimals() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _337 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _340 = mem[_337]
            require mem[_337] == mem[_337 + 31 len 1]
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
            _369 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _372 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_372] = mem[_369]
            mem[_372 + 32] = mem[_369 + 32]
            mem[_372 + 64] = mem[_369 + 64]
            if not uint8(_340):
                if _329 and mem[_372] > -1 / _329:
                    revert with 0, 17
                mem[mem[64]] = _329 * mem[_372]
            else:
                if bool(bool(uint8(_340) < 78)) or bool(bool(uint8(_340) < 32)):
                    if _329 and mem[_372] > -1 / _329:
                        revert with 0, 17
                    if not 10^uint8(_340):
                        revert with 0, 18
                    mem[mem[64]] = _329 * mem[_372] / 10^uint8(_340)
                else:
                    s = 10
                    t = 1
                    idx = uint8(_340)
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
                    if _329 and mem[_372] > -1 / _329:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    mem[mem[64]] = _329 * mem[_372] / s * t
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
            mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = s * t
            mem[(4 * ceil32(return_data.size)) + 228] = 64
            mem[(4 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            u = (4 * ceil32(return_data.size)) + 292
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
                   args s * t, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                require ext_code.size(stor9)
                staticcall stor9.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not return_data.size:
                    if not bool((6 * ceil32(return_data.size)) + 288 <= test266151307()):
                        revert with 0, 65
                else:
                    if not bool((6 * ceil32(return_data.size)) + ceil32(return_data.size) + 289 <= test266151307()):
                        revert with 0, 65
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                return 0, 18
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _336 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
            _339 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
            mem[(6 * ceil32(return_data.size)) + 192] = _339
            require return_data.size >= _336 + (32 * _339) + 32
            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _339] = mem[(4 * ceil32(return_data.size)) + _336 + 224 len 32 * _339]
            if 1 >= _339:
                revert with 0, 50
            _414 = mem[(6 * ceil32(return_data.size)) + 256]
            require ext_code.size(wftmAddress)
            staticcall wftmAddress.decimals() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _417 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _418 = mem[_417]
            require mem[_417] == mem[_417 + 31 len 1]
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
            _425 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _426 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_426] = mem[_425]
            mem[_426 + 32] = mem[_425 + 32]
            mem[_426 + 64] = mem[_425 + 64]
            if not uint8(_418):
                if _414 and mem[_426] > -1 / _414:
                    revert with 0, 17
                mem[mem[64]] = _414 * mem[_426]
            else:
                if bool(bool(uint8(_418) < 78)) or bool(bool(uint8(_418) < 32)):
                    if _414 and mem[_426] > -1 / _414:
                        revert with 0, 17
                    if not 10^uint8(_418):
                        revert with 0, 18
                    mem[mem[64]] = _414 * mem[_426] / 10^uint8(_418)
                else:
                    s = 10
                    t = 1
                    idx = uint8(_418)
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
                    if _414 and mem[_426] > -1 / _414:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    mem[mem[64]] = _414 * mem[_426] / s * t
    return mem[mem[64]], 18
}

function getPriceInUSD(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'need to token address '
    mem[96] = 2
    mem[128] = arg1
    mem[160] = wftmAddress
    require ext_code.size(sub_9478e212Address)
    staticcall sub_9478e212Address.factory() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 228] = wftmAddress
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), wftmAddress
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        require ext_code.size(stor9)
        staticcall stor9.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not bool((4 * ceil32(return_data.size)) + 288 <= test266151307()):
            revert with 0, 65
        if False and ext_call.return_data[0] > 0:
            revert with 0, 17
        return 0, 18
    require ext_code.size(arg1)
    staticcall arg1.decimals() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = 1
        mem[(4 * ceil32(return_data.size)) + 228] = 64
        mem[(4 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 292
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
               args 1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            require ext_code.size(stor9)
            staticcall stor9.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not return_data.size:
                if not bool((6 * ceil32(return_data.size)) + 288 <= test266151307()):
                    revert with 0, 65
            else:
                if not bool((6 * ceil32(return_data.size)) + ceil32(return_data.size) + 289 <= test266151307()):
                    revert with 0, 65
            if False and ext_call.return_data[0] > 0:
                revert with 0, 17
            return 0, 18
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _187 = mem[(4 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _190 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = _190
        require return_data.size >= _187 + (32 * _190) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _190] = mem[(4 * ceil32(return_data.size)) + _187 + 224 len 32 * _190]
        if 1 >= _190:
            revert with 0, 50
        _334 = mem[(6 * ceil32(return_data.size)) + 256]
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.decimals() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _340 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _343 = mem[_340]
        require mem[_340] == mem[_340 + 31 len 1]
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
        _371 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _374 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 96
        mem[_374] = mem[_371]
        mem[_374 + 32] = mem[_371 + 32]
        mem[_374 + 64] = mem[_371 + 64]
        if not uint8(_343):
            if _334 and mem[_374] > -1 / _334:
                revert with 0, 17
            mem[mem[64]] = _334 * mem[_374]
        else:
            if bool(bool(uint8(_343) < 78)) or bool(bool(uint8(_343) < 32)):
                if _334 and mem[_374] > -1 / _334:
                    revert with 0, 17
                if not 10^uint8(_343):
                    revert with 0, 18
                mem[mem[64]] = _334 * mem[_374] / 10^uint8(_343)
            else:
                s = 10
                t = 1
                idx = uint8(_343)
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
                if _334 and mem[_374] > -1 / _334:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                mem[mem[64]] = _334 * mem[_374] / s * t
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 0, 17
            mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = 10^uint8(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 228] = 64
            mem[(4 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 292
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
                   args 10^uint8(ext_call.return_data[0]), Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                require ext_code.size(stor9)
                staticcall stor9.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not return_data.size:
                    if not bool((6 * ceil32(return_data.size)) + 288 <= test266151307()):
                        revert with 0, 65
                else:
                    if not bool((6 * ceil32(return_data.size)) + ceil32(return_data.size) + 289 <= test266151307()):
                        revert with 0, 65
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                return 0, 18
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _185 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
            _189 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32 + 192]) + 193
            mem[(6 * ceil32(return_data.size)) + 192] = _189
            require return_data.size >= _185 + (32 * _189) + 32
            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _189] = mem[(4 * ceil32(return_data.size)) + _185 + 224 len 32 * _189]
            if 1 >= _189:
                revert with 0, 50
            _331 = mem[(6 * ceil32(return_data.size)) + 256]
            require ext_code.size(wftmAddress)
            staticcall wftmAddress.decimals() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _339 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _342 = mem[_339]
            require mem[_339] == mem[_339 + 31 len 1]
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
            _370 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _373 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_373] = mem[_370]
            mem[_373 + 32] = mem[_370 + 32]
            mem[_373 + 64] = mem[_370 + 64]
            if not uint8(_342):
                if _331 and mem[_373] > -1 / _331:
                    revert with 0, 17
                mem[mem[64]] = _331 * mem[_373]
            else:
                if bool(bool(uint8(_342) < 78)) or bool(bool(uint8(_342) < 32)):
                    if _331 and mem[_373] > -1 / _331:
                        revert with 0, 17
                    if not 10^uint8(_342):
                        revert with 0, 18
                    mem[mem[64]] = _331 * mem[_373] / 10^uint8(_342)
                else:
                    s = 10
                    t = 1
                    idx = uint8(_342)
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
                    if _331 and mem[_373] > -1 / _331:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    mem[mem[64]] = _331 * mem[_373] / s * t
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
            mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = s * t
            mem[(4 * ceil32(return_data.size)) + 228] = 64
            mem[(4 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            u = (4 * ceil32(return_data.size)) + 292
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
                   args s * t, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                require ext_code.size(stor9)
                staticcall stor9.getReferenceData(string arg1, string arg2) with:
                        gas gas_remaining wei
                       args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not return_data.size:
                    if not bool((6 * ceil32(return_data.size)) + 288 <= test266151307()):
                        revert with 0, 65
                else:
                    if not bool((6 * ceil32(return_data.size)) + ceil32(return_data.size) + 289 <= test266151307()):
                        revert with 0, 65
                if False and ext_call.return_data[0] > 0:
                    revert with 0, 17
                return 0, 18
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _338 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
            _341 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, s * t) >> 32 + 192]) + 193
            mem[(6 * ceil32(return_data.size)) + 192] = _341
            require return_data.size >= _338 + (32 * _341) + 32
            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _341] = mem[(4 * ceil32(return_data.size)) + _338 + 224 len 32 * _341]
            if 1 >= _341:
                revert with 0, 50
            _416 = mem[(6 * ceil32(return_data.size)) + 256]
            require ext_code.size(wftmAddress)
            staticcall wftmAddress.decimals() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _419 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _420 = mem[_419]
            require mem[_419] == mem[_419 + 31 len 1]
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
            _427 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _428 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + 96
            mem[_428] = mem[_427]
            mem[_428 + 32] = mem[_427 + 32]
            mem[_428 + 64] = mem[_427 + 64]
            if not uint8(_420):
                if _416 and mem[_428] > -1 / _416:
                    revert with 0, 17
                mem[mem[64]] = _416 * mem[_428]
            else:
                if bool(bool(uint8(_420) < 78)) or bool(bool(uint8(_420) < 32)):
                    if _416 and mem[_428] > -1 / _416:
                        revert with 0, 17
                    if not 10^uint8(_420):
                        revert with 0, 18
                    mem[mem[64]] = _416 * mem[_428] / 10^uint8(_420)
                else:
                    s = 10
                    t = 1
                    idx = uint8(_420)
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
                    if _416 and mem[_428] > -1 / _416:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    mem[mem[64]] = _416 * mem[_428] / s * t
    return mem[mem[64]], 18
}



}
