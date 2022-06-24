contract main {




// =====================  Runtime code  =====================


#
#  - sub_8a60c4c1(?)
#
function getNumPlayers() payable {
    return ('storage', 256, 0, 278)
}

function owner() payable {
    return ('storage', 160, 0, 201)
}

function banance() payable {
    return ('storage', 256, 0, 254)
}

function sunrise() payable {
    return ('storage', 256, 0, 253)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if ('storage', 160, 0, 201) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor[201].field_0) = 0
    emit OwnershipTransferred(('storage', 160, 0, 201), 0);
}

function sub_e44a3169(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    if ('storage', 160, 0, 201) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor[sha3(address(arg1), 268)].field_160) = uint8(arg2)
}

function setContracts(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if ('storage', 160, 0, 201) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor[252].field_0) = arg1
    address(stor[251].field_0) = arg2
}

function levelUp() payable {
    require ext_code.size(0x5739148c75fff6bfa079b87468bd4a2c2bd47c9d)
    delegate 0x5739148c75fff6bfa079b87468bd4a2c2bd47c9d.0x4c64c940 with:
         gas gas_remaining wei
        args sha3(msg.sender, 268), 251
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x4e2312e000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function claimRandomEvent() payable {
    require ext_code.size(0x4fa92a58744229aa550256c9d949f482e5159a54)
    delegate 0x4fa92a58744229aa550256c9d949f482e5159a54.0x9d88fef5 with:
         gas gas_remaining wei
        args sha3(msg.sender, 268), 251
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimGovernanceToken() payable {
    require ext_code.size(0x3dd72d024795a505e92507fc7329b8a2d070bb32)
    delegate 0x3dd72d024795a505e92507fc7329b8a2d070bb32.0xb757a3bc with:
         gas gas_remaining wei
        args sha3(msg.sender, 268), 251
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function getCoins() payable {
    require ext_code.size(0x31f3cb2245c981f83000c07091f31054c4c1b307)
    delegate 0x31f3cb2245c981f83000c07091f31054c4c1b307.'^>AX' with:
         gas gas_remaining wei
        args sha3(msg.sender, 268)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function buy(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x9190ce284b10d4f230fcad0d56ec39507925ec0b)
    delegate 0x9190ce284b10d4f230fcad0d56ec39507925ec0b.0xe72d8223 with:
         gas gas_remaining wei
        args sha3(msg.sender, 268), 251, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sell(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x240957f2139850d4b56cd8aa235ceb5d8a3791e3)
    delegate 0x240957f2139850d4b56cd8aa235ceb5d8a3791e3.0xb816f69 with:
         gas gas_remaining wei
        args sha3(msg.sender, 268), 251, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function pullRug(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x9ac3f1d3271c64dfdce7d269c545adc1acecdde9)
    delegate 0x9ac3f1d3271c64dfdce7d269c545adc1acecdde9.0xca84e26d with:
         gas gas_remaining wei
        args sha3(msg.sender, 268), 251, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyUpgrade(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x4c197fc65aa701f07c2758c7e75f2e0ecf226175)
    delegate 0x4c197fc65aa701f07c2758c7e75f2e0ecf226175.0xeead6862 with:
         gas gas_remaining wei
        args sha3(msg.sender, 268), 251, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimAchievement(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x8745f8ac1be9a64b0e74ae7e8a53377b1d834a5d)
    delegate 0x8745f8ac1be9a64b0e74ae7e8a53377b1d834a5d.0x75501060 with:
         gas gas_remaining wei
        args sha3(msg.sender, 268), 251, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function createGame() payable {
    require ext_code.size(0x742921a3b12d05e09f79c972b481a20c319f811)
    delegate 0x742921a3b12d05e09f79c972b481a20c319f811.0xf40a4a3f with:
         gas gas_remaining wei
        args 251, ('storage', 256, 0, 277)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    if block.number < 1:
        revert with 0, 17
    uint256(stor[277].field_0) = block.hash(block.number - 1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ('storage', 160, 0, 201) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(stor[201].field_0) = arg1
    emit OwnershipTransferred(('storage', 160, 0, 201), arg1);
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(arg5.length) + 128 < 96 or ceil32(arg5.length) + 128 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg5.length) + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
}

function getPlayers() payable {
    mem[64] = (32 * ('storage', 256, 0, 255)) + 128
    mem[96] = ('storage', 256, 0, 255)
    if not ('storage', 256, 0, 255):
        mem[(32 * ('storage', 256, 0, 255)) + 128] = 32
        mem[(32 * ('storage', 256, 0, 255)) + 160] = ('storage', 256, 0, 255)
        idx = 0
        s = 128
        t = (32 * ('storage', 256, 0, 255)) + 192
        while idx < ('storage', 256, 0, 255):
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * ('storage', 256, 0, 255)) + 128
           len (96 * ('storage', 256, 0, 255)) + 64
    mem[128] = ('storage', 160, 0, ('sha3', 255))
    idx = 128
    s = 0
    while (32 * ('storage', 256, 0, 255)) + 96 > idx:
        mem[idx + 32] = ('storage', 160, 0, ('add', 1, ('var', 1), ('sha3', 255)))
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * ('storage', 256, 0, 255)) + 128] = 32
    mem[(32 * ('storage', 256, 0, 255)) + 160] = ('storage', 256, 0, 255)
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < ('storage', 256, 0, 255):
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * ('storage', 256, 0, 255)) + -mem[64] + 192
}

