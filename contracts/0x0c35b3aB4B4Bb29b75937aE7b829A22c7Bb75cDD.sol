contract main {




// =====================  Runtime code  =====================


address owner;
address sub_9478e212Address;
address sub_208b0a18Address;
address sub_2074215dAddress;
address sub_f87c3c7aAddress;
address sub_7edd3da5Address;
address usdcAddress;
address daiAddress;
address stor8;

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
    stor8 = address(arg1)
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

function getETHUSD() payable {
    require ext_code.size(stor8)
    staticcall stor8.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 64, 128, 3, 0, 0, 3, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 320 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0]
}

function getBNBUSD() payable {
    require ext_code.size(stor8)
    staticcall stor8.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 64, 128, 3, 0, 0, 3, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 320 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0]
}

function sub_0402f21c(?) payable {
    require ext_code.size(stor8)
    staticcall stor8.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 4, 0x5553444300000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0]
}

function sub_06abf1c6(?) payable {
    require ext_code.size(stor8)
    staticcall stor8.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x4a50590000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0]
}

function sub_12eb1119(?) payable {
    require ext_code.size(stor8)
    staticcall stor8.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0]
}

function sub_2dd67f24(?) payable {
    require ext_code.size(stor8)
    staticcall stor8.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x4441490000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0]
}

function sub_45dd2734(?) payable {
    require ext_code.size(stor8)
    staticcall stor8.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 4, 0x5553444300000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0]
}

function sub_7ce7723d(?) payable {
    require ext_code.size(stor8)
    staticcall stor8.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x5553440000000000000000000000000000000000000000000000000000000000, 3, 0x4a50590000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0]
}

function sub_97c5c451(?) payable {
    require ext_code.size(stor8)
    staticcall stor8.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 4, 0x5553444300000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0]
}

function sub_aa09d9bf(?) payable {
    require ext_code.size(stor8)
    staticcall stor8.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 4, 0x5553444300000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0]
}

function sub_e8ea721a(?) payable {
    require ext_code.size(stor8)
    staticcall stor8.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x4254430000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0]
}

function sub_1b35a4a6(?) payable {
    mem[96] = 2
    mem[128] = sub_2074215dAddress
    mem[160] = daiAddress
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = 10^18
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 292
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
           args 10^18, 64, 2, mem[292 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _20 = mem[192 len 4], 232830643
    require mem[192 len 4], 232830643 <= test266151307()
    require mem[192 len 4], 232830643 + 223 < return_data.size + 192
    _21 = mem[mem[192 len 4], 232830643 + 192]
    if mem[mem[192 len 4], 232830643 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[192 len 4], 232830643 + 192]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], 232830643 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], 232830643 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830643 + 192]
    require return_data.size >= _20 + (32 * _21) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _21] = mem[_20 + 224 len 32 * _21]
    if 1 >= _21:
        revert with 0, 50
    mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_23db4bbc(?) payable {
    mem[96] = 2
    mem[128] = sub_2074215dAddress
    mem[160] = usdcAddress
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = 10^18
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 292
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
           args 10^18, 64, 2, mem[292 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _20 = mem[192 len 4], 232830643
    require mem[192 len 4], 232830643 <= test266151307()
    require mem[192 len 4], 232830643 + 223 < return_data.size + 192
    _21 = mem[mem[192 len 4], 232830643 + 192]
    if mem[mem[192 len 4], 232830643 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[192 len 4], 232830643 + 192]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], 232830643 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], 232830643 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830643 + 192]
    require return_data.size >= _20 + (32 * _21) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _21] = mem[_20 + 224 len 32 * _21]
    if 1 >= _21:
        revert with 0, 50
    mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_b1c0c6e8(?) payable {
    mem[96] = 2
    mem[128] = sub_208b0a18Address
    mem[160] = sub_7edd3da5Address
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = 10^18
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 292
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
           args 10^18, 64, 2, mem[292 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _20 = mem[192 len 4], 232830643
    require mem[192 len 4], 232830643 <= test266151307()
    require mem[192 len 4], 232830643 + 223 < return_data.size + 192
    _21 = mem[mem[192 len 4], 232830643 + 192]
    if mem[mem[192 len 4], 232830643 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[192 len 4], 232830643 + 192]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], 232830643 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], 232830643 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830643 + 192]
    require return_data.size >= _20 + (32 * _21) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _21] = mem[_20 + 224 len 32 * _21]
    if 1 >= _21:
        revert with 0, 50
    mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_edc808a3(?) payable {
    mem[96] = 2
    mem[128] = sub_f87c3c7aAddress
    mem[160] = sub_7edd3da5Address
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = 10^18
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 292
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
           args 10^18, 64, 2, mem[292 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _20 = mem[192 len 4], 232830643
    require mem[192 len 4], 232830643 <= test266151307()
    require mem[192 len 4], 232830643 + 223 < return_data.size + 192
    _21 = mem[mem[192 len 4], 232830643 + 192]
    if mem[mem[192 len 4], 232830643 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[192 len 4], 232830643 + 192]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], 232830643 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], 232830643 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830643 + 192]
    require return_data.size >= _20 + (32 * _21) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _21] = mem[_20 + 224 len 32 * _21]
    if 1 >= _21:
        revert with 0, 50
    mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
}

