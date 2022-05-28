contract main {




// =====================  Runtime code  =====================


bool stor0; offset 256
uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
address owner;
uint256 stor1;
address stor2;
uint256 sub_f2710c89;
array of uint8 stor4;
mapping of uint8 stor5;
mapping of struct depositFee;
mapping of struct sub_76fa17d2;
mapping of uint8 stor8;

function depositFee(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    return depositFee[arg1 << 248].field_1280
}

function lpToken(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    return depositFee[arg1 << 248].field_8
}

function isLive(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(depositFee[arg1 << 248].field_512)
}

function sub_728f6619(?) payable {
    require calldata.size - 4 >= 32
    return depositFee[arg1].field_0, 
           depositFee[arg1].field_0,
           depositFee[arg1].field_256,
           bool(depositFee[arg1].field_512),
           depositFee[arg1].field_768,
           depositFee[arg1].field_1024,
           depositFee[arg1].field_1280,
           depositFee[arg1].field_1536
}

function sub_76fa17d2(?) payable {
    require calldata.size - 4 >= 64
    return sub_76fa17d2[arg1][arg2].field_0, sub_76fa17d2[arg1][arg2].field_256
}

function owner() payable {
    return owner
}

function sub_b0b0675c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor4.length
    return sub_b0b0675c[uint8(arg1)]
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function lpSupply(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    return depositFee[arg1 << 248].field_256
}

function sub_e4be798b(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function sub_f2710c89(?) payable {
    return sub_f2710c89
}

function _fallback() payable {
    revert
}

function rollover(uint8 arg1) payable {
    require calldata.size - 4 >= 32
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

function hypotheticalRewards(uint8 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return 0
}

function sub_6ccfed7d(?) payable {
    require calldata.size - 4 >= 160
    if stor2 != msg.sender:
        revert with 0, 'rOnly cartographer'
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function enable(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if stor2 != msg.sender:
        revert with 0, 'rOnly cartographer'
    sub_f2710c89 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function validateElevate(uint8 arg1, address arg2, uint256 arg3, uint8 arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if stor2 != msg.sender:
        revert with 0, 'rOnly cartographer'
    if not arg5:
        revert with 0, 'User not 0'
    if depositFee[arg1 << 248].field_8 != arg2:
        revert with 0, 'Different lpToken'
    if arg3 != depositFee[arg1 << 248].field_1536:
        revert with 0, 'Different passthrough targets'
    stor1 = 1
}

function disablePassthrough(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor5[arg1 << 248]:
        revert with 0, 'Pool doesnt exist'
    if depositFee[arg1 << 248].field_1536 != 0:
        require ext_code.size(stor2)
        call stor2.0x9e403ea7 with:
             gas gas_remaining wei
            args depositFee[arg1 << 248].field_256, depositFee[arg1 << 248].field_1536
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        depositFee[arg1 << 248].field_1536 = 0
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
        revert with 0, 'rOnly cartographer'
    if not uint8(stor0.field_168):
        uint8(stor0.field_168) = 0
}

function set(uint8 arg1, bool arg2, uint16 arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    if stor2 != msg.sender:
        revert with 0, 'rOnly cartographer'
    if arg3 > 400:
        revert with 0, 'Invalid deposit fee'
    if arg4:
        require ext_code.size(stor2)
        call stor2.0x630b5ba1 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if not stor5[arg1 << 248]:
        revert with 0, 'Pool doesnt exist'
    if arg2 != bool(depositFee[arg1 << 248].field_512):
        require ext_code.size(stor2)
        if not arg2:
            call stor2.0xafd63673 with:
                 gas gas_remaining wei
                args depositFee[arg1 << 248].field_0, 0
        else:
            call stor2.0xa693e013 with:
                 gas gas_remaining wei
                args depositFee[arg1 << 248].field_0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    depositFee[arg1 << 248].field_512 = uint8(arg2)
    depositFee[arg1 << 248].field_1280 = arg3
}

function setPassthrough(uint8 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg2:
        revert with 0, 'Passthrough pid invalid'
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor5[arg1 << 248]:
        revert with 0, 'Pool doesnt exist'
    if depositFee[arg1 << 248].field_1536 != 0:
        require ext_code.size(stor2)
        call stor2.0x9e403ea7 with:
             gas gas_remaining wei
            args depositFee[arg1 << 248].field_256, depositFee[arg1 << 248].field_1536
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        depositFee[arg1 << 248].field_1536 = 0
    if not stor5[arg1 << 248]:
        revert with 0, 'Pool doesnt exist'
    depositFee[arg1 << 248].field_1536 = arg2
    require ext_code.size(stor2)
    call stor2.0xce45d3ab with:
         gas gas_remaining wei
        args arg2, depositFee[arg1 << 248].field_0, depositFee[arg1 << 248].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function emergencyWithdraw(uint8 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if stor2 != msg.sender:
        revert with 0, 'rOnly cartographer'
    if not arg2:
        revert with 0, 'User not 0'
    if not stor5[arg1 << 248]:
        revert with 0, 'Pool doesnt exist'
    if not sub_76fa17d2[arg1 << 248][address(arg2)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x456d657267656e63792057697468647261773a206e6f7468696e6720746f207769746864726100,
                    mem[203 len 25]
    sub_76fa17d2[arg1 << 248][address(arg2)].field_256 = 0
    require ext_code.size(stor2)
    call stor2.0x3f4af6d0 with:
         gas gas_remaining wei
        args 0, 0, depositFee[arg1 << 248].field_0, sub_76fa17d2[arg1 << 248][address(arg2)].field_256, depositFee[arg1 << 248].field_1536
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_76fa17d2[arg1 << 248][address(arg2)].field_256 > depositFee[arg1 << 248].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    depositFee[arg1 << 248].field_256 -= sub_76fa17d2[arg1 << 248][address(arg2)].field_256
    stor1 = 1
    return sub_76fa17d2[arg1 << 248][address(arg2)].field_256
}

function sub_8d2c35b2(?) payable {
    require calldata.size - 4 >= 224
    if stor2 != msg.sender:
        revert with 0, 'rOnly cartographer'
    if stor8[address(arg3)]:
        revert with 0, 'duplicated!'
    require ext_code.size(stor2)
    if arg5:
        call stor2.0x630b5ba1 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call stor2.0xa693e013 with:
         gas gas_remaining wei
        args address(arg3), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor8[address(arg3)] = 1
    stor5[arg1 << 248] = 1
    stor4.length++
    stor4[stor4.length.field_5].field_0 = arg1 * 256^stor4.length % 32 or !(255 * 256^stor4.length % 32) and stor4[stor4.length.field_5].field_0
    depositFee[arg1 << 248].field_0 = arg1
    depositFee[arg1 << 248].field_8 = arg3
    depositFee[arg1 << 248].field_256 = 0
    depositFee[arg1 << 248].field_512 = uint8(arg2)
    depositFee[arg1 << 248].field_768 = block.timestamp
    depositFee[arg1 << 248].field_1024 = 0
    depositFee[arg1 << 248].field_1280 = arg4
    depositFee[arg1 << 248].field_1536 = arg6
    if arg6 != 0:
        require ext_code.size(stor2)
        call stor2.0xce45d3ab with:
             gas gas_remaining wei
            args arg6, address(arg3), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function updatePool(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor5[arg1 << 248]:
        revert with 0, 'Pool doesnt exist'
    if depositFee[arg1 << 248].field_768 != block.timestamp:
        if block.timestamp >= sub_f2710c89:
            if depositFee[arg1 << 248].field_256:
                if depositFee[arg1 << 248].field_512:
                    require ext_code.size(stor2)
                    call stor2.0xc93ac180 with:
                         gas gas_remaining wei
                        args depositFee[arg1 << 248].field_768, depositFee[arg1 << 248].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if depositFee[arg1 << 248].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[arg1 << 248].field_256
                        if (0 / depositFee[arg1 << 248].field_256) + depositFee[arg1 << 248].field_1024 < depositFee[arg1 << 248].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[arg1 << 248].field_1024 += 0 / depositFee[arg1 << 248].field_256
                    else:
                        if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if depositFee[arg1 << 248].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[arg1 << 248].field_256
                        if (10^12 * ext_call.return_data[0] / depositFee[arg1 << 248].field_256) + depositFee[arg1 << 248].field_1024 < depositFee[arg1 << 248].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[arg1 << 248].field_1024 += 10^12 * ext_call.return_data[0] / depositFee[arg1 << 248].field_256
        depositFee[arg1 << 248].field_768 = block.timestamp
}

function massUpdatePools() payable {
    if stor2 != msg.sender:
        revert with 0, 'rOnly cartographer'
    idx = 0
    while uint8(idx) < stor4.length:
        if not stor5[stor4[uint8(idx) / 32].field_(8 * idx % 32) - 248]:
            revert with 0, 'Pool doesnt exist'
        mem[0] = stor('array', ('mask_shl', 3, 5, -5, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        mem[32] = 6
        if depositFee[stor4[uint8(idx) / 32].field_(8 * idx % 32) - 248].field_768 != block.timestamp:
            if block.timestamp >= sub_f2710c89:
                if depositFee[stor4[uint8(idx) / 32].field_(8 * idx % 32) - 248].field_256:
                    if depositFee[stor4[uint8(idx) / 32].field_(8 * idx % 32) - 248].field_512:
                        mem[100] = depositFee[stor4[uint8(idx) / 32].field_(8 * idx % 32) - 248].field_768
                        mem[132] = depositFee[stor4[uint8(idx) / 32].field_(8 * idx % 32) - 248].field_8
                        mem[164] = 0
                        require ext_code.size(stor2)
                        call stor2.0xc93ac180 with:
                             gas gas_remaining wei
                            args depositFee[stor4[uint8(idx) / 32].field_(8 * idx % 32) - 248].field_768, depositFee[stor4[uint8(idx) / 32].field_(8 * idx % 32) - 248].field_0, 0
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if depositFee[stor4[uint8(idx) / 32].field_(8 * idx % 32) - 248].field_256 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require depositFee[stor4[uint8(idx) / 32].field_(8 * idx % 32) - 248].field_256
                            if (0 / depositFee[stor4[uint8(idx) / 32].field_(8 * idx % 32) - 248].field_256) + depositFee[stor4[uint8(idx) / 32].field_(8 * idx % 32) - 248].field_1024 < depositFee[stor4[uint8(idx) / 32].field_(8 * idx % 32) - 248].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            depositFee[stor4[uint8(idx) / 32].field_(8 * idx % 32) - 248].field_1024 += 0 / depositFee[stor4[uint8(idx) / 32].field_(8 * idx % 32) - 248].field_256
                        else:
                            if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if depositFee[stor4[uint8(idx) / 32].field_(8 * idx % 32) - 248].field_256 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require depositFee[stor4[uint8(idx) / 32].field_(8 * idx % 32) - 248].field_256
                            if (10^12 * ext_call.return_data[0] / depositFee[stor4[uint8(idx) / 32].field_(8 * idx % 32) - 248].field_256) + depositFee[stor4[uint8(idx) / 32].field_(8 * idx % 32) - 248].field_1024 < depositFee[stor4[uint8(idx) / 32].field_(8 * idx % 32) - 248].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            depositFee[stor4[uint8(idx) / 32].field_(8 * idx % 32) - 248].field_1024 += 10^12 * ext_call.return_data[0] / depositFee[stor4[uint8(idx) / 32].field_(8 * idx % 32) - 248].field_256
            depositFee[stor4[uint8(idx) / 32].field_(8 * idx % 32) - 248].field_768 = block.timestamp
        idx = idx + 1
        continue 
}

function elevateDeposit(uint8 arg1, uint256 arg2, uint8 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if stor2 != msg.sender:
        revert with 0, 'rOnly cartographer'
    if not stor5[stor6[arg1 << 248].field_0]:
        revert with 0, 'Pool doesnt exist'
    if depositFee[depositFee[arg1 << 248].field_0].field_768 != block.timestamp:
        if block.timestamp >= sub_f2710c89:
            if depositFee[depositFee[arg1 << 248].field_0].field_256:
                if depositFee[depositFee[arg1 << 248].field_0].field_512:
                    require ext_code.size(stor2)
                    call stor2.0xc93ac180 with:
                         gas gas_remaining wei
                        args depositFee[depositFee[arg1 << 248].field_0].field_768, depositFee[depositFee[arg1 << 248].field_0].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if depositFee[depositFee[arg1 << 248].field_0].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[depositFee[arg1 << 248].field_0].field_256
                        if (0 / depositFee[depositFee[arg1 << 248].field_0].field_256) + depositFee[depositFee[arg1 << 248].field_0].field_1024 < depositFee[depositFee[arg1 << 248].field_0].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[depositFee[arg1 << 248].field_0].field_1024 += 0 / depositFee[depositFee[arg1 << 248].field_0].field_256
                    else:
                        if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if depositFee[depositFee[arg1 << 248].field_0].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[depositFee[arg1 << 248].field_0].field_256
                        if (10^12 * ext_call.return_data[0] / depositFee[depositFee[arg1 << 248].field_0].field_256) + depositFee[depositFee[arg1 << 248].field_0].field_1024 < depositFee[depositFee[arg1 << 248].field_0].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[depositFee[arg1 << 248].field_0].field_1024 += 10^12 * ext_call.return_data[0] / depositFee[depositFee[arg1 << 248].field_0].field_256
        depositFee[depositFee[arg1 << 248].field_0].field_768 = block.timestamp
    if sub_76fa17d2[arg1 << 248][address(arg4)].field_256:
        if not sub_76fa17d2[arg1 << 248][address(arg4)].field_256:
            if sub_76fa17d2[arg1 << 248][address(arg4)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_76fa17d2[arg1 << 248][address(arg4)].field_0:
                require ext_code.size(stor2)
                call stor2.0x76d413d8 with:
                     gas gas_remaining wei
                    args address(arg4), -sub_76fa17d2[arg1 << 248][address(arg4)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg4)].field_256 / sub_76fa17d2[arg1 << 248][address(arg4)].field_256 != depositFee[arg1 << 248].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_76fa17d2[arg1 << 248][address(arg4)].field_0 > depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg4)].field_256 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg4)].field_256 / 10^12) - sub_76fa17d2[arg1 << 248][address(arg4)].field_0:
                require ext_code.size(stor2)
                call stor2.0x76d413d8 with:
                     gas gas_remaining wei
                    args address(arg4), (depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg4)].field_256 / 10^12) - sub_76fa17d2[arg1 << 248][address(arg4)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    if arg2:
        if arg2 + depositFee[arg1 << 248].field_256 < depositFee[arg1 << 248].field_256:
            revert with 0, 'SafeMath: addition overflow'
        depositFee[arg1 << 248].field_256 += arg2
    if arg2 + sub_76fa17d2[arg1 << 248][address(arg4)].field_256 < sub_76fa17d2[arg1 << 248][address(arg4)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    sub_76fa17d2[arg1 << 248][address(arg4)].field_256 += arg2
    if not arg2 + sub_76fa17d2[arg1 << 248][address(arg4)].field_256:
        sub_76fa17d2[arg1 << 248][address(arg4)].field_0 = 0
    else:
        if (arg2 * depositFee[arg1 << 248].field_1024) + (sub_76fa17d2[arg1 << 248][address(arg4)].field_256 * depositFee[arg1 << 248].field_1024) / arg2 + sub_76fa17d2[arg1 << 248][address(arg4)].field_256 != depositFee[arg1 << 248].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        sub_76fa17d2[arg1 << 248][address(arg4)].field_0 = (arg2 * depositFee[arg1 << 248].field_1024) + (sub_76fa17d2[arg1 << 248][address(arg4)].field_256 * depositFee[arg1 << 248].field_1024) / 10^12
    stor1 = 1
    return arg2
}

function elevateWithdraw(uint8 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if stor2 != msg.sender:
        revert with 0, 'rOnly cartographer'
    if not arg3:
        revert with 0, 'User not 0'
    if not arg2:
        revert with 0, 'Bad transfer'
    if sub_76fa17d2[arg1 << 248][address(arg3)].field_256 <= 0:
        revert with 0, 'Bad transfer'
    if sub_76fa17d2[arg1 << 248][address(arg3)].field_256 < arg2:
        revert with 0, 'Bad transfer'
    if not stor5[arg1 << 248]:
        revert with 0, 'Pool doesnt exist'
    if not stor5[stor6[arg1 << 248].field_0]:
        revert with 0, 'Pool doesnt exist'
    if depositFee[depositFee[arg1 << 248].field_0].field_768 != block.timestamp:
        if block.timestamp >= sub_f2710c89:
            if depositFee[depositFee[arg1 << 248].field_0].field_256:
                if depositFee[depositFee[arg1 << 248].field_0].field_512:
                    require ext_code.size(stor2)
                    call stor2.0xc93ac180 with:
                         gas gas_remaining wei
                        args depositFee[depositFee[arg1 << 248].field_0].field_768, depositFee[depositFee[arg1 << 248].field_0].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if depositFee[depositFee[arg1 << 248].field_0].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[depositFee[arg1 << 248].field_0].field_256
                        if (0 / depositFee[depositFee[arg1 << 248].field_0].field_256) + depositFee[depositFee[arg1 << 248].field_0].field_1024 < depositFee[depositFee[arg1 << 248].field_0].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[depositFee[arg1 << 248].field_0].field_1024 += 0 / depositFee[depositFee[arg1 << 248].field_0].field_256
                    else:
                        if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if depositFee[depositFee[arg1 << 248].field_0].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[depositFee[arg1 << 248].field_0].field_256
                        if (10^12 * ext_call.return_data[0] / depositFee[depositFee[arg1 << 248].field_0].field_256) + depositFee[depositFee[arg1 << 248].field_0].field_1024 < depositFee[depositFee[arg1 << 248].field_0].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[depositFee[arg1 << 248].field_0].field_1024 += 10^12 * ext_call.return_data[0] / depositFee[depositFee[arg1 << 248].field_0].field_256
        depositFee[depositFee[arg1 << 248].field_0].field_768 = block.timestamp
    if not sub_76fa17d2[arg1 << 248][address(arg3)].field_256:
        if sub_76fa17d2[arg1 << 248][address(arg3)].field_0 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -sub_76fa17d2[arg1 << 248][address(arg3)].field_0:
            require ext_code.size(stor2)
            call stor2.0x76d413d8 with:
                 gas gas_remaining wei
                args address(arg3), -sub_76fa17d2[arg1 << 248][address(arg3)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg3)].field_256 / sub_76fa17d2[arg1 << 248][address(arg3)].field_256 != depositFee[arg1 << 248].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_76fa17d2[arg1 << 248][address(arg3)].field_0 > depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg3)].field_256 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if (depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg3)].field_256 / 10^12) - sub_76fa17d2[arg1 << 248][address(arg3)].field_0:
            require ext_code.size(stor2)
            call stor2.0x76d413d8 with:
                 gas gas_remaining wei
                args address(arg3), (depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg3)].field_256 / 10^12) - sub_76fa17d2[arg1 << 248][address(arg3)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    if arg2 > sub_76fa17d2[arg1 << 248][address(arg3)].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_76fa17d2[arg1 << 248][address(arg3)].field_256 -= arg2
    if arg2 > depositFee[arg1 << 248].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    depositFee[arg1 << 248].field_256 -= arg2
    if not sub_76fa17d2[arg1 << 248][address(arg3)].field_256:
        sub_76fa17d2[arg1 << 248][address(arg3)].field_0 = 0
    else:
        if depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg3)].field_256 / sub_76fa17d2[arg1 << 248][address(arg3)].field_256 != depositFee[arg1 << 248].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        sub_76fa17d2[arg1 << 248][address(arg3)].field_0 = depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg3)].field_256 / 10^12
    stor1 = 1
    return depositFee[arg1 << 248].field_0, arg2, depositFee[arg1 << 248].field_1536
}