function initialize() payable {
    if ('storage', 8, 8, 0):
        address(stor[201].field_0) = msg.sender
        emit OwnershipTransferred(('storage', 160, 0, 201), msg.sender);
    else:
        if ('storage', 8, 0, 0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if ('storage', 8, 8, 0):
            address(stor[201].field_0) = msg.sender
            emit OwnershipTransferred(('storage', 160, 0, 201), msg.sender);
        else:
            uint8(stor[0].field_0) = 1
            uint8(stor[0].field_8) = 1
            Mask(248, 0, stor[0].field_8) = 0
            if ('storage', 8, 0, 0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if ('storage', 8, 8, 0):
                address(stor[201].field_0) = msg.sender
                emit OwnershipTransferred(('storage', 160, 0, 201), msg.sender);
            else:
                uint8(stor[0].field_0) = 1
                uint8(stor[0].field_8) = 1
                Mask(248, 0, stor[0].field_8) = 0
                address(stor[201].field_0) = msg.sender
                emit OwnershipTransferred(('storage', 160, 0, 201), msg.sender);
                uint8(stor[0].field_8) = 0
    uint256(stor[253].field_0) = block.number
    if block.number < 1:
        revert with 0, 17
    uint256(stor[277].field_0) = block.hash(block.number - 1)
    if not ('storage', 8, 8, 0):
        uint8(stor[0].field_8) = 0
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if (32 * arg3.length) + 128 < 96 or (32 * arg3.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if (32 * arg4.length) + 160 < 128 or (32 * arg3.length) + (32 * arg4.length) + 160 > test266151307():
        revert with 0, 65
    require calldata.size >= arg4 + (32 * arg4.length) + 36
    idx = 0
    s = arg4 + 36
    t = (32 * arg3.length) + 160
    while idx < arg4.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(arg5.length) + 192 < 160 or (32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function getGame(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[11872] = ('signextend', 3, ('signextend', 3, ('div', ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 268)))), ('exp', 256, 0))))
    idx = 11872
    s = 0
    while 12576 > idx + 32:
        mem[idx + 32] = ('signextend', 3, ('signextend', 3, ('div', ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 268)))), ('exp', 256, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32)))), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32), ('var', 1)))))))
        idx = idx + 32
        s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        continue 
    mem[12576] = ('storage', 32, 0, ('add', 7, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 268))))
    idx = 12576
    s = 0
    while 13280 > idx + 32:
        mem[idx + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32)))), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32), ('var', 1)))), ('add', 7, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 268))))
        idx = idx + 32
        s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        continue 
    mem[13280] = ('storage', 256, 0, ('add', 10, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 268))))
    idx = 13280
    s = 10
    while 13984 > idx + 32:
        mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 1), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 268))))
        idx = idx + 32
        s = s + 1
        continue 
    mem[13984] = ('storage', 32, 0, ('add', 32, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 268))))
    idx = 13984
    s = 0
    while 22176 > idx + 32:
        mem[idx + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32)))), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32), ('var', 1)))), ('add', 32, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 268))))
        idx = idx + 32
        s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        continue 
    mem[22176] = ('storage', 256, 0, ('add', 65, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 268))))
    idx = 22176
    s = 65
    while 22880 > idx + 32:
        mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 1), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 268))))
        idx = idx + 32
        s = s + 1
        continue 
    idx = 0
    s = 11872
    t = 23072
    while idx < 22:
        mem[t] = ('signextend', 3, ('mem', ('range', ('var', 1), 32)))
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 12576
    t = 23776
    while idx < 22:
        mem[t] = mem[s + 28 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 13984
    t = 25184
    while idx < 256:
        mem[t] = mem[s + 28 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return ('storage', 160, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 268))), 
           ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 268))),
           ('storage', 64, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 268))),
           ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 268)))),
           ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 268)))),
           ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 268)))),
           mem[23072 len 1408],
           ('storage', 256, 0, ('add', 10, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 268)))),
           mem[13312 len 672],
           mem[25184 len 8192],
           ('storage', 256, 0, ('add', 64, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 268)))),
           ('storage', 256, 0, ('add', 65, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 268)))),
           mem[22208 len 672]
}