function getRate(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 2
    mem[128] = arg1
    mem[160] = arg2
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = 10^18
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 292
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
           args 10^18, 64, 2, mem[292 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _20 = mem[192 len 4], 232830643
    require mem[192 len 4], 232830643 <= test266151307()
    require mem[192 len 4], 232830643 + 223 < return_data.size + 192
    _21 = mem[mem[192 len 4], 232830643 + 192]
    if mem[mem[192 len 4], 232830643 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[192 len 4], 232830643 + 192]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], 232830643 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], 232830643 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830643 + 192]
    require return_data.size >= _20 + (32 * _21) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _21] = mem[_20 + 224 len 32 * _21]
    if 1 >= _21:
        revert with 0, 50
    mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
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
        require ext_code.size(stor8)
        staticcall stor8.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 27) + 256, 64) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 27) + 256) << (8 * ceil32(arg2.length)) - 256), ceil32(arg1.length) + 96
    else:
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 198] = arg2.length
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 230 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 27) + 256, 64) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 27) + 256
        if ceil32(arg2.length) > arg2.length:
            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg2.length + 230] = 0
        require ext_code.size(stor8)
        staticcall stor8.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg1.length + 230 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)]), ceil32(arg1.length) + 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 194 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0]
}

function sub_e61574b0(?) payable {
    mem[164] = 4
    mem[196] = 0x5553444300000000000000000000000000000000000000000000000000000000
    mem[228] = 3
    mem[260] = 0x5553440000000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor8)
    staticcall stor8.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 4, 0x5553444300000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
    mem[96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[32]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[64]
    mem[ceil32(return_data.size) + 192] = 2
    mem[ceil32(return_data.size) + 224] = sub_2074215dAddress
    mem[ceil32(return_data.size) + 256] = usdcAddress
    mem[ceil32(return_data.size) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 292] = 10^18
    mem[ceil32(return_data.size) + 324] = 64
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 388
    t = ceil32(return_data.size) + 224
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_9478e212Address)
    staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 10^18, 64, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _28 = mem[ceil32(return_data.size) + 288 len 4], 232830643
    require mem[ceil32(return_data.size) + 288 len 4], 232830643 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 232830643 + 319 < ceil32(return_data.size) + return_data.size + 288
    _29 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 232830643 + 288]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 232830643 + 288] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 232830643 + 288]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 232830643 + 288]) + 289 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 232830643 + 288]) + 289
    mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 232830643 + 288]
    require return_data.size >= _28 + (32 * _29) + 32
    mem[(2 * ceil32(return_data.size)) + 320 len 32 * _29] = mem[ceil32(return_data.size) + _28 + 320 len 32 * _29]
    if 1 >= _29:
        revert with 0, 50
    if mem[(2 * ceil32(return_data.size)) + 352] and ext_call.return_data[0] > -1 / mem[(2 * ceil32(return_data.size)) + 352]:
        revert with 0, 17
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 352] * ext_call.return_data[0] / 10^12
    return memory
      from mem[64]
       len 32
}

