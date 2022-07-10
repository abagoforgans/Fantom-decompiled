contract main {




// =====================  Runtime code  =====================


#
#  - hypotheticalRewards(uint16 arg1, address arg2)
#  - sub_14cca4d4(?)
#  - sub_42c53d2f(?)
#  - rewards(uint16 arg1, address arg2)
#  - sub_775dd80f(?)
#  - sub_803fa530(?)
#  - sub_9f390c4a(?)
#  - switchTotem(uint8 arg1, uint8 arg2, address arg3)
#  - sub_c2b3511e(?)
#
bool stor0; offset 256
uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
address owner;
mapping of uint8 stor10;
mapping of struct userInfo;
mapping of uint8 selectedTotem;
mapping of uint256 sub_81e2a58a;
mapping of uint256 sub_7c01527b;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
address stor2;
address stor3;
mapping of uint256 sub_0f95bd16;
array of uint16 stor5;
mapping of uint8 stor6;
mapping of struct depositFee;
mapping of struct sub_fb33ee3d;
mapping of struct stor9;

function selectedTotem(uint8 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return selectedTotem[address(arg2)][arg1 << 248]
}

function sub_0f95bd16(?) payable {
    require calldata.size - 4 >= 64
    return sub_0f95bd16[arg1][arg2]
}

function userTotem(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    return selectedTotem[arg1][arg2]
}

function sub_2cefc965(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < stor9[arg1].field_0
    return sub_2cefc965[uint8(arg2)]
}

function depositFee(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    return uint16(depositFee[arg1 << 240].field_1024)
}

function sub_4290bebf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor5.length
    return sub_4290bebf[uint8(arg1)]
}

function sub_46b889f2(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < 24
    return sub_46b889f2[uint8(arg2)]
}

function sub_51e22126(?) payable {
    require calldata.size - 4 >= 32
    return uint16(depositFee[arg1].field_0), 
           bool(uint8(depositFee[arg1].field_16)),
           bool(uint8(depositFee[arg1].field_24)),
           bool(uint8(depositFee[arg1].field_32)),
           address(depositFee[arg1].field_40),
           depositFee[arg1].field_256,
           depositFee[arg1].field_512,
           depositFee[arg1].field_768,
           uint16(depositFee[arg1].field_1024),
           uint8(depositFee[arg1].field_1024),
           depositFee[arg1].field_1536
}

function supply(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    return depositFee[arg1 << 240].field_256
}

function sub_7c01527b(?) payable {
    require calldata.size - 4 >= 32
    return sub_7c01527b[arg1]
}

function sub_80b795c0(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function sub_81e2a58a(?) payable {
    require calldata.size - 4 >= 64
    return sub_81e2a58a[arg1][arg2]
}

function owner() payable {
    return owner
}

function sub_b466a90a(?) payable {
    require calldata.size - 4 >= 96
    require arg3 < 12
    return sub_b466a90a[uint8(arg3)]
}

function token(uint16 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    return address(depositFee[arg1 << 240].field_40)
}

function userInfo(uint16 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, 
           userInfo[arg1][arg2].field_256,
           userInfo[arg1][arg2].field_512,
           userInfo[arg1][arg2].field_768,
           userInfo[arg1][arg2].field_1024,
           userInfo[arg1][arg2].field_1280,
           userInfo[arg1][arg2].field_1536,
           userInfo[arg1][arg2].field_1792
}

function sub_faab07b1(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor10[arg1][arg2])
}

function sub_fb33ee3d(?) payable {
    require calldata.size - 4 >= 64
    return sub_fb33ee3d[arg1][arg2].field_0, sub_fb33ee3d[arg1][arg2].field_256, sub_fb33ee3d[arg1][arg2].field_512
}

function isTotemInUse(uint8 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(sub_81e2a58a[address(arg2)][arg1 << 248])
}

function _fallback() payable {
    revert
}

function enable(uint256 arg1) payable {
    require calldata.size - 4 >= 32
}