function sub_b33b8361(?) payable {
    require calldata.size - 4 >= 11264
    require cd[4] == address(cd[4])
    require calldata.size - 36 >= 11232
    if ('storage', 160, 0, 201) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor[255].field_0) = ('storage', 256, 0, 255) + 1
    address(stor[('storage', 256, 0, 255) - 0x1f713d50d303daedda1e69702935de1bfbb0ed640056a453cafc417424cf5c99].field_0) = address(cd[4])
    if ('storage', 256, 0, 278) == -1:
        revert with 0, 17
    uint256(stor[278].field_0) = ('storage', 256, 0, 278) + 1
    require cd[36] == address(cd[36])
    address(stor[sha3(address(cd[4]), 268)].field_0) = address(cd[36])
    require cd[68] == uint8(cd[68])
    uint8(stor[sha3(address(cd[4]), 268)].field_160) = uint8(cd[68])
    require cd[100] == uint64(cd[100])
    uint64(stor[sha3(address(cd[4]), 268)].field_168) = uint64(cd[100])
    uint256(stor[sha3(address(cd[4]), 268) + 1].field_0) = cd[132]
    uint256(stor[sha3(address(cd[4]), 268) + 2].field_0) = cd[164]
    uint256(stor[sha3(address(cd[4]), 268) + 3].field_0) = cd[196]
    idx = 0
    s = 0
    t = 228
    while idx < 22:
        require cd[t] == ('signextend', 3, ('cd', ('var', 2)))
        uint256(stor[sha3(address(cd[4]), 268) + 4].field_0) = !(test266151307() << 8 * s) and ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('cd', 4)), 268)))) or test266151307() << 8 * s and ('signextend', 3, ('cd', ('var', 2))) << 8 * s
        if s + 4 <= 28:
            idx = idx + 1
            s = s + 4
            t = t + 32
            continue 
        idx = idx + 1
        s = 0
        t = t + 32
        continue 
    idx = 0
    s = 0
    t = 932
    while idx < 22:
        require cd[t] == uint32(cd[t])
        uint256(stor[sha3(address(cd[4]), 268) + 7].field_0) = !(test266151307() << 8 * s) and ('storage', 256, 0, ('add', 7, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('cd', 4)), 268)))) or test266151307() << 8 * s and uint32(cd[t]) << 8 * s
        if s + 4 <= 28:
            idx = idx + 1
            s = s + 4
            t = t + 32
            continue 
        idx = idx + 1
        s = 0
        t = t + 32
        continue 
    idx = 0
    s = 10
    t = 1636
    while idx < 22:
        uint256(stor[s + sha3(address(cd[4]), 268)].field_0) = cd[t]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require cd[2340] == uint32(cd[2340])
    uint32(stor[sha3(address(cd[4]), 268) + 32].field_0) = uint32(cd[2340])
    require cd[2372] == uint32(cd[2372])
    uint32(stor[sha3(address(cd[4]), 268) + 32].field_32) = uint32(cd[2372])
    require cd[2404] == uint32(cd[2404])
    uint32(stor[sha3(address(cd[4]), 268) + 32].field_64) = uint32(cd[2404])
    require cd[2436] == uint32(cd[2436])
    uint32(stor[sha3(address(cd[4]), 268) + 32].field_96) = uint32(cd[2436])
    require cd[2468] == uint32(cd[2468])
    uint32(stor[sha3(address(cd[4]), 268) + 32].field_128) = uint32(cd[2468])
    require cd[2500] == uint32(cd[2500])
    uint32(stor[sha3(address(cd[4]), 268) + 32].field_160) = uint32(cd[2500])
    require cd[2532] == uint32(cd[2532])
    uint32(stor[sha3(address(cd[4]), 268) + 32].field_192) = uint32(cd[2532])
    require cd[2564] == uint32(cd[2564])
    uint32(stor[sha3(address(cd[4]), 268) + 32].field_224) = uint32(cd[2564])
    require cd[2596] == uint32(cd[2596])
    uint32(stor[sha3(address(cd[4]), 268) + 33].field_0) = uint32(cd[2596])
    require cd[2628] == uint32(cd[2628])
    uint32(stor[sha3(address(cd[4]), 268) + 33].field_32) = uint32(cd[2628])
    require cd[2660] == uint32(cd[2660])
    uint32(stor[sha3(address(cd[4]), 268) + 33].field_64) = uint32(cd[2660])
    require cd[2692] == uint32(cd[2692])
    uint32(stor[sha3(address(cd[4]), 268) + 33].field_96) = uint32(cd[2692])
    require cd[2724] == uint32(cd[2724])
    uint32(stor[sha3(address(cd[4]), 268) + 33].field_128) = uint32(cd[2724])
    require cd[2756] == uint32(cd[2756])
    uint32(stor[sha3(address(cd[4]), 268) + 33].field_160) = uint32(cd[2756])
    require cd[2788] == uint32(cd[2788])
    uint32(stor[sha3(address(cd[4]), 268) + 33].field_192) = uint32(cd[2788])
    require cd[2820] == uint32(cd[2820])
    uint32(stor[sha3(address(cd[4]), 268) + 33].field_224) = uint32(cd[2820])
    require cd[2852] == uint32(cd[2852])
    uint32(stor[sha3(address(cd[4]), 268) + 34].field_0) = uint32(cd[2852])
    require cd[2884] == uint32(cd[2884])
    uint32(stor[sha3(address(cd[4]), 268) + 34].field_32) = uint32(cd[2884])
    require cd[2916] == uint32(cd[2916])
    uint32(stor[sha3(address(cd[4]), 268) + 34].field_64) = uint32(cd[2916])
    require cd[2948] == uint32(cd[2948])
    uint32(stor[sha3(address(cd[4]), 268) + 34].field_96) = uint32(cd[2948])
    require cd[2980] == uint32(cd[2980])
    uint32(stor[sha3(address(cd[4]), 268) + 34].field_128) = uint32(cd[2980])
    require cd[3012] == uint32(cd[3012])
    uint32(stor[sha3(address(cd[4]), 268) + 34].field_160) = uint32(cd[3012])
    require cd[3044] == uint32(cd[3044])
    uint32(stor[sha3(address(cd[4]), 268) + 34].field_192) = uint32(cd[3044])
    require cd[3076] == uint32(cd[3076])
    uint32(stor[sha3(address(cd[4]), 268) + 34].field_224) = uint32(cd[3076])
    require cd[3108] == uint32(cd[3108])
    uint32(stor[sha3(address(cd[4]), 268) + 35].field_0) = uint32(cd[3108])
    require cd[3140] == uint32(cd[3140])
    uint32(stor[sha3(address(cd[4]), 268) + 35].field_32) = uint32(cd[3140])
    require cd[3172] == uint32(cd[3172])
    uint32(stor[sha3(address(cd[4]), 268) + 35].field_64) = uint32(cd[3172])
    require cd[3204] == uint32(cd[3204])
    uint32(stor[sha3(address(cd[4]), 268) + 35].field_96) = uint32(cd[3204])
    require cd[3236] == uint32(cd[3236])
    uint32(stor[sha3(address(cd[4]), 268) + 35].field_128) = uint32(cd[3236])
    require cd[3268] == uint32(cd[3268])
    uint32(stor[sha3(address(cd[4]), 268) + 35].field_160) = uint32(cd[3268])
    require cd[3300] == uint32(cd[3300])
    uint32(stor[sha3(address(cd[4]), 268) + 35].field_192) = uint32(cd[3300])
    require cd[3332] == uint32(cd[3332])
    uint32(stor[sha3(address(cd[4]), 268) + 35].field_224) = uint32(cd[3332])
    require cd[3364] == uint32(cd[3364])
    uint32(stor[sha3(address(cd[4]), 268) + 36].field_0) = uint32(cd[3364])
    require cd[3396] == uint32(cd[3396])
    uint32(stor[sha3(address(cd[4]), 268) + 36].field_32) = uint32(cd[3396])
    require cd[3428] == uint32(cd[3428])
    uint32(stor[sha3(address(cd[4]), 268) + 36].field_64) = uint32(cd[3428])
    require cd[3460] == uint32(cd[3460])
    uint32(stor[sha3(address(cd[4]), 268) + 36].field_96) = uint32(cd[3460])
    require cd[3492] == uint32(cd[3492])
    uint32(stor[sha3(address(cd[4]), 268) + 36].field_128) = uint32(cd[3492])
    require cd[3524] == uint32(cd[3524])
    uint32(stor[sha3(address(cd[4]), 268) + 36].field_160) = uint32(cd[3524])
    require cd[3556] == uint32(cd[3556])
    uint32(stor[sha3(address(cd[4]), 268) + 36].field_192) = uint32(cd[3556])
    require cd[3588] == uint32(cd[3588])
    uint32(stor[sha3(address(cd[4]), 268) + 36].field_224) = uint32(cd[3588])
    require cd[3620] == uint32(cd[3620])
    uint32(stor[sha3(address(cd[4]), 268) + 37].field_0) = uint32(cd[3620])
    require cd[3652] == uint32(cd[3652])
    uint32(stor[sha3(address(cd[4]), 268) + 37].field_32) = uint32(cd[3652])
    require cd[3684] == uint32(cd[3684])
    uint32(stor[sha3(address(cd[4]), 268) + 37].field_64) = uint32(cd[3684])
    require cd[3716] == uint32(cd[3716])
    uint32(stor[sha3(address(cd[4]), 268) + 37].field_96) = uint32(cd[3716])
    require cd[3748] == uint32(cd[3748])
    uint32(stor[sha3(address(cd[4]), 268) + 37].field_128) = uint32(cd[3748])
    require cd[3780] == uint32(cd[3780])
    uint32(stor[sha3(address(cd[4]), 268) + 37].field_160) = uint32(cd[3780])
    require cd[3812] == uint32(cd[3812])
    uint32(stor[sha3(address(cd[4]), 268) + 37].field_192) = uint32(cd[3812])
    require cd[3844] == uint32(cd[3844])
    uint32(stor[sha3(address(cd[4]), 268) + 37].field_224) = uint32(cd[3844])
    require cd[3876] == uint32(cd[3876])
    uint32(stor[sha3(address(cd[4]), 268) + 38].field_0) = uint32(cd[3876])
    require cd[3908] == uint32(cd[3908])
    uint32(stor[sha3(address(cd[4]), 268) + 38].field_32) = uint32(cd[3908])
    require cd[3940] == uint32(cd[3940])
    uint32(stor[sha3(address(cd[4]), 268) + 38].field_64) = uint32(cd[3940])
    require cd[3972] == uint32(cd[3972])
    uint32(stor[sha3(address(cd[4]), 268) + 38].field_96) = uint32(cd[3972])
    require cd[4004] == uint32(cd[4004])
    uint32(stor[sha3(address(cd[4]), 268) + 38].field_128) = uint32(cd[4004])
    require cd[4036] == uint32(cd[4036])
    uint32(stor[sha3(address(cd[4]), 268) + 38].field_160) = uint32(cd[4036])
    require cd[4068] == uint32(cd[4068])
    uint32(stor[sha3(address(cd[4]), 268) + 38].field_192) = uint32(cd[4068])
    require cd[4100] == uint32(cd[4100])
    uint32(stor[sha3(address(cd[4]), 268) + 38].field_224) = uint32(cd[4100])
    require cd[4132] == uint32(cd[4132])
    uint32(stor[sha3(address(cd[4]), 268) + 39].field_0) = uint32(cd[4132])
    require cd[4164] == uint32(cd[4164])
    uint32(stor[sha3(address(cd[4]), 268) + 39].field_32) = uint32(cd[4164])
    require cd[4196] == uint32(cd[4196])
    uint32(stor[sha3(address(cd[4]), 268) + 39].field_64) = uint32(cd[4196])
    require cd[4228] == uint32(cd[4228])
    uint32(stor[sha3(address(cd[4]), 268) + 39].field_96) = uint32(cd[4228])
    require cd[4260] == uint32(cd[4260])
    uint32(stor[sha3(address(cd[4]), 268) + 39].field_128) = uint32(cd[4260])
    require cd[4292] == uint32(cd[4292])
    uint32(stor[sha3(address(cd[4]), 268) + 39].field_160) = uint32(cd[4292])
    require cd[4324] == uint32(cd[4324])
    uint32(stor[sha3(address(cd[4]), 268) + 39].field_192) = uint32(cd[4324])
    require cd[4356] == uint32(cd[4356])
    uint32(stor[sha3(address(cd[4]), 268) + 39].field_224) = uint32(cd[4356])
    require cd[4388] == uint32(cd[4388])
    uint32(stor[sha3(address(cd[4]), 268) + 40].field_0) = uint32(cd[4388])
    require cd[4420] == uint32(cd[4420])
    uint32(stor[sha3(address(cd[4]), 268) + 40].field_32) = uint32(cd[4420])
    require cd[4452] == uint32(cd[4452])
    uint32(stor[sha3(address(cd[4]), 268) + 40].field_64) = uint32(cd[4452])
    require cd[4484] == uint32(cd[4484])
    uint32(stor[sha3(address(cd[4]), 268) + 40].field_96) = uint32(cd[4484])
    require cd[4516] == uint32(cd[4516])
    uint32(stor[sha3(address(cd[4]), 268) + 40].field_128) = uint32(cd[4516])
    require cd[4548] == uint32(cd[4548])
    uint32(stor[sha3(address(cd[4]), 268) + 40].field_160) = uint32(cd[4548])
    require cd[4580] == uint32(cd[4580])
    uint32(stor[sha3(address(cd[4]), 268) + 40].field_192) = uint32(cd[4580])
    require cd[4612] == uint32(cd[4612])
    uint32(stor[sha3(address(cd[4]), 268) + 40].field_224) = uint32(cd[4612])
    require cd[4644] == uint32(cd[4644])
    uint32(stor[sha3(address(cd[4]), 268) + 41].field_0) = uint32(cd[4644])
    require cd[4676] == uint32(cd[4676])
    uint32(stor[sha3(address(cd[4]), 268) + 41].field_32) = uint32(cd[4676])
    require cd[4708] == uint32(cd[4708])
    uint32(stor[sha3(address(cd[4]), 268) + 41].field_64) = uint32(cd[4708])
    require cd[4740] == uint32(cd[4740])
    uint32(stor[sha3(address(cd[4]), 268) + 41].field_96) = uint32(cd[4740])
    require cd[4772] == uint32(cd[4772])
    uint32(stor[sha3(address(cd[4]), 268) + 41].field_128) = uint32(cd[4772])
    require cd[4804] == uint32(cd[4804])
    uint32(stor[sha3(address(cd[4]), 268) + 41].field_160) = uint32(cd[4804])
    require cd[4836] == uint32(cd[4836])
    uint32(stor[sha3(address(cd[4]), 268) + 41].field_192) = uint32(cd[4836])
    require cd[4868] == uint32(cd[4868])
    uint32(stor[sha3(address(cd[4]), 268) + 41].field_224) = uint32(cd[4868])
    require cd[4900] == uint32(cd[4900])
    uint32(stor[sha3(address(cd[4]), 268) + 42].field_0) = uint32(cd[4900])
    require cd[4932] == uint32(cd[4932])
    uint32(stor[sha3(address(cd[4]), 268) + 42].field_32) = uint32(cd[4932])
    require cd[4964] == uint32(cd[4964])
    uint32(stor[sha3(address(cd[4]), 268) + 42].field_64) = uint32(cd[4964])
    require cd[4996] == uint32(cd[4996])
    uint32(stor[sha3(address(cd[4]), 268) + 42].field_96) = uint32(cd[4996])
    require cd[5028] == uint32(cd[5028])
    uint32(stor[sha3(address(cd[4]), 268) + 42].field_128) = uint32(cd[5028])
    idx = 84
    s = 20
    t = 5060
    while idx + 1 < 256:
        require cd[t] == uint32(cd[t])
        uint256(stor[sha3(address(cd[4]), 268) + 42].field_0) = !(test266151307() << 8 * s) and ('storage', 256, 0, ('add', 42, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('cd', 4)), 268)))) or test266151307() << 8 * s and uint32(cd[t]) << 8 * s
        if s + 4 <= 28:
            idx = idx + 1
            s = s + 4
            t = t + 32
            continue 
        idx = idx + 1
        s = 0
        t = t + 32
        continue 
    uint256(stor[sha3(address(cd[4]), 268) + 64].field_0) = cd[10532]
    t = 0
    u = 65
    v = 10564
    while t < 22:
        uint256(stor[u + sha3(address(cd[4]), 268)].field_0) = cd[v]
        t = t + 1
        u = u + 1
        v = v + 32
        continue 
}



}
