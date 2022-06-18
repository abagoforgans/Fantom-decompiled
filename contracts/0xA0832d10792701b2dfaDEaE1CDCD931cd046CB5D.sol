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
uint32 PERIOD; offset 160
address stor9;
mapping of struct pair;

function getPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return pair[arg1].field_0, 
           pair[arg1].field_256,
           pair[arg1].field_512,
           pair[arg1].field_768,
           pair[arg1].field_1024,
           bool(pair[arg1].field_1280)
}

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

function PERIOD() payable {
    return PERIOD
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

function setPeriod(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    PERIOD = arg1
}

function sub_93f1603f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9 = address(arg1)
}

function setRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9478e212Address = arg1
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

function sub_12eb1119(?) payable {
    require ext_code.size(stor9)
    staticcall stor9.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 64, 128, 3, 0, 0, 3, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 320 <= test266151307()):
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

function sub_3ea803e3(?) payable {
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

function sub_e01b32bf(?) payable {
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
    if not pair[ext_call.return_data[12 len 20]].field_1280:
        revert with 0, 'need to setup first'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == address(arg1):
        if pair[ext_call.return_data[12 len 20]].field_768 and 10^18 > -1 / pair[ext_call.return_data[12 len 20]].field_768:
            revert with 0, 17
        if 10^18 * pair[ext_call.return_data[12 len 20]].field_768 / 10^18 != pair[ext_call.return_data[12 len 20]].field_768:
            revert with 0, 'FixedPoint: MULTIPLICATION_OVERFLOW'
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        return Mask(32, 112, 10^18 * pair[ext_call.return_data[12 len 20]].field_768) << 112, uint8(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != address(arg2):
        revert with 0, 'TwapOracle: INVALID_TOKEN'
    if pair[ext_call.return_data[12 len 20]].field_1024 and 10^18 > -1 / pair[ext_call.return_data[12 len 20]].field_1024:
        revert with 0, 17
    if 10^18 * pair[ext_call.return_data[12 len 20]].field_1024 / 10^18 != pair[ext_call.return_data[12 len 20]].field_1024:
        revert with 0, 'FixedPoint: MULTIPLICATION_OVERFLOW'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return Mask(32, 112, 10^18 * pair[ext_call.return_data[12 len 20]].field_1024) << 112, uint8(ext_call.return_data[0])
}

function sub_f7f398a5(?) payable {
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
           args dollarAddress, wftmAddress
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
    if ext_call.return_data[12 len 20] != dollarAddress:
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.0x313ce567 with:
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
            require ext_code.size(dollarAddress)
            staticcall dollarAddress.0x313ce567 with:
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
            require ext_code.size(dollarAddress)
            staticcall dollarAddress.0x313ce567 with:
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
        require ext_code.size(dollarAddress)
        staticcall dollarAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        return Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]), uint8(ext_call.return_data[0])
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x313ce567 with:
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
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.0x313ce567 with:
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
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.0x313ce567 with:
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
    require ext_code.size(wftmAddress)
    staticcall wftmAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]), uint8(ext_call.return_data[0])
}

function sub_b1c0c6e8(?) payable {
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
           args sub_593a48c1Address, wftmAddress
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
    if ext_call.return_data[12 len 20] != sub_593a48c1Address:
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.0x313ce567 with:
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
            require ext_code.size(sub_593a48c1Address)
            staticcall sub_593a48c1Address.0x313ce567 with:
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
            require ext_code.size(sub_593a48c1Address)
            staticcall sub_593a48c1Address.0x313ce567 with:
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
        require ext_code.size(sub_593a48c1Address)
        staticcall sub_593a48c1Address.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        return Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]), uint8(ext_call.return_data[0])
    require ext_code.size(sub_593a48c1Address)
    staticcall sub_593a48c1Address.0x313ce567 with:
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
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.0x313ce567 with:
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
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.0x313ce567 with:
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
    require ext_code.size(wftmAddress)
    staticcall wftmAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]), uint8(ext_call.return_data[0])
}