function withdraw(uint8 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if stor2 != msg.sender:
        revert with 0, 'rOnly cartographer'
    if not arg3:
        revert with 0, 'User not 0'
    if not arg2:
        revert with 0, 'Bad withdrawal'
    if sub_76fa17d2[arg1 << 248][address(arg3)].field_256 <= 0:
        revert with 0, 'Bad withdrawal'
    if sub_76fa17d2[arg1 << 248][address(arg3)].field_256 < arg2:
        revert with 0, 'Bad withdrawal'
    if not stor5[arg1 << 248]:
        revert with 0, 'Pool doesnt exist'
    if not stor5[stor6[arg1 << 248].field_0]:
        revert with 0, 'Pool doesnt exist'
    if depositFee[depositFee[arg1 << 248].field_0].field_768 != block.timestamp:
        if block.timestamp >= sub_f2710c89:
            if depositFee[depositFee[arg1 << 248].field_0].field_256:
                if depositFee[depositFee[arg1 << 248].field_0].field_512:
                    require ext_code.size(stor2)
                    call stor2.0xc93ac180 with:
                         gas gas_remaining wei
                        args depositFee[depositFee[arg1 << 248].field_0].field_768, depositFee[depositFee[arg1 << 248].field_0].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if depositFee[depositFee[arg1 << 248].field_0].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[depositFee[arg1 << 248].field_0].field_256
                        if (0 / depositFee[depositFee[arg1 << 248].field_0].field_256) + depositFee[depositFee[arg1 << 248].field_0].field_1024 < depositFee[depositFee[arg1 << 248].field_0].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[depositFee[arg1 << 248].field_0].field_1024 += 0 / depositFee[depositFee[arg1 << 248].field_0].field_256
                    else:
                        if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if depositFee[depositFee[arg1 << 248].field_0].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[depositFee[arg1 << 248].field_0].field_256
                        if (10^12 * ext_call.return_data[0] / depositFee[depositFee[arg1 << 248].field_0].field_256) + depositFee[depositFee[arg1 << 248].field_0].field_1024 < depositFee[depositFee[arg1 << 248].field_0].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[depositFee[arg1 << 248].field_0].field_1024 += 10^12 * ext_call.return_data[0] / depositFee[depositFee[arg1 << 248].field_0].field_256
        depositFee[depositFee[arg1 << 248].field_0].field_768 = block.timestamp
    if not sub_76fa17d2[arg1 << 248][address(arg3)].field_256:
        if sub_76fa17d2[arg1 << 248][address(arg3)].field_0 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -sub_76fa17d2[arg1 << 248][address(arg3)].field_0:
            require ext_code.size(stor2)
            call stor2.0x76d413d8 with:
                 gas gas_remaining wei
                args address(arg3), -sub_76fa17d2[arg1 << 248][address(arg3)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg3)].field_256 / sub_76fa17d2[arg1 << 248][address(arg3)].field_256 != depositFee[arg1 << 248].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_76fa17d2[arg1 << 248][address(arg3)].field_0 > depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg3)].field_256 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if (depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg3)].field_256 / 10^12) - sub_76fa17d2[arg1 << 248][address(arg3)].field_0:
            require ext_code.size(stor2)
            call stor2.0x76d413d8 with:
                 gas gas_remaining wei
                args address(arg3), (depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg3)].field_256 / 10^12) - sub_76fa17d2[arg1 << 248][address(arg3)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    if arg2 > sub_76fa17d2[arg1 << 248][address(arg3)].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_76fa17d2[arg1 << 248][address(arg3)].field_256 -= arg2
    if arg2 > depositFee[arg1 << 248].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    depositFee[arg1 << 248].field_256 -= arg2
    if not sub_76fa17d2[arg1 << 248][address(arg3)].field_256:
        sub_76fa17d2[arg1 << 248][address(arg3)].field_0 = 0
    else:
        if depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg3)].field_256 / sub_76fa17d2[arg1 << 248][address(arg3)].field_256 != depositFee[arg1 << 248].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        sub_76fa17d2[arg1 << 248][address(arg3)].field_0 = depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg3)].field_256 / 10^12
    require ext_code.size(stor2)
    call stor2.0x3f4af6d0 with:
         gas gas_remaining wei
        args 0, 0, depositFee[arg1 << 248].field_0, arg2, depositFee[arg1 << 248].field_1536
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
    return arg2
}

