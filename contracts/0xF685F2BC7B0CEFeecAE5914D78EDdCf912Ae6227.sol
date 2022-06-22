contract main {




// =====================  Runtime code  =====================


bool stor0; offset 256
uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
address owner;
uint256 stor1;
address stor2;
uint256 launchTimestamp;
array of uint16 stor4;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of struct depositFee;
mapping of struct userInfo;

function depositFee(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    return depositFee[arg1 << 240].field_1280
}

function isEarning(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(depositFee[arg1 << 240].field_512)
}

function launchTimestamp() payable {
    return launchTimestamp
}

function supply(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    return depositFee[arg1 << 240].field_256
}

function sub_73725781(?) payable {
    require calldata.size - 4 >= 32
    return depositFee[arg1].field_0, 
           depositFee[arg1].field_0,
           depositFee[arg1].field_256,
           bool(depositFee[arg1].field_512),
           depositFee[arg1].field_768,
           depositFee[arg1].field_1024,
           depositFee[arg1].field_1280
}

function sub_80b795c0(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function owner() payable {
    return owner
}

function sub_b0b0675c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor4.length
    return sub_b0b0675c[uint8(arg1)]
}

function token(uint16 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    return depositFee[arg1 << 240].field_16
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function userInfo(uint16 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function _fallback() payable {
    revert
}

function sub_3ed09099(?) payable {
    require calldata.size - 4 >= 96
}

function switchTotem(uint8 arg1, uint8 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
}

function isTotemInUse(uint8 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return 0
}

function selectedTotem(uint8 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return 0
}

function hypotheticalRewards(uint16 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return 0
}

function sub_c633e6c7(?) payable {
    require calldata.size - 4 >= 160
    if stor2 != msg.sender:
        revert with 0, 'Only cartographer'
}

function sub_0129f43b(?) payable {
    require calldata.size - 4 >= 96
    if stor2 != msg.sender:
        revert with 0, 'Only cartographer'
    launchTimestamp = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
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
    if not uint8(stor0.field_168):
        uint8(stor0.field_168) = 0
}

function sub_a5576dd2(?) payable {
    require calldata.size - 4 >= 160
    if stor2 != msg.sender:
        revert with 0, 'Only cartographer'
    if stor5[arg1 << 240]:
        revert with 0, 'duplicated!'
    if stor6[address(arg3)]:
        revert with 0, 'duplicated!'
    if arg2:
        require ext_code.size(stor2)
        call stor2.0x29ae1dd0 with:
             gas gas_remaining wei
            args address(arg3), 0, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor4.length++
    stor4[stor4.length.field_4].field_0 = !(65535 * 256^(2 * stor4.length % 16)) and stor4[stor4.length.field_4].field_0 or 256^(2 * stor4.length % 16) * arg1
    stor6[address(arg3)] = 1
    stor5[arg1 << 240] = 1
    depositFee[arg1 << 240].field_0 = arg1
    depositFee[arg1 << 240].field_16 = arg3
    depositFee[arg1 << 240].field_256 = 0
    depositFee[arg1 << 240].field_512 = uint8(arg2)
    depositFee[arg1 << 240].field_768 = block.timestamp
    depositFee[arg1 << 240].field_1024 = 0
    depositFee[arg1 << 240].field_1280 = arg4
}

function updatePool(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor5[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    if depositFee[arg1 << 240].field_768 != block.timestamp:
        if block.timestamp >= launchTimestamp:
            if depositFee[arg1 << 240].field_256:
                if depositFee[arg1 << 240].field_512:
                    require ext_code.size(stor2)
                    call stor2.0xc93ac180 with:
                         gas gas_remaining wei
                        args depositFee[arg1 << 240].field_768, depositFee[arg1 << 240].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if depositFee[arg1 << 240].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[arg1 << 240].field_256
                        if (0 / depositFee[arg1 << 240].field_256) + depositFee[arg1 << 240].field_1024 < depositFee[arg1 << 240].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[arg1 << 240].field_1024 += 0 / depositFee[arg1 << 240].field_256
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
                        if (10^12 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256) + depositFee[arg1 << 240].field_1024 < depositFee[arg1 << 240].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[arg1 << 240].field_1024 += 10^12 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256
        depositFee[arg1 << 240].field_768 = block.timestamp
}

function sub_d81964c3(?) payable {
    require calldata.size - 4 >= 96
    if stor2 != msg.sender:
        revert with 0, 'Only cartographer'
    if not stor5[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    if not stor5[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    if depositFee[arg1 << 240].field_768 != block.timestamp:
        if block.timestamp >= launchTimestamp:
            if depositFee[arg1 << 240].field_256:
                if depositFee[arg1 << 240].field_512:
                    require ext_code.size(stor2)
                    call stor2.0xc93ac180 with:
                         gas gas_remaining wei
                        args depositFee[arg1 << 240].field_768, depositFee[arg1 << 240].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if depositFee[arg1 << 240].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[arg1 << 240].field_256
                        if (0 / depositFee[arg1 << 240].field_256) + depositFee[arg1 << 240].field_1024 < depositFee[arg1 << 240].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[arg1 << 240].field_1024 += 0 / depositFee[arg1 << 240].field_256
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
                        if (10^12 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256) + depositFee[arg1 << 240].field_1024 < depositFee[arg1 << 240].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[arg1 << 240].field_1024 += 10^12 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256
        depositFee[arg1 << 240].field_768 = block.timestamp
    if arg2 != bool(depositFee[arg1 << 240].field_512):
        require ext_code.size(stor2)
        call stor2.0x29ae1dd0 with:
             gas gas_remaining wei
            args depositFee[arg1 << 240].field_0, 0, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    depositFee[arg1 << 240].field_512 = uint8(arg2)
    depositFee[arg1 << 240].field_1280 = arg3
}

function massUpdatePools() payable {
    if stor2 != msg.sender:
        revert with 0, 'Only cartographer'
    idx = 0
    while uint16(idx) < stor4.length:
        if not stor5[stor4[uint16(idx) / 16].field_(16 * idx % 16) - 240]:
            revert with 0, 'Pool doesnt exist'
        mem[0] = stor('array', ('mask_shl', 12, 4, -4, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        mem[32] = 7
        if depositFee[stor4[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_768 != block.timestamp:
            if block.timestamp >= launchTimestamp:
                if depositFee[stor4[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                    if depositFee[stor4[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_512:
                        mem[100] = depositFee[stor4[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_768
                        mem[132] = depositFee[stor4[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_16
                        mem[164] = 0
                        require ext_code.size(stor2)
                        call stor2.0xc93ac180 with:
                             gas gas_remaining wei
                            args depositFee[stor4[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_768, depositFee[stor4[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_0, 0
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if depositFee[stor4[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require depositFee[stor4[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                            if (0 / depositFee[stor4[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256) + depositFee[stor4[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < depositFee[stor4[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            depositFee[stor4[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += 0 / depositFee[stor4[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                        else:
                            if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if depositFee[stor4[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require depositFee[stor4[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                            if (10^12 * ext_call.return_data[0] / depositFee[stor4[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256) + depositFee[stor4[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < depositFee[stor4[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            depositFee[stor4[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += 10^12 * ext_call.return_data[0] / depositFee[stor4[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
            depositFee[stor4[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_768 = block.timestamp
        idx = idx + 1
        continue 
}

function sub_ef39a716(?) payable {
    require calldata.size - 4 >= 128
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if stor2 != msg.sender:
        revert with 0, 'Only cartographer'
    if not stor5[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    if not arg3:
        revert with 0, 'User not 0'
    if not arg2:
        revert with 0, 'Bad transfer'
    if userInfo[arg1 << 240][address(arg3)].field_256 < arg2:
        revert with 0, 'Bad transfer'
    if not stor5[stor7[arg1 << 240].field_0]:
        revert with 0, 'Pool doesnt exist'
    if depositFee[depositFee[arg1 << 240].field_0].field_768 != block.timestamp:
        if block.timestamp >= launchTimestamp:
            if depositFee[depositFee[arg1 << 240].field_0].field_256:
                if depositFee[depositFee[arg1 << 240].field_0].field_512:
                    require ext_code.size(stor2)
                    call stor2.0xc93ac180 with:
                         gas gas_remaining wei
                        args depositFee[depositFee[arg1 << 240].field_0].field_768, depositFee[depositFee[arg1 << 240].field_0].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if depositFee[depositFee[arg1 << 240].field_0].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[depositFee[arg1 << 240].field_0].field_256
                        if (0 / depositFee[depositFee[arg1 << 240].field_0].field_256) + depositFee[depositFee[arg1 << 240].field_0].field_1024 < depositFee[depositFee[arg1 << 240].field_0].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[depositFee[arg1 << 240].field_0].field_1024 += 0 / depositFee[depositFee[arg1 << 240].field_0].field_256
                    else:
                        if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if depositFee[depositFee[arg1 << 240].field_0].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[depositFee[arg1 << 240].field_0].field_256
                        if (10^12 * ext_call.return_data[0] / depositFee[depositFee[arg1 << 240].field_0].field_256) + depositFee[depositFee[arg1 << 240].field_0].field_1024 < depositFee[depositFee[arg1 << 240].field_0].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[depositFee[arg1 << 240].field_0].field_1024 += 10^12 * ext_call.return_data[0] / depositFee[depositFee[arg1 << 240].field_0].field_256
        depositFee[depositFee[arg1 << 240].field_0].field_768 = block.timestamp
    if not userInfo[arg1 << 240][address(arg3)].field_256:
        if userInfo[arg1 << 240][address(arg3)].field_0 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -userInfo[arg1 << 240][address(arg3)].field_0:
            require ext_code.size(stor2)
            call stor2.0x76d413d8 with:
                 gas gas_remaining wei
                args address(arg3), -userInfo[arg1 << 240][address(arg3)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / userInfo[arg1 << 240][address(arg3)].field_256 != depositFee[arg1 << 240].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1 << 240][address(arg3)].field_0 > depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12) - userInfo[arg1 << 240][address(arg3)].field_0:
            require ext_code.size(stor2)
            call stor2.0x76d413d8 with:
                 gas gas_remaining wei
                args address(arg3), (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12) - userInfo[arg1 << 240][address(arg3)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    if arg2 > depositFee[arg1 << 240].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    depositFee[arg1 << 240].field_256 -= arg2
    if arg2 > userInfo[arg1 << 240][address(arg3)].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    userInfo[arg1 << 240][address(arg3)].field_256 -= arg2
    if not userInfo[arg1 << 240][address(arg3)].field_256 - arg2:
        userInfo[arg1 << 240][address(arg3)].field_0 = 0
    else:
        if (userInfo[arg1 << 240][address(arg3)].field_256 * depositFee[arg1 << 240].field_1024) - (arg2 * depositFee[arg1 << 240].field_1024) / userInfo[arg1 << 240][address(arg3)].field_256 - arg2 != depositFee[arg1 << 240].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        userInfo[arg1 << 240][address(arg3)].field_0 = (userInfo[arg1 << 240][address(arg3)].field_256 * depositFee[arg1 << 240].field_1024) - (arg2 * depositFee[arg1 << 240].field_1024) / 10^12
    stor1 = 1
    return arg2, 0
}

function sub_442f9583(?) payable {
    require calldata.size - 4 >= 160
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if stor2 != msg.sender:
        revert with 0, 'Only cartographer'
    if not stor5[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    if not arg3:
        revert with 0, 'User not 0'
    if not stor5[stor7[arg1 << 240].field_0]:
        revert with 0, 'Pool doesnt exist'
    if depositFee[depositFee[arg1 << 240].field_0].field_768 != block.timestamp:
        if block.timestamp >= launchTimestamp:
            if depositFee[depositFee[arg1 << 240].field_0].field_256:
                if depositFee[depositFee[arg1 << 240].field_0].field_512:
                    require ext_code.size(stor2)
                    call stor2.0xc93ac180 with:
                         gas gas_remaining wei
                        args depositFee[depositFee[arg1 << 240].field_0].field_768, depositFee[depositFee[arg1 << 240].field_0].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if depositFee[depositFee[arg1 << 240].field_0].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[depositFee[arg1 << 240].field_0].field_256
                        if (0 / depositFee[depositFee[arg1 << 240].field_0].field_256) + depositFee[depositFee[arg1 << 240].field_0].field_1024 < depositFee[depositFee[arg1 << 240].field_0].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[depositFee[arg1 << 240].field_0].field_1024 += 0 / depositFee[depositFee[arg1 << 240].field_0].field_256
                    else:
                        if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if depositFee[depositFee[arg1 << 240].field_0].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[depositFee[arg1 << 240].field_0].field_256
                        if (10^12 * ext_call.return_data[0] / depositFee[depositFee[arg1 << 240].field_0].field_256) + depositFee[depositFee[arg1 << 240].field_0].field_1024 < depositFee[depositFee[arg1 << 240].field_0].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[depositFee[arg1 << 240].field_0].field_1024 += 10^12 * ext_call.return_data[0] / depositFee[depositFee[arg1 << 240].field_0].field_256
        depositFee[depositFee[arg1 << 240].field_0].field_768 = block.timestamp
    if userInfo[arg1 << 240][address(arg3)].field_256:
        if not userInfo[arg1 << 240][address(arg3)].field_256:
            if userInfo[arg1 << 240][address(arg3)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[arg1 << 240][address(arg3)].field_0:
                require ext_code.size(stor2)
                call stor2.0x76d413d8 with:
                     gas gas_remaining wei
                    args address(arg3), -userInfo[arg1 << 240][address(arg3)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / userInfo[arg1 << 240][address(arg3)].field_256 != depositFee[arg1 << 240].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1 << 240][address(arg3)].field_0 > depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12) - userInfo[arg1 << 240][address(arg3)].field_0:
                require ext_code.size(stor2)
                call stor2.0x76d413d8 with:
                     gas gas_remaining wei
                    args address(arg3), (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12) - userInfo[arg1 << 240][address(arg3)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    if arg2:
        if arg2 + depositFee[arg1 << 240].field_256 < depositFee[arg1 << 240].field_256:
            revert with 0, 'SafeMath: addition overflow'
        depositFee[arg1 << 240].field_256 += arg2
    if arg2 + userInfo[arg1 << 240][address(arg3)].field_256 < userInfo[arg1 << 240][address(arg3)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    userInfo[arg1 << 240][address(arg3)].field_256 += arg2
    if not arg2 + userInfo[arg1 << 240][address(arg3)].field_256:
        userInfo[arg1 << 240][address(arg3)].field_0 = 0
    else:
        if (arg2 * depositFee[arg1 << 240].field_1024) + (userInfo[arg1 << 240][address(arg3)].field_256 * depositFee[arg1 << 240].field_1024) / arg2 + userInfo[arg1 << 240][address(arg3)].field_256 != depositFee[arg1 << 240].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        userInfo[arg1 << 240][address(arg3)].field_0 = (arg2 * depositFee[arg1 << 240].field_1024) + (userInfo[arg1 << 240][address(arg3)].field_256 * depositFee[arg1 << 240].field_1024) / 10^12
    stor1 = 1
    return arg2, 0
}

function sub_775dd80f(?) payable {
    require calldata.size - 4 >= 128
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if stor2 != msg.sender:
        revert with 0, 'Only cartographer'
    if not stor5[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    if not arg3:
        revert with 0, 'User not 0'
    if not arg2:
        revert with 0, 'Bad withdrawal'
    if userInfo[arg1 << 240][address(arg3)].field_256 < arg2:
        revert with 0, 'Bad withdrawal'
    if not stor5[stor7[arg1 << 240].field_0]:
        revert with 0, 'Pool doesnt exist'
    if depositFee[depositFee[arg1 << 240].field_0].field_768 != block.timestamp:
        if block.timestamp >= launchTimestamp:
            if depositFee[depositFee[arg1 << 240].field_0].field_256:
                if depositFee[depositFee[arg1 << 240].field_0].field_512:
                    require ext_code.size(stor2)
                    call stor2.0xc93ac180 with:
                         gas gas_remaining wei
                        args depositFee[depositFee[arg1 << 240].field_0].field_768, depositFee[depositFee[arg1 << 240].field_0].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if depositFee[depositFee[arg1 << 240].field_0].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[depositFee[arg1 << 240].field_0].field_256
                        if (0 / depositFee[depositFee[arg1 << 240].field_0].field_256) + depositFee[depositFee[arg1 << 240].field_0].field_1024 < depositFee[depositFee[arg1 << 240].field_0].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[depositFee[arg1 << 240].field_0].field_1024 += 0 / depositFee[depositFee[arg1 << 240].field_0].field_256
                    else:
                        if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if depositFee[depositFee[arg1 << 240].field_0].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[depositFee[arg1 << 240].field_0].field_256
                        if (10^12 * ext_call.return_data[0] / depositFee[depositFee[arg1 << 240].field_0].field_256) + depositFee[depositFee[arg1 << 240].field_0].field_1024 < depositFee[depositFee[arg1 << 240].field_0].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[depositFee[arg1 << 240].field_0].field_1024 += 10^12 * ext_call.return_data[0] / depositFee[depositFee[arg1 << 240].field_0].field_256
        depositFee[depositFee[arg1 << 240].field_0].field_768 = block.timestamp
    if not userInfo[arg1 << 240][address(arg3)].field_256:
        if userInfo[arg1 << 240][address(arg3)].field_0 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -userInfo[arg1 << 240][address(arg3)].field_0:
            require ext_code.size(stor2)
            call stor2.0x76d413d8 with:
                 gas gas_remaining wei
                args address(arg3), -userInfo[arg1 << 240][address(arg3)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / userInfo[arg1 << 240][address(arg3)].field_256 != depositFee[arg1 << 240].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1 << 240][address(arg3)].field_0 > depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12) - userInfo[arg1 << 240][address(arg3)].field_0:
            require ext_code.size(stor2)
            call stor2.0x76d413d8 with:
                 gas gas_remaining wei
                args address(arg3), (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12) - userInfo[arg1 << 240][address(arg3)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    if arg2 > depositFee[arg1 << 240].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    depositFee[arg1 << 240].field_256 -= arg2
    if arg2 > userInfo[arg1 << 240][address(arg3)].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    userInfo[arg1 << 240][address(arg3)].field_256 -= arg2
    if not userInfo[arg1 << 240][address(arg3)].field_256 - arg2:
        userInfo[arg1 << 240][address(arg3)].field_0 = 0
    else:
        if (userInfo[arg1 << 240][address(arg3)].field_256 * depositFee[arg1 << 240].field_1024) - (arg2 * depositFee[arg1 << 240].field_1024) / userInfo[arg1 << 240][address(arg3)].field_256 - arg2 != depositFee[arg1 << 240].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        userInfo[arg1 << 240][address(arg3)].field_0 = (userInfo[arg1 << 240][address(arg3)].field_256 * depositFee[arg1 << 240].field_1024) - (arg2 * depositFee[arg1 << 240].field_1024) / 10^12
    require ext_code.size(stor2)
    call stor2.0xb613ef84 with:
         gas gas_remaining wei
        args 0, 0, depositFee[arg1 << 240].field_0, depositFee[arg1 << 240].field_1280, arg2, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1 = 1
    return ext_call.return_data[0], 0
}

function rewards(uint16 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not stor5[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    if not arg2:
        revert with 0, 'User not 0'
    if block.timestamp <= depositFee[arg1 << 240].field_768:
        if not userInfo[arg1 << 240][address(arg2)].field_256:
            if userInfo[arg1 << 240][address(arg2)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1 << 240][address(arg2)].field_0, 0, 0, 0
        if depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg2)].field_256 / userInfo[arg1 << 240][address(arg2)].field_256 != depositFee[arg1 << 240].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1 << 240][address(arg2)].field_0 > depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg2)].field_256 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg2)].field_256 / 10^12) - userInfo[arg1 << 240][address(arg2)].field_0, 
               0,
               0,
               0
    if not depositFee[arg1 << 240].field_256:
        if not userInfo[arg1 << 240][address(arg2)].field_256:
            if userInfo[arg1 << 240][address(arg2)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1 << 240][address(arg2)].field_0, 0, 0, 0
        if depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg2)].field_256 / userInfo[arg1 << 240][address(arg2)].field_256 != depositFee[arg1 << 240].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1 << 240][address(arg2)].field_0 > depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg2)].field_256 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg2)].field_256 / 10^12) - userInfo[arg1 << 240][address(arg2)].field_0, 
               0,
               0,
               0
    require ext_code.size(stor2)
    staticcall stor2.0x75d813cd with:
            gas gas_remaining wei
           args depositFee[arg1 << 240].field_768, depositFee[arg1 << 240].field_0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if depositFee[arg1 << 240].field_256 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require depositFee[arg1 << 240].field_256
        if (0 / depositFee[arg1 << 240].field_256) + depositFee[arg1 << 240].field_1024 < depositFee[arg1 << 240].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1 << 240][address(arg2)].field_256:
            if userInfo[arg1 << 240][address(arg2)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1 << 240][address(arg2)].field_0, 0, 0, 0
        if (0 / depositFee[arg1 << 240].field_256 * userInfo[arg1 << 240][address(arg2)].field_256) + (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg2)].field_256) / userInfo[arg1 << 240][address(arg2)].field_256 != (0 / depositFee[arg1 << 240].field_256) + depositFee[arg1 << 240].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1 << 240][address(arg2)].field_0 > (0 / depositFee[arg1 << 240].field_256 * userInfo[arg1 << 240][address(arg2)].field_256) + (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg2)].field_256) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((0 / depositFee[arg1 << 240].field_256 * userInfo[arg1 << 240][address(arg2)].field_256) + (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg2)].field_256) / 10^12) - userInfo[arg1 << 240][address(arg2)].field_0, 
               0,
               0,
               0
    if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if depositFee[arg1 << 240].field_256 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require depositFee[arg1 << 240].field_256
    if (10^12 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256) + depositFee[arg1 << 240].field_1024 < depositFee[arg1 << 240].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1 << 240][address(arg2)].field_256:
        if userInfo[arg1 << 240][address(arg2)].field_0 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1 << 240][address(arg2)].field_0, 0, 0, 0
    if (10^12 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256 * userInfo[arg1 << 240][address(arg2)].field_256) + (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg2)].field_256) / userInfo[arg1 << 240][address(arg2)].field_256 != (10^12 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256) + depositFee[arg1 << 240].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1 << 240][address(arg2)].field_0 > (10^12 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256 * userInfo[arg1 << 240][address(arg2)].field_256) + (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg2)].field_256) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((10^12 * ext_call.return_data[0] / depositFee[arg1 << 240].field_256 * userInfo[arg1 << 240][address(arg2)].field_256) + (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg2)].field_256) / 10^12) - userInfo[arg1 << 240][address(arg2)].field_0, 
           0,
           0,
           0
}

function sub_42c53d2f(?) payable {
    require calldata.size - 4 >= 160
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if stor2 != msg.sender:
        revert with 0, 'Only cartographer'
    if not stor5[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    if not arg3:
        revert with 0, 'User not 0'
    if not stor5[stor7[arg1 << 240].field_0]:
        revert with 0, 'Pool doesnt exist'
    if depositFee[depositFee[arg1 << 240].field_0].field_768 != block.timestamp:
        if block.timestamp >= launchTimestamp:
            if depositFee[depositFee[arg1 << 240].field_0].field_256:
                if depositFee[depositFee[arg1 << 240].field_0].field_512:
                    require ext_code.size(stor2)
                    call stor2.0xc93ac180 with:
                         gas gas_remaining wei
                        args depositFee[depositFee[arg1 << 240].field_0].field_768, depositFee[depositFee[arg1 << 240].field_0].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if depositFee[depositFee[arg1 << 240].field_0].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[depositFee[arg1 << 240].field_0].field_256
                        if (0 / depositFee[depositFee[arg1 << 240].field_0].field_256) + depositFee[depositFee[arg1 << 240].field_0].field_1024 < depositFee[depositFee[arg1 << 240].field_0].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[depositFee[arg1 << 240].field_0].field_1024 += 0 / depositFee[depositFee[arg1 << 240].field_0].field_256
                    else:
                        if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if depositFee[depositFee[arg1 << 240].field_0].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[depositFee[arg1 << 240].field_0].field_256
                        if (10^12 * ext_call.return_data[0] / depositFee[depositFee[arg1 << 240].field_0].field_256) + depositFee[depositFee[arg1 << 240].field_0].field_1024 < depositFee[depositFee[arg1 << 240].field_0].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[depositFee[arg1 << 240].field_0].field_1024 += 10^12 * ext_call.return_data[0] / depositFee[depositFee[arg1 << 240].field_0].field_256
        depositFee[depositFee[arg1 << 240].field_0].field_768 = block.timestamp
    if userInfo[arg1 << 240][address(arg3)].field_256:
        if not userInfo[arg1 << 240][address(arg3)].field_256:
            if userInfo[arg1 << 240][address(arg3)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[arg1 << 240][address(arg3)].field_0:
                require ext_code.size(stor2)
                call stor2.0x76d413d8 with:
                     gas gas_remaining wei
                    args address(arg3), -userInfo[arg1 << 240][address(arg3)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / userInfo[arg1 << 240][address(arg3)].field_256 != depositFee[arg1 << 240].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1 << 240][address(arg3)].field_0 > depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12) - userInfo[arg1 << 240][address(arg3)].field_0:
                require ext_code.size(stor2)
                call stor2.0x76d413d8 with:
                     gas gas_remaining wei
                    args address(arg3), (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12) - userInfo[arg1 << 240][address(arg3)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    if not arg2:
        if arg2 + userInfo[arg1 << 240][address(arg3)].field_256 < userInfo[arg1 << 240][address(arg3)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        userInfo[arg1 << 240][address(arg3)].field_256 += arg2
        if not arg2 + userInfo[arg1 << 240][address(arg3)].field_256:
            userInfo[arg1 << 240][address(arg3)].field_0 = 0
        else:
            if (arg2 * depositFee[arg1 << 240].field_1024) + (userInfo[arg1 << 240][address(arg3)].field_256 * depositFee[arg1 << 240].field_1024) / arg2 + userInfo[arg1 << 240][address(arg3)].field_256 != depositFee[arg1 << 240].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            userInfo[arg1 << 240][address(arg3)].field_0 = (arg2 * depositFee[arg1 << 240].field_1024) + (userInfo[arg1 << 240][address(arg3)].field_256 * depositFee[arg1 << 240].field_1024) / 10^12
        stor1 = 1
        return arg2, 0
    require ext_code.size(stor2)
    call stor2.0x8968ba23 with:
         gas gas_remaining wei
        args 0, 0, depositFee[arg1 << 240].field_0, depositFee[arg1 << 240].field_1280, arg2, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + depositFee[arg1 << 240].field_256 < depositFee[arg1 << 240].field_256:
        revert with 0, 'SafeMath: addition overflow'
    depositFee[arg1 << 240].field_256 += ext_call.return_data[0]
    if ext_call.return_data[0] + userInfo[arg1 << 240][address(arg3)].field_256 < userInfo[arg1 << 240][address(arg3)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    userInfo[arg1 << 240][address(arg3)].field_256 += ext_call.return_data[0]
    if not ext_call.return_data[0] + userInfo[arg1 << 240][address(arg3)].field_256:
        userInfo[arg1 << 240][address(arg3)].field_0 = 0
    else:
        if (ext_call.return_data[0] * depositFee[arg1 << 240].field_1024) + (userInfo[arg1 << 240][address(arg3)].field_256 * depositFee[arg1 << 240].field_1024) / ext_call.return_data[0] + userInfo[arg1 << 240][address(arg3)].field_256 != depositFee[arg1 << 240].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        Mask(248, 0, arg2)
        userInfo[arg1 << 240][address(arg3)].field_0 = (ext_call.return_data[0] * depositFee[arg1 << 240].field_1024) + (userInfo[arg1 << 240][address(arg3)].field_256 * depositFee[arg1 << 240].field_1024) / 10^12
    stor1 = 1
    return ext_call.return_data[0], 0
}

function sub_9f390c4a(?) payable {
    require calldata.size - 4 >= 128
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if stor2 != msg.sender:
        revert with 0, 'Only cartographer'
    if not stor5[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    if not stor5[arg2 << 240]:
        revert with 0, 'Pool doesnt exist'
    if not arg3:
        revert with 0, 'User not 0'
    if not stor5[stor7[arg1 << 240].field_0]:
        revert with 0, 'Pool doesnt exist'
    if depositFee[depositFee[arg1 << 240].field_0].field_768 != block.timestamp:
        if block.timestamp >= launchTimestamp:
            if depositFee[depositFee[arg1 << 240].field_0].field_256:
                if depositFee[depositFee[arg1 << 240].field_0].field_512:
                    require ext_code.size(stor2)
                    call stor2.0xc93ac180 with:
                         gas gas_remaining wei
                        args depositFee[depositFee[arg1 << 240].field_0].field_768, depositFee[depositFee[arg1 << 240].field_0].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if depositFee[depositFee[arg1 << 240].field_0].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[depositFee[arg1 << 240].field_0].field_256
                        if (0 / depositFee[depositFee[arg1 << 240].field_0].field_256) + depositFee[depositFee[arg1 << 240].field_0].field_1024 < depositFee[depositFee[arg1 << 240].field_0].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[depositFee[arg1 << 240].field_0].field_1024 += 0 / depositFee[depositFee[arg1 << 240].field_0].field_256
                    else:
                        if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if depositFee[depositFee[arg1 << 240].field_0].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[depositFee[arg1 << 240].field_0].field_256
                        if (10^12 * ext_call.return_data[0] / depositFee[depositFee[arg1 << 240].field_0].field_256) + depositFee[depositFee[arg1 << 240].field_0].field_1024 < depositFee[depositFee[arg1 << 240].field_0].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[depositFee[arg1 << 240].field_0].field_1024 += 10^12 * ext_call.return_data[0] / depositFee[depositFee[arg1 << 240].field_0].field_256
        depositFee[depositFee[arg1 << 240].field_0].field_768 = block.timestamp
    if not userInfo[arg1 << 240][address(arg3)].field_256:
        if userInfo[arg1 << 240][address(arg3)].field_0 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -userInfo[arg1 << 240][address(arg3)].field_0 <= 0:
            revert with 0, 'Nothing to cross compound'
        if not userInfo[arg1 << 240][address(arg3)].field_256:
            userInfo[arg1 << 240][address(arg3)].field_0 = 0
        else:
            if depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / userInfo[arg1 << 240][address(arg3)].field_256 != depositFee[arg1 << 240].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            userInfo[arg1 << 240][address(arg3)].field_0 = depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12
        if not stor5[stor7[arg2].field_0]:
            revert with 0, 'Pool doesnt exist'
        if depositFee[depositFee[arg2].field_0].field_768 != block.timestamp:
            if block.timestamp >= launchTimestamp:
                if depositFee[depositFee[arg2].field_0].field_256:
                    if depositFee[depositFee[arg2].field_0].field_512:
                        require ext_code.size(stor2)
                        call stor2.0xc93ac180 with:
                             gas gas_remaining wei
                            args depositFee[depositFee[arg2].field_0].field_768, depositFee[depositFee[arg2].field_0].field_0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if depositFee[depositFee[arg2].field_0].field_256 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require depositFee[depositFee[arg2].field_0].field_256
                            if (0 / depositFee[depositFee[arg2].field_0].field_256) + depositFee[depositFee[arg2].field_0].field_1024 < depositFee[depositFee[arg2].field_0].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            depositFee[depositFee[arg2].field_0].field_1024 += 0 / depositFee[depositFee[arg2].field_0].field_256
                        else:
                            if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if depositFee[depositFee[arg2].field_0].field_256 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require depositFee[depositFee[arg2].field_0].field_256
                            if (10^12 * ext_call.return_data[0] / depositFee[depositFee[arg2].field_0].field_256) + depositFee[depositFee[arg2].field_0].field_1024 < depositFee[depositFee[arg2].field_0].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            depositFee[depositFee[arg2].field_0].field_1024 += 10^12 * ext_call.return_data[0] / depositFee[depositFee[arg2].field_0].field_256
            depositFee[depositFee[arg2].field_0].field_768 = block.timestamp
        if userInfo[arg2 << 240][address(arg3)].field_256:
            if not userInfo[arg2 << 240][address(arg3)].field_256:
                if userInfo[arg2 << 240][address(arg3)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[arg2 << 240][address(arg3)].field_0:
                    require ext_code.size(stor2)
                    call stor2.0x76d413d8 with:
                         gas gas_remaining wei
                        args address(arg3), -userInfo[arg2 << 240][address(arg3)].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if depositFee[arg2].field_1024 * userInfo[arg2 << 240][address(arg3)].field_256 / userInfo[arg2 << 240][address(arg3)].field_256 != depositFee[arg2].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg2 << 240][address(arg3)].field_0 > depositFee[arg2].field_1024 * userInfo[arg2 << 240][address(arg3)].field_256 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (depositFee[arg2].field_1024 * userInfo[arg2 << 240][address(arg3)].field_256 / 10^12) - userInfo[arg2 << 240][address(arg3)].field_0:
                    require ext_code.size(stor2)
                    call stor2.0x76d413d8 with:
                         gas gas_remaining wei
                        args address(arg3), (depositFee[arg2].field_1024 * userInfo[arg2 << 240][address(arg3)].field_256 / 10^12) - userInfo[arg2 << 240][address(arg3)].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        if -userInfo[arg1 << 240][address(arg3)].field_0:
            if -userInfo[arg1 << 240][address(arg3)].field_0 + depositFee[arg2].field_256 < depositFee[arg2].field_256:
                revert with 0, 'SafeMath: addition overflow'
            depositFee[arg2].field_256 -= userInfo[arg1 << 240][address(arg3)].field_0
        if -userInfo[arg1 << 240][address(arg3)].field_0 + userInfo[arg2 << 240][address(arg3)].field_256 < userInfo[arg2 << 240][address(arg3)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        userInfo[arg2 << 240][address(arg3)].field_256 -= userInfo[arg1 << 240][address(arg3)].field_0
        if not -userInfo[arg1 << 240][address(arg3)].field_0 + userInfo[arg2 << 240][address(arg3)].field_256:
            userInfo[arg2 << 240][address(arg3)].field_0 = 0
        else:
            if (-1 * userInfo[arg1 << 240][address(arg3)].field_0 * depositFee[arg2].field_1024) + (userInfo[arg2 << 240][address(arg3)].field_256 * depositFee[arg2].field_1024) / -userInfo[arg1 << 240][address(arg3)].field_0 + userInfo[arg2 << 240][address(arg3)].field_256 != depositFee[arg2].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            userInfo[arg2 << 240][address(arg3)].field_0 = (-1 * userInfo[arg1 << 240][address(arg3)].field_0 * depositFee[arg2].field_1024) + (userInfo[arg2 << 240][address(arg3)].field_256 * depositFee[arg2].field_1024) / 10^12
        stor1 = 1
        return -userInfo[arg1 << 240][address(arg3)].field_0
    if depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / userInfo[arg1 << 240][address(arg3)].field_256 != depositFee[arg1 << 240].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1 << 240][address(arg3)].field_0 > depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12) - userInfo[arg1 << 240][address(arg3)].field_0 <= 0:
        revert with 0, 'Nothing to cross compound'
    if not userInfo[arg1 << 240][address(arg3)].field_256:
        userInfo[arg1 << 240][address(arg3)].field_0 = 0
    else:
        if depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / userInfo[arg1 << 240][address(arg3)].field_256 != depositFee[arg1 << 240].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        userInfo[arg1 << 240][address(arg3)].field_0 = depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12
    if not stor5[stor7[arg2].field_0]:
        revert with 0, 'Pool doesnt exist'
    if depositFee[depositFee[arg2].field_0].field_768 != block.timestamp:
        if block.timestamp >= launchTimestamp:
            if depositFee[depositFee[arg2].field_0].field_256:
                if depositFee[depositFee[arg2].field_0].field_512:
                    require ext_code.size(stor2)
                    call stor2.0xc93ac180 with:
                         gas gas_remaining wei
                        args depositFee[depositFee[arg2].field_0].field_768, depositFee[depositFee[arg2].field_0].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if depositFee[depositFee[arg2].field_0].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[depositFee[arg2].field_0].field_256
                        if (0 / depositFee[depositFee[arg2].field_0].field_256) + depositFee[depositFee[arg2].field_0].field_1024 < depositFee[depositFee[arg2].field_0].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[depositFee[arg2].field_0].field_1024 += 0 / depositFee[depositFee[arg2].field_0].field_256
                    else:
                        if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if depositFee[depositFee[arg2].field_0].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[depositFee[arg2].field_0].field_256
                        if (10^12 * ext_call.return_data[0] / depositFee[depositFee[arg2].field_0].field_256) + depositFee[depositFee[arg2].field_0].field_1024 < depositFee[depositFee[arg2].field_0].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[depositFee[arg2].field_0].field_1024 += 10^12 * ext_call.return_data[0] / depositFee[depositFee[arg2].field_0].field_256
        depositFee[depositFee[arg2].field_0].field_768 = block.timestamp
    if userInfo[arg2 << 240][address(arg3)].field_256:
        if not userInfo[arg2 << 240][address(arg3)].field_256:
            if userInfo[arg2 << 240][address(arg3)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[arg2 << 240][address(arg3)].field_0:
                require ext_code.size(stor2)
                call stor2.0x76d413d8 with:
                     gas gas_remaining wei
                    args address(arg3), -userInfo[arg2 << 240][address(arg3)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if depositFee[arg2].field_1024 * userInfo[arg2 << 240][address(arg3)].field_256 / userInfo[arg2 << 240][address(arg3)].field_256 != depositFee[arg2].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg2 << 240][address(arg3)].field_0 > depositFee[arg2].field_1024 * userInfo[arg2 << 240][address(arg3)].field_256 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (depositFee[arg2].field_1024 * userInfo[arg2 << 240][address(arg3)].field_256 / 10^12) - userInfo[arg2 << 240][address(arg3)].field_0:
                require ext_code.size(stor2)
                call stor2.0x76d413d8 with:
                     gas gas_remaining wei
                    args address(arg3), (depositFee[arg2].field_1024 * userInfo[arg2 << 240][address(arg3)].field_256 / 10^12) - userInfo[arg2 << 240][address(arg3)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    if (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12) - userInfo[arg1 << 240][address(arg3)].field_0:
        if (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12) - userInfo[arg1 << 240][address(arg3)].field_0 + depositFee[arg2].field_256 < depositFee[arg2].field_256:
            revert with 0, 'SafeMath: addition overflow'
        depositFee[arg2].field_256 = (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12) - userInfo[arg1 << 240][address(arg3)].field_0 + depositFee[arg2].field_256
    if (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12) - userInfo[arg1 << 240][address(arg3)].field_0 + userInfo[arg2 << 240][address(arg3)].field_256 < userInfo[arg2 << 240][address(arg3)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    userInfo[arg2 << 240][address(arg3)].field_256 = (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12) - userInfo[arg1 << 240][address(arg3)].field_0 + userInfo[arg2 << 240][address(arg3)].field_256
    if not (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12) - userInfo[arg1 << 240][address(arg3)].field_0 + userInfo[arg2 << 240][address(arg3)].field_256:
        userInfo[arg2 << 240][address(arg3)].field_0 = 0
    else:
        if (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12 * depositFee[arg2].field_1024) - (userInfo[arg1 << 240][address(arg3)].field_0 * depositFee[arg2].field_1024) + (userInfo[arg2 << 240][address(arg3)].field_256 * depositFee[arg2].field_1024) / (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12) - userInfo[arg1 << 240][address(arg3)].field_0 + userInfo[arg2 << 240][address(arg3)].field_256 != depositFee[arg2].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        userInfo[arg2 << 240][address(arg3)].field_0 = (depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12 * depositFee[arg2].field_1024) - (userInfo[arg1 << 240][address(arg3)].field_0 * depositFee[arg2].field_1024) + (userInfo[arg2 << 240][address(arg3)].field_256 * depositFee[arg2].field_1024) / 10^12
    stor1 = 1
    return ((depositFee[arg1 << 240].field_1024 * userInfo[arg1 << 240][address(arg3)].field_256 / 10^12) - userInfo[arg1 << 240][address(arg3)].field_0)
}



}