function sub_edc808a3(?) payable {
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
           args sub_339d2e38Address, wftmAddress
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
    if ext_call.return_data[12 len 20] != sub_339d2e38Address:
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.0x313ce567 with:
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
            require ext_code.size(sub_339d2e38Address)
            staticcall sub_339d2e38Address.0x313ce567 with:
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
            require ext_code.size(sub_339d2e38Address)
            staticcall sub_339d2e38Address.0x313ce567 with:
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
        require ext_code.size(sub_339d2e38Address)
        staticcall sub_339d2e38Address.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        return Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]), uint8(ext_call.return_data[0])
    require ext_code.size(sub_339d2e38Address)
    staticcall sub_339d2e38Address.0x313ce567 with:
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
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.0x313ce567 with:
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
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.0x313ce567 with:
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
    require ext_code.size(wftmAddress)
    staticcall wftmAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]), uint8(ext_call.return_data[0])
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
        staticcall address(arg2).0x313ce567 with:
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
            staticcall address(arg1).0x313ce567 with:
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
            staticcall address(arg1).0x313ce567 with:
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
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        return Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]), uint8(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
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
        staticcall address(arg2).0x313ce567 with:
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
        staticcall address(arg2).0x313ce567 with:
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
    staticcall address(arg2).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]), uint8(ext_call.return_data[0])
}

function sub_80097fda(?) payable {
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
    if ext_call.return_data[12 len 20]:
        if not pair[ext_call.return_data[12 len 20]].field_1280:
            revert with 0, 'need to setup first'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).price0CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).price1CumulativeLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[92 len 4] == uint32(block.timestamp):
            if not pair[ext_call.return_data[12 len 20]].field_1280:
                pair[ext_call.return_data[12 len 20]].field_0 = ext_call.return_data[0]
                pair[ext_call.return_data[12 len 20]].field_256 = ext_call.return_data[0]
                pair[ext_call.return_data[12 len 20]].field_512 = uint32(block.timestamp)
                pair[ext_call.return_data[12 len 20]].field_1280 = 1
            else:
                if uint32(block.timestamp) < pair[ext_call.return_data[12 len 20]].field_512:
                    revert with 0, 17
                if uint32(uint32(block.timestamp) - pair[ext_call.return_data[12 len 20]].field_512) >= PERIOD:
                    if ext_call.return_data[0] < pair[ext_call.return_data[12 len 20]].field_0:
                        revert with 0, 17
                    if not uint32(uint32(block.timestamp) - pair[ext_call.return_data[12 len 20]].field_512):
                        revert with 0, 18
                    pair[ext_call.return_data[12 len 20]].field_768 = Mask(224, 0, ext_call.return_data[0] - pair[ext_call.return_data[12 len 20]].field_0 / uint32(uint32(block.timestamp) - pair[ext_call.return_data[12 len 20]].field_512))
                    if ext_call.return_data[0] < pair[ext_call.return_data[12 len 20]].field_256:
                        revert with 0, 17
                    if not uint32(uint32(block.timestamp) - pair[ext_call.return_data[12 len 20]].field_512):
                        revert with 0, 18
                    pair[ext_call.return_data[12 len 20]].field_1024 = Mask(224, 0, ext_call.return_data[0] - pair[ext_call.return_data[12 len 20]].field_256 / uint32(uint32(block.timestamp) - pair[ext_call.return_data[12 len 20]].field_512))
                    pair[ext_call.return_data[12 len 20]].field_0 = ext_call.return_data[0]
                    pair[ext_call.return_data[12 len 20]].field_256 = ext_call.return_data[0]
                    pair[ext_call.return_data[12 len 20]].field_512 = uint32(block.timestamp)
        else:
            if uint32(block.timestamp) < ext_call.return_data[92 len 4]:
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            if Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) and uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])) > -1 / Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 17
            if ext_call.return_data[0] > !(Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))):
                revert with 0, 17
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'FixedPoint: DIV_BY_ZERO'
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) and uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])) > -1 / Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 17
            if ext_call.return_data[0] > !(Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))):
                revert with 0, 17
            if not pair[ext_call.return_data[12 len 20]].field_1280:
                pair[ext_call.return_data[12 len 20]].field_0 = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])))
                pair[ext_call.return_data[12 len 20]].field_256 = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])))
                pair[ext_call.return_data[12 len 20]].field_512 = uint32(block.timestamp)
                pair[ext_call.return_data[12 len 20]].field_1280 = 1
            else:
                if uint32(block.timestamp) < pair[ext_call.return_data[12 len 20]].field_512:
                    revert with 0, 17
                if uint32(uint32(block.timestamp) - pair[ext_call.return_data[12 len 20]].field_512) >= PERIOD:
                    if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) < pair[ext_call.return_data[12 len 20]].field_0:
                        revert with 0, 17
                    if not uint32(uint32(block.timestamp) - pair[ext_call.return_data[12 len 20]].field_512):
                        revert with 0, 18
                    pair[ext_call.return_data[12 len 20]].field_768 = Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - pair[ext_call.return_data[12 len 20]].field_0 / uint32(uint32(block.timestamp) - pair[ext_call.return_data[12 len 20]].field_512))
                    if ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) < pair[ext_call.return_data[12 len 20]].field_256:
                        revert with 0, 17
                    if not uint32(uint32(block.timestamp) - pair[ext_call.return_data[12 len 20]].field_512):
                        revert with 0, 18
                    pair[ext_call.return_data[12 len 20]].field_1024 = Mask(224, 0, ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64]))) - pair[ext_call.return_data[12 len 20]].field_256 / uint32(uint32(block.timestamp) - pair[ext_call.return_data[12 len 20]].field_512))
                    pair[ext_call.return_data[12 len 20]].field_0 = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[32]) << 112 / Mask(112, 0, ext_call.return_data[0])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])))
                    pair[ext_call.return_data[12 len 20]].field_256 = ext_call.return_data[0] + (Mask(224, 0, Mask(112, 0, ext_call.return_data[0]) << 112 / Mask(112, 0, ext_call.return_data[32])) * uint32(uint32(block.timestamp) - uint32(ext_call.return_data[64])))
                    pair[ext_call.return_data[12 len 20]].field_512 = uint32(block.timestamp)
}