function rewards(uint8 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        revert with 0, 'User not 0'
    if not stor5[arg1 << 248]:
        revert with 0, 'Pool doesnt exist'
    if block.timestamp <= depositFee[arg1 << 248].field_768:
        if not sub_76fa17d2[arg1 << 248][address(arg2)].field_256:
            if sub_76fa17d2[arg1 << 248][address(arg2)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -sub_76fa17d2[arg1 << 248][address(arg2)].field_0, 0, 0, 0
        if depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg2)].field_256 / sub_76fa17d2[arg1 << 248][address(arg2)].field_256 != depositFee[arg1 << 248].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_76fa17d2[arg1 << 248][address(arg2)].field_0 > depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg2)].field_256 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg2)].field_256 / 10^12) - sub_76fa17d2[arg1 << 248][address(arg2)].field_0, 
               0,
               0,
               0
    if not depositFee[arg1 << 248].field_256:
        if not sub_76fa17d2[arg1 << 248][address(arg2)].field_256:
            if sub_76fa17d2[arg1 << 248][address(arg2)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -sub_76fa17d2[arg1 << 248][address(arg2)].field_0, 0, 0, 0
        if depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg2)].field_256 / sub_76fa17d2[arg1 << 248][address(arg2)].field_256 != depositFee[arg1 << 248].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_76fa17d2[arg1 << 248][address(arg2)].field_0 > depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg2)].field_256 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg2)].field_256 / 10^12) - sub_76fa17d2[arg1 << 248][address(arg2)].field_0, 
               0,
               0,
               0
    require ext_code.size(stor2)
    staticcall stor2.0x75d813cd with:
            gas gas_remaining wei
           args depositFee[arg1 << 248].field_768, depositFee[arg1 << 248].field_0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if depositFee[arg1 << 248].field_256 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require depositFee[arg1 << 248].field_256
        if (0 / depositFee[arg1 << 248].field_256) + depositFee[arg1 << 248].field_1024 < depositFee[arg1 << 248].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_76fa17d2[arg1 << 248][address(arg2)].field_256:
            if sub_76fa17d2[arg1 << 248][address(arg2)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -sub_76fa17d2[arg1 << 248][address(arg2)].field_0, 0, 0, 0
        if (0 / depositFee[arg1 << 248].field_256 * sub_76fa17d2[arg1 << 248][address(arg2)].field_256) + (depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg2)].field_256) / sub_76fa17d2[arg1 << 248][address(arg2)].field_256 != (0 / depositFee[arg1 << 248].field_256) + depositFee[arg1 << 248].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_76fa17d2[arg1 << 248][address(arg2)].field_0 > (0 / depositFee[arg1 << 248].field_256 * sub_76fa17d2[arg1 << 248][address(arg2)].field_256) + (depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg2)].field_256) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((0 / depositFee[arg1 << 248].field_256 * sub_76fa17d2[arg1 << 248][address(arg2)].field_256) + (depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg2)].field_256) / 10^12) - sub_76fa17d2[arg1 << 248][address(arg2)].field_0, 
               0,
               0,
               0
    if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if depositFee[arg1 << 248].field_256 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require depositFee[arg1 << 248].field_256
    if (10^12 * ext_call.return_data[0] / depositFee[arg1 << 248].field_256) + depositFee[arg1 << 248].field_1024 < depositFee[arg1 << 248].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    if not sub_76fa17d2[arg1 << 248][address(arg2)].field_256:
        if sub_76fa17d2[arg1 << 248][address(arg2)].field_0 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -sub_76fa17d2[arg1 << 248][address(arg2)].field_0, 0, 0, 0
    if (10^12 * ext_call.return_data[0] / depositFee[arg1 << 248].field_256 * sub_76fa17d2[arg1 << 248][address(arg2)].field_256) + (depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg2)].field_256) / sub_76fa17d2[arg1 << 248][address(arg2)].field_256 != (10^12 * ext_call.return_data[0] / depositFee[arg1 << 248].field_256) + depositFee[arg1 << 248].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if sub_76fa17d2[arg1 << 248][address(arg2)].field_0 > (10^12 * ext_call.return_data[0] / depositFee[arg1 << 248].field_256 * sub_76fa17d2[arg1 << 248][address(arg2)].field_256) + (depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg2)].field_256) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((10^12 * ext_call.return_data[0] / depositFee[arg1 << 248].field_256 * sub_76fa17d2[arg1 << 248][address(arg2)].field_256) + (depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg2)].field_256) / 10^12) - sub_76fa17d2[arg1 << 248][address(arg2)].field_0, 
           0,
           0,
           0
}