function sub_34f1d02b(?) payable {
    require calldata.size - 4 >= 192
    if stor2 != msg.sender:
        revert with 0, 'Only cartographer'
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function isEarning(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(depositFee[arg1 << 240].field_24):
        return bool(uint8(depositFee[arg1 << 240].field_24))
    return bool(uint8(depositFee[arg1 << 240].field_16))
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_0a134cf1(?) payable {
    require calldata.size - 4 >= 32
    if not stor6[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    if userInfo[arg1 << 240][msg.sender].field_768 + userInfo[arg1 << 240][msg.sender].field_256 < userInfo[arg1 << 240][msg.sender].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if userInfo[arg1 << 240][msg.sender].field_1280 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (userInfo[arg1 << 240][msg.sender].field_1280 + userInfo[arg1 << 240][msg.sender].field_768 + userInfo[arg1 << 240][msg.sender].field_256 > 0)
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if not uint8(stor0.field_168):
        if ext_code.size(this.address):
            if uint8(stor0.field_160):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_168):
            uint8(stor0.field_160) = 1
            uint8(stor0.field_168) = 1
            Mask(88, 0, stor0.field_168) = 0
            stor0.field_256 % 1 = 0
    if stor2 != msg.sender:
        revert with 0, 'Only cartographer'
    if not arg1:
        revert with 0, 'Contract is zero'
    stor3 = arg1
    if not uint8(stor0.field_168):
        uint8(stor0.field_168) = 0
}

function updatePool(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor6[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    if depositFee[arg1 << 240].field_512 != block.timestamp:
        if uint8(depositFee[arg1 << 240].field_16):
            if depositFee[arg1 << 240].field_256:
                if uint8(depositFee[arg1 << 240].field_24):
                    require ext_code.size(stor2)
                    call stor2.0xc93ac180 with:
                         gas gas_remaining wei
                        args depositFee[arg1 << 240].field_512, address(depositFee[arg1 << 240].field_0), uint8(depositFee[arg1 << 240].field_1040)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if depositFee[arg1 << 240].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[arg1 << 240].field_256
                        if (0 / depositFee[arg1 << 240].field_256) + depositFee[arg1 << 240].field_768 < depositFee[arg1 << 240].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[arg1 << 240].field_768 += 0 / depositFee[arg1 << 240].field_256
                    else:
                        if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if depositFee[arg1 << 240].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[arg1 << 240].field_256
                        if (10^12 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256) + depositFee[arg1 << 240].field_768 < depositFee[arg1 << 240].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[arg1 << 240].field_768 += 10^12 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256
                    if ext_call.return_data[0] + depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                        revert with 0, 'SafeMath: addition overflow'
                    depositFee[arg1 << 240].field_1536 += ext_call.return_data[0]
                    idx = 0
                    while uint8(idx) < depositFee[arg1 << 240].field_1792:
                        require uint8(idx) < depositFee[arg1 << 240].field_1280
                        if not ext_call.return_data[0]:
                            if depositFee[arg1 << 240].field_256 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require depositFee[arg1 << 240].field_256
                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                            if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                            mem[0] = sha3(arg1 << 240, 7) + 7
                            stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 += 0 / depositFee[arg1 << 240].field_256
                        else:
                            if stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / ext_call.return_data[0] != stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if depositFee[arg1 << 240].field_256 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require depositFee[arg1 << 240].field_256
                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                            if (stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                            mem[0] = sha3(arg1 << 240, 7) + 7
                            stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 += stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256
                        idx = idx + 1
                        continue 
        depositFee[arg1 << 240].field_512 = block.timestamp
}

function sub_a5576dd2(?) payable {
    require calldata.size - 4 >= 160
    if stor2 != msg.sender:
        revert with 0, 'Only cartographer'
    if stor10[address(arg4)][arg2 << 248]:
        revert with 0, 'Duplicated'
    stor10[address(arg4)][arg2 << 248] = 1
    stor6[arg1 << 240] = 1
    stor9[arg2 << 248].field_0++
    stor9[arg2 << 248][Mask(252, 0, stor9[arg2 << 248].field_4)].field_0 = stor9[arg2 << 248][Mask(252, 0, stor9[arg2 << 248].field_4)].field_0 and !(65535 * 256^(2 * stor9[arg2 << 248].field_0 % 16)) or arg1 * 256^(2 * stor9[arg2 << 248].field_0 % 16)
    stor5.length++
    stor36B6[Mask(252, 0, stor5.length.field_4)] = !(65535 * 256^(2 * stor5.length % 16)) and stor36B6[Mask(252, 0, stor5.length.field_4)] or 256^(2 * stor5.length % 16) * arg1
    mem[548] = arg2
    require ext_code.size(stor3)
    staticcall stor3.0x2ae834e0 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[31 len 1] <= test266151307()
    if uint8(ext_call.return_data[0]):
        mem[576 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
    mem[(32 * uint8(ext_call.return_data[0])) + 580] = arg2
    require ext_code.size(stor3)
    staticcall stor3.0x2ae834e0 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[31 len 1] <= test266151307()
    mem[(32 * uint8(ext_call.return_data[0])) + 576] = ext_call.return_data[31 len 1]
    if uint8(ext_call.return_data[0]):
        mem[(32 * uint8(ext_call.return_data[0])) + 608 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
    mem[(64 * uint8(ext_call.return_data[0])) + 612] = arg2
    require ext_code.size(stor3)
    staticcall stor3.0x2ae834e0 with:
            gas gas_remaining wei
           args arg2 << 248, mem[(64 * uint8(ext_call.return_data[0])) + 644 len (64 * uint8(ext_call.return_data[0])) - (2 * 32 * uint8(ext_call.return_data[0]))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[31 len 1] <= test266151307()
    mem[(64 * uint8(ext_call.return_data[0])) + 608] = ext_call.return_data[31 len 1]
    if uint8(ext_call.return_data[0]):
        mem[(64 * uint8(ext_call.return_data[0])) + 640 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
    uint16(depositFee[arg1 << 240].field_0) = arg1
    uint8(depositFee[arg1 << 240].field_16) = 0
    uint8(depositFee[arg1 << 240].field_24) = uint8(arg3)
    uint8(depositFee[arg1 << 240].field_32) = 0
    address(depositFee[arg1 << 240].field_40) = arg4
    depositFee[arg1 << 240].field_200 % 72057594037927936 = 0
    depositFee[arg1 << 240].field_200 % 72057594037927936 = Mask(56, 176, arg3) >> 176
    depositFee[arg1 << 240].field_200 % 72057594037927936 = 0
    depositFee[arg1 << 240].field_256 = 0
    depositFee[arg1 << 240].field_512 = block.timestamp
    depositFee[arg1 << 240].field_768 = 0
    uint16(depositFee[arg1 << 240].field_1024) = arg5
    uint8(depositFee[arg1 << 240].field_1040) = arg2
    depositFee[arg1 << 240].field_1280 = ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        idx = 0
        while depositFee[arg1 << 240].field_1280 > idx:
            depositFee[arg1 << 240][idx + 5].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 576
        while (32 * ext_call.return_data[31 len 1]) + 576 > idx:
            depositFee[arg1 << 240][s + 5].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ext_call.return_data[31 len 1]) + 31) >> 5
        while depositFee[arg1 << 240].field_1280 > idx:
            depositFee[arg1 << 240][idx + 5].field_0 = 0
            idx = idx + 1
            continue 
    depositFee[arg1 << 240].field_1536 = 0
    depositFee[arg1 << 240].field_1792 = ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        idx = 0
        while depositFee[arg1 << 240].field_1792 > idx:
            depositFee[arg1 << 240][idx + 7].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * uint8(ext_call.return_data[0])) + 608
        while (32 * uint8(ext_call.return_data[0])) + (32 * ext_call.return_data[31 len 1]) + 608 > idx:
            depositFee[arg1 << 240][s + 7].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ext_call.return_data[31 len 1]) + 31) >> 5
        while depositFee[arg1 << 240].field_1792 > idx:
            depositFee[arg1 << 240][idx + 7].field_0 = 0
            idx = idx + 1
            continue 
    depositFee[arg1 << 240].field_2048 = ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        idx = 0
        while depositFee[arg1 << 240].field_2048 > idx:
            depositFee[arg1 << 240][idx + 8].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (64 * uint8(ext_call.return_data[0])) + 640
        while (64 * uint8(ext_call.return_data[0])) + (32 * ext_call.return_data[31 len 1]) + 640 > idx:
            depositFee[arg1 << 240][s + 8].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ext_call.return_data[31 len 1]) + 31) >> 5
        while depositFee[arg1 << 240].field_2048 > idx:
            depositFee[arg1 << 240][idx + 8].field_0 = 0
            idx = idx + 1
            continue 
    if arg3:
        if bool(uint8(depositFee[arg1 << 240].field_32)) != 1:
            if 24 <= sub_7c01527b[uint8(stor7[arg1 << 240].field_1024)]:
                revert with 0, 'Too many active pools'
            Mask(224, 0, depositFee[arg1 << 240].field_32) = 1
            if sub_7c01527b[uint8(stor7[arg1 << 240].field_1024)] + 1 < sub_7c01527b[uint8(stor7[arg1 << 240].field_1024)]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > sub_7c01527b[uint8(stor7[arg1 << 240].field_1024)] + 1:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_7c01527b[uint8(stor7[arg1 << 240].field_1024)]++
            idx = 0
            while uint8(idx) < 24:
                mem[0] = uint8(depositFee[arg1 << 240].field_1040)
                mem[32] = 16
                if stor('array', ('mask_shl', 4, 4, -4, ('var', 0)), ('map', ('stor', 8, 1024, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor16', 16)))[uint8(idx)]:
                    idx = idx + 1
                    continue 
                require uint8(idx) < 24
                stor16[uint8(stor7[arg1 << 240].field_1024)][uint8(idx) / 16].field_0 = uint16(depositFee[arg1 << 240].field_0) * 256^(2 * idx % 16) or !(65535 * 256^(2 * idx % 16)) and stor16[uint8(stor7[arg1 << 240].field_1024)][uint8(idx) / 16].field_0
}

function sub_d81964c3(?) payable {
    require calldata.size - 4 >= 96
    if stor2 != msg.sender:
        revert with 0, 'Only cartographer'
    if not stor6[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    if not stor6[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    if depositFee[arg1 << 240].field_512 != block.timestamp:
        if uint8(depositFee[arg1 << 240].field_16):
            if depositFee[arg1 << 240].field_256:
                if uint8(depositFee[arg1 << 240].field_24):
                    require ext_code.size(stor2)
                    call stor2.0xc93ac180 with:
                         gas gas_remaining wei
                        args depositFee[arg1 << 240].field_512, address(depositFee[arg1 << 240].field_0), uint8(depositFee[arg1 << 240].field_1040)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if depositFee[arg1 << 240].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[arg1 << 240].field_256
                        if (0 / depositFee[arg1 << 240].field_256) + depositFee[arg1 << 240].field_768 < depositFee[arg1 << 240].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[arg1 << 240].field_768 += 0 / depositFee[arg1 << 240].field_256
                    else:
                        if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if depositFee[arg1 << 240].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[arg1 << 240].field_256
                        if (10^12 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256) + depositFee[arg1 << 240].field_768 < depositFee[arg1 << 240].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[arg1 << 240].field_768 += 10^12 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256
                    if ext_call.return_data[0] + depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                        revert with 0, 'SafeMath: addition overflow'
                    depositFee[arg1 << 240].field_1536 += ext_call.return_data[0]
                    idx = 0
                    while uint8(idx) < depositFee[arg1 << 240].field_1792:
                        require uint8(idx) < depositFee[arg1 << 240].field_1280
                        if not ext_call.return_data[0]:
                            if depositFee[arg1 << 240].field_256 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require depositFee[arg1 << 240].field_256
                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                            if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                            mem[0] = sha3(arg1 << 240, 7) + 7
                            stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 += 0 / depositFee[arg1 << 240].field_256
                        else:
                            if stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / ext_call.return_data[0] != stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if depositFee[arg1 << 240].field_256 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require depositFee[arg1 << 240].field_256
                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                            if (stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                            mem[0] = sha3(arg1 << 240, 7) + 7
                            stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 += stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256
                        idx = idx + 1
                        continue 
        depositFee[arg1 << 240].field_512 = block.timestamp
    if arg2 != bool(uint8(depositFee[arg1 << 240].field_24)):
        if uint8(depositFee[arg1 << 240].field_16):
            require ext_code.size(stor2)
            call stor2.0x29ae1dd0 with:
                 gas gas_remaining wei
                args address(depositFee[arg1 << 240].field_0), uint8(depositFee[arg1 << 240].field_1024), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if arg2:
            if not uint8(depositFee[arg1 << 240].field_32):
                if bool(uint8(depositFee[arg1 << 240].field_32)) != 1:
                    if 24 <= sub_7c01527b[uint8(stor7[arg1 << 240].field_1024)]:
                        revert with 0, 'Too many active pools'
                    Mask(224, 0, depositFee[arg1 << 240].field_32) = 1
                    if sub_7c01527b[uint8(stor7[arg1 << 240].field_1024)] + 1 < sub_7c01527b[uint8(stor7[arg1 << 240].field_1024)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 > sub_7c01527b[uint8(stor7[arg1 << 240].field_1024)] + 1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_7c01527b[uint8(stor7[arg1 << 240].field_1024)]++
                    idx = 0
                    while uint8(idx) < 24:
                        mem[0] = uint8(depositFee[arg1 << 240].field_1040)
                        mem[32] = 16
                        if stor('array', ('mask_shl', 4, 4, -4, ('var', 0)), ('map', ('stor', 8, 1024, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'stor7', 7))), ('name', 'stor16', 16)))[uint8(idx)]:
                            idx = idx + 1
                            continue 
                        require uint8(idx) < 24
                        stor16[uint8(stor7[arg1 << 240].field_1024)][uint8(idx) / 16].field_0 = uint16(depositFee[arg1 << 240].field_0) * 256^(2 * idx % 16) or !(65535 * 256^(2 * idx % 16)) and stor16[uint8(stor7[arg1 << 240].field_1024)][uint8(idx) / 16].field_0
                        Mask(232, 0, depositFee[arg1 << 240].field_24) = Mask(232, 0, arg2)
                        uint16(depositFee[arg1 << 240].field_1024) = arg3
    Mask(232, 0, depositFee[arg1 << 240].field_24) = Mask(232, 0, arg2)
    uint16(depositFee[arg1 << 240].field_1024) = arg3
}

function massUpdatePools() payable {
    if stor2 != msg.sender:
        revert with 0, 'Only cartographer'
    idx = 0
    while uint16(idx) < stor5.length:
        if not stor6[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)]:
            revert with 0, 'Pool doesnt exist'
        mem[0] = stor('array', ('mask_shl', 12, 4, -4, ('var', 0)), ('name', 'stor5', 5))[uint8(idx)]
        mem[32] = 7
        if depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_512 != block.timestamp:
            if uint8(depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_16):
                if depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256:
                    if uint8(depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_24):
                        mem[100] = depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_512
                        mem[132] = address(depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_40)
                        mem[164] = uint8(depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                        require ext_code.size(stor2)
                        call stor2.0xc93ac180 with:
                             gas gas_remaining wei
                            args depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_512, address(depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_0), uint8(depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256
                            if (0 / depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256) + depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768 < depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768 += 0 / depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256
                        else:
                            if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256
                            if (10^12 * ext_call.return_data[0] / depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256) + depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768 < depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768 += 10^12 * ext_call.return_data[0] / depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256
                        if ext_call.return_data[0] + depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536 < depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536 += ext_call.return_data[0]
                        s = 0
                        while uint8(s) < depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792:
                            require uint8(s) < depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1280
                            if not ext_call.return_data[0]:
                                if depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256
                                require uint8(s) < depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792
                                if (0 / depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256) + stor[('array', 7, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor5', 5))))), ('name', 'depositFee', 7))) + uint8(s)].field_0 < stor[('array', 7, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor5', 5))))), ('name', 'depositFee', 7))) + uint8(s)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require uint8(s) < depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792
                                mem[0] = sha3(uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                stor[('array', 7, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor5', 5))))), ('name', 'depositFee', 7))) + uint8(s)].field_0 += 0 / depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256
                            else:
                                if stor[('array', 5, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor5', 5))))), ('name', 'depositFee', 7))) + uint8(s)].field_0 * ext_call.return_data[0] / ext_call.return_data[0] != stor[('array', 5, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor5', 5))))), ('name', 'depositFee', 7))) + uint8(s)].field_0:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256
                                require uint8(s) < depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792
                                if (stor[('array', 5, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor5', 5))))), ('name', 'depositFee', 7))) + uint8(s)].field_0 * ext_call.return_data[0] / depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256) + stor[('array', 7, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor5', 5))))), ('name', 'depositFee', 7))) + uint8(s)].field_0 < stor[('array', 7, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor5', 5))))), ('name', 'depositFee', 7))) + uint8(s)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require uint8(s) < depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792
                                mem[0] = sha3(uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                stor[('array', 7, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor5', 5))))), ('name', 'depositFee', 7))) + uint8(s)].field_0 += stor[('array', 5, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor5', 5))))), ('name', 'depositFee', 7))) + uint8(s)].field_0 * ext_call.return_data[0] / depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256
                            s = s + 1
                            continue 
            depositFee[uint16(stor5[uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_512 = block.timestamp
        idx = idx + 1
        continue 
}

function sub_5169da0b(?) payable {
    require calldata.size - 4 >= 32
    if not stor6[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    if uint8(depositFee[arg1 << 240].field_1040) < 1:
        if uint8(depositFee[arg1 << 240].field_1040) < 2:
            if uint8(depositFee[arg1 << 240].field_1040) < 3:
                return 0
            if 5 < depositFee[arg1 << 240].field_1280:
                if uint8(depositFee[arg1 << 240].field_1040) < 3:
                    return 0, 0, 0, 0, 0, depositFee[arg1 << 240][5].field_1280, 0, 0, 0, 0
                if 6 < depositFee[arg1 << 240].field_1280:
                    if uint8(depositFee[arg1 << 240].field_1040) < 3:
                        return 0, 0, 0, 0, 0, depositFee[arg1 << 240][5].field_1280, depositFee[arg1 << 240][5].field_1536, 0, 0, 0
                    if 7 < depositFee[arg1 << 240].field_1280:
                        if uint8(depositFee[arg1 << 240].field_1040) < 3:
                            return 0, 
                                   0,
                                   0,
                                   0,
                                   0,
                                   depositFee[arg1 << 240][5].field_1280,
                                   depositFee[arg1 << 240][5].field_1536,
                                   depositFee[arg1 << 240][5].field_1792,
                                   0,
                                   0
                        if 8 < depositFee[arg1 << 240].field_1280:
                            if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                return 0, 
                                       0,
                                       0,
                                       0,
                                       0,
                                       depositFee[arg1 << 240][5].field_1280,
                                       depositFee[arg1 << 240][5].field_1536,
                                       depositFee[arg1 << 240][5].field_1792,
                                       depositFee[arg1 << 240][5].field_2048,
                                       0
                            if 9 < depositFee[arg1 << 240].field_1280:
                                return 0, 
                                       0,
                                       0,
                                       0,
                                       0,
                                       depositFee[arg1 << 240][5].field_1280,
                                       depositFee[arg1 << 240][5].field_1536,
                                       depositFee[arg1 << 240][5].field_1792,
                                       depositFee[arg1 << 240][5].field_2048,
                                       depositFee[arg1 << 240][5].field_2304
        else:
            if 2 < depositFee[arg1 << 240].field_1280:
                if uint8(depositFee[arg1 << 240].field_1040) < 2:
                    if uint8(depositFee[arg1 << 240].field_1040) < 3:
                        return 0, 0, depositFee[arg1 << 240][5].field_512, 0, 0, 0, 0, 0, 0, 0
                    if 5 < depositFee[arg1 << 240].field_1280:
                        if uint8(depositFee[arg1 << 240].field_1040) < 3:
                            return 0, 0, depositFee[arg1 << 240][5].field_512, 0, 0, depositFee[arg1 << 240][5].field_1280, 0, 0, 0, 0
                        if 6 < depositFee[arg1 << 240].field_1280:
                            if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                return 0, 
                                       0,
                                       depositFee[arg1 << 240][5].field_512,
                                       0,
                                       0,
                                       depositFee[arg1 << 240][5].field_1280,
                                       depositFee[arg1 << 240][5].field_1536,
                                       0,
                                       0,
                                       0
                            if 7 < depositFee[arg1 << 240].field_1280:
                                if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                    return 0, 
                                           0,
                                           depositFee[arg1 << 240][5].field_512,
                                           0,
                                           0,
                                           depositFee[arg1 << 240][5].field_1280,
                                           depositFee[arg1 << 240][5].field_1536,
                                           depositFee[arg1 << 240][5].field_1792,
                                           0,
                                           0
                                if 8 < depositFee[arg1 << 240].field_1280:
                                    if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                        return 0, 
                                               0,
                                               depositFee[arg1 << 240][5].field_512,
                                               0,
                                               0,
                                               depositFee[arg1 << 240][5].field_1280,
                                               depositFee[arg1 << 240][5].field_1536,
                                               depositFee[arg1 << 240][5].field_1792,
                                               depositFee[arg1 << 240][5].field_2048,
                                               0
                                    if 9 < depositFee[arg1 << 240].field_1280:
                                        return 0, 
                                               0,
                                               depositFee[arg1 << 240][5].field_512,
                                               0,
                                               0,
                                               depositFee[arg1 << 240][5].field_1280,
                                               depositFee[arg1 << 240][5].field_1536,
                                               depositFee[arg1 << 240][5].field_1792,
                                               depositFee[arg1 << 240][5].field_2048,
                                               depositFee[arg1 << 240][5].field_2304
                else:
                    if 3 < depositFee[arg1 << 240].field_1280:
                        if uint8(depositFee[arg1 << 240].field_1040) < 2:
                            if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                return 0, 0, depositFee[arg1 << 240][5].field_512, depositFee[arg1 << 240][5].field_768, 0, 0, 0, 0, 0, 0
                            if 5 < depositFee[arg1 << 240].field_1280:
                                if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                    return 0, 
                                           0,
                                           depositFee[arg1 << 240][5].field_512,
                                           depositFee[arg1 << 240][5].field_768,
                                           0,
                                           depositFee[arg1 << 240][5].field_1280,
                                           0,
                                           0,
                                           0,
                                           0
                                if 6 < depositFee[arg1 << 240].field_1280:
                                    if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                        return 0, 
                                               0,
                                               depositFee[arg1 << 240][5].field_512,
                                               depositFee[arg1 << 240][5].field_768,
                                               0,
                                               depositFee[arg1 << 240][5].field_1280,
                                               depositFee[arg1 << 240][5].field_1536,
                                               0,
                                               0,
                                               0
                                    if 7 < depositFee[arg1 << 240].field_1280:
                                        if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                            return 0, 
                                                   0,
                                                   depositFee[arg1 << 240][5].field_512,
                                                   depositFee[arg1 << 240][5].field_768,
                                                   0,
                                                   depositFee[arg1 << 240][5].field_1280,
                                                   depositFee[arg1 << 240][5].field_1536,
                                                   depositFee[arg1 << 240][5].field_1792,
                                                   0,
                                                   0
                                        if 8 < depositFee[arg1 << 240].field_1280:
                                            if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                                return 0, 
                                                       0,
                                                       depositFee[arg1 << 240][5].field_512,
                                                       depositFee[arg1 << 240][5].field_768,
                                                       0,
                                                       depositFee[arg1 << 240][5].field_1280,
                                                       depositFee[arg1 << 240][5].field_1536,
                                                       depositFee[arg1 << 240][5].field_1792,
                                                       depositFee[arg1 << 240][5].field_2048,
                                                       0
                                            if 9 < depositFee[arg1 << 240].field_1280:
                                                return 0, 
                                                       0,
                                                       depositFee[arg1 << 240][5].field_512,
                                                       depositFee[arg1 << 240][5].field_768,
                                                       0,
                                                       depositFee[arg1 << 240][5].field_1280,
                                                       depositFee[arg1 << 240][5].field_1536,
                                                       depositFee[arg1 << 240][5].field_1792,
                                                       depositFee[arg1 << 240][5].field_2048,
                                                       depositFee[arg1 << 240][5].field_2304
                        else:
                            if 4 < depositFee[arg1 << 240].field_1280:
                                if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                    return 0, 
                                           0,
                                           depositFee[arg1 << 240][5].field_512,
                                           depositFee[arg1 << 240][5].field_768,
                                           depositFee[arg1 << 240][5].field_1024,
                                           0,
                                           0,
                                           0,
                                           0,
                                           0
                                if 5 < depositFee[arg1 << 240].field_1280:
                                    if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                        return 0, 
                                               0,
                                               depositFee[arg1 << 240][5].field_512,
                                               depositFee[arg1 << 240][5].field_768,
                                               depositFee[arg1 << 240][5].field_1024,
                                               depositFee[arg1 << 240][5].field_1280,
                                               0,
                                               0,
                                               0,
                                               0
                                    if 6 < depositFee[arg1 << 240].field_1280:
                                        if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                            return 0, 
                                                   0,
                                                   depositFee[arg1 << 240][5].field_512,
                                                   depositFee[arg1 << 240][5].field_768,
                                                   depositFee[arg1 << 240][5].field_1024,
                                                   depositFee[arg1 << 240][5].field_1280,
                                                   depositFee[arg1 << 240][5].field_1536,
                                                   0,
                                                   0,
                                                   0
                                        if 7 < depositFee[arg1 << 240].field_1280:
                                            if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                                return 0, 
                                                       0,
                                                       depositFee[arg1 << 240][5].field_512,
                                                       depositFee[arg1 << 240][5].field_768,
                                                       depositFee[arg1 << 240][5].field_1024,
                                                       depositFee[arg1 << 240][5].field_1280,
                                                       depositFee[arg1 << 240][5].field_1536,
                                                       depositFee[arg1 << 240][5].field_1792,
                                                       0,
                                                       0
                                            if 8 < depositFee[arg1 << 240].field_1280:
                                                if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                                    return 0, 
                                                           0,
                                                           depositFee[arg1 << 240][5].field_512,
                                                           depositFee[arg1 << 240][5].field_768,
                                                           depositFee[arg1 << 240][5].field_1024,
                                                           depositFee[arg1 << 240][5].field_1280,
                                                           depositFee[arg1 << 240][5].field_1536,
                                                           depositFee[arg1 << 240][5].field_1792,
                                                           depositFee[arg1 << 240][5].field_2048,
                                                           0
                                                if 9 < depositFee[arg1 << 240].field_1280:
                                                    return 0, 
                                                           0,
                                                           depositFee[arg1 << 240][5].field_512,
                                                           depositFee[arg1 << 240][5].field_768,
                                                           depositFee[arg1 << 240][5].field_1024,
                                                           depositFee[arg1 << 240][5].field_1280,
                                                           depositFee[arg1 << 240][5].field_1536,
                                                           depositFee[arg1 << 240][5].field_1792,
                                                           depositFee[arg1 << 240][5].field_2048,
                                                           depositFee[arg1 << 240][5].field_2304
    else:
        if 0 < depositFee[arg1 << 240].field_1280:
            if uint8(depositFee[arg1 << 240].field_1040) < 1:
                if uint8(depositFee[arg1 << 240].field_1040) < 2:
                    if uint8(depositFee[arg1 << 240].field_1040) < 3:
                        return depositFee[arg1 << 240][5].field_0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                    if 5 < depositFee[arg1 << 240].field_1280:
                        if uint8(depositFee[arg1 << 240].field_1040) < 3:
                            return depositFee[arg1 << 240][5].field_0, 0, 0, 0, 0, depositFee[arg1 << 240][5].field_1280, 0, 0, 0, 0
                        if 6 < depositFee[arg1 << 240].field_1280:
                            if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                return depositFee[arg1 << 240][5].field_0, 
                                       0,
                                       0,
                                       0,
                                       0,
                                       depositFee[arg1 << 240][5].field_1280,
                                       depositFee[arg1 << 240][5].field_1536,
                                       0,
                                       0,
                                       0
                            if 7 < depositFee[arg1 << 240].field_1280:
                                if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                    return depositFee[arg1 << 240][5].field_0, 
                                           0,
                                           0,
                                           0,
                                           0,
                                           depositFee[arg1 << 240][5].field_1280,
                                           depositFee[arg1 << 240][5].field_1536,
                                           depositFee[arg1 << 240][5].field_1792,
                                           0,
                                           0
                                if 8 < depositFee[arg1 << 240].field_1280:
                                    if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                        return depositFee[arg1 << 240][5].field_0, 
                                               0,
                                               0,
                                               0,
                                               0,
                                               depositFee[arg1 << 240][5].field_1280,
                                               depositFee[arg1 << 240][5].field_1536,
                                               depositFee[arg1 << 240][5].field_1792,
                                               depositFee[arg1 << 240][5].field_2048,
                                               0
                                    if 9 < depositFee[arg1 << 240].field_1280:
                                        return depositFee[arg1 << 240][5].field_0, 
                                               0,
                                               0,
                                               0,
                                               0,
                                               depositFee[arg1 << 240][5].field_1280,
                                               depositFee[arg1 << 240][5].field_1536,
                                               depositFee[arg1 << 240][5].field_1792,
                                               depositFee[arg1 << 240][5].field_2048,
                                               depositFee[arg1 << 240][5].field_2304
                else:
                    if 2 < depositFee[arg1 << 240].field_1280:
                        if uint8(depositFee[arg1 << 240].field_1040) < 2:
                            if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                return depositFee[arg1 << 240][5].field_0, 0, depositFee[arg1 << 240][5].field_512, 0, 0, 0, 0, 0, 0, 0
                            if 5 < depositFee[arg1 << 240].field_1280:
                                if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                    return depositFee[arg1 << 240][5].field_0, 
                                           0,
                                           depositFee[arg1 << 240][5].field_512,
                                           0,
                                           0,
                                           depositFee[arg1 << 240][5].field_1280,
                                           0,
                                           0,
                                           0,
                                           0
                                if 6 < depositFee[arg1 << 240].field_1280:
                                    if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                        return depositFee[arg1 << 240][5].field_0, 
                                               0,
                                               depositFee[arg1 << 240][5].field_512,
                                               0,
                                               0,
                                               depositFee[arg1 << 240][5].field_1280,
                                               depositFee[arg1 << 240][5].field_1536,
                                               0,
                                               0,
                                               0
                                    if 7 < depositFee[arg1 << 240].field_1280:
                                        if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                            return depositFee[arg1 << 240][5].field_0, 
                                                   0,
                                                   depositFee[arg1 << 240][5].field_512,
                                                   0,
                                                   0,
                                                   depositFee[arg1 << 240][5].field_1280,
                                                   depositFee[arg1 << 240][5].field_1536,
                                                   depositFee[arg1 << 240][5].field_1792,
                                                   0,
                                                   0
                                        if 8 < depositFee[arg1 << 240].field_1280:
                                            if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                                return depositFee[arg1 << 240][5].field_0, 
                                                       0,
                                                       depositFee[arg1 << 240][5].field_512,
                                                       0,
                                                       0,
                                                       depositFee[arg1 << 240][5].field_1280,
                                                       depositFee[arg1 << 240][5].field_1536,
                                                       depositFee[arg1 << 240][5].field_1792,
                                                       depositFee[arg1 << 240][5].field_2048,
                                                       0
                                            if 9 < depositFee[arg1 << 240].field_1280:
                                                return depositFee[arg1 << 240][5].field_0, 
                                                       0,
                                                       depositFee[arg1 << 240][5].field_512,
                                                       0,
                                                       0,
                                                       depositFee[arg1 << 240][5].field_1280,
                                                       depositFee[arg1 << 240][5].field_1536,
                                                       depositFee[arg1 << 240][5].field_1792,
                                                       depositFee[arg1 << 240][5].field_2048,
                                                       depositFee[arg1 << 240][5].field_2304
                        else:
                            if 3 < depositFee[arg1 << 240].field_1280:
                                if uint8(depositFee[arg1 << 240].field_1040) < 2:
                                    if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                        return depositFee[arg1 << 240][5].field_0, 
                                               0,
                                               depositFee[arg1 << 240][5].field_512,
                                               depositFee[arg1 << 240][5].field_768,
                                               0,
                                               0,
                                               0,
                                               0,
                                               0,
                                               0
                                    if 5 < depositFee[arg1 << 240].field_1280:
                                        if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                            return depositFee[arg1 << 240][5].field_0, 
                                                   0,
                                                   depositFee[arg1 << 240][5].field_512,
                                                   depositFee[arg1 << 240][5].field_768,
                                                   0,
                                                   depositFee[arg1 << 240][5].field_1280,
                                                   0,
                                                   0,
                                                   0,
                                                   0
                                        if 6 < depositFee[arg1 << 240].field_1280:
                                            if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                                return depositFee[arg1 << 240][5].field_0, 
                                                       0,
                                                       depositFee[arg1 << 240][5].field_512,
                                                       depositFee[arg1 << 240][5].field_768,
                                                       0,
                                                       depositFee[arg1 << 240][5].field_1280,
                                                       depositFee[arg1 << 240][5].field_1536,
                                                       0,
                                                       0,
                                                       0
                                            if 7 < depositFee[arg1 << 240].field_1280:
                                                if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                                    return depositFee[arg1 << 240][5].field_0, 
                                                           0,
                                                           depositFee[arg1 << 240][5].field_512,
                                                           depositFee[arg1 << 240][5].field_768,
                                                           0,
                                                           depositFee[arg1 << 240][5].field_1280,
                                                           depositFee[arg1 << 240][5].field_1536,
                                                           depositFee[arg1 << 240][5].field_1792,
                                                           0,
                                                           0
                                                if 8 < depositFee[arg1 << 240].field_1280:
                                                    if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                                        return depositFee[arg1 << 240][5].field_0, 
                                                               0,
                                                               depositFee[arg1 << 240][5].field_512,
                                                               depositFee[arg1 << 240][5].field_768,
                                                               0,
                                                               depositFee[arg1 << 240][5].field_1280,
                                                               depositFee[arg1 << 240][5].field_1536,
                                                               depositFee[arg1 << 240][5].field_1792,
                                                               depositFee[arg1 << 240][5].field_2048,
                                                               0
                                                    if 9 < depositFee[arg1 << 240].field_1280:
                                                        return depositFee[arg1 << 240][5].field_0, 
                                                               0,
                                                               depositFee[arg1 << 240][5].field_512,
                                                               depositFee[arg1 << 240][5].field_768,
                                                               0,
                                                               depositFee[arg1 << 240][5].field_1280,
                                                               depositFee[arg1 << 240][5].field_1536,
                                                               depositFee[arg1 << 240][5].field_1792,
                                                               depositFee[arg1 << 240][5].field_2048,
                                                               depositFee[arg1 << 240][5].field_2304
                                else:
                                    if 4 < depositFee[arg1 << 240].field_1280:
                                        if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                            return depositFee[arg1 << 240][5].field_0, 
                                                   0,
                                                   depositFee[arg1 << 240][5].field_512,
                                                   depositFee[arg1 << 240][5].field_768,
                                                   depositFee[arg1 << 240][5].field_1024,
                                                   0,
                                                   0,
                                                   0,
                                                   0,
                                                   0
                                        if 5 < depositFee[arg1 << 240].field_1280:
                                            if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                                return depositFee[arg1 << 240][5].field_0, 
                                                       0,
                                                       depositFee[arg1 << 240][5].field_512,
                                                       depositFee[arg1 << 240][5].field_768,
                                                       depositFee[arg1 << 240][5].field_1024,
                                                       depositFee[arg1 << 240][5].field_1280,
                                                       0,
                                                       0,
                                                       0,
                                                       0
                                            if 6 < depositFee[arg1 << 240].field_1280:
                                                if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                                    return depositFee[arg1 << 240][5].field_0, 
                                                           0,
                                                           depositFee[arg1 << 240][5].field_512,
                                                           depositFee[arg1 << 240][5].field_768,
                                                           depositFee[arg1 << 240][5].field_1024,
                                                           depositFee[arg1 << 240][5].field_1280,
                                                           depositFee[arg1 << 240][5].field_1536,
                                                           0,
                                                           0,
                                                           0
                                                if 7 < depositFee[arg1 << 240].field_1280:
                                                    if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                                        return depositFee[arg1 << 240][5].field_0, 
                                                               0,
                                                               depositFee[arg1 << 240][5].field_512,
                                                               depositFee[arg1 << 240][5].field_768,
                                                               depositFee[arg1 << 240][5].field_1024,
                                                               depositFee[arg1 << 240][5].field_1280,
                                                               depositFee[arg1 << 240][5].field_1536,
                                                               depositFee[arg1 << 240][5].field_1792,
                                                               0,
                                                               0
                                                    if 8 < depositFee[arg1 << 240].field_1280:
                                                        if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                                            return depositFee[arg1 << 240][5].field_0, 
                                                                   0,
                                                                   depositFee[arg1 << 240][5].field_512,
                                                                   depositFee[arg1 << 240][5].field_768,
                                                                   depositFee[arg1 << 240][5].field_1024,
                                                                   depositFee[arg1 << 240][5].field_1280,
                                                                   depositFee[arg1 << 240][5].field_1536,
                                                                   depositFee[arg1 << 240][5].field_1792,
                                                                   depositFee[arg1 << 240][5].field_2048,
                                                                   0
                                                        if 9 < depositFee[arg1 << 240].field_1280:
                                                            return depositFee[arg1 << 240][5].field_0, 
                                                                   0,
                                                                   depositFee[arg1 << 240][5].field_512,
                                                                   depositFee[arg1 << 240][5].field_768,
                                                                   depositFee[arg1 << 240][5].field_1024,
                                                                   depositFee[arg1 << 240][5].field_1280,
                                                                   depositFee[arg1 << 240][5].field_1536,
                                                                   depositFee[arg1 << 240][5].field_1792,
                                                                   depositFee[arg1 << 240][5].field_2048,
                                                                   depositFee[arg1 << 240][5].field_2304
            else:
                if 1 < depositFee[arg1 << 240].field_1280:
                    if uint8(depositFee[arg1 << 240].field_1040) < 2:
                        if uint8(depositFee[arg1 << 240].field_1040) < 3:
                            return depositFee[arg1 << 240][5].field_0, depositFee[arg1 << 240][5].field_256, 0, 0, 0, 0, 0, 0, 0, 0
                        if 5 < depositFee[arg1 << 240].field_1280:
                            if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                return depositFee[arg1 << 240][5].field_0, 
                                       depositFee[arg1 << 240][5].field_256,
                                       0,
                                       0,
                                       0,
                                       depositFee[arg1 << 240][5].field_1280,
                                       0,
                                       0,
                                       0,
                                       0
                            if 6 < depositFee[arg1 << 240].field_1280:
                                if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                    return depositFee[arg1 << 240][5].field_0, 
                                           depositFee[arg1 << 240][5].field_256,
                                           0,
                                           0,
                                           0,
                                           depositFee[arg1 << 240][5].field_1280,
                                           depositFee[arg1 << 240][5].field_1536,
                                           0,
                                           0,
                                           0
                                if 7 < depositFee[arg1 << 240].field_1280:
                                    if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                        return depositFee[arg1 << 240][5].field_0, 
                                               depositFee[arg1 << 240][5].field_256,
                                               0,
                                               0,
                                               0,
                                               depositFee[arg1 << 240][5].field_1280,
                                               depositFee[arg1 << 240][5].field_1536,
                                               depositFee[arg1 << 240][5].field_1792,
                                               0,
                                               0
                                    if 8 < depositFee[arg1 << 240].field_1280:
                                        if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                            return depositFee[arg1 << 240][5].field_0, 
                                                   depositFee[arg1 << 240][5].field_256,
                                                   0,
                                                   0,
                                                   0,
                                                   depositFee[arg1 << 240][5].field_1280,
                                                   depositFee[arg1 << 240][5].field_1536,
                                                   depositFee[arg1 << 240][5].field_1792,
                                                   depositFee[arg1 << 240][5].field_2048,
                                                   0
                                        if 9 < depositFee[arg1 << 240].field_1280:
                                            return depositFee[arg1 << 240][5].field_0, 
                                                   depositFee[arg1 << 240][5].field_256,
                                                   0,
                                                   0,
                                                   0,
                                                   depositFee[arg1 << 240][5].field_1280,
                                                   depositFee[arg1 << 240][5].field_1536,
                                                   depositFee[arg1 << 240][5].field_1792,
                                                   depositFee[arg1 << 240][5].field_2048,
                                                   depositFee[arg1 << 240][5].field_2304
                    else:
                        if 2 < depositFee[arg1 << 240].field_1280:
                            if uint8(depositFee[arg1 << 240].field_1040) < 2:
                                if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                    return depositFee[arg1 << 240][5].field_0, 
                                           depositFee[arg1 << 240][5].field_256,
                                           depositFee[arg1 << 240][5].field_512,
                                           0,
                                           0,
                                           0,
                                           0,
                                           0,
                                           0,
                                           0
                                if 5 < depositFee[arg1 << 240].field_1280:
                                    if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                        return depositFee[arg1 << 240][5].field_0, 
                                               depositFee[arg1 << 240][5].field_256,
                                               depositFee[arg1 << 240][5].field_512,
                                               0,
                                               0,
                                               depositFee[arg1 << 240][5].field_1280,
                                               0,
                                               0,
                                               0,
                                               0
                                    if 6 < depositFee[arg1 << 240].field_1280:
                                        if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                            return depositFee[arg1 << 240][5].field_0, 
                                                   depositFee[arg1 << 240][5].field_256,
                                                   depositFee[arg1 << 240][5].field_512,
                                                   0,
                                                   0,
                                                   depositFee[arg1 << 240][5].field_1280,
                                                   depositFee[arg1 << 240][5].field_1536,
                                                   0,
                                                   0,
                                                   0
                                        if 7 < depositFee[arg1 << 240].field_1280:
                                            if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                                return depositFee[arg1 << 240][5].field_0, 
                                                       depositFee[arg1 << 240][5].field_256,
                                                       depositFee[arg1 << 240][5].field_512,
                                                       0,
                                                       0,
                                                       depositFee[arg1 << 240][5].field_1280,
                                                       depositFee[arg1 << 240][5].field_1536,
                                                       depositFee[arg1 << 240][5].field_1792,
                                                       0,
                                                       0
                                            if 8 < depositFee[arg1 << 240].field_1280:
                                                if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                                    return depositFee[arg1 << 240][5].field_0, 
                                                           depositFee[arg1 << 240][5].field_256,
                                                           depositFee[arg1 << 240][5].field_512,
                                                           0,
                                                           0,
                                                           depositFee[arg1 << 240][5].field_1280,
                                                           depositFee[arg1 << 240][5].field_1536,
                                                           depositFee[arg1 << 240][5].field_1792,
                                                           depositFee[arg1 << 240][5].field_2048,
                                                           0
                                                if 9 < depositFee[arg1 << 240].field_1280:
                                                    return depositFee[arg1 << 240][5].field_0, 
                                                           depositFee[arg1 << 240][5].field_256,
                                                           depositFee[arg1 << 240][5].field_512,
                                                           0,
                                                           0,
                                                           depositFee[arg1 << 240][5].field_1280,
                                                           depositFee[arg1 << 240][5].field_1536,
                                                           depositFee[arg1 << 240][5].field_1792,
                                                           depositFee[arg1 << 240][5].field_2048,
                                                           depositFee[arg1 << 240][5].field_2304
                            else:
                                if 3 < depositFee[arg1 << 240].field_1280:
                                    if uint8(depositFee[arg1 << 240].field_1040) < 2:
                                        if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                            return depositFee[arg1 << 240][5].field_0, 
                                                   depositFee[arg1 << 240][5].field_256,
                                                   depositFee[arg1 << 240][5].field_512,
                                                   depositFee[arg1 << 240][5].field_768,
                                                   0,
                                                   0,
                                                   0,
                                                   0,
                                                   0,
                                                   0
                                        if 5 < depositFee[arg1 << 240].field_1280:
                                            if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                                return depositFee[arg1 << 240][5].field_0, 
                                                       depositFee[arg1 << 240][5].field_256,
                                                       depositFee[arg1 << 240][5].field_512,
                                                       depositFee[arg1 << 240][5].field_768,
                                                       0,
                                                       depositFee[arg1 << 240][5].field_1280,
                                                       0,
                                                       0,
                                                       0,
                                                       0
                                            if 6 < depositFee[arg1 << 240].field_1280:
                                                if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                                    return depositFee[arg1 << 240][5].field_0, 
                                                           depositFee[arg1 << 240][5].field_256,
                                                           depositFee[arg1 << 240][5].field_512,
                                                           depositFee[arg1 << 240][5].field_768,
                                                           0,
                                                           depositFee[arg1 << 240][5].field_1280,
                                                           depositFee[arg1 << 240][5].field_1536,
                                                           0,
                                                           0,
                                                           0
                                                if 7 < depositFee[arg1 << 240].field_1280:
                                                    if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                                        return depositFee[arg1 << 240][5].field_0, 
                                                               depositFee[arg1 << 240][5].field_256,
                                                               depositFee[arg1 << 240][5].field_512,
                                                               depositFee[arg1 << 240][5].field_768,
                                                               0,
                                                               depositFee[arg1 << 240][5].field_1280,
                                                               depositFee[arg1 << 240][5].field_1536,
                                                               depositFee[arg1 << 240][5].field_1792,
                                                               0,
                                                               0
                                                    if 8 < depositFee[arg1 << 240].field_1280:
                                                        if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                                            return depositFee[arg1 << 240][5].field_0, 
                                                                   depositFee[arg1 << 240][5].field_256,
                                                                   depositFee[arg1 << 240][5].field_512,
                                                                   depositFee[arg1 << 240][5].field_768,
                                                                   0,
                                                                   depositFee[arg1 << 240][5].field_1280,
                                                                   depositFee[arg1 << 240][5].field_1536,
                                                                   depositFee[arg1 << 240][5].field_1792,
                                                                   depositFee[arg1 << 240][5].field_2048,
                                                                   0
                                                        if 9 < depositFee[arg1 << 240].field_1280:
                                                            return depositFee[arg1 << 240][5].field_0, 
                                                                   depositFee[arg1 << 240][5].field_256,
                                                                   depositFee[arg1 << 240][5].field_512,
                                                                   depositFee[arg1 << 240][5].field_768,
                                                                   0,
                                                                   depositFee[arg1 << 240][5].field_1280,
                                                                   depositFee[arg1 << 240][5].field_1536,
                                                                   depositFee[arg1 << 240][5].field_1792,
                                                                   depositFee[arg1 << 240][5].field_2048,
                                                                   depositFee[arg1 << 240][5].field_2304
                                    else:
                                        if 4 < depositFee[arg1 << 240].field_1280:
                                            if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                                return depositFee[arg1 << 240][5].field_0, 
                                                       depositFee[arg1 << 240][5].field_256,
                                                       depositFee[arg1 << 240][5].field_512,
                                                       depositFee[arg1 << 240][5].field_768,
                                                       depositFee[arg1 << 240][5].field_1024,
                                                       0,
                                                       0,
                                                       0,
                                                       0,
                                                       0
                                            if 5 < depositFee[arg1 << 240].field_1280:
                                                if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                                    return depositFee[arg1 << 240][5].field_0, 
                                                           depositFee[arg1 << 240][5].field_256,
                                                           depositFee[arg1 << 240][5].field_512,
                                                           depositFee[arg1 << 240][5].field_768,
                                                           depositFee[arg1 << 240][5].field_1024,
                                                           depositFee[arg1 << 240][5].field_1280,
                                                           0,
                                                           0,
                                                           0,
                                                           0
                                                if 6 < depositFee[arg1 << 240].field_1280:
                                                    if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                                        return depositFee[arg1 << 240][5].field_0, 
                                                               depositFee[arg1 << 240][5].field_256,
                                                               depositFee[arg1 << 240][5].field_512,
                                                               depositFee[arg1 << 240][5].field_768,
                                                               depositFee[arg1 << 240][5].field_1024,
                                                               depositFee[arg1 << 240][5].field_1280,
                                                               depositFee[arg1 << 240][5].field_1536,
                                                               0,
                                                               0,
                                                               0
                                                    if 7 < depositFee[arg1 << 240].field_1280:
                                                        if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                                            return depositFee[arg1 << 240][5].field_0, 
                                                                   depositFee[arg1 << 240][5].field_256,
                                                                   depositFee[arg1 << 240][5].field_512,
                                                                   depositFee[arg1 << 240][5].field_768,
                                                                   depositFee[arg1 << 240][5].field_1024,
                                                                   depositFee[arg1 << 240][5].field_1280,
                                                                   depositFee[arg1 << 240][5].field_1536,
                                                                   depositFee[arg1 << 240][5].field_1792,
                                                                   0,
                                                                   0
                                                        if 8 < depositFee[arg1 << 240].field_1280:
                                                            if uint8(depositFee[arg1 << 240].field_1040) < 3:
                                                                return depositFee[arg1 << 240][5].field_0, 
                                                                       depositFee[arg1 << 240][5].field_256,
                                                                       depositFee[arg1 << 240][5].field_512,
                                                                       depositFee[arg1 << 240][5].field_768,
                                                                       depositFee[arg1 << 240][5].field_1024,
                                                                       depositFee[arg1 << 240][5].field_1280,
                                                                       depositFee[arg1 << 240][5].field_1536,
                                                                       depositFee[arg1 << 240][5].field_1792,
                                                                       depositFee[arg1 << 240][5].field_2048,
                                                                       0
                                                            if 9 < depositFee[arg1 << 240].field_1280:
                                                                return depositFee[arg1 << 240][5].field_0, 
                                                                       depositFee[arg1 << 240][5].field_256,
                                                                       depositFee[arg1 << 240][5].field_512,
                                                                       depositFee[arg1 << 240][5].field_768,
                                                                       depositFee[arg1 << 240][5].field_1024,
                                                                       depositFee[arg1 << 240][5].field_1280,
                                                                       depositFee[arg1 << 240][5].field_1536,
                                                                       depositFee[arg1 << 240][5].field_1792,
                                                                       depositFee[arg1 << 240][5].field_2048,
                                                                       depositFee[arg1 << 240][5].field_2304
    revert
}

function rollover(uint8 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor2 != msg.sender:
        revert with 0, 'Only cartographer'
    require ext_code.size(stor3)
    staticcall stor3.0xb27fc048 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[100] = arg1
    mem[132] = ext_call.return_data[0] - 1
    require ext_code.size(stor3)
    staticcall stor3.0xcb4b3022 with:
            gas gas_remaining wei
           args arg1 << 248, ext_call.return_data[0] - 1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while uint16(idx) < 24:
        mem[0] = arg1
        mem[32] = 16
        if stor('array', ('mask_shl', 12, 4, -4, ('var', 0)), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor16', 16)))[uint8(idx)]:
            require uint16(idx) < 24
            if not stor6[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)]:
                revert with 0, 'Pool doesnt exist'
            if depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_512 != block.timestamp:
                if uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_16):
                    if depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256:
                        if uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_24):
                            mem[100] = depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_512
                            mem[132] = address(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_40)
                            mem[164] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                            require ext_code.size(stor2)
                            call stor2.0xc93ac180 with:
                                 gas gas_remaining wei
                                args depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_512, address(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_0), uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256
                                if (0 / depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768 < depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768 += 0 / depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256
                            else:
                                if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256
                                if (10^12 * ext_call.return_data[0] / depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768 < depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768 += 10^12 * ext_call.return_data[0] / depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256
                            if ext_call.return_data[0] + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536 < depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536 += ext_call.return_data[0]
                            s = 0
                            while uint8(s) < depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792:
                                require uint8(s) < depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1280
                                if not ext_call.return_data[0]:
                                    if depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256
                                    require uint8(s) < depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792
                                    if (0 / depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256) + stor[('array', 7, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor16', 16)))))), ('name', 'depositFee', 7))) + uint8(s)].field_0 < stor[('array', 7, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor16', 16)))))), ('name', 'depositFee', 7))) + uint8(s)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require uint8(s) < depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792
                                    mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                    stor[('array', 7, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor16', 16)))))), ('name', 'depositFee', 7))) + uint8(s)].field_0 += 0 / depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256
                                else:
                                    if stor[('array', 5, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor16', 16)))))), ('name', 'depositFee', 7))) + uint8(s)].field_0 * ext_call.return_data[0] / ext_call.return_data[0] != stor[('array', 5, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor16', 16)))))), ('name', 'depositFee', 7))) + uint8(s)].field_0:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256
                                    require uint8(s) < depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792
                                    if (stor[('array', 5, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor16', 16)))))), ('name', 'depositFee', 7))) + uint8(s)].field_0 * ext_call.return_data[0] / depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256) + stor[('array', 7, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor16', 16)))))), ('name', 'depositFee', 7))) + uint8(s)].field_0 < stor[('array', 7, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor16', 16)))))), ('name', 'depositFee', 7))) + uint8(s)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require uint8(s) < depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792
                                    mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                    stor[('array', 7, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor16', 16)))))), ('name', 'depositFee', 7))) + uint8(s)].field_0 += stor[('array', 5, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor16', 16)))))), ('name', 'depositFee', 7))) + uint8(s)].field_0 * ext_call.return_data[0] / depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_256
                                s = s + 1
                                continue 
                depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_512 = block.timestamp
            require uint16(idx) < 24
            mem[32] = 7
            require uint8(ext_call.return_data[0]) < depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792
            mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
        idx = idx + 1
        continue 
    mem[0] = ext_call.return_data[0] - 1
    mem[32] = sha3(arg1 << 248, 4)
    sub_0f95bd16[arg1 << 248][ext_call.return_data[0] - 1] = 0
    idx = 0
    while uint16(idx) < 24:
        mem[0] = arg1
        mem[32] = 16
        if stor('array', ('mask_shl', 12, 4, -4, ('var', 0)), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor16', 16)))[uint8(idx)]:
            require uint16(idx) < 24
            mem[0] = stor('array', ('mask_shl', 12, 4, -4, ('var', 0)), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor16', 16)))[uint8(idx)]
            mem[32] = 7
            if uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_24):
                if not uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_16):
                    uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_16) = 1
                    if False or bool(uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_24)):
                        mem[mem[64]] = 0x29ae1dd000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_40)
                        mem[mem[64] + 36] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                        mem[mem[64] + 68] = 1
                        require ext_code.size(stor2)
                        call stor2.0x29ae1dd0 with:
                             gas gas_remaining wei
                            args address(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_0), uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024), 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[0] = ext_call.return_data[0] - 2
                    mem[32] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 8)
                    if sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 2].field_0 > depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _537 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_537] = depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768
                    mem[_537 + 32] = 0
                    if not depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768 - sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 2].field_0:
                        mem[_537 + 64] = 0
                        mem[0] = ext_call.return_data[0] - 1
                        mem[32] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 8)
                        sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_0 = depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768
                        sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_256 = 0
                        sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_512 = 0
                        if not ext_call.return_data[0] - 1:
                            depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536 = 0
                            mem[mem[64] + 4] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                            require ext_code.size(stor3)
                            staticcall stor3.0x2ae834e0 with:
                                    gas gas_remaining wei
                                   args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require uint8(ext_call.return_data[0]) <= test266151307()
                            _630 = mem[64]
                            mem[mem[64]] = uint8(ext_call.return_data[0])
                            mem[64] = mem[64] + (32 * uint8(ext_call.return_data[0])) + 32
                            if not uint8(ext_call.return_data[0]):
                                _643 = mem[_630]
                                depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_630]
                                mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                if not _643:
                                    s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                    while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                    s = _630 + 32
                                    while _630 + (32 * _643) + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _643) + 31) >> 5)
                                    while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                mem[_630 + 32 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
                                _665 = mem[_630]
                                depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_630]
                                mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                if not _665:
                                    s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                    while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                    s = _630 + 32
                                    while _630 + (32 * _665) + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _665) + 31) >> 5)
                                    while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[32] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 8)
                            mem[mem[64] + 36] = ext_call.return_data[0] - 2
                            require ext_code.size(stor3)
                            staticcall stor3.0xcb4b3022 with:
                                    gas gas_remaining wei
                                   args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024), ext_call.return_data[0] - 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require uint8(ext_call.return_data[0]) < depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_2048
                            mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 8
                            stor[('array', 8, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor16', 16)))))), ('name', 'depositFee', 7))) + uint8(ext_call.return_data[0])].field_0 += sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 2].field_512
                            depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536 = 0
                            mem[mem[64] + 4] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                            require ext_code.size(stor3)
                            staticcall stor3.0x2ae834e0 with:
                                    gas gas_remaining wei
                                   args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require uint8(ext_call.return_data[0]) <= test266151307()
                            _703 = mem[64]
                            mem[mem[64]] = uint8(ext_call.return_data[0])
                            mem[64] = mem[64] + (32 * uint8(ext_call.return_data[0])) + 32
                            if not uint8(ext_call.return_data[0]):
                                _714 = mem[_703]
                                depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_703]
                                mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                if not _714:
                                    s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                    while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                    s = _703 + 32
                                    while _703 + (32 * _714) + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _714) + 31) >> 5)
                                    while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                mem[_703 + 32 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
                                _726 = mem[_703]
                                depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_703]
                                mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                if not _726:
                                    s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                    while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                    s = _703 + 32
                                    while _703 + (32 * _726) + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _726) + 31) >> 5)
                                    while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    else:
                        if 0 / depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768 - sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 2].field_0:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        mem[_537 + 64] = 0
                        mem[0] = ext_call.return_data[0] - 1
                        mem[32] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 8)
                        sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_0 = depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768
                        sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_256 = 0
                        sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_512 = 0
                        if not ext_call.return_data[0] - 1:
                            depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536 = 0
                            mem[mem[64] + 4] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                            require ext_code.size(stor3)
                            staticcall stor3.0x2ae834e0 with:
                                    gas gas_remaining wei
                                   args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require uint8(ext_call.return_data[0]) <= test266151307()
                            _641 = mem[64]
                            mem[mem[64]] = uint8(ext_call.return_data[0])
                            mem[64] = mem[64] + (32 * uint8(ext_call.return_data[0])) + 32
                            if not uint8(ext_call.return_data[0]):
                                _661 = mem[_641]
                                depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_641]
                                mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                if not _661:
                                    s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                    while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                    s = _641 + 32
                                    while _641 + (32 * _661) + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _661) + 31) >> 5)
                                    while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                mem[_641 + 32 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
                                _679 = mem[_641]
                                depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_641]
                                mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                if not _679:
                                    s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                    while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                    s = _641 + 32
                                    while _641 + (32 * _679) + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _679) + 31) >> 5)
                                    while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[32] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 8)
                            mem[mem[64] + 36] = ext_call.return_data[0] - 2
                            require ext_code.size(stor3)
                            staticcall stor3.0xcb4b3022 with:
                                    gas gas_remaining wei
                                   args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024), ext_call.return_data[0] - 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require uint8(ext_call.return_data[0]) < depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_2048
                            mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 8
                            stor[('array', 8, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor16', 16)))))), ('name', 'depositFee', 7))) + uint8(ext_call.return_data[0])].field_0 += sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 2].field_512
                            depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536 = 0
                            mem[mem[64] + 4] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                            require ext_code.size(stor3)
                            staticcall stor3.0x2ae834e0 with:
                                    gas gas_remaining wei
                                   args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require uint8(ext_call.return_data[0]) <= test266151307()
                            _712 = mem[64]
                            mem[mem[64]] = uint8(ext_call.return_data[0])
                            mem[64] = mem[64] + (32 * uint8(ext_call.return_data[0])) + 32
                            if not uint8(ext_call.return_data[0]):
                                _724 = mem[_712]
                                depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_712]
                                mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                if not _724:
                                    s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                    while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                    s = _712 + 32
                                    while _712 + (32 * _724) + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _724) + 31) >> 5)
                                    while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                mem[_712 + 32 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
                                _737 = mem[_712]
                                depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_712]
                                mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                if not _737:
                                    s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                    while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                    s = _712 + 32
                                    while _712 + (32 * _737) + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _737) + 31) >> 5)
                                    while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
            else:
                if not uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_32):
                    if not uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_16):
                        uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_16) = 1
                        if False or bool(uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_24)):
                            mem[mem[64]] = 0x29ae1dd000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_40)
                            mem[mem[64] + 36] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                            mem[mem[64] + 68] = 1
                            require ext_code.size(stor2)
                            call stor2.0x29ae1dd0 with:
                                 gas gas_remaining wei
                                args address(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_0), uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024), 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[0] = ext_call.return_data[0] - 2
                        mem[32] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 8)
                        if sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 2].field_0 > depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _542 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_542] = depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768
                        mem[_542 + 32] = 0
                        if not depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768 - sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 2].field_0:
                            mem[_542 + 64] = 0
                            mem[0] = ext_call.return_data[0] - 1
                            mem[32] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 8)
                            sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_0 = depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768
                            sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_256 = 0
                            sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_512 = 0
                            if not ext_call.return_data[0] - 1:
                                depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536 = 0
                                mem[mem[64] + 4] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                                require ext_code.size(stor3)
                                staticcall stor3.0x2ae834e0 with:
                                        gas gas_remaining wei
                                       args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(ext_call.return_data[0]) <= test266151307()
                                _648 = mem[64]
                                mem[mem[64]] = uint8(ext_call.return_data[0])
                                mem[64] = mem[64] + (32 * uint8(ext_call.return_data[0])) + 32
                                if not uint8(ext_call.return_data[0]):
                                    _668 = mem[_648]
                                    depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_648]
                                    mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                    if not _668:
                                        s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                        while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                        s = _648 + 32
                                        while _648 + (32 * _668) + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _668) + 31) >> 5)
                                        while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    mem[_648 + 32 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
                                    _686 = mem[_648]
                                    depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_648]
                                    mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                    if not _686:
                                        s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                        while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                        s = _648 + 32
                                        while _648 + (32 * _686) + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _686) + 31) >> 5)
                                        while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[32] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 8)
                                mem[mem[64] + 36] = ext_call.return_data[0] - 2
                                require ext_code.size(stor3)
                                staticcall stor3.0xcb4b3022 with:
                                        gas gas_remaining wei
                                       args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024), ext_call.return_data[0] - 2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(ext_call.return_data[0]) < depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_2048
                                mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 8
                                stor[('array', 8, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor16', 16)))))), ('name', 'depositFee', 7))) + uint8(ext_call.return_data[0])].field_0 += sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 2].field_512
                                depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536 = 0
                                mem[mem[64] + 4] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                                require ext_code.size(stor3)
                                staticcall stor3.0x2ae834e0 with:
                                        gas gas_remaining wei
                                       args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(ext_call.return_data[0]) <= test266151307()
                                _717 = mem[64]
                                mem[mem[64]] = uint8(ext_call.return_data[0])
                                mem[64] = mem[64] + (32 * uint8(ext_call.return_data[0])) + 32
                                if not uint8(ext_call.return_data[0]):
                                    _730 = mem[_717]
                                    depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_717]
                                    mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                    if not _730:
                                        s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                        while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                        s = _717 + 32
                                        while _717 + (32 * _730) + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _730) + 31) >> 5)
                                        while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    mem[_717 + 32 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
                                    _742 = mem[_717]
                                    depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_717]
                                    mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                    if not _742:
                                        s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                        while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                        s = _717 + 32
                                        while _717 + (32 * _742) + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _742) + 31) >> 5)
                                        while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            if 0 / depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768 - sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 2].field_0:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            mem[_542 + 64] = 0
                            mem[0] = ext_call.return_data[0] - 1
                            mem[32] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 8)
                            sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_0 = depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768
                            sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_256 = 0
                            sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_512 = 0
                            if not ext_call.return_data[0] - 1:
                                depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536 = 0
                                mem[mem[64] + 4] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                                require ext_code.size(stor3)
                                staticcall stor3.0x2ae834e0 with:
                                        gas gas_remaining wei
                                       args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(ext_call.return_data[0]) <= test266151307()
                                _666 = mem[64]
                                mem[mem[64]] = uint8(ext_call.return_data[0])
                                mem[64] = mem[64] + (32 * uint8(ext_call.return_data[0])) + 32
                                if not uint8(ext_call.return_data[0]):
                                    _682 = mem[_666]
                                    depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_666]
                                    mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                    if not _682:
                                        s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                        while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                        s = _666 + 32
                                        while _666 + (32 * _682) + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _682) + 31) >> 5)
                                        while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    mem[_666 + 32 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
                                    _693 = mem[_666]
                                    depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_666]
                                    mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                    if not _693:
                                        s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                        while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                        s = _666 + 32
                                        while _666 + (32 * _693) + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _693) + 31) >> 5)
                                        while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[32] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 8)
                                mem[mem[64] + 36] = ext_call.return_data[0] - 2
                                require ext_code.size(stor3)
                                staticcall stor3.0xcb4b3022 with:
                                        gas gas_remaining wei
                                       args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024), ext_call.return_data[0] - 2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(ext_call.return_data[0]) < depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_2048
                                mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 8
                                stor[('array', 8, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor16', 16)))))), ('name', 'depositFee', 7))) + uint8(ext_call.return_data[0])].field_0 += sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 2].field_512
                                depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536 = 0
                                mem[mem[64] + 4] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                                require ext_code.size(stor3)
                                staticcall stor3.0x2ae834e0 with:
                                        gas gas_remaining wei
                                       args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require uint8(ext_call.return_data[0]) <= test266151307()
                                _728 = mem[64]
                                mem[mem[64]] = uint8(ext_call.return_data[0])
                                mem[64] = mem[64] + (32 * uint8(ext_call.return_data[0])) + 32
                                if not uint8(ext_call.return_data[0]):
                                    _740 = mem[_728]
                                    depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_728]
                                    mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                    if not _740:
                                        s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                        while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                        s = _728 + 32
                                        while _728 + (32 * _740) + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _740) + 31) >> 5)
                                        while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    mem[_728 + 32 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
                                    _751 = mem[_728]
                                    depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_728]
                                    mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                    if not _751:
                                        s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                        while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                        s = _728 + 32
                                        while _728 + (32 * _751) + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _751) + 31) >> 5)
                                        while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                else:
                    if 0 == bool(uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_32)):
                        if not uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_16):
                            uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_16) = 1
                            if False or bool(uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_24)):
                                mem[mem[64]] = 0x29ae1dd000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_40)
                                mem[mem[64] + 36] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                                mem[mem[64] + 68] = 1
                                require ext_code.size(stor2)
                                call stor2.0x29ae1dd0 with:
                                     gas gas_remaining wei
                                    args address(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_0), uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024), 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[0] = ext_call.return_data[0] - 2
                            mem[32] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 8)
                            if sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 2].field_0 > depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            _566 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_566] = depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768
                            mem[_566 + 32] = 0
                            if not depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768 - sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 2].field_0:
                                mem[_566 + 64] = 0
                                mem[0] = ext_call.return_data[0] - 1
                                mem[32] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 8)
                                sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_0 = depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768
                                sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_256 = 0
                                sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_512 = 0
                                if not ext_call.return_data[0] - 1:
                                    depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536 = 0
                                    mem[mem[64] + 4] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x2ae834e0 with:
                                            gas gas_remaining wei
                                           args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require uint8(ext_call.return_data[0]) <= test266151307()
                                    _709 = mem[64]
                                    mem[mem[64]] = uint8(ext_call.return_data[0])
                                    mem[64] = mem[64] + (32 * uint8(ext_call.return_data[0])) + 32
                                    if not uint8(ext_call.return_data[0]):
                                        _720 = mem[_709]
                                        depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_709]
                                        mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                        if not _720:
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            s = _709 + 32
                                            while _709 + (32 * _720) + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _720) + 31) >> 5)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        mem[_709 + 32 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
                                        _735 = mem[_709]
                                        depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_709]
                                        mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                        if not _735:
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            s = _709 + 32
                                            while _709 + (32 * _735) + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _735) + 31) >> 5)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                else:
                                    mem[32] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 8)
                                    mem[mem[64] + 36] = ext_call.return_data[0] - 2
                                    require ext_code.size(stor3)
                                    staticcall stor3.0xcb4b3022 with:
                                            gas gas_remaining wei
                                           args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024), ext_call.return_data[0] - 2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require uint8(ext_call.return_data[0]) < depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_2048
                                    mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 8
                                    stor[('array', 8, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor16', 16)))))), ('name', 'depositFee', 7))) + uint8(ext_call.return_data[0])].field_0 += sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 2].field_512
                                    depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536 = 0
                                    mem[mem[64] + 4] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x2ae834e0 with:
                                            gas gas_remaining wei
                                           args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require uint8(ext_call.return_data[0]) <= test266151307()
                                    _764 = mem[64]
                                    mem[mem[64]] = uint8(ext_call.return_data[0])
                                    mem[64] = mem[64] + (32 * uint8(ext_call.return_data[0])) + 32
                                    if not uint8(ext_call.return_data[0]):
                                        _772 = mem[_764]
                                        depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_764]
                                        mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                        if not _772:
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            s = _764 + 32
                                            while _764 + (32 * _772) + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _772) + 31) >> 5)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        mem[_764 + 32 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
                                        _779 = mem[_764]
                                        depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_764]
                                        mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                        if not _779:
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            s = _764 + 32
                                            while _764 + (32 * _779) + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _779) + 31) >> 5)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                            else:
                                if 0 / depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768 - sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 2].field_0:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                mem[_566 + 64] = 0
                                mem[0] = ext_call.return_data[0] - 1
                                mem[32] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 8)
                                sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_0 = depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768
                                sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_256 = 0
                                sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_512 = 0
                                if not ext_call.return_data[0] - 1:
                                    depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536 = 0
                                    mem[mem[64] + 4] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x2ae834e0 with:
                                            gas gas_remaining wei
                                           args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require uint8(ext_call.return_data[0]) <= test266151307()
                                    _718 = mem[64]
                                    mem[mem[64]] = uint8(ext_call.return_data[0])
                                    mem[64] = mem[64] + (32 * uint8(ext_call.return_data[0])) + 32
                                    if not uint8(ext_call.return_data[0]):
                                        _731 = mem[_718]
                                        depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_718]
                                        mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                        if not _731:
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            s = _718 + 32
                                            while _718 + (32 * _731) + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _731) + 31) >> 5)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        mem[_718 + 32 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
                                        _746 = mem[_718]
                                        depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_718]
                                        mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                        if not _746:
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            s = _718 + 32
                                            while _718 + (32 * _746) + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _746) + 31) >> 5)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                else:
                                    mem[32] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 8)
                                    mem[mem[64] + 36] = ext_call.return_data[0] - 2
                                    require ext_code.size(stor3)
                                    staticcall stor3.0xcb4b3022 with:
                                            gas gas_remaining wei
                                           args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024), ext_call.return_data[0] - 2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require uint8(ext_call.return_data[0]) < depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_2048
                                    mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 8
                                    stor[('array', 8, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor16', 16)))))), ('name', 'depositFee', 7))) + uint8(ext_call.return_data[0])].field_0 += sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 2].field_512
                                    depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536 = 0
                                    mem[mem[64] + 4] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x2ae834e0 with:
                                            gas gas_remaining wei
                                           args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require uint8(ext_call.return_data[0]) <= test266151307()
                                    _770 = mem[64]
                                    mem[mem[64]] = uint8(ext_call.return_data[0])
                                    mem[64] = mem[64] + (32 * uint8(ext_call.return_data[0])) + 32
                                    if not uint8(ext_call.return_data[0]):
                                        _777 = mem[_770]
                                        depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_770]
                                        mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                        if not _777:
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            s = _770 + 32
                                            while _770 + (32 * _777) + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _777) + 31) >> 5)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        mem[_770 + 32 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
                                        _782 = mem[_770]
                                        depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_770]
                                        mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                        if not _782:
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            s = _770 + 32
                                            while _770 + (32 * _782) + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _782) + 31) >> 5)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                    else:
                        Mask(224, 0, depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_32) = 0
                        if sub_7c01527b[uint8(stor7[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)] < sub_7c01527b[uint8(stor7[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 1 > sub_7c01527b[uint8(stor7[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[0] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                        mem[32] = 15
                        sub_7c01527b[uint8(stor7[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)]--
                        s = 0
                        while uint8(s) < 24:
                            mem[0] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                            mem[32] = 16
                            if stor('array', ('mask_shl', 4, 4, -4, ('var', 1)), ('map', ('stor', 8, 1024, ('map', ('stor', 16, ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('array', ('mask_shl', 12, 4, -4, ('var', 0)), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor16', 16)))), ('name', 'stor7', 7))), ('name', 'stor16', 16)))[uint8(s)] != uint16(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_0):
                                s = s + 1
                                continue 
                            mem[0] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                            mem[32] = 16
                            require uint8(s) < 24
                            stor16[uint8(stor7[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)][uint8(s) / 16].field_0 = !(65535 * 256^(2 * s % 16)) and stor16[uint8(stor7[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)][uint8(s) / 16].field_0
                            if not uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_16):
                                uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_16) = 1
                                if False or bool(uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_24)):
                                    mem[mem[64]] = 0x29ae1dd000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_40)
                                    mem[mem[64] + 36] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                                    mem[mem[64] + 68] = 1
                                    require ext_code.size(stor2)
                                    call stor2.0x29ae1dd0 with:
                                         gas gas_remaining wei
                                        args address(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_0), uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024), 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                mem[0] = ext_call.return_data[0] - 2
                                mem[32] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 8)
                                if sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 2].field_0 > depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                _900 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_900] = depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768
                                mem[_900 + 32] = 0
                                if not depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768 - sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 2].field_0:
                                    mem[_900 + 64] = 0
                                    mem[0] = ext_call.return_data[0] - 1
                                    mem[32] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 8)
                                    sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_0 = depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768
                                    sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_256 = 0
                                    sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_512 = 0
                                    if not ext_call.return_data[0] - 1:
                                        depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536 = 0
                                        mem[mem[64] + 4] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x2ae834e0 with:
                                                gas gas_remaining wei
                                               args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require uint8(ext_call.return_data[0]) <= test266151307()
                                        _982 = mem[64]
                                        mem[mem[64]] = uint8(ext_call.return_data[0])
                                        mem[64] = mem[64] + (32 * uint8(ext_call.return_data[0])) + 32
                                        if not uint8(ext_call.return_data[0]):
                                            _989 = mem[_982]
                                            depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_982]
                                            mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                            if not _989:
                                                s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                                while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                                s = _982 + 32
                                                while _982 + (32 * _989) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _989) + 31) >> 5)
                                                while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            mem[_982 + 32 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
                                            _1000 = mem[_982]
                                            depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_982]
                                            mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                            if not _1000:
                                                s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                                while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                                s = _982 + 32
                                                while _982 + (32 * _1000) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _1000) + 31) >> 5)
                                                while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        mem[32] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 8)
                                        mem[mem[64] + 36] = ext_call.return_data[0] - 2
                                        require ext_code.size(stor3)
                                        staticcall stor3.0xcb4b3022 with:
                                                gas gas_remaining wei
                                               args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024), ext_call.return_data[0] - 2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require uint8(ext_call.return_data[0]) < depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_2048
                                        mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 8
                                        stor[('array', 8, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor16', 16)))))), ('name', 'depositFee', 7))) + uint8(ext_call.return_data[0])].field_0 += sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 2].field_512
                                        depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536 = 0
                                        mem[mem[64] + 4] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x2ae834e0 with:
                                                gas gas_remaining wei
                                               args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require uint8(ext_call.return_data[0]) <= test266151307()
                                        _1018 = mem[64]
                                        mem[mem[64]] = uint8(ext_call.return_data[0])
                                        mem[64] = mem[64] + (32 * uint8(ext_call.return_data[0])) + 32
                                        if not uint8(ext_call.return_data[0]):
                                            _1023 = mem[_1018]
                                            depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_1018]
                                            mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                            if not _1023:
                                                s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                                while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                                s = _1018 + 32
                                                while _1018 + (32 * _1023) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _1023) + 31) >> 5)
                                                while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            mem[_1018 + 32 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
                                            _1029 = mem[_1018]
                                            depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_1018]
                                            mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                            if not _1029:
                                                s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                                while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                                s = _1018 + 32
                                                while _1018 + (32 * _1029) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _1029) + 31) >> 5)
                                                while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                else:
                                    if 0 / depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768 - sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 2].field_0:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    mem[_900 + 64] = 0
                                    mem[0] = ext_call.return_data[0] - 1
                                    mem[32] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 8)
                                    sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_0 = depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768
                                    sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_256 = 0
                                    sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_512 = 0
                                    if not ext_call.return_data[0] - 1:
                                        depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536 = 0
                                        mem[mem[64] + 4] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x2ae834e0 with:
                                                gas gas_remaining wei
                                               args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require uint8(ext_call.return_data[0]) <= test266151307()
                                        _987 = mem[64]
                                        mem[mem[64]] = uint8(ext_call.return_data[0])
                                        mem[64] = mem[64] + (32 * uint8(ext_call.return_data[0])) + 32
                                        if not uint8(ext_call.return_data[0]):
                                            _996 = mem[_987]
                                            depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_987]
                                            mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                            if not _996:
                                                s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                                while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                                s = _987 + 32
                                                while _987 + (32 * _996) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _996) + 31) >> 5)
                                                while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            mem[_987 + 32 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
                                            _1006 = mem[_987]
                                            depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_987]
                                            mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                            if not _1006:
                                                s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                                while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                                s = _987 + 32
                                                while _987 + (32 * _1006) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _1006) + 31) >> 5)
                                                while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        mem[32] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 8)
                                        mem[mem[64] + 36] = ext_call.return_data[0] - 2
                                        require ext_code.size(stor3)
                                        staticcall stor3.0xcb4b3022 with:
                                                gas gas_remaining wei
                                               args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024), ext_call.return_data[0] - 2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require uint8(ext_call.return_data[0]) < depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_2048
                                        mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 8
                                        stor[('array', 8, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor16', 16)))))), ('name', 'depositFee', 7))) + uint8(ext_call.return_data[0])].field_0 += sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 2].field_512
                                        depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536 = 0
                                        mem[mem[64] + 4] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x2ae834e0 with:
                                                gas gas_remaining wei
                                               args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require uint8(ext_call.return_data[0]) <= test266151307()
                                        _1021 = mem[64]
                                        mem[mem[64]] = uint8(ext_call.return_data[0])
                                        mem[64] = mem[64] + (32 * uint8(ext_call.return_data[0])) + 32
                                        if not uint8(ext_call.return_data[0]):
                                            _1027 = mem[_1021]
                                            depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_1021]
                                            mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                            if not _1027:
                                                s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                                while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                                s = _1021 + 32
                                                while _1021 + (32 * _1027) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _1027) + 31) >> 5)
                                                while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            mem[_1021 + 32 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
                                            _1032 = mem[_1021]
                                            depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_1021]
                                            mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                            if not _1032:
                                                s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                                while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                                s = _1021 + 32
                                                while _1021 + (32 * _1032) + 32 > s:
                                                    stor[t] = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _1032) + 31) >> 5)
                                                while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                    stor[s] = 0
                                                    s = s + 1
                                                    continue 
                            idx = idx + 1
                            continue 
                        if not uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_16):
                            uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_16) = 1
                            if False or bool(uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_24)):
                                mem[mem[64]] = 0x29ae1dd000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_40)
                                mem[mem[64] + 36] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                                mem[mem[64] + 68] = 1
                                require ext_code.size(stor2)
                                call stor2.0x29ae1dd0 with:
                                     gas gas_remaining wei
                                    args address(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_0), uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024), 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            mem[0] = ext_call.return_data[0] - 2
                            mem[32] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 8)
                            if sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 2].field_0 > depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            _891 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_891] = depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768
                            mem[_891 + 32] = 0
                            if not depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768 - sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 2].field_0:
                                mem[_891 + 64] = 0
                                mem[0] = ext_call.return_data[0] - 1
                                mem[32] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 8)
                                sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_0 = depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768
                                sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_256 = 0
                                sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_512 = 0
                                if not ext_call.return_data[0] - 1:
                                    depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536 = 0
                                    mem[mem[64] + 4] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x2ae834e0 with:
                                            gas gas_remaining wei
                                           args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require uint8(ext_call.return_data[0]) <= test266151307()
                                    _938 = mem[64]
                                    mem[mem[64]] = uint8(ext_call.return_data[0])
                                    mem[64] = mem[64] + (32 * uint8(ext_call.return_data[0])) + 32
                                    if not uint8(ext_call.return_data[0]):
                                        _953 = mem[_938]
                                        depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_938]
                                        mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                        if not _953:
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            s = _938 + 32
                                            while _938 + (32 * _953) + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _953) + 31) >> 5)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        mem[_938 + 32 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
                                        _966 = mem[_938]
                                        depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_938]
                                        mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                        if not _966:
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            s = _938 + 32
                                            while _938 + (32 * _966) + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _966) + 31) >> 5)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                else:
                                    mem[32] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 8)
                                    mem[mem[64] + 36] = ext_call.return_data[0] - 2
                                    require ext_code.size(stor3)
                                    staticcall stor3.0xcb4b3022 with:
                                            gas gas_remaining wei
                                           args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024), ext_call.return_data[0] - 2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require uint8(ext_call.return_data[0]) < depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_2048
                                    mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 8
                                    stor[('array', 8, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor16', 16)))))), ('name', 'depositFee', 7))) + uint8(ext_call.return_data[0])].field_0 += sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 2].field_512
                                    depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536 = 0
                                    mem[mem[64] + 4] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x2ae834e0 with:
                                            gas gas_remaining wei
                                           args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require uint8(ext_call.return_data[0]) <= test266151307()
                                    _986 = mem[64]
                                    mem[mem[64]] = uint8(ext_call.return_data[0])
                                    mem[64] = mem[64] + (32 * uint8(ext_call.return_data[0])) + 32
                                    if not uint8(ext_call.return_data[0]):
                                        _995 = mem[_986]
                                        depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_986]
                                        mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                        if not _995:
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            s = _986 + 32
                                            while _986 + (32 * _995) + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _995) + 31) >> 5)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        mem[_986 + 32 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
                                        _1004 = mem[_986]
                                        depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_986]
                                        mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                        if not _1004:
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            s = _986 + 32
                                            while _986 + (32 * _1004) + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _1004) + 31) >> 5)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                            else:
                                if 0 / depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768 - sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 2].field_0:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                mem[_891 + 64] = 0
                                mem[0] = ext_call.return_data[0] - 1
                                mem[32] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 8)
                                sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_0 = depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_768
                                sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_256 = 0
                                sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 1].field_512 = 0
                                if not ext_call.return_data[0] - 1:
                                    depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536 = 0
                                    mem[mem[64] + 4] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x2ae834e0 with:
                                            gas gas_remaining wei
                                           args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require uint8(ext_call.return_data[0]) <= test266151307()
                                    _951 = mem[64]
                                    mem[mem[64]] = uint8(ext_call.return_data[0])
                                    mem[64] = mem[64] + (32 * uint8(ext_call.return_data[0])) + 32
                                    if not uint8(ext_call.return_data[0]):
                                        _962 = mem[_951]
                                        depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_951]
                                        mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                        if not _962:
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            s = _951 + 32
                                            while _951 + (32 * _962) + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _962) + 31) >> 5)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        mem[_951 + 32 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
                                        _970 = mem[_951]
                                        depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_951]
                                        mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                        if not _970:
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            s = _951 + 32
                                            while _951 + (32 * _970) + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _970) + 31) >> 5)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                else:
                                    mem[32] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 8)
                                    mem[mem[64] + 36] = ext_call.return_data[0] - 2
                                    require ext_code.size(stor3)
                                    staticcall stor3.0xcb4b3022 with:
                                            gas gas_remaining wei
                                           args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024), ext_call.return_data[0] - 2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require uint8(ext_call.return_data[0]) < depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_2048
                                    mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 8
                                    stor[('array', 8, ('map', ('type', 16, ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 8, 0, 248, ('param', 'arg1')), ('name', 'stor16', 16)))))), ('name', 'depositFee', 7))) + uint8(ext_call.return_data[0])].field_0 += sub_fb33ee3d[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)][ext_call.return_data[0] - 2].field_512
                                    depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1536 = 0
                                    mem[mem[64] + 4] = uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1040)
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x2ae834e0 with:
                                            gas gas_remaining wei
                                           args uint8(depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1024)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require uint8(ext_call.return_data[0]) <= test266151307()
                                    _993 = mem[64]
                                    mem[mem[64]] = uint8(ext_call.return_data[0])
                                    mem[64] = mem[64] + (32 * uint8(ext_call.return_data[0])) + 32
                                    if not uint8(ext_call.return_data[0]):
                                        _1002 = mem[_993]
                                        depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_993]
                                        mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                        if not _1002:
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            s = _993 + 32
                                            while _993 + (32 * _1002) + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _1002) + 31) >> 5)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        mem[_993 + 32 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
                                        _1010 = mem[_993]
                                        depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 = mem[_993]
                                        mem[0] = sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7
                                        if not _1010:
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7)
                                            s = _993 + 32
                                            while _993 + (32 * _1010) + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + (Mask(251, 0, (32 * _1010) + 31) >> 5)
                                            while sha3(sha3(uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240), 7) + 7) + depositFee[uint16(stor16[arg1 << 248][uint16(idx) / 16].field_(16 * idx % 16) - 240)].field_1792 > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
        idx = idx + 1
        continue 
}