function sub_e61574b0(?) payable {
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
           args dollarAddress, wftmAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        require ext_code.size(stor9)
        staticcall stor9.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 0, 0, 3, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not bool((4 * ceil32(return_data.size)) + 416 <= test266151307()):
            revert with 0, 65
        if False and ext_call.return_data[0] > 0:
            revert with 0, 17
        return 0, 18
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
    if ext_call.return_data[12 len 20] != dollarAddress:
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.0x313ce567 with:
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
            require ext_code.size(dollarAddress)
            staticcall dollarAddress.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(stor9)
            staticcall stor9.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 3, 0, 0, 3, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not bool((10 * ceil32(return_data.size)) + 416 <= test266151307()):
                revert with 0, 65
            if not uint8(ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                return Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0], 18
            if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
                if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                return Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]), 
                       18
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0])
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
            if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / s * t, 18
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            require ext_code.size(dollarAddress)
            staticcall dollarAddress.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(stor9)
            staticcall stor9.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 3, 0, 0, 3, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not bool((10 * ceil32(return_data.size)) + 416 <= test266151307()):
                revert with 0, 65
            if not uint8(ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                return Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0], 
                       18
            if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                return Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]), 
                       18
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0])
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
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / s * t, 
                   18
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
        require ext_code.size(dollarAddress)
        staticcall dollarAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(stor9)
        staticcall stor9.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 0, 0, 3, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not bool((10 * ceil32(return_data.size)) + 416 <= test266151307()):
            revert with 0, 65
        if not uint8(ext_call.return_data[0]):
            if Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            return Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0], 18
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]), 
                   18
        u = 10
        v = 1
        idx = uint8(ext_call.return_data[0])
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not u * v:
            revert with 0, 18
        return Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / u * v, 
               18
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x313ce567 with:
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
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(stor9)
        staticcall stor9.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 0, 0, 3, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not bool((10 * ceil32(return_data.size)) + 416 <= test266151307()):
            revert with 0, 65
        if not uint8(ext_call.return_data[0]):
            if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            return Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0], 18
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]), 
                   18
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[0])
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
        if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        return Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / s * t, 18
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 18
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(stor9)
        staticcall stor9.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 0, 0, 3, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not bool((10 * ceil32(return_data.size)) + 416 <= test266151307()):
            revert with 0, 65
        if not uint8(ext_call.return_data[0]):
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            return Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0], 
                   18
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]), 
                   18
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[0])
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
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        return Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / s * t, 
               18
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
    require ext_code.size(wftmAddress)
    staticcall wftmAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(stor9)
    staticcall stor9.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 64, 128, 3, 0, 0, 3, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool((10 * ceil32(return_data.size)) + 416 <= test266151307()):
        revert with 0, 65
    if not uint8(ext_call.return_data[0]):
        if Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        return Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0], 18
    if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
        if Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 18
        return Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]), 
               18
    u = 10
    v = 1
    idx = uint8(ext_call.return_data[0])
    while idx > 1:
        if u > -1 / u:
            revert with 0, 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    if not u * v:
        revert with 0, 18
    return Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / u * v, 
           18
}