function deposit(uint8 arg1, uint256 arg2, uint8 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if stor2 != msg.sender:
        revert with 0, 'rOnly cartographer'
    if not arg4:
        revert with 0, 'User not 0'
    if not stor5[arg1 << 248]:
        revert with 0, 'Pool doesnt exist'
    if not stor5[stor6[arg1 << 248].field_0]:
        revert with 0, 'Pool doesnt exist'
    if depositFee[depositFee[arg1 << 248].field_0].field_768 != block.timestamp:
        if block.timestamp >= sub_f2710c89:
            if depositFee[depositFee[arg1 << 248].field_0].field_256:
                if depositFee[depositFee[arg1 << 248].field_0].field_512:
                    require ext_code.size(stor2)
                    call stor2.0xc93ac180 with:
                         gas gas_remaining wei
                        args depositFee[depositFee[arg1 << 248].field_0].field_768, depositFee[depositFee[arg1 << 248].field_0].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if depositFee[depositFee[arg1 << 248].field_0].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[depositFee[arg1 << 248].field_0].field_256
                        if (0 / depositFee[depositFee[arg1 << 248].field_0].field_256) + depositFee[depositFee[arg1 << 248].field_0].field_1024 < depositFee[depositFee[arg1 << 248].field_0].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[depositFee[arg1 << 248].field_0].field_1024 += 0 / depositFee[depositFee[arg1 << 248].field_0].field_256
                    else:
                        if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if depositFee[depositFee[arg1 << 248].field_0].field_256 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require depositFee[depositFee[arg1 << 248].field_0].field_256
                        if (10^12 * ext_call.return_data[0] / depositFee[depositFee[arg1 << 248].field_0].field_256) + depositFee[depositFee[arg1 << 248].field_0].field_1024 < depositFee[depositFee[arg1 << 248].field_0].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        depositFee[depositFee[arg1 << 248].field_0].field_1024 += 10^12 * ext_call.return_data[0] / depositFee[depositFee[arg1 << 248].field_0].field_256
        depositFee[depositFee[arg1 << 248].field_0].field_768 = block.timestamp
    if sub_76fa17d2[arg1 << 248][address(arg4)].field_256:
        if not sub_76fa17d2[arg1 << 248][address(arg4)].field_256:
            if sub_76fa17d2[arg1 << 248][address(arg4)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_76fa17d2[arg1 << 248][address(arg4)].field_0:
                require ext_code.size(stor2)
                call stor2.0x76d413d8 with:
                     gas gas_remaining wei
                    args address(arg4), -sub_76fa17d2[arg1 << 248][address(arg4)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg4)].field_256 / sub_76fa17d2[arg1 << 248][address(arg4)].field_256 != depositFee[arg1 << 248].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_76fa17d2[arg1 << 248][address(arg4)].field_0 > depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg4)].field_256 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg4)].field_256 / 10^12) - sub_76fa17d2[arg1 << 248][address(arg4)].field_0:
                require ext_code.size(stor2)
                call stor2.0x76d413d8 with:
                     gas gas_remaining wei
                    args address(arg4), (depositFee[arg1 << 248].field_1024 * sub_76fa17d2[arg1 << 248][address(arg4)].field_256 / 10^12) - sub_76fa17d2[arg1 << 248][address(arg4)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    if not arg2:
        if arg2 + sub_76fa17d2[arg1 << 248][address(arg4)].field_256 < sub_76fa17d2[arg1 << 248][address(arg4)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        sub_76fa17d2[arg1 << 248][address(arg4)].field_256 += arg2
        if not arg2 + sub_76fa17d2[arg1 << 248][address(arg4)].field_256:
            sub_76fa17d2[arg1 << 248][address(arg4)].field_0 = 0
        else:
            if (arg2 * depositFee[arg1 << 248].field_1024) + (sub_76fa17d2[arg1 << 248][address(arg4)].field_256 * depositFee[arg1 << 248].field_1024) / arg2 + sub_76fa17d2[arg1 << 248][address(arg4)].field_256 != depositFee[arg1 << 248].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            sub_76fa17d2[arg1 << 248][address(arg4)].field_0 = (arg2 * depositFee[arg1 << 248].field_1024) + (sub_76fa17d2[arg1 << 248][address(arg4)].field_256 * depositFee[arg1 << 248].field_1024) / 10^12
        stor1 = 1
        return arg2
    require ext_code.size(stor2)
    call stor2.0x8968ba23 with:
         gas gas_remaining wei
        args 0, 0, depositFee[arg1 << 248].field_0, depositFee[arg1 << 248].field_1280, arg2, depositFee[arg1 << 248].field_1536
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + depositFee[arg1 << 248].field_256 < depositFee[arg1 << 248].field_256:
        revert with 0, 'SafeMath: addition overflow'
    depositFee[arg1 << 248].field_256 += ext_call.return_data[0]
    if ext_call.return_data[0] + sub_76fa17d2[arg1 << 248][address(arg4)].field_256 < sub_76fa17d2[arg1 << 248][address(arg4)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    sub_76fa17d2[arg1 << 248][address(arg4)].field_256 += ext_call.return_data[0]
    if not ext_call.return_data[0] + sub_76fa17d2[arg1 << 248][address(arg4)].field_256:
        sub_76fa17d2[arg1 << 248][address(arg4)].field_0 = 0
    else:
        if (ext_call.return_data[0] * depositFee[arg1 << 248].field_1024) + (sub_76fa17d2[arg1 << 248][address(arg4)].field_256 * depositFee[arg1 << 248].field_1024) / ext_call.return_data[0] + sub_76fa17d2[arg1 << 248][address(arg4)].field_256 != depositFee[arg1 << 248].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        Mask(248, 0, arg2)
        sub_76fa17d2[arg1 << 248][address(arg4)].field_0 = (ext_call.return_data[0] * depositFee[arg1 << 248].field_1024) + (sub_76fa17d2[arg1 << 248][address(arg4)].field_256 * depositFee[arg1 << 248].field_1024) / 10^12
    stor1 = 1
    return ext_call.return_data[0]
}



}