function sub_43be1230(?) payable {
    mem[164] = 3
    mem[196] = 0x46544d0000000000000000000000000000000000000000000000000000000000
    mem[228] = 3
    mem[260] = 0x5553440000000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor8)
    staticcall stor8.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
    mem[96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[32]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[64]
    mem[ceil32(return_data.size) + 192] = 2
    mem[ceil32(return_data.size) + 224] = sub_208b0a18Address
    mem[ceil32(return_data.size) + 256] = sub_7edd3da5Address
    mem[ceil32(return_data.size) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 292] = 10^18
    mem[ceil32(return_data.size) + 324] = 64
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 388
    t = ceil32(return_data.size) + 224
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_9478e212Address)
    staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 10^18, 64, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _28 = mem[ceil32(return_data.size) + 288 len 4], 232830643
    require mem[ceil32(return_data.size) + 288 len 4], 232830643 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 232830643 + 319 < ceil32(return_data.size) + return_data.size + 288
    _29 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 232830643 + 288]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 232830643 + 288] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 232830643 + 288]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 232830643 + 288]) + 289 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 232830643 + 288]) + 289
    mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 232830643 + 288]
    require return_data.size >= _28 + (32 * _29) + 32
    mem[(2 * ceil32(return_data.size)) + 320 len 32 * _29] = mem[ceil32(return_data.size) + _28 + 320 len 32 * _29]
    if 1 >= _29:
        revert with 0, 50
    if mem[(2 * ceil32(return_data.size)) + 352] and ext_call.return_data[0] > -1 / mem[(2 * ceil32(return_data.size)) + 352]:
        revert with 0, 17
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 352] * ext_call.return_data[0] / 10^18
    return memory
      from mem[64]
       len 32
}

function sub_ac5c4b11(?) payable {
    mem[164] = 3
    mem[196] = 0x46544d0000000000000000000000000000000000000000000000000000000000
    mem[228] = 3
    mem[260] = 0x5553440000000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor8)
    staticcall stor8.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
    mem[96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[32]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[64]
    mem[ceil32(return_data.size) + 192] = 2
    mem[ceil32(return_data.size) + 224] = sub_f87c3c7aAddress
    mem[ceil32(return_data.size) + 256] = sub_7edd3da5Address
    mem[ceil32(return_data.size) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 292] = 10^18
    mem[ceil32(return_data.size) + 324] = 64
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 388
    t = ceil32(return_data.size) + 224
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_9478e212Address)
    staticcall sub_9478e212Address.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 10^18, 64, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _28 = mem[ceil32(return_data.size) + 288 len 4], 232830643
    require mem[ceil32(return_data.size) + 288 len 4], 232830643 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 232830643 + 319 < ceil32(return_data.size) + return_data.size + 288
    _29 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 232830643 + 288]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 232830643 + 288] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 232830643 + 288]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 232830643 + 288]) + 289 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 232830643 + 288]) + 289
    mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], 232830643 + 288]
    require return_data.size >= _28 + (32 * _29) + 32
    mem[(2 * ceil32(return_data.size)) + 320 len 32 * _29] = mem[ceil32(return_data.size) + _28 + 320 len 32 * _29]
    if 1 >= _29:
        revert with 0, 50
    if mem[(2 * ceil32(return_data.size)) + 352] and ext_call.return_data[0] > -1 / mem[(2 * ceil32(return_data.size)) + 352]:
        revert with 0, 17
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 352] * ext_call.return_data[0] / 10^18
    return memory
      from mem[64]
       len 32
}



}