function sub_43be1230(?) payable {
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
           args sub_593a48c1Address, wftmAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        require ext_code.size(stor9)
        staticcall stor9.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 0, 0, 3, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not bool((4 * ceil32(return_data.size)) + 416 <= test266151307()):
            revert with 0, 65
        if False and ext_call.return_data[0] > 0:
            revert with 0, 17
        return 0, 18
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
    if ext_call.return_data[12 len 20] != sub_593a48c1Address:
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.0x313ce567 with:
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
            require ext_code.size(sub_593a48c1Address)
            staticcall sub_593a48c1Address.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(stor9)
            staticcall stor9.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 3, 0, 0, 3, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not bool((10 * ceil32(return_data.size)) + 416 <= test266151307()):
                revert with 0, 65
            if not uint8(ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                return Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0], 18
            if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
                if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                return Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]), 
                       18
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0])
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
            if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / s * t, 18
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            require ext_code.size(sub_593a48c1Address)
            staticcall sub_593a48c1Address.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(stor9)
            staticcall stor9.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 3, 0, 0, 3, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not bool((10 * ceil32(return_data.size)) + 416 <= test266151307()):
                revert with 0, 65
            if not uint8(ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                return Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0], 
                       18
            if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                return Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]), 
                       18
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0])
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
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / s * t, 
                   18
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
        require ext_code.size(sub_593a48c1Address)
        staticcall sub_593a48c1Address.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(stor9)
        staticcall stor9.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 0, 0, 3, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not bool((10 * ceil32(return_data.size)) + 416 <= test266151307()):
            revert with 0, 65
        if not uint8(ext_call.return_data[0]):
            if Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            return Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0], 18
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]), 
                   18
        u = 10
        v = 1
        idx = uint8(ext_call.return_data[0])
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not u * v:
            revert with 0, 18
        return Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / u * v, 
               18
    require ext_code.size(sub_593a48c1Address)
    staticcall sub_593a48c1Address.0x313ce567 with:
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
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(stor9)
        staticcall stor9.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 0, 0, 3, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not bool((10 * ceil32(return_data.size)) + 416 <= test266151307()):
            revert with 0, 65
        if not uint8(ext_call.return_data[0]):
            if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            return Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0], 18
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]), 
                   18
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[0])
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
        if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        return Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / s * t, 18
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 18
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(stor9)
        staticcall stor9.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 0, 0, 3, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not bool((10 * ceil32(return_data.size)) + 416 <= test266151307()):
            revert with 0, 65
        if not uint8(ext_call.return_data[0]):
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            return Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0], 
                   18
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]), 
                   18
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[0])
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
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        return Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / s * t, 
               18
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
    require ext_code.size(wftmAddress)
    staticcall wftmAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(stor9)
    staticcall stor9.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 64, 128, 3, 0, 0, 3, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool((10 * ceil32(return_data.size)) + 416 <= test266151307()):
        revert with 0, 65
    if not uint8(ext_call.return_data[0]):
        if Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        return Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0], 18
    if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
        if Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 18
        return Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]), 
               18
    u = 10
    v = 1
    idx = uint8(ext_call.return_data[0])
    while idx > 1:
        if u > -1 / u:
            revert with 0, 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    if not u * v:
        revert with 0, 18
    return Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / u * v, 
           18
}