function sub_d34a5eef(?) payable {
    require calldata.size - 4 >= 32
    if not stor6[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    require ext_code.size(stor3)
    staticcall stor3.0x2ae834e0 with:
            gas gas_remaining wei
           args uint8(depositFee[arg1 << 240].field_1040)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not depositFee[arg1 << 240].field_1280:
        if not depositFee[arg1 << 240].field_1792:
            if not depositFee[arg1 << 240].field_2048:
                if block.timestamp == depositFee[arg1 << 240].field_512:
                    mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                    if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                    idx = 0
                    while uint8(idx) < 10:
                        if uint8(idx) >= uint8(ext_call.return_data[0]):
                            require uint8(idx + 1) < 11
                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                        else:
                            if not depositFee[arg1 << 240].field_256:
                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                mem[0] = sha3(arg1 << 240, 7) + 7
                                require uint8(idx + 1) < 11
                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                            else:
                                require uint8(idx) < depositFee[arg1 << 240].field_1280
                                if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                else:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1280
                                    if depositFee[arg1 << 240].field_256 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require depositFee[arg1 << 240].field_256
                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                    if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                        idx = idx + 1
                        continue 
                else:
                    if not depositFee[arg1 << 240].field_256:
                        mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                        if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                        idx = 0
                        while uint8(idx) < 10:
                            if uint8(idx) >= uint8(ext_call.return_data[0]):
                                require uint8(idx + 1) < 11
                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                            else:
                                if not depositFee[arg1 << 240].field_256:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                else:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1280
                                    if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1792
                                        mem[0] = sha3(arg1 << 240, 7) + 7
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    else:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1280
                                        if depositFee[arg1 << 240].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require depositFee[arg1 << 240].field_256
                                        require uint8(idx) < depositFee[arg1 << 240].field_1792
                                        mem[0] = sha3(arg1 << 240, 7) + 7
                                        if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                            idx = idx + 1
                            continue 
                    else:
                        if not uint8(depositFee[arg1 << 240].field_24):
                            mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                            if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                            idx = 0
                            while uint8(idx) < 10:
                                if uint8(idx) >= uint8(ext_call.return_data[0]):
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                                else:
                                    if not depositFee[arg1 << 240].field_256:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1792
                                        mem[0] = sha3(arg1 << 240, 7) + 7
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    else:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1280
                                        if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                        else:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1280
                                            if depositFee[arg1 << 240].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require depositFee[arg1 << 240].field_256
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                idx = idx + 1
                                continue 
                        else:
                            if not uint8(depositFee[arg1 << 240].field_16):
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                                if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                                idx = 0
                                while uint8(idx) < 10:
                                    if uint8(idx) >= uint8(ext_call.return_data[0]):
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                                    else:
                                        if not depositFee[arg1 << 240].field_256:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                        else:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1280
                                            if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                mem[0] = sha3(arg1 << 240, 7) + 7
                                                require uint8(idx + 1) < 11
                                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                            else:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1280
                                                if depositFee[arg1 << 240].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require depositFee[arg1 << 240].field_256
                                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                mem[0] = sha3(arg1 << 240, 7) + 7
                                                if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                require uint8(idx + 1) < 11
                                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    idx = idx + 1
                                    continue 
                            else:
                                require ext_code.size(stor2)
                                staticcall stor2.0x75d813cd with:
                                        gas gas_remaining wei
                                       args depositFee[arg1 << 240].field_512, address(depositFee[arg1 << 240].field_0), uint8(depositFee[arg1 << 240].field_1040)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                                if ext_call.return_data[0] + depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = ext_call.return_data[0] + depositFee[arg1 << 240].field_1536
                                idx = 0
                                while uint8(idx) < 10:
                                    if uint8(idx) >= uint8(ext_call.return_data[0]):
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                                    else:
                                        if not depositFee[arg1 << 240].field_256:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                        else:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1280
                                            if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                mem[0] = sha3(arg1 << 240, 7) + 7
                                                require uint8(idx + 1) < 11
                                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                            else:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1280
                                                if not ext_call.return_data[0]:
                                                    if depositFee[arg1 << 240].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require depositFee[arg1 << 240].field_256
                                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                                    if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require uint8(idx + 1) < 11
                                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                                else:
                                                    if stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / ext_call.return_data[0] != stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 1445 len 31]
                                                    if depositFee[arg1 << 240].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require depositFee[arg1 << 240].field_256
                                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                                    if (stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require uint8(idx + 1) < 11
                                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    idx = idx + 1
                                    continue 
            else:
                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + 992] = depositFee[arg1 << 240][8].field_0
                idx = (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + 992
                s = 0
                while (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 960 > idx:
                    mem[idx + 32] = depositFee[arg1 << 240][s + 8].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if block.timestamp == depositFee[arg1 << 240].field_512:
                    mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                    if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                    idx = 0
                    while uint8(idx) < 10:
                        if uint8(idx) >= uint8(ext_call.return_data[0]):
                            require uint8(idx + 1) < 11
                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                        else:
                            if not depositFee[arg1 << 240].field_256:
                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                mem[0] = sha3(arg1 << 240, 7) + 7
                                require uint8(idx + 1) < 11
                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                            else:
                                require uint8(idx) < depositFee[arg1 << 240].field_1280
                                if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                else:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1280
                                    if depositFee[arg1 << 240].field_256 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require depositFee[arg1 << 240].field_256
                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                    if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                        idx = idx + 1
                        continue 
                    var37001 = 352
                else:
                    if not depositFee[arg1 << 240].field_256:
                        mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                        if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                        idx = 0
                        while uint8(idx) < 10:
                            if uint8(idx) >= uint8(ext_call.return_data[0]):
                                require uint8(idx + 1) < 11
                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                            else:
                                if not depositFee[arg1 << 240].field_256:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                else:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1280
                                    if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1792
                                        mem[0] = sha3(arg1 << 240, 7) + 7
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    else:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1280
                                        if depositFee[arg1 << 240].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require depositFee[arg1 << 240].field_256
                                        require uint8(idx) < depositFee[arg1 << 240].field_1792
                                        mem[0] = sha3(arg1 << 240, 7) + 7
                                        if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                            idx = idx + 1
                            continue 
                        var38001 = 352
                    else:
                        if not uint8(depositFee[arg1 << 240].field_24):
                            mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                            if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                            idx = 0
                            while uint8(idx) < 10:
                                if uint8(idx) >= uint8(ext_call.return_data[0]):
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                                else:
                                    if not depositFee[arg1 << 240].field_256:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1792
                                        mem[0] = sha3(arg1 << 240, 7) + 7
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    else:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1280
                                        if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                        else:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1280
                                            if depositFee[arg1 << 240].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require depositFee[arg1 << 240].field_256
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                idx = idx + 1
                                continue 
                            var39001 = 352
                        else:
                            if not uint8(depositFee[arg1 << 240].field_16):
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                                if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                                idx = 0
                                while uint8(idx) < 10:
                                    if uint8(idx) >= uint8(ext_call.return_data[0]):
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                                    else:
                                        if not depositFee[arg1 << 240].field_256:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                        else:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1280
                                            if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                mem[0] = sha3(arg1 << 240, 7) + 7
                                                require uint8(idx + 1) < 11
                                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                            else:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1280
                                                if depositFee[arg1 << 240].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require depositFee[arg1 << 240].field_256
                                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                mem[0] = sha3(arg1 << 240, 7) + 7
                                                if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                require uint8(idx + 1) < 11
                                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    idx = idx + 1
                                    continue 
                            else:
                                require ext_code.size(stor2)
                                staticcall stor2.0x75d813cd with:
                                        gas gas_remaining wei
                                       args depositFee[arg1 << 240].field_512, address(depositFee[arg1 << 240].field_0), uint8(depositFee[arg1 << 240].field_1040)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                                if ext_call.return_data[0] + depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = ext_call.return_data[0] + depositFee[arg1 << 240].field_1536
                                idx = 0
                                while uint8(idx) < 10:
                                    if uint8(idx) >= uint8(ext_call.return_data[0]):
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                                    else:
                                        if not depositFee[arg1 << 240].field_256:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                        else:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1280
                                            if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                mem[0] = sha3(arg1 << 240, 7) + 7
                                                require uint8(idx + 1) < 11
                                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                            else:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1280
                                                if not ext_call.return_data[0]:
                                                    if depositFee[arg1 << 240].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require depositFee[arg1 << 240].field_256
                                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                                    if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require uint8(idx + 1) < 11
                                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                                else:
                                                    if stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / ext_call.return_data[0] != stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 1445 len 31]
                                                    if depositFee[arg1 << 240].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require depositFee[arg1 << 240].field_256
                                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                                    if (stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require uint8(idx + 1) < 11
                                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    idx = idx + 1
                                    continue 
        else:
            idx = (32 * depositFee[arg1 << 240].field_1280) + 960
            s = 0
            while (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + 928 > idx:
                mem[idx + 32] = depositFee[arg1 << 240][s + 7].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if not depositFee[arg1 << 240].field_2048:
                if block.timestamp == depositFee[arg1 << 240].field_512:
                    mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                    if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                    idx = 0
                    while uint8(idx) < 10:
                        if uint8(idx) >= uint8(ext_call.return_data[0]):
                            require uint8(idx + 1) < 11
                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                        else:
                            if not depositFee[arg1 << 240].field_256:
                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                mem[0] = sha3(arg1 << 240, 7) + 7
                                require uint8(idx + 1) < 11
                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                            else:
                                require uint8(idx) < depositFee[arg1 << 240].field_1280
                                if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                else:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1280
                                    if depositFee[arg1 << 240].field_256 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require depositFee[arg1 << 240].field_256
                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                    if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                        idx = idx + 1
                        continue 
                    var37001 = 352
                else:
                    if not depositFee[arg1 << 240].field_256:
                        mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                        if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                        idx = 0
                        while uint8(idx) < 10:
                            if uint8(idx) >= uint8(ext_call.return_data[0]):
                                require uint8(idx + 1) < 11
                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                            else:
                                if not depositFee[arg1 << 240].field_256:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                else:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1280
                                    if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1792
                                        mem[0] = sha3(arg1 << 240, 7) + 7
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    else:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1280
                                        if depositFee[arg1 << 240].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require depositFee[arg1 << 240].field_256
                                        require uint8(idx) < depositFee[arg1 << 240].field_1792
                                        mem[0] = sha3(arg1 << 240, 7) + 7
                                        if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                            idx = idx + 1
                            continue 
                        var38001 = 352
                    else:
                        if not uint8(depositFee[arg1 << 240].field_24):
                            mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                            if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                            idx = 0
                            while uint8(idx) < 10:
                                if uint8(idx) >= uint8(ext_call.return_data[0]):
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                                else:
                                    if not depositFee[arg1 << 240].field_256:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1792
                                        mem[0] = sha3(arg1 << 240, 7) + 7
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    else:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1280
                                        if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                        else:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1280
                                            if depositFee[arg1 << 240].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require depositFee[arg1 << 240].field_256
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                idx = idx + 1
                                continue 
                            var39001 = 352
                        else:
                            if not uint8(depositFee[arg1 << 240].field_16):
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                                if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                                idx = 0
                                while uint8(idx) < 10:
                                    if uint8(idx) >= uint8(ext_call.return_data[0]):
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                                    else:
                                        if not depositFee[arg1 << 240].field_256:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                        else:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1280
                                            if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                mem[0] = sha3(arg1 << 240, 7) + 7
                                                require uint8(idx + 1) < 11
                                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                            else:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1280
                                                if depositFee[arg1 << 240].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require depositFee[arg1 << 240].field_256
                                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                mem[0] = sha3(arg1 << 240, 7) + 7
                                                if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                require uint8(idx + 1) < 11
                                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    idx = idx + 1
                                    continue 
                                var40001 = 352
                            else:
                                require ext_code.size(stor2)
                                staticcall stor2.0x75d813cd with:
                                        gas gas_remaining wei
                                       args depositFee[arg1 << 240].field_512, address(depositFee[arg1 << 240].field_0), uint8(depositFee[arg1 << 240].field_1040)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                                if ext_call.return_data[0] + depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = ext_call.return_data[0] + depositFee[arg1 << 240].field_1536
                                idx = 0
                                while uint8(idx) < 10:
                                    if uint8(idx) >= uint8(ext_call.return_data[0]):
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                                    else:
                                        if not depositFee[arg1 << 240].field_256:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                        else:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1280
                                            if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                mem[0] = sha3(arg1 << 240, 7) + 7
                                                require uint8(idx + 1) < 11
                                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                            else:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1280
                                                if not ext_call.return_data[0]:
                                                    if depositFee[arg1 << 240].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require depositFee[arg1 << 240].field_256
                                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                                    if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require uint8(idx + 1) < 11
                                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                                else:
                                                    if stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / ext_call.return_data[0] != stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 1445 len 31]
                                                    if depositFee[arg1 << 240].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require depositFee[arg1 << 240].field_256
                                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                                    if (stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require uint8(idx + 1) < 11
                                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    idx = idx + 1
                                    continue 
                                var42001 = 352
            else:
                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + 992] = depositFee[arg1 << 240][8].field_0
                idx = (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + 992
                s = 0
                while (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 960 > idx:
                    mem[idx + 32] = depositFee[arg1 << 240][s + 8].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if block.timestamp == depositFee[arg1 << 240].field_512:
                    mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                    if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                    idx = 0
                    while uint8(idx) < 10:
                        if uint8(idx) >= uint8(ext_call.return_data[0]):
                            require uint8(idx + 1) < 11
                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                        else:
                            if not depositFee[arg1 << 240].field_256:
                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                mem[0] = sha3(arg1 << 240, 7) + 7
                                require uint8(idx + 1) < 11
                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                            else:
                                require uint8(idx) < depositFee[arg1 << 240].field_1280
                                if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                else:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1280
                                    if depositFee[arg1 << 240].field_256 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require depositFee[arg1 << 240].field_256
                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                    if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                        idx = idx + 1
                        continue 
                    var41001 = 352
                else:
                    if not depositFee[arg1 << 240].field_256:
                        mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                        if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                        idx = 0
                        while uint8(idx) < 10:
                            if uint8(idx) >= uint8(ext_call.return_data[0]):
                                require uint8(idx + 1) < 11
                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                            else:
                                if not depositFee[arg1 << 240].field_256:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                else:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1280
                                    if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1792
                                        mem[0] = sha3(arg1 << 240, 7) + 7
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    else:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1280
                                        if depositFee[arg1 << 240].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require depositFee[arg1 << 240].field_256
                                        require uint8(idx) < depositFee[arg1 << 240].field_1792
                                        mem[0] = sha3(arg1 << 240, 7) + 7
                                        if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                            idx = idx + 1
                            continue 
                        var42001 = 352
                    else:
                        if not uint8(depositFee[arg1 << 240].field_24):
                            mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                            if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                            idx = 0
                            while uint8(idx) < 10:
                                if uint8(idx) >= uint8(ext_call.return_data[0]):
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                                else:
                                    if not depositFee[arg1 << 240].field_256:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1792
                                        mem[0] = sha3(arg1 << 240, 7) + 7
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    else:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1280
                                        if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                        else:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1280
                                            if depositFee[arg1 << 240].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require depositFee[arg1 << 240].field_256
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                idx = idx + 1
                                continue 
                            var43001 = 352
                        else:
                            if not uint8(depositFee[arg1 << 240].field_16):
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                                if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                                idx = 0
                                while uint8(idx) < 10:
                                    if uint8(idx) >= uint8(ext_call.return_data[0]):
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                                    else:
                                        if not depositFee[arg1 << 240].field_256:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                        else:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1280
                                            if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                mem[0] = sha3(arg1 << 240, 7) + 7
                                                require uint8(idx + 1) < 11
                                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                            else:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1280
                                                if depositFee[arg1 << 240].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require depositFee[arg1 << 240].field_256
                                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                mem[0] = sha3(arg1 << 240, 7) + 7
                                                if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                require uint8(idx + 1) < 11
                                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    idx = idx + 1
                                    continue 
                            else:
                                require ext_code.size(stor2)
                                staticcall stor2.0x75d813cd with:
                                        gas gas_remaining wei
                                       args depositFee[arg1 << 240].field_512, address(address(depositFee[arg1 << 240].field_40)), uint8(depositFee[arg1 << 240].field_1040)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                                if ext_call.return_data[0] + depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = ext_call.return_data[0] + depositFee[arg1 << 240].field_1536
                                idx = 0
                                while uint8(idx) < 10:
                                    if uint8(idx) >= uint8(ext_call.return_data[0]):
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                                    else:
                                        if not depositFee[arg1 << 240].field_256:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                        else:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1280
                                            if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                mem[0] = sha3(arg1 << 240, 7) + 7
                                                require uint8(idx + 1) < 11
                                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                            else:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1280
                                                if not ext_call.return_data[0]:
                                                    if depositFee[arg1 << 240].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require depositFee[arg1 << 240].field_256
                                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                                    if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require uint8(idx + 1) < 11
                                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                                else:
                                                    if stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / ext_call.return_data[0] != stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 1445 len 31]
                                                    if depositFee[arg1 << 240].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require depositFee[arg1 << 240].field_256
                                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                                    if (stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require uint8(idx + 1) < 11
                                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    idx = idx + 1
                                    continue 
    else:
        idx = 928
        s = 0
        while (32 * depositFee[arg1 << 240].field_1280) + 896 > idx:
            mem[idx + 32] = depositFee[arg1 << 240][s + 5].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if not depositFee[arg1 << 240].field_1792:
            if not depositFee[arg1 << 240].field_2048:
                if block.timestamp == depositFee[arg1 << 240].field_512:
                    mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                    if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                    idx = 0
                    while uint8(idx) < 10:
                        if uint8(idx) >= uint8(ext_call.return_data[0]):
                            require uint8(idx + 1) < 11
                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                        else:
                            if not depositFee[arg1 << 240].field_256:
                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                mem[0] = sha3(arg1 << 240, 7) + 7
                                require uint8(idx + 1) < 11
                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                            else:
                                require uint8(idx) < depositFee[arg1 << 240].field_1280
                                if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                else:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1280
                                    if depositFee[arg1 << 240].field_256 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require depositFee[arg1 << 240].field_256
                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                    if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                        idx = idx + 1
                        continue 
                    var37001 = 352
                else:
                    if not depositFee[arg1 << 240].field_256:
                        mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                        if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                        idx = 0
                        while uint8(idx) < 10:
                            if uint8(idx) >= uint8(ext_call.return_data[0]):
                                require uint8(idx + 1) < 11
                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                            else:
                                if not depositFee[arg1 << 240].field_256:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                else:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1280
                                    if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1792
                                        mem[0] = sha3(arg1 << 240, 7) + 7
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    else:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1280
                                        if depositFee[arg1 << 240].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require depositFee[arg1 << 240].field_256
                                        require uint8(idx) < depositFee[arg1 << 240].field_1792
                                        mem[0] = sha3(arg1 << 240, 7) + 7
                                        if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                            idx = idx + 1
                            continue 
                        var38001 = 352
                    else:
                        if not uint8(depositFee[arg1 << 240].field_24):
                            mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                            if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                            idx = 0
                            while uint8(idx) < 10:
                                if uint8(idx) >= uint8(ext_call.return_data[0]):
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                                else:
                                    if not depositFee[arg1 << 240].field_256:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1792
                                        mem[0] = sha3(arg1 << 240, 7) + 7
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    else:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1280
                                        if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                        else:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1280
                                            if depositFee[arg1 << 240].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require depositFee[arg1 << 240].field_256
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                idx = idx + 1
                                continue 
                            var39001 = 352
                        else:
                            if not uint8(depositFee[arg1 << 240].field_16):
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                                if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                                idx = 0
                                while uint8(idx) < 10:
                                    if uint8(idx) >= uint8(ext_call.return_data[0]):
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                                    else:
                                        if not depositFee[arg1 << 240].field_256:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                        else:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1280
                                            if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                mem[0] = sha3(arg1 << 240, 7) + 7
                                                require uint8(idx + 1) < 11
                                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                            else:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1280
                                                if depositFee[arg1 << 240].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require depositFee[arg1 << 240].field_256
                                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                mem[0] = sha3(arg1 << 240, 7) + 7
                                                if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                require uint8(idx + 1) < 11
                                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    idx = idx + 1
                                    continue 
                                var40001 = 352
                            else:
                                require ext_code.size(stor2)
                                staticcall stor2.0x75d813cd with:
                                        gas gas_remaining wei
                                       args depositFee[arg1 << 240].field_512, address(depositFee[arg1 << 240].field_0), uint8(depositFee[arg1 << 240].field_1040)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                                if ext_call.return_data[0] + depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = ext_call.return_data[0] + depositFee[arg1 << 240].field_1536
                                idx = 0
                                while uint8(idx) < 10:
                                    if uint8(idx) >= uint8(ext_call.return_data[0]):
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                                    else:
                                        if not depositFee[arg1 << 240].field_256:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                        else:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1280
                                            if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                mem[0] = sha3(arg1 << 240, 7) + 7
                                                require uint8(idx + 1) < 11
                                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                            else:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1280
                                                if not ext_call.return_data[0]:
                                                    if depositFee[arg1 << 240].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require depositFee[arg1 << 240].field_256
                                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                                    if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require uint8(idx + 1) < 11
                                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                                else:
                                                    if stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / ext_call.return_data[0] != stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 1445 len 31]
                                                    if depositFee[arg1 << 240].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require depositFee[arg1 << 240].field_256
                                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                                    if (stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require uint8(idx + 1) < 11
                                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    idx = idx + 1
                                    continue 
                                var42001 = 352
            else:
                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + 992] = depositFee[arg1 << 240][8].field_0
                idx = (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + 992
                s = 0
                while (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 960 > idx:
                    mem[idx + 32] = depositFee[arg1 << 240][s + 8].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if block.timestamp == depositFee[arg1 << 240].field_512:
                    mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                    if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                    idx = 0
                    while uint8(idx) < 10:
                        if uint8(idx) >= uint8(ext_call.return_data[0]):
                            require uint8(idx + 1) < 11
                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                        else:
                            if not depositFee[arg1 << 240].field_256:
                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                mem[0] = sha3(arg1 << 240, 7) + 7
                                require uint8(idx + 1) < 11
                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                            else:
                                require uint8(idx) < depositFee[arg1 << 240].field_1280
                                if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                else:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1280
                                    if depositFee[arg1 << 240].field_256 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require depositFee[arg1 << 240].field_256
                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                    if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                        idx = idx + 1
                        continue 
                    var41001 = 352
                else:
                    if not depositFee[arg1 << 240].field_256:
                        mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                        if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                        idx = 0
                        while uint8(idx) < 10:
                            if uint8(idx) >= uint8(ext_call.return_data[0]):
                                require uint8(idx + 1) < 11
                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                            else:
                                if not depositFee[arg1 << 240].field_256:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                else:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1280
                                    if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1792
                                        mem[0] = sha3(arg1 << 240, 7) + 7
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    else:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1280
                                        if depositFee[arg1 << 240].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require depositFee[arg1 << 240].field_256
                                        require uint8(idx) < depositFee[arg1 << 240].field_1792
                                        mem[0] = sha3(arg1 << 240, 7) + 7
                                        if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                            idx = idx + 1
                            continue 
                        var42001 = 352
                    else:
                        if not uint8(depositFee[arg1 << 240].field_24):
                            mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                            if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                            idx = 0
                            while uint8(idx) < 10:
                                if uint8(idx) >= uint8(ext_call.return_data[0]):
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                                else:
                                    if not depositFee[arg1 << 240].field_256:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1792
                                        mem[0] = sha3(arg1 << 240, 7) + 7
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    else:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1280
                                        if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                        else:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1280
                                            if depositFee[arg1 << 240].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require depositFee[arg1 << 240].field_256
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                idx = idx + 1
                                continue 
                            var43001 = 352
                        else:
                            if not uint8(depositFee[arg1 << 240].field_16):
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                                if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                                idx = 0
                                while uint8(idx) < 10:
                                    if uint8(idx) >= uint8(ext_call.return_data[0]):
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                                    else:
                                        if not depositFee[arg1 << 240].field_256:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                        else:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1280
                                            if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                mem[0] = sha3(arg1 << 240, 7) + 7
                                                require uint8(idx + 1) < 11
                                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                            else:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1280
                                                if depositFee[arg1 << 240].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require depositFee[arg1 << 240].field_256
                                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                mem[0] = sha3(arg1 << 240, 7) + 7
                                                if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                require uint8(idx + 1) < 11
                                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    idx = idx + 1
                                    continue 
                                var44001 = 352
                            else:
                                require ext_code.size(stor2)
                                staticcall stor2.0x75d813cd with:
                                        gas gas_remaining wei
                                       args depositFee[arg1 << 240].field_512, address(address(depositFee[arg1 << 240].field_40)), uint8(depositFee[arg1 << 240].field_1040)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                                if ext_call.return_data[0] + depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = ext_call.return_data[0] + depositFee[arg1 << 240].field_1536
                                idx = 0
                                while uint8(idx) < 10:
                                    if uint8(idx) >= uint8(ext_call.return_data[0]):
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                                    else:
                                        if not depositFee[arg1 << 240].field_256:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                        else:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1280
                                            if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                mem[0] = sha3(arg1 << 240, 7) + 7
                                                require uint8(idx + 1) < 11
                                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                            else:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1280
                                                if not ext_call.return_data[0]:
                                                    if depositFee[arg1 << 240].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require depositFee[arg1 << 240].field_256
                                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                                    if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require uint8(idx + 1) < 11
                                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                                else:
                                                    if stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / ext_call.return_data[0] != stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 1445 len 31]
                                                    if depositFee[arg1 << 240].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require depositFee[arg1 << 240].field_256
                                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                                    if (stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require uint8(idx + 1) < 11
                                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    idx = idx + 1
                                    continue 
                                var46001 = 352
        else:
            idx = (32 * depositFee[arg1 << 240].field_1280) + 960
            s = 0
            while (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + 928 > idx:
                mem[idx + 32] = depositFee[arg1 << 240][s + 7].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if not depositFee[arg1 << 240].field_2048:
                if block.timestamp == depositFee[arg1 << 240].field_512:
                    mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                    if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                    idx = 0
                    while uint8(idx) < 10:
                        if uint8(idx) >= uint8(ext_call.return_data[0]):
                            require uint8(idx + 1) < 11
                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                        else:
                            if not depositFee[arg1 << 240].field_256:
                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                mem[0] = sha3(arg1 << 240, 7) + 7
                                require uint8(idx + 1) < 11
                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                            else:
                                require uint8(idx) < depositFee[arg1 << 240].field_1280
                                if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                else:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1280
                                    if depositFee[arg1 << 240].field_256 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require depositFee[arg1 << 240].field_256
                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                    if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                        idx = idx + 1
                        continue 
                    var41001 = 352
                else:
                    if not depositFee[arg1 << 240].field_256:
                        mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                        if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                        idx = 0
                        while uint8(idx) < 10:
                            if uint8(idx) >= uint8(ext_call.return_data[0]):
                                require uint8(idx + 1) < 11
                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                            else:
                                if not depositFee[arg1 << 240].field_256:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                else:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1280
                                    if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1792
                                        mem[0] = sha3(arg1 << 240, 7) + 7
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    else:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1280
                                        if depositFee[arg1 << 240].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require depositFee[arg1 << 240].field_256
                                        require uint8(idx) < depositFee[arg1 << 240].field_1792
                                        mem[0] = sha3(arg1 << 240, 7) + 7
                                        if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                            idx = idx + 1
                            continue 
                        var42001 = 352
                    else:
                        if not uint8(depositFee[arg1 << 240].field_24):
                            mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                            if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                            idx = 0
                            while uint8(idx) < 10:
                                if uint8(idx) >= uint8(ext_call.return_data[0]):
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                                else:
                                    if not depositFee[arg1 << 240].field_256:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1792
                                        mem[0] = sha3(arg1 << 240, 7) + 7
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    else:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1280
                                        if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                        else:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1280
                                            if depositFee[arg1 << 240].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require depositFee[arg1 << 240].field_256
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                idx = idx + 1
                                continue 
                            var43001 = 352
                        else:
                            if not uint8(depositFee[arg1 << 240].field_16):
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                                if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                                idx = 0
                                while uint8(idx) < 10:
                                    if uint8(idx) >= uint8(ext_call.return_data[0]):
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                                    else:
                                        if not depositFee[arg1 << 240].field_256:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                        else:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1280
                                            if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                mem[0] = sha3(arg1 << 240, 7) + 7
                                                require uint8(idx + 1) < 11
                                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                            else:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1280
                                                if depositFee[arg1 << 240].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require depositFee[arg1 << 240].field_256
                                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                mem[0] = sha3(arg1 << 240, 7) + 7
                                                if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                require uint8(idx + 1) < 11
                                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    idx = idx + 1
                                    continue 
                                var44001 = 352
                            else:
                                require ext_code.size(stor2)
                                staticcall stor2.0x75d813cd with:
                                        gas gas_remaining wei
                                       args depositFee[arg1 << 240].field_512, address(address(depositFee[arg1 << 240].field_40)), uint8(depositFee[arg1 << 240].field_1040)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                                if ext_call.return_data[0] + depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = ext_call.return_data[0] + depositFee[arg1 << 240].field_1536
                                idx = 0
                                while uint8(idx) < 10:
                                    if uint8(idx) >= uint8(ext_call.return_data[0]):
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                                    else:
                                        if not depositFee[arg1 << 240].field_256:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                        else:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1280
                                            if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                mem[0] = sha3(arg1 << 240, 7) + 7
                                                require uint8(idx + 1) < 11
                                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                            else:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1280
                                                if not ext_call.return_data[0]:
                                                    if depositFee[arg1 << 240].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require depositFee[arg1 << 240].field_256
                                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                                    if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require uint8(idx + 1) < 11
                                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                                else:
                                                    if stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / ext_call.return_data[0] != stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 1445 len 31]
                                                    if depositFee[arg1 << 240].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require depositFee[arg1 << 240].field_256
                                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                                    if (stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require uint8(idx + 1) < 11
                                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    idx = idx + 1
                                    continue 
                                var46001 = 352
            else:
                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + 992] = depositFee[arg1 << 240][8].field_0
                idx = (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + 992
                s = 0
                while (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 960 > idx:
                    mem[idx + 32] = depositFee[arg1 << 240][s + 8].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if block.timestamp == depositFee[arg1 << 240].field_512:
                    mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                    if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                    idx = 0
                    while uint8(idx) < 10:
                        if uint8(idx) >= uint8(ext_call.return_data[0]):
                            require uint8(idx + 1) < 11
                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                        else:
                            if not depositFee[arg1 << 240].field_256:
                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                mem[0] = sha3(arg1 << 240, 7) + 7
                                require uint8(idx + 1) < 11
                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                            else:
                                require uint8(idx) < depositFee[arg1 << 240].field_1280
                                if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                else:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1280
                                    if depositFee[arg1 << 240].field_256 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require depositFee[arg1 << 240].field_256
                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                    if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                        idx = idx + 1
                        continue 
                    var45001 = 352
                else:
                    if not depositFee[arg1 << 240].field_256:
                        mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                        if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                        idx = 0
                        while uint8(idx) < 10:
                            if uint8(idx) >= uint8(ext_call.return_data[0]):
                                require uint8(idx + 1) < 11
                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                            else:
                                if not depositFee[arg1 << 240].field_256:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                else:
                                    require uint8(idx) < depositFee[arg1 << 240].field_1280
                                    if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1792
                                        mem[0] = sha3(arg1 << 240, 7) + 7
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    else:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1280
                                        if depositFee[arg1 << 240].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require depositFee[arg1 << 240].field_256
                                        require uint8(idx) < depositFee[arg1 << 240].field_1792
                                        mem[0] = sha3(arg1 << 240, 7) + 7
                                        if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                            idx = idx + 1
                            continue 
                        var46001 = 352
                    else:
                        if not uint8(depositFee[arg1 << 240].field_24):
                            mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                            if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                            idx = 0
                            while uint8(idx) < 10:
                                if uint8(idx) >= uint8(ext_call.return_data[0]):
                                    require uint8(idx + 1) < 11
                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                                else:
                                    if not depositFee[arg1 << 240].field_256:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1792
                                        mem[0] = sha3(arg1 << 240, 7) + 7
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    else:
                                        require uint8(idx) < depositFee[arg1 << 240].field_1280
                                        if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                        else:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1280
                                            if depositFee[arg1 << 240].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require depositFee[arg1 << 240].field_256
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                idx = idx + 1
                                continue 
                            var47001 = 352
                        else:
                            if not uint8(depositFee[arg1 << 240].field_16):
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                                if depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = depositFee[arg1 << 240].field_1536
                                idx = 0
                                while uint8(idx) < 10:
                                    if uint8(idx) >= uint8(ext_call.return_data[0]):
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                                    else:
                                        if not depositFee[arg1 << 240].field_256:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                        else:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1280
                                            if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                mem[0] = sha3(arg1 << 240, 7) + 7
                                                require uint8(idx + 1) < 11
                                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                            else:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1280
                                                if depositFee[arg1 << 240].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require depositFee[arg1 << 240].field_256
                                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                mem[0] = sha3(arg1 << 240, 7) + 7
                                                if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                require uint8(idx + 1) < 11
                                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    idx = idx + 1
                                    continue 
                            else:
                                require ext_code.size(stor2)
                                staticcall stor2.0x75d813cd with:
                                        gas gas_remaining wei
                                       args depositFee[arg1 << 240].field_512, address(address(depositFee[arg1 << 240].field_40)), uint8(depositFee[arg1 << 240].field_1040)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992 len 352] = call.data[calldata.size len 352]
                                if ext_call.return_data[0] + depositFee[arg1 << 240].field_1536 < depositFee[arg1 << 240].field_1536:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = ext_call.return_data[0] + depositFee[arg1 << 240].field_1536
                                idx = 0
                                while uint8(idx) < 10:
                                    if uint8(idx) >= uint8(ext_call.return_data[0]):
                                        require uint8(idx + 1) < 11
                                        mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = 0
                                    else:
                                        if not depositFee[arg1 << 240].field_256:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1792
                                            mem[0] = sha3(arg1 << 240, 7) + 7
                                            require uint8(idx + 1) < 11
                                            mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                        else:
                                            require uint8(idx) < depositFee[arg1 << 240].field_1280
                                            if 0 == stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                mem[0] = sha3(arg1 << 240, 7) + 7
                                                require uint8(idx + 1) < 11
                                                mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                            else:
                                                require uint8(idx) < depositFee[arg1 << 240].field_1280
                                                if not ext_call.return_data[0]:
                                                    if depositFee[arg1 << 240].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require depositFee[arg1 << 240].field_256
                                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                                    if (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require uint8(idx + 1) < 11
                                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (0 / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                                else:
                                                    if stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / ext_call.return_data[0] != stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 1445 len 31]
                                                    if depositFee[arg1 << 240].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require depositFee[arg1 << 240].field_256
                                                    require uint8(idx) < depositFee[arg1 << 240].field_1792
                                                    mem[0] = sha3(arg1 << 240, 7) + 7
                                                    if (stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 < stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require uint8(idx + 1) < 11
                                                    mem[(32 * uint8(idx + 1)) + (32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992] = (stor[('array', 5, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256) + stor[('array', 7, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'depositFee', 7))) + uint8(idx)].field_0
                                    idx = idx + 1
                                    continue 
    return mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 992], 
           mem[(32 * depositFee[arg1 << 240].field_1280) + (32 * depositFee[arg1 << 240].field_1792) + (32 * depositFee[arg1 << 240].field_2048) + 1024 len 320]
}



}