function sub_ac5c4b11(?) payable {
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
           args sub_339d2e38Address, wftmAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        require ext_code.size(stor9)
        staticcall stor9.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 0, 0, 3, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not bool((4 * ceil32(return_data.size)) + 416 <= test266151307()):
            revert with 0, 65
        if False and ext_call.return_data[0] > 0:
            revert with 0, 17
        return 0, 18
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
    if ext_call.return_data[12 len 20] != sub_339d2e38Address:
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.0x313ce567 with:
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
            require ext_code.size(sub_339d2e38Address)
            staticcall sub_339d2e38Address.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(stor9)
            staticcall stor9.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 3, 0, 0, 3, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not bool((10 * ceil32(return_data.size)) + 416 <= test266151307()):
                revert with 0, 65
            if not uint8(ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                return Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0], 18
            if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
                if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                return Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]), 
                       18
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0])
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
            if Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / s * t, 18
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            require ext_code.size(sub_339d2e38Address)
            staticcall sub_339d2e38Address.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(stor9)
            staticcall stor9.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 3, 0, 0, 3, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not bool((10 * ceil32(return_data.size)) + 416 <= test266151307()):
                revert with 0, 65
            if not uint8(ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                return Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0], 
                       18
            if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                return Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]), 
                       18
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0])
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
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return Mask(112, 0, ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / s * t, 
                   18
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
        require ext_code.size(sub_339d2e38Address)
        staticcall sub_339d2e38Address.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(stor9)
        staticcall stor9.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 0, 0, 3, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not bool((10 * ceil32(return_data.size)) + 416 <= test266151307()):
            revert with 0, 65
        if not uint8(ext_call.return_data[0]):
            if Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            return Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0], 18
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]), 
                   18
        u = 10
        v = 1
        idx = uint8(ext_call.return_data[0])
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not u * v:
            revert with 0, 18
        return Mask(112, 0, ext_call.return_data[0]) * s * t / Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / u * v, 
               18
    require ext_code.size(sub_339d2e38Address)
    staticcall sub_339d2e38Address.0x313ce567 with:
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
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(stor9)
        staticcall stor9.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 0, 0, 3, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not bool((10 * ceil32(return_data.size)) + 416 <= test266151307()):
            revert with 0, 65
        if not uint8(ext_call.return_data[0]):
            if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            return Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0], 18
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]), 
                   18
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[0])
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
        if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        return Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / s * t, 18
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 18
        require ext_code.size(wftmAddress)
        staticcall wftmAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(stor9)
        staticcall stor9.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 0, 0, 3, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not bool((10 * ceil32(return_data.size)) + 416 <= test266151307()):
            revert with 0, 65
        if not uint8(ext_call.return_data[0]):
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            return Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0], 
                   18
        if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]), 
                   18
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[0])
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
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        return Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / s * t, 
               18
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
    require ext_code.size(wftmAddress)
    staticcall wftmAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(stor9)
    staticcall stor9.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 64, 128, 3, 0, 0, 3, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool((10 * ceil32(return_data.size)) + 416 <= test266151307()):
        revert with 0, 65
    if not uint8(ext_call.return_data[0]):
        if Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        return Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0], 18
    if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
        if Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 18
        return Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]), 
               18
    u = 10
    v = 1
    idx = uint8(ext_call.return_data[0])
    while idx > 1:
        if u > -1 / u:
            revert with 0, 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[0] > -1 / Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    if not u * v:
        revert with 0, 18
    return Mask(112, 0, ext_call.return_data[32]) * s * t / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / u * v, 
           18
}



}
