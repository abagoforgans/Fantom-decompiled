contract main {




// =====================  Runtime code  =====================


#
#  - hypotheticalRewards(uint16 arg1, address arg2)
#  - sub_14cca4d4(?)
#  - sub_42c53d2f(?)
#  - sub_775dd80f(?)
#  - sub_803fa530(?)
#
bool stor0; offset 256
uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
address owner;
uint256 stor1;
mapping of struct supply;
mapping of struct userInfo;
mapping of uint8 selectedTotem;
mapping of uint256 sub_29228f61;
uint256 sub_cd5af490;
address summitAddress;
address summitLpAddress;
address stor4;
address stor5;
uint256 sub_d1acb08d;
array of uint256 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;

function selectedTotem(uint8 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return selectedTotem[address(arg2)]
}

function sub_29228f61(?) payable {
    require calldata.size - 4 >= 32
    return sub_29228f61[arg1]
}

function summitLp() payable {
    return summitLpAddress
}

function isEarning(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(supply[arg1 << 240].field_24)
}

function supply(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor8[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    return supply[arg1 << 240].field_1536
}

function expeditionsCount() payable {
    return stor7.length
}

function sub_80b795c0(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function sub_83ead6b2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor7.length
    return sub_83ead6b2[uint8(arg1)]
}

function owner() payable {
    return owner
}

function summit() payable {
    return summitAddress
}

function sub_b9aa5880(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 24
    return sub_b9aa5880[uint8(arg1)].field_0
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function sub_cd5af490(?) payable {
    return sub_cd5af490
}

function sub_d1acb08d(?) payable {
    return sub_d1acb08d
}

function userTotem(address arg1) payable {
    require calldata.size - 4 >= 32
    return selectedTotem[arg1]
}

function sub_e7869982(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < 12
    return sub_e7869982[uint8(arg2)]
}

function userInfo(uint16 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, 
           userInfo[arg1][arg2].field_256,
           userInfo[arg1][arg2].field_512,
           userInfo[arg1][arg2].field_768,
           userInfo[arg1][arg2].field_1024
}

function sub_f4f63b99(?) payable {
    require calldata.size - 4 >= 32
    return supply[arg1].field_0, 
           bool(supply[arg1].field_16),
           bool(supply[arg1].field_24),
           bool(supply[arg1].field_32),
           supply[arg1].field_40,
           supply[arg1].field_256,
           supply[arg1].field_512,
           supply[arg1].field_768,
           supply[arg1].field_1024,
           supply[arg1].field_1280,
           supply[arg1].field_1536,
           supply[arg1].field_1792
}

function isTotemInUse(uint8 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(sub_29228f61[address(arg2)])
}

function _fallback() payable {
    revert
}

function massUpdatePools() payable {
  stop
}

function sub_c2b3511e(?) payable {
    require calldata.size - 4 >= 96
    return 0
}

function sub_9f390c4a(?) payable {
    require calldata.size - 4 >= 128
    return 0
}

function depositFee(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    return 0
}

function sub_a5576dd2(?) payable {
    require calldata.size - 4 >= 160
    if stor4 != msg.sender:
        revert with 0, 'Only cartographer'
}

function enable(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor4 != msg.sender:
        revert with 0, 'Only cartographer'
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_d81964c3(?) payable {
    require calldata.size - 4 >= 96
    if stor4 != msg.sender:
        revert with 0, 'Only cartographer'
    revert with 0, 'Set doesnt exist for expedition'
}

function token(uint16 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if not stor8[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    if arg2:
        return summitLpAddress
    return summitAddress
}

function sub_a44a89ad(?) payable {
    require calldata.size - 4 >= 32
    if not stor8[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    require ext_code.size(stor5)
    staticcall stor5.0xb8a8a719 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[31 len 1]
}

function sub_ce6b8eae(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor8[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    if not supply[arg1 << 240].field_16:
        revert with 0, 'Pool not launched yet'
    if not supply[arg1 << 240].field_24:
        revert with 0, 'Pool already disabled'
    supply[arg1 << 240].field_24 = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_736c3672(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 < 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x6e496e63656e74697665206d756c7469706c696572206d757374206265206265747765656e20317820616e642032,
                    mem[210 len 18]
    if arg1 > 200:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x6e496e63656e74697665206d756c7469706c696572206d757374206265206265747765656e20317820616e642032,
                    mem[210 len 18]
    sub_d1acb08d = arg1
    emit 0x31b85bdd: msg.sender, arg1
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if not uint8(stor0.field_168):
        if ext_code.size(this.address):
            if uint8(stor0.field_160):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a6500,
                            mem[210 len 18]
        if not uint8(stor0.field_168):
            uint8(stor0.field_160) = 1
            uint8(stor0.field_168) = 1
            Mask(88, 0, stor0.field_168) = 0
            stor0.field_256 % 1 = 0
    if stor4 != msg.sender:
        revert with 0, 'Only cartographer'
    if not arg1:
        revert with 0, 'Contract is zero'
    stor5 = arg1
    summitAddress = arg2
    summitLpAddress = arg3
    if not uint8(stor0.field_168):
        uint8(stor0.field_168) = 0
}

function sub_428d64c3(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor8[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    if not supply[arg1 << 240].field_16:
        revert with 0, 'Pool not launched yet'
    if supply[arg1 << 240].field_24:
        revert with 0, 'Expedition already enabled'
    supply[arg1 << 240].field_24 = 1
    if bool(supply[arg1 << 240].field_32) != 1:
        if sub_cd5af490 >= 24:
            revert with 0, 'Too many active expeditions'
        supply[arg1 << 240].field_32 = 1
        if sub_cd5af490 + 1 < sub_cd5af490:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > sub_cd5af490 + 1:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_cd5af490++
        idx = 0
        while uint8(idx) < 24:
            if sub_b9aa5880[uint8(idx)].field_0:
                idx = idx + 1
                continue 
            require uint8(idx) < 24
            sub_b9aa5880[uint8(idx) / 16].field_0 = supply[arg1 << 240].field_0 * 256^(2 * idx % 16) or !(65535 * 256^(2 * idx % 16)) and sub_b9aa5880[uint8(idx) / 16].field_0
}

function sub_8d50d31f(?) payable {
    require calldata.size - 4 >= 32
    if not stor8[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    if not supply[arg1 << 240].field_16:
        return supply[arg1 << 240].field_768
    require ext_code.size(stor5)
    staticcall stor5.0xb27fc048 with:
            gas gas_remaining wei
           args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0] - supply[arg1 << 240].field_1280:
        if 0 > supply[arg1 << 240].field_768:
            revert with 0, 'SafeMath: subtraction overflow'
        return supply[arg1 << 240].field_768
    if (ext_call.return_data[0] * supply[arg1 << 240].field_256) - (supply[arg1 << 240].field_1280 * supply[arg1 << 240].field_256) / ext_call.return_data[0] - supply[arg1 << 240].field_1280 != supply[arg1 << 240].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (ext_call.return_data[0] * supply[arg1 << 240].field_256) - (supply[arg1 << 240].field_1280 * supply[arg1 << 240].field_256) > supply[arg1 << 240].field_768:
        revert with 0, 'SafeMath: subtraction overflow'
    return (supply[arg1 << 240].field_768 - (ext_call.return_data[0] * supply[arg1 << 240].field_256) + (supply[arg1 << 240].field_1280 * supply[arg1 << 240].field_256))
}

function sub_1302302d(?) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor8[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    if supply[arg1 << 240].field_16:
        revert with 0, 'Expedition already running'
    if arg2 > 7:
        revert with 0, 'Must start within the week'
    require ext_code.size(supply[arg1 << 240].field_40)
    staticcall supply[arg1 << 240].field_40.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if supply[arg1 << 240].field_1024 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] - supply[arg1 << 240].field_1024 < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x724d75737420686176652066756e647320746f20636f7665722065787065646974696f,
                    mem[199 len 29]
    supply[arg1 << 240].field_16 = 0
    supply[arg1 << 240].field_24 = 1
    supply[arg1 << 240].field_32 = 0
    supply[arg1 << 240].field_40 = 0
    supply[arg1 << 240].field_256 = 0
    supply[arg1 << 240].field_512 = arg4
    supply[arg1 << 240].field_768 = arg3
    if arg4 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require arg4
    supply[arg1 << 240].field_256 = arg3 / arg4
    require ext_code.size(stor5)
    staticcall stor5.0xc1ccf476 with:
            gas gas_remaining wei
           args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    supply[arg1 << 240].field_1280 = arg2 + ext_call.return_data[0]
    if bool(supply[arg1 << 240].field_32) != 1:
        if sub_cd5af490 >= 24:
            revert with 0, 'Too many active expeditions'
        supply[arg1 << 240].field_32 = 1
        if sub_cd5af490 + 1 < sub_cd5af490:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > sub_cd5af490 + 1:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_cd5af490++
        idx = 0
        while uint8(idx) < 24:
            if sub_b9aa5880[uint8(idx)].field_0:
                idx = idx + 1
                continue 
            require uint8(idx) < 24
            sub_b9aa5880[uint8(idx) / 16].field_0 = supply[arg1 << 240].field_0 * 256^(2 * idx % 16) or !(65535 * 256^(2 * idx % 16)) and sub_b9aa5880[uint8(idx) / 16].field_0
            emit ExpeditionRestarted(supply[arg1 << 240].field_0, supply[arg1 << 240].field_768, supply[arg1 << 240].field_512, arg1);
    emit ExpeditionRestarted(supply[arg1 << 240].field_0, supply[arg1 << 240].field_768, supply[arg1 << 240].field_512, arg1);
}

function sub_286ee927(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor8[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    if not supply[arg1 << 240].field_16:
        revert with 0, 'Pool not launched yet'
    if not supply[arg1 << 240].field_24:
        revert with 0, 'Expedition disabled'
    require ext_code.size(stor5)
    staticcall stor5.0xb27fc048 with:
            gas gas_remaining wei
           args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0] - supply[arg1 << 240].field_1280:
        if 0 > supply[arg1 << 240].field_768:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg2 + supply[arg1 << 240].field_768 < supply[arg1 << 240].field_768:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(supply[arg1 << 240].field_40)
        staticcall supply[arg1 << 240].field_40.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if supply[arg1 << 240].field_1024 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] - supply[arg1 << 240].field_1024 <= arg2 + supply[arg1 << 240].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x724d75737420686176652066756e647320746f20636f7665722065787065646974696f,
                        mem[199 len 29]
        if arg3 + supply[arg1 << 240].field_512 < supply[arg1 << 240].field_512:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 + supply[arg1 << 240].field_512 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg3 + supply[arg1 << 240].field_512
        if arg2 + supply[arg1 << 240].field_768 < supply[arg1 << 240].field_768:
            revert with 0, 'SafeMath: addition overflow'
        supply[arg1 << 240].field_768 += arg2
        if arg3 + supply[arg1 << 240].field_512 < supply[arg1 << 240].field_512:
            revert with 0, 'SafeMath: addition overflow'
        supply[arg1 << 240].field_512 += arg3
        supply[arg1 << 240].field_256 = arg2 + supply[arg1 << 240].field_768 / arg3 + supply[arg1 << 240].field_512
    else:
        if (ext_call.return_data[0] * supply[arg1 << 240].field_256) - (supply[arg1 << 240].field_1280 * supply[arg1 << 240].field_256) / ext_call.return_data[0] - supply[arg1 << 240].field_1280 != supply[arg1 << 240].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (ext_call.return_data[0] * supply[arg1 << 240].field_256) - (supply[arg1 << 240].field_1280 * supply[arg1 << 240].field_256) > supply[arg1 << 240].field_768:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg2 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(supply[arg1 << 240].field_40)
        staticcall supply[arg1 << 240].field_40.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if supply[arg1 << 240].field_1024 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] - supply[arg1 << 240].field_1024 <= arg2 + supply[arg1 << 240].field_768 - (ext_call.return_data[0] * supply[arg1 << 240].field_256) + (supply[arg1 << 240].field_1280 * supply[arg1 << 240].field_256):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x724d75737420686176652066756e647320746f20636f7665722065787065646974696f,
                        mem[199 len 29]
        if arg3 + supply[arg1 << 240].field_512 < supply[arg1 << 240].field_512:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 + supply[arg1 << 240].field_512 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg3 + supply[arg1 << 240].field_512
        if arg2 + supply[arg1 << 240].field_768 < supply[arg1 << 240].field_768:
            revert with 0, 'SafeMath: addition overflow'
        supply[arg1 << 240].field_768 += arg2
        if arg3 + supply[arg1 << 240].field_512 < supply[arg1 << 240].field_512:
            revert with 0, 'SafeMath: addition overflow'
        supply[arg1 << 240].field_512 += arg3
        supply[arg1 << 240].field_256 = arg2 + supply[arg1 << 240].field_768 - (ext_call.return_data[0] * supply[arg1 << 240].field_256) + (supply[arg1 << 240].field_1280 * supply[arg1 << 240].field_256) / arg3 + supply[arg1 << 240].field_512
    emit ExpeditionExtended(supply[arg1 << 240].field_0, supply[arg1 << 240].field_768, arg3 + supply[arg1 << 240].field_512, arg1);
}

function rewards(uint16 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if stor4 != msg.sender:
        revert with 0, 'Only cartographer'
    if not stor8[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    if not arg2:
        revert with 0, 'User address is zero'
    if not stor8[stor10[arg1 << 240].field_0]:
        revert with 0, 'Pool doesnt exist'
    require ext_code.size(stor5)
    staticcall stor5.0xb27fc048 with:
            gas gas_remaining wei
           args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= supply[arg1 << 240].field_1280:
        return 0
    if ext_call.return_data[0] == userInfo[arg1 << 240][address(arg2)].field_0:
        return 0
    require selectedTotem[address(arg2)] < supply[arg1 << 240].field_2560
    if userInfo[arg1 << 240][address(arg2)].field_768 > stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(arg2)]].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    if not userInfo[arg1 << 240][address(arg2)].field_256:
        require selectedTotem[address(arg2)] < supply[arg1 << 240].field_2816
        if userInfo[arg1 << 240][address(arg2)].field_1024 > stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(arg2)]].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not userInfo[arg1 << 240][address(arg2)].field_512:
            return 0
        if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_512) - (userInfo[arg1 << 240][address(arg2)].field_1024 * userInfo[arg1 << 240][address(arg2)].field_512) / userInfo[arg1 << 240][address(arg2)].field_512 != stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(arg2)]].field_0 - userInfo[arg1 << 240][address(arg2)].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_512) - (userInfo[arg1 << 240][address(arg2)].field_1024 * userInfo[arg1 << 240][address(arg2)].field_512) / 10^12 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_512) - (userInfo[arg1 << 240][address(arg2)].field_1024 * userInfo[arg1 << 240][address(arg2)].field_512) / 10^12, 
               0,
               0,
               0
    if (stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_256) - (userInfo[arg1 << 240][address(arg2)].field_768 * userInfo[arg1 << 240][address(arg2)].field_256) / userInfo[arg1 << 240][address(arg2)].field_256 != stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(arg2)]].field_0 - userInfo[arg1 << 240][address(arg2)].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require selectedTotem[address(arg2)] < supply[arg1 << 240].field_2816
    if userInfo[arg1 << 240][address(arg2)].field_1024 > stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(arg2)]].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    if not userInfo[arg1 << 240][address(arg2)].field_512:
        if (stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_256) - (userInfo[arg1 << 240][address(arg2)].field_768 * userInfo[arg1 << 240][address(arg2)].field_256) / 10^12 < (stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_256) - (userInfo[arg1 << 240][address(arg2)].field_768 * userInfo[arg1 << 240][address(arg2)].field_256) / 10^12:
            revert with 0, 'SafeMath: addition overflow'
        return (stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_256) - (userInfo[arg1 << 240][address(arg2)].field_768 * userInfo[arg1 << 240][address(arg2)].field_256) / 10^12, 
               0,
               0,
               0
    if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_512) - (userInfo[arg1 << 240][address(arg2)].field_1024 * userInfo[arg1 << 240][address(arg2)].field_512) / userInfo[arg1 << 240][address(arg2)].field_512 != stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(arg2)]].field_0 - userInfo[arg1 << 240][address(arg2)].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_512) - (userInfo[arg1 << 240][address(arg2)].field_1024 * userInfo[arg1 << 240][address(arg2)].field_512) / 10^12) + ((stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_256) - (userInfo[arg1 << 240][address(arg2)].field_768 * userInfo[arg1 << 240][address(arg2)].field_256) / 10^12) < (stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_256) - (userInfo[arg1 << 240][address(arg2)].field_768 * userInfo[arg1 << 240][address(arg2)].field_256) / 10^12:
        revert with 0, 'SafeMath: addition overflow'
    return ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_512) - (userInfo[arg1 << 240][address(arg2)].field_1024 * userInfo[arg1 << 240][address(arg2)].field_512) / 10^12) + ((stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_256) - (userInfo[arg1 << 240][address(arg2)].field_768 * userInfo[arg1 << 240][address(arg2)].field_256) / 10^12), 
           0,
           0,
           0
}

function sub_34f1d02b(?) payable {
    require calldata.size - 4 >= 192
    if stor4 != msg.sender:
        revert with 0, 'Only cartographer'
    if stor9[address(arg4)]:
        revert with 0, 'Duplicated'
    require ext_code.size(arg4)
    staticcall arg4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x724d75737420686176652066756e647320746f20636f7665722065787065646974696f,
                    mem[199 len 29]
    if arg3 > 7:
        revert with 0, 'Must start within the week'
    stor9[address(arg4)] = 1
    stor8[arg1 << 240] = 1
    stor7.length++
    stor7[stor7.length.field_4].field_0 = 256^(2 * stor7.length % 16) * arg1 or stor7[stor7.length.field_4].field_0 and !(65535 * 256^(2 * stor7.length % 16))
    require ext_code.size(stor5)
    staticcall stor5.0x2ae834e0 with:
            gas gas_remaining wei
           args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg6 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require arg6
    mem[612] = 4
    require ext_code.size(stor5)
    staticcall stor5.0xc1ccf476 with:
            gas gas_remaining wei
           args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require uint8(ext_call.return_data[0]) <= test266151307()
    if uint8(ext_call.return_data[0]):
        mem[640 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
    require uint8(ext_call.return_data[0]) <= test266151307()
    mem[(32 * uint8(ext_call.return_data[0])) + 640] = uint8(ext_call.return_data[0])
    if uint8(ext_call.return_data[0]):
        mem[(32 * uint8(ext_call.return_data[0])) + 672 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
    require uint8(ext_call.return_data[0]) <= test266151307()
    mem[(64 * uint8(ext_call.return_data[0])) + 672] = uint8(ext_call.return_data[0])
    if uint8(ext_call.return_data[0]):
        mem[(64 * uint8(ext_call.return_data[0])) + 704 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
    require uint8(ext_call.return_data[0]) <= test266151307()
    mem[(64 * uint8(ext_call.return_data[0])) + (32 * uint8(ext_call.return_data[0])) + 704] = uint8(ext_call.return_data[0])
    if uint8(ext_call.return_data[0]):
        mem[(64 * uint8(ext_call.return_data[0])) + (32 * uint8(ext_call.return_data[0])) + 736 len 32 * uint8(ext_call.return_data[0])] = call.data[calldata.size len 32 * uint8(ext_call.return_data[0])]
    supply[arg1 << 240].field_0 = arg1
    supply[arg1 << 240].field_16 = 0
    supply[arg1 << 240].field_24 = uint8(arg2)
    supply[arg1 << 240].field_32 = 0
    supply[arg1 << 240].field_40 = arg4
    supply[arg1 << 240].field_200 = 0
    supply[arg1 << 240].field_200 = Mask(56, 176, arg2) >> 176
    supply[arg1 << 240].field_200 = 0
    supply[arg1 << 240].field_256 = arg5 / arg6
    supply[arg1 << 240].field_512 = arg6
    supply[arg1 << 240].field_768 = arg5
    supply[arg1 << 240].field_1024 = 0
    supply[arg1 << 240].field_1280 = arg3 + ext_call.return_data[0]
    supply[arg1 << 240].field_1536 = 0
    supply[arg1 << 240].field_1792 = 0
    supply[arg1 << 240].field_2048 = uint8(ext_call.return_data[0])
    supply[arg1 << 240].field_2056 = 0
    if not uint8(ext_call.return_data[0]):
        idx = 0
        while supply[arg1 << 240].field_2048 > idx:
            supply[arg1 << 240][idx + 8].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 640
        while (32 * uint8(ext_call.return_data[0])) + 640 > idx:
            supply[arg1 << 240][s + 8].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * uint8(ext_call.return_data[0])) + 31) >> 5
        while supply[arg1 << 240].field_2048 > idx:
            supply[arg1 << 240][idx + 8].field_0 = 0
            idx = idx + 1
            continue 
    supply[arg1 << 240].field_2304 = uint8(ext_call.return_data[0])
    supply[arg1 << 240].field_2312 = 0
    if not uint8(ext_call.return_data[0]):
        idx = 0
        while supply[arg1 << 240].field_2304 > idx:
            supply[arg1 << 240][idx + 9].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * uint8(ext_call.return_data[0])) + 672
        while (64 * uint8(ext_call.return_data[0])) + 672 > idx:
            supply[arg1 << 240][s + 9].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * uint8(ext_call.return_data[0])) + 31) >> 5
        while supply[arg1 << 240].field_2304 > idx:
            supply[arg1 << 240][idx + 9].field_0 = 0
            idx = idx + 1
            continue 
    supply[arg1 << 240].field_2560 = uint8(ext_call.return_data[0])
    supply[arg1 << 240].field_2568 = 0
    if not uint8(ext_call.return_data[0]):
        idx = 0
        while supply[arg1 << 240].field_2560 > idx:
            supply[arg1 << 240][idx + 10].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (64 * uint8(ext_call.return_data[0])) + 704
        while (64 * uint8(ext_call.return_data[0])) + (32 * uint8(ext_call.return_data[0])) + 704 > idx:
            supply[arg1 << 240][s + 10].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * uint8(ext_call.return_data[0])) + 31) >> 5
        while supply[arg1 << 240].field_2560 > idx:
            supply[arg1 << 240][idx + 10].field_0 = 0
            idx = idx + 1
            continue 
    supply[arg1 << 240].field_2816 = uint8(ext_call.return_data[0])
    supply[arg1 << 240].field_2824 = 0
    if not uint8(ext_call.return_data[0]):
        idx = 0
        while supply[arg1 << 240].field_2816 > idx:
            supply[arg1 << 240][idx + 11].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (64 * uint8(ext_call.return_data[0])) + (32 * uint8(ext_call.return_data[0])) + 736
        while (uint8(ext_call.return_data[0]) << 7) + 736 > idx:
            supply[arg1 << 240][s + 11].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * uint8(ext_call.return_data[0])) + 31) >> 5
        while supply[arg1 << 240].field_2816 > idx:
            supply[arg1 << 240][idx + 11].field_0 = 0
            idx = idx + 1
            continue 
    if arg2:
        if bool(supply[arg1 << 240].field_32) != 1:
            if sub_cd5af490 >= 24:
                revert with 0, 
                            'Too many active expeditions',
                            mem[(uint8(ext_call.return_data[0]) << 7) + 836 len (uint8(ext_call.return_data[0]) << 7) - (64 * uint8(ext_call.return_data[0])) - (2 * 32 * uint8(ext_call.return_data[0]))]
            supply[arg1 << 240].field_32 = 1
            if sub_cd5af490 + 1 < sub_cd5af490:
                revert with 0, 
                            'SafeMath: addition overflow',
                            mem[(uint8(ext_call.return_data[0]) << 7) + 836 len (uint8(ext_call.return_data[0]) << 7) - (64 * uint8(ext_call.return_data[0])) - (2 * 32 * uint8(ext_call.return_data[0]))]
            if 0 > sub_cd5af490 + 1:
                revert with 0, 
                            'SafeMath: subtraction overflow',
                            mem[(uint8(ext_call.return_data[0]) << 7) + 836 len (uint8(ext_call.return_data[0]) << 7) - (64 * uint8(ext_call.return_data[0])) - (2 * 32 * uint8(ext_call.return_data[0]))]
            sub_cd5af490++
            idx = 0
            while uint8(idx) < 24:
                if sub_b9aa5880[uint8(idx)].field_0:
                    idx = idx + 1
                    continue 
                require uint8(idx) < 24
                sub_b9aa5880[uint8(idx) / 16].field_0 = supply[arg1 << 240].field_0 * 256^(2 * idx % 16) or !(65535 * 256^(2 * idx % 16)) and sub_b9aa5880[uint8(idx) / 16].field_0
}

function sub_0a134cf1(?) payable {
    require calldata.size - 4 >= 32
    if not stor8[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    if not stor8[stor10[arg1 << 240].field_0]:
        revert with 0, 'Pool doesnt exist'
    require ext_code.size(stor5)
    staticcall stor5.0xb27fc048 with:
            gas gas_remaining wei
           args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= supply[arg1 << 240].field_1280:
        if userInfo[arg1 << 240][msg.sender].field_512 + userInfo[arg1 << 240][msg.sender].field_256 < userInfo[arg1 << 240][msg.sender].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1 << 240][msg.sender].field_512 + userInfo[arg1 << 240][msg.sender].field_256 > 0)
    if ext_call.return_data[0] == userInfo[arg1 << 240][msg.sender].field_0:
        if userInfo[arg1 << 240][msg.sender].field_512 + userInfo[arg1 << 240][msg.sender].field_256 < userInfo[arg1 << 240][msg.sender].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (userInfo[arg1 << 240][msg.sender].field_512 + userInfo[arg1 << 240][msg.sender].field_256 > 0)
    require selectedTotem[address(msg.sender)] < supply[arg1 << 240].field_2560
    if userInfo[arg1 << 240][msg.sender].field_768 > stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(msg.sender)]].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    if not userInfo[arg1 << 240][msg.sender].field_256:
        require selectedTotem[address(msg.sender)] < supply[arg1 << 240].field_2816
        if userInfo[arg1 << 240][msg.sender].field_1024 > stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(msg.sender)]].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not userInfo[arg1 << 240][msg.sender].field_512:
            if userInfo[arg1 << 240][msg.sender].field_512 + userInfo[arg1 << 240][msg.sender].field_256 < userInfo[arg1 << 240][msg.sender].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (userInfo[arg1 << 240][msg.sender].field_512 + userInfo[arg1 << 240][msg.sender].field_256 > 0)
        if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(msg.sender)]].field_0 * userInfo[arg1 << 240][msg.sender].field_512) - (userInfo[arg1 << 240][msg.sender].field_1024 * userInfo[arg1 << 240][msg.sender].field_512) / userInfo[arg1 << 240][msg.sender].field_512 != stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(msg.sender)]].field_0 - userInfo[arg1 << 240][msg.sender].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(msg.sender)]].field_0 * userInfo[arg1 << 240][msg.sender].field_512) - (userInfo[arg1 << 240][msg.sender].field_1024 * userInfo[arg1 << 240][msg.sender].field_512) / 10^12 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if userInfo[arg1 << 240][msg.sender].field_512 + userInfo[arg1 << 240][msg.sender].field_256 < userInfo[arg1 << 240][msg.sender].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(msg.sender)]].field_0 * userInfo[arg1 << 240][msg.sender].field_512) - (userInfo[arg1 << 240][msg.sender].field_1024 * userInfo[arg1 << 240][msg.sender].field_512) / 10^12 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(msg.sender)]].field_0 * userInfo[arg1 << 240][msg.sender].field_512) - (userInfo[arg1 << 240][msg.sender].field_1024 * userInfo[arg1 << 240][msg.sender].field_512) / 10^12) + userInfo[arg1 << 240][msg.sender].field_512 + userInfo[arg1 << 240][msg.sender].field_256 > 0)
    if (stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(msg.sender)]].field_0 * userInfo[arg1 << 240][msg.sender].field_256) - (userInfo[arg1 << 240][msg.sender].field_768 * userInfo[arg1 << 240][msg.sender].field_256) / userInfo[arg1 << 240][msg.sender].field_256 != stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(msg.sender)]].field_0 - userInfo[arg1 << 240][msg.sender].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require selectedTotem[address(msg.sender)] < supply[arg1 << 240].field_2816
    if userInfo[arg1 << 240][msg.sender].field_1024 > stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(msg.sender)]].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    if not userInfo[arg1 << 240][msg.sender].field_512:
        if (stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(msg.sender)]].field_0 * userInfo[arg1 << 240][msg.sender].field_256) - (userInfo[arg1 << 240][msg.sender].field_768 * userInfo[arg1 << 240][msg.sender].field_256) / 10^12 < (stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(msg.sender)]].field_0 * userInfo[arg1 << 240][msg.sender].field_256) - (userInfo[arg1 << 240][msg.sender].field_768 * userInfo[arg1 << 240][msg.sender].field_256) / 10^12:
            revert with 0, 'SafeMath: addition overflow'
        if userInfo[arg1 << 240][msg.sender].field_512 + userInfo[arg1 << 240][msg.sender].field_256 < userInfo[arg1 << 240][msg.sender].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if (stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(msg.sender)]].field_0 * userInfo[arg1 << 240][msg.sender].field_256) - (userInfo[arg1 << 240][msg.sender].field_768 * userInfo[arg1 << 240][msg.sender].field_256) / 10^12 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(msg.sender)]].field_0 * userInfo[arg1 << 240][msg.sender].field_256) - (userInfo[arg1 << 240][msg.sender].field_768 * userInfo[arg1 << 240][msg.sender].field_256) / 10^12) + userInfo[arg1 << 240][msg.sender].field_512 + userInfo[arg1 << 240][msg.sender].field_256 > 0)
    if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(msg.sender)]].field_0 * userInfo[arg1 << 240][msg.sender].field_512) - (userInfo[arg1 << 240][msg.sender].field_1024 * userInfo[arg1 << 240][msg.sender].field_512) / userInfo[arg1 << 240][msg.sender].field_512 != stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(msg.sender)]].field_0 - userInfo[arg1 << 240][msg.sender].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(msg.sender)]].field_0 * userInfo[arg1 << 240][msg.sender].field_512) - (userInfo[arg1 << 240][msg.sender].field_1024 * userInfo[arg1 << 240][msg.sender].field_512) / 10^12) + ((stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(msg.sender)]].field_0 * userInfo[arg1 << 240][msg.sender].field_256) - (userInfo[arg1 << 240][msg.sender].field_768 * userInfo[arg1 << 240][msg.sender].field_256) / 10^12) < (stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(msg.sender)]].field_0 * userInfo[arg1 << 240][msg.sender].field_256) - (userInfo[arg1 << 240][msg.sender].field_768 * userInfo[arg1 << 240][msg.sender].field_256) / 10^12:
        revert with 0, 'SafeMath: addition overflow'
    if userInfo[arg1 << 240][msg.sender].field_512 + userInfo[arg1 << 240][msg.sender].field_256 < userInfo[arg1 << 240][msg.sender].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(msg.sender)]].field_0 * userInfo[arg1 << 240][msg.sender].field_512) - (userInfo[arg1 << 240][msg.sender].field_1024 * userInfo[arg1 << 240][msg.sender].field_512) / 10^12) + ((stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(msg.sender)]].field_0 * userInfo[arg1 << 240][msg.sender].field_256) - (userInfo[arg1 << 240][msg.sender].field_768 * userInfo[arg1 << 240][msg.sender].field_256) / 10^12) < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(msg.sender)]].field_0 * userInfo[arg1 << 240][msg.sender].field_512) - (userInfo[arg1 << 240][msg.sender].field_1024 * userInfo[arg1 << 240][msg.sender].field_512) / 10^12) + ((stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 10))) + stor12[address(msg.sender)]].field_0 * userInfo[arg1 << 240][msg.sender].field_256) - (userInfo[arg1 << 240][msg.sender].field_768 * userInfo[arg1 << 240][msg.sender].field_256) / 10^12) + userInfo[arg1 << 240][msg.sender].field_512 + userInfo[arg1 << 240][msg.sender].field_256 > 0)
}

function sub_5169da0b(?) payable {
    require calldata.size - 4 >= 32
    if not stor8[arg1 << 240]:
        revert with 0, 'Pool doesnt exist'
    require 0 < supply[arg1 << 240].field_2048
    require 0 < supply[arg1 << 240].field_2304
    require ext_code.size(summitLpAddress)
    staticcall summitLpAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if supply[arg1 << 240][8].field_0 < supply[arg1 << 240][8].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require 1 < supply[arg1 << 240].field_2048
        require 1 < supply[arg1 << 240].field_2304
        require ext_code.size(summitLpAddress)
        staticcall summitLpAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if supply[arg1 << 240][8].field_256 < supply[arg1 << 240][8].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return supply[arg1 << 240][8].field_0, supply[arg1 << 240][8].field_256
        require ext_code.size(summitLpAddress)
        staticcall summitLpAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(summitLpAddress)
        if ext_call.return_data[12 len 20] == summitAddress:
            staticcall summitLpAddress.reserve0() with:
                    gas gas_remaining wei
        else:
            staticcall summitLpAddress.reserve1() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(summitLpAddress)
        staticcall summitLpAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not supply[arg1 << 240][9].field_256:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_256 < supply[arg1 << 240][8].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return supply[arg1 << 240][8].field_0, (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_256
        if ext_call.return_data[0] * supply[arg1 << 240][9].field_256 / supply[arg1 << 240][9].field_256 != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0] * supply[arg1 << 240][9].field_256:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_256 < supply[arg1 << 240][8].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return supply[arg1 << 240][8].field_0, (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_256
        if sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][9].field_256 / ext_call.return_data[0] * supply[arg1 << 240][9].field_256 != sub_d1acb08d:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][9].field_256 / 100 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_256 < supply[arg1 << 240][8].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return supply[arg1 << 240][8].field_0, 
               (sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][9].field_256 / 100 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_256
    require ext_code.size(summitLpAddress)
    staticcall summitLpAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(summitLpAddress)
    if ext_call.return_data[12 len 20] == summitAddress:
        staticcall summitLpAddress.reserve0() with:
                gas gas_remaining wei
    else:
        staticcall summitLpAddress.reserve1() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(summitLpAddress)
    staticcall summitLpAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not supply[arg1 << 240][9].field_0:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_0 < supply[arg1 << 240][8].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require 1 < supply[arg1 << 240].field_2048
        require 1 < supply[arg1 << 240].field_2304
        require ext_code.size(summitLpAddress)
        staticcall summitLpAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if supply[arg1 << 240][8].field_256 < supply[arg1 << 240][8].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_0, supply[arg1 << 240][8].field_256
        require ext_code.size(summitLpAddress)
        staticcall summitLpAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(summitLpAddress)
        if ext_call.return_data[12 len 20] == summitAddress:
            staticcall summitLpAddress.reserve0() with:
                    gas gas_remaining wei
        else:
            staticcall summitLpAddress.reserve1() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(summitLpAddress)
        staticcall summitLpAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not supply[arg1 << 240][9].field_256:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_256 < supply[arg1 << 240][8].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_0, 
                   (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_256
        if ext_call.return_data[0] * supply[arg1 << 240][9].field_256 / supply[arg1 << 240][9].field_256 != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0] * supply[arg1 << 240][9].field_256:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_256 < supply[arg1 << 240][8].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_0, 
                   (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_256
        if sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][9].field_256 / ext_call.return_data[0] * supply[arg1 << 240][9].field_256 != sub_d1acb08d:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][9].field_256 / 100 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_256 < supply[arg1 << 240][8].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_0, 
               (sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][9].field_256 / 100 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_256
    if ext_call.return_data[0] * supply[arg1 << 240][9].field_0 / supply[arg1 << 240][9].field_0 != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0] * supply[arg1 << 240][9].field_0:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_0 < supply[arg1 << 240][8].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require 1 < supply[arg1 << 240].field_2048
        require 1 < supply[arg1 << 240].field_2304
        require ext_code.size(summitLpAddress)
        staticcall summitLpAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if supply[arg1 << 240][8].field_256 < supply[arg1 << 240][8].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_0, supply[arg1 << 240][8].field_256
        require ext_code.size(summitLpAddress)
        staticcall summitLpAddress.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(summitLpAddress)
        if ext_call.return_data[12 len 20] == summitAddress:
            staticcall summitLpAddress.reserve0() with:
                    gas gas_remaining wei
        else:
            staticcall summitLpAddress.reserve1() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(summitLpAddress)
        staticcall summitLpAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not supply[arg1 << 240][9].field_256:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_256 < supply[arg1 << 240][8].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_0, 
                   (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_256
        if ext_call.return_data[0] * supply[arg1 << 240][9].field_256 / supply[arg1 << 240][9].field_256 != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0] * supply[arg1 << 240][9].field_256:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_256 < supply[arg1 << 240][8].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_0, 
                   (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_256
        if sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][9].field_256 / ext_call.return_data[0] * supply[arg1 << 240][9].field_256 != sub_d1acb08d:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][9].field_256 / 100 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_256 < supply[arg1 << 240][8].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_0, 
               (sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][9].field_256 / 100 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_256
    if sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][9].field_0 / ext_call.return_data[0] * supply[arg1 << 240][9].field_0 != sub_d1acb08d:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if (sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][9].field_0 / 100 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_0 < supply[arg1 << 240][8].field_0:
        revert with 0, 'SafeMath: addition overflow'
    require 1 < supply[arg1 << 240].field_2048
    require 1 < supply[arg1 << 240].field_2304
    require ext_code.size(summitLpAddress)
    staticcall summitLpAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if supply[arg1 << 240][8].field_256 < supply[arg1 << 240][8].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][9].field_0 / 100 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_0, 
               supply[arg1 << 240][8].field_256
    require ext_code.size(summitLpAddress)
    staticcall summitLpAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(summitLpAddress)
    if ext_call.return_data[12 len 20] == summitAddress:
        staticcall summitLpAddress.reserve0() with:
                gas gas_remaining wei
    else:
        staticcall summitLpAddress.reserve1() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(summitLpAddress)
    staticcall summitLpAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not supply[arg1 << 240][9].field_256:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_256 < supply[arg1 << 240][8].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][9].field_0 / 100 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_0, 
               (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_256
    if ext_call.return_data[0] * supply[arg1 << 240][9].field_256 / supply[arg1 << 240][9].field_256 != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0] * supply[arg1 << 240][9].field_256:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_256 < supply[arg1 << 240][8].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][9].field_0 / 100 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_0, 
               (0 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_256
    if sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][9].field_256 / ext_call.return_data[0] * supply[arg1 << 240][9].field_256 != sub_d1acb08d:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if (sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][9].field_256 / 100 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_256 < supply[arg1 << 240][8].field_256:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][9].field_0 / 100 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_0, 
           (sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][9].field_256 / 100 / ext_call.return_data[0]) + supply[arg1 << 240][8].field_256
}

function switchTotem(uint8 arg1, uint8 arg2, address arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if stor4 != msg.sender:
        revert with 0, 'Only cartographer'
    require ext_code.size(stor5)
    staticcall stor5.0x2ae834e0 with:
            gas gas_remaining wei
           args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 >= ext_call.return_data[31 len 1]:
        revert with 0, 'Invalid totem'
    if not arg3:
        revert with 0, 'User address is zero'
    mem[100] = 4
    require ext_code.size(stor5)
    staticcall stor5.0xf351b962 with:
            gas gas_remaining wei
           args 4
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'sElev locked until rollover'
    mem[0] = arg3
    mem[32] = 12
    if selectedTotem[address(arg3)] == arg2:
        revert with 0, 'Totem must be different'
    idx = 0
    while uint16(idx) < 12:
        mem[0] = arg3
        mem[32] = 14
        if stor('array', ('mask_shl', 12, 4, -4, ('var', 0)), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg3')), ('name', 'stor14', 14)))[uint8(idx)]:
            require uint16(idx) < 12
            mem[32] = 8
            if not stor8[stor10[stor14[address(arg3)][uint16(idx) / 16]].field_0]:
                revert with 0, 'Pool doesnt exist'
            mem[mem[64] + 4] = 4
            require ext_code.size(stor5)
            staticcall stor5.0xb27fc048 with:
                    gas gas_remaining wei
                   args 4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= supply[stor14[address(arg3)][uint16(idx) / 16]].field_1280:
                mem[mem[64] + 4] = 4
                require ext_code.size(stor5)
                staticcall stor5.0xb27fc048 with:
                        gas gas_remaining wei
                       args 4
                mem[mem[64]] = ext_call.return_data[0]
            else:
                if ext_call.return_data[0] == userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_0:
                    mem[mem[64] + 4] = 4
                    require ext_code.size(stor5)
                    staticcall stor5.0xb27fc048 with:
                            gas gas_remaining wei
                           args 4
                    mem[mem[64]] = ext_call.return_data[0]
                else:
                    require selectedTotem[address(arg3)] < supply[stor14[address(arg3)][uint16(idx) / 16]].field_2560
                    if userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_768 > stor[('array', 10, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256:
                        mem[32] = 12
                        require selectedTotem[address(arg3)] < supply[stor14[address(arg3)][uint16(idx) / 16]].field_2816
                        mem[0] = sha3(stor14[address(arg3)][uint16(idx) / 16], 10) + 11
                        if userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_1024 > stor[('array', 11, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512:
                            mem[mem[64] + 4] = 4
                            require ext_code.size(stor5)
                            staticcall stor5.0xb27fc048 with:
                                    gas gas_remaining wei
                                   args 4
                            mem[mem[64]] = ext_call.return_data[0]
                        else:
                            if (stor[('array', 11, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_1024 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) / userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512 != stor[('array', 11, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 - userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_1024:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if (stor[('array', 11, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_1024 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) / 10^12 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not (stor[('array', 11, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_1024 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) / 10^12:
                                mem[mem[64] + 4] = 4
                                require ext_code.size(stor5)
                                staticcall stor5.0xb27fc048 with:
                                        gas gas_remaining wei
                                       args 4
                                mem[mem[64]] = ext_call.return_data[0]
                            else:
                                _1029 = mem[64]
                                mem[mem[64] + 36] = arg3
                                mem[mem[64] + 68] = (stor[('array', 11, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_1024 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) / 10^12
                                _1030 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1030 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1030 + 36 len 28]
                                mem[64] = _1029 + 164
                                mem[_1029 + 100] = 32
                                mem[_1029 + 132] = 'SafeBEP20: low-level call failed'
                                if not ext_code.size(supply[stor14[address(arg3)][uint16(idx) / 16]].field_40):
                                    revert with 0, 'Address: call to non-contract'
                                _1059 = mem[_1030]
                                t = _1030 + 32
                                u = _1029 + 164
                                s = mem[_1030]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1029 + floor32(mem[_1030]) + 164] = mem[_1030 + -(mem[_1030] % 32) + floor32(mem[_1030]) + 64 len mem[_1030] % 32] or Mask(8 * -(mem[_1030] % 32) + 32, -(8 * -(mem[_1030] % 32) + 32) + 256, mem[_1029 + floor32(mem[_1030]) + 164])
                                call supply[stor14[address(arg3)][uint16(idx) / 16]].field_40.mem[_1029 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_1029 + 168 len _1059 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_1029 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1029 + 168] = 32
                                        mem[_1029 + 200] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _1029 + 232] = mem[idx + _1029 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with memory
                                          from mem[64]
                                           len _1029 + -mem[64] + 264
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                        mem[_1029 + 274 len 22]
                                    if (stor[('array', 11, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_1024 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) / 10^12 > supply[stor14[address(arg3)][uint16(idx) / 16]].field_1024:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    supply[stor14[address(arg3)][uint16(idx) / 16]].field_1024 -= (stor[('array', 11, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_1024 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) / 10^12
                                    mem[_1029 + 168] = 4
                                    require ext_code.size(stor5)
                                    staticcall stor5.0xb27fc048 with:
                                            gas gas_remaining wei
                                           args 4
                                    mem[_1029 + 164] = ext_call.return_data[0]
                                else:
                                    mem[64] = _1029 + ceil32(return_data.size) + 165
                                    mem[_1029 + 164] = return_data.size
                                    mem[_1029 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1029 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1029 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _1029 + ceil32(return_data.size) + 233] = mem[idx + _1029 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_1029 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_1029 + 196]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                        mem[_1029 + ceil32(return_data.size) + 275 len 22]
                                    if (stor[('array', 11, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_1024 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) / 10^12 > supply[stor14[address(arg3)][uint16(idx) / 16]].field_1024:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    supply[stor14[address(arg3)][uint16(idx) / 16]].field_1024 -= (stor[('array', 11, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_1024 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) / 10^12
                                    mem[_1029 + ceil32(return_data.size) + 169] = 4
                                    require ext_code.size(stor5)
                                    staticcall stor5.0xb27fc048 with:
                                            gas gas_remaining wei
                                           args 4
                                    mem[_1029 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    else:
                        if (stor[('array', 10, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_768 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) / userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256 != stor[('array', 10, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 - userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_768:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        mem[32] = 12
                        require selectedTotem[address(arg3)] < supply[stor14[address(arg3)][uint16(idx) / 16]].field_2816
                        mem[0] = sha3(stor14[address(arg3)][uint16(idx) / 16], 10) + 11
                        if userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_1024 > stor[('array', 11, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512:
                            if (stor[('array', 10, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_768 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) / 10^12 < (stor[('array', 10, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_768 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) / 10^12:
                                revert with 0, 'SafeMath: addition overflow'
                            if not (stor[('array', 10, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_768 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) / 10^12:
                                mem[mem[64] + 4] = 4
                                require ext_code.size(stor5)
                                staticcall stor5.0xb27fc048 with:
                                        gas gas_remaining wei
                                       args 4
                                mem[mem[64]] = ext_call.return_data[0]
                            else:
                                _1025 = mem[64]
                                mem[mem[64] + 36] = arg3
                                mem[mem[64] + 68] = (stor[('array', 10, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_768 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) / 10^12
                                _1026 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1026 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1026 + 36 len 28]
                                mem[64] = _1025 + 164
                                mem[_1025 + 100] = 32
                                mem[_1025 + 132] = 'SafeBEP20: low-level call failed'
                                if not ext_code.size(supply[stor14[address(arg3)][uint16(idx) / 16]].field_40):
                                    revert with 0, 'Address: call to non-contract'
                                _1054 = mem[_1026]
                                t = _1026 + 32
                                u = _1025 + 164
                                s = mem[_1026]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1025 + floor32(mem[_1026]) + 164] = mem[_1026 + -(mem[_1026] % 32) + floor32(mem[_1026]) + 64 len mem[_1026] % 32] or Mask(8 * -(mem[_1026] % 32) + 32, -(8 * -(mem[_1026] % 32) + 32) + 256, mem[_1025 + floor32(mem[_1026]) + 164])
                                call supply[stor14[address(arg3)][uint16(idx) / 16]].field_40.mem[_1025 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_1025 + 168 len _1054 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_1025 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1025 + 168] = 32
                                        mem[_1025 + 200] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _1025 + 232] = mem[idx + _1025 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with memory
                                          from mem[64]
                                           len _1025 + -mem[64] + 264
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                        mem[_1025 + 274 len 22]
                                    if (stor[('array', 10, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_768 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) / 10^12 > supply[stor14[address(arg3)][uint16(idx) / 16]].field_1024:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    supply[stor14[address(arg3)][uint16(idx) / 16]].field_1024 -= (stor[('array', 10, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_768 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) / 10^12
                                    mem[_1025 + 168] = 4
                                    require ext_code.size(stor5)
                                    staticcall stor5.0xb27fc048 with:
                                            gas gas_remaining wei
                                           args 4
                                    mem[_1025 + 164] = ext_call.return_data[0]
                                else:
                                    mem[64] = _1025 + ceil32(return_data.size) + 165
                                    mem[_1025 + 164] = return_data.size
                                    mem[_1025 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1025 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1025 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _1025 + ceil32(return_data.size) + 233] = mem[idx + _1025 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_1025 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_1025 + 196]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                        mem[_1025 + ceil32(return_data.size) + 275 len 22]
                                    if (stor[('array', 10, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_768 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) / 10^12 > supply[stor14[address(arg3)][uint16(idx) / 16]].field_1024:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    supply[stor14[address(arg3)][uint16(idx) / 16]].field_1024 -= (stor[('array', 10, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_768 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) / 10^12
                                    mem[_1025 + ceil32(return_data.size) + 169] = 4
                                    require ext_code.size(stor5)
                                    staticcall stor5.0xb27fc048 with:
                                            gas gas_remaining wei
                                           args 4
                                    mem[_1025 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                        else:
                            if (stor[('array', 11, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_1024 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) / userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512 != stor[('array', 11, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 - userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_1024:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if ((stor[('array', 11, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_1024 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) / 10^12) + ((stor[('array', 10, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_768 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) / 10^12) < (stor[('array', 10, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_768 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) / 10^12:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ((stor[('array', 11, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_1024 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) / 10^12) + ((stor[('array', 10, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_768 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) / 10^12):
                                mem[mem[64] + 4] = 4
                                require ext_code.size(stor5)
                                staticcall stor5.0xb27fc048 with:
                                        gas gas_remaining wei
                                       args 4
                                mem[mem[64]] = ext_call.return_data[0]
                            else:
                                _1035 = mem[64]
                                mem[mem[64] + 36] = arg3
                                mem[mem[64] + 68] = ((stor[('array', 11, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_1024 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) / 10^12) + ((stor[('array', 10, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_768 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) / 10^12)
                                _1036 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1036 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1036 + 36 len 28]
                                mem[64] = _1035 + 164
                                mem[_1035 + 100] = 32
                                mem[_1035 + 132] = 'SafeBEP20: low-level call failed'
                                if not ext_code.size(supply[stor14[address(arg3)][uint16(idx) / 16]].field_40):
                                    revert with 0, 'Address: call to non-contract'
                                _1068 = mem[_1036]
                                t = _1036 + 32
                                u = _1035 + 164
                                s = mem[_1036]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_1035 + floor32(mem[_1036]) + 164] = mem[_1036 + -(mem[_1036] % 32) + floor32(mem[_1036]) + 64 len mem[_1036] % 32] or Mask(8 * -(mem[_1036] % 32) + 32, -(8 * -(mem[_1036] % 32) + 32) + 256, mem[_1035 + floor32(mem[_1036]) + 164])
                                call supply[stor14[address(arg3)][uint16(idx) / 16]].field_40.mem[_1035 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_1035 + 168 len _1068 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_1035 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1035 + 168] = 32
                                        mem[_1035 + 200] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _1035 + 232] = mem[idx + _1035 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with memory
                                          from mem[64]
                                           len _1035 + -mem[64] + 264
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                        mem[_1035 + 274 len 22]
                                    if ((stor[('array', 11, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_1024 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) / 10^12) + ((stor[('array', 10, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_768 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) / 10^12) > supply[stor14[address(arg3)][uint16(idx) / 16]].field_1024:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    supply[stor14[address(arg3)][uint16(idx) / 16]].field_1024 = supply[stor14[address(arg3)][uint16(idx) / 16]].field_1024 - ((stor[('array', 11, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_1024 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) / 10^12) - ((stor[('array', 10, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_768 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) / 10^12)
                                    mem[_1035 + 168] = 4
                                    require ext_code.size(stor5)
                                    staticcall stor5.0xb27fc048 with:
                                            gas gas_remaining wei
                                           args 4
                                    mem[_1035 + 164] = ext_call.return_data[0]
                                else:
                                    mem[64] = _1035 + ceil32(return_data.size) + 165
                                    mem[_1035 + 164] = return_data.size
                                    mem[_1035 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1035 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1035 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _1035 + ceil32(return_data.size) + 233] = mem[idx + _1035 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_1035 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_1035 + 196]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                        mem[_1035 + ceil32(return_data.size) + 275 len 22]
                                    if ((stor[('array', 11, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_1024 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) / 10^12) + ((stor[('array', 10, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_768 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) / 10^12) > supply[stor14[address(arg3)][uint16(idx) / 16]].field_1024:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    supply[stor14[address(arg3)][uint16(idx) / 16]].field_1024 = supply[stor14[address(arg3)][uint16(idx) / 16]].field_1024 - ((stor[('array', 11, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_1024 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512) / 10^12) - ((stor[('array', 10, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) - (userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_768 * userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256) / 10^12)
                                    mem[_1035 + ceil32(return_data.size) + 169] = 4
                                    require ext_code.size(stor5)
                                    staticcall stor5.0xb27fc048 with:
                                            gas gas_remaining wei
                                           args 4
                                    mem[_1035 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256 < userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512 < userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            require arg2 < supply[stor14[address(arg3)][uint16(idx) / 16]].field_2560
            userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_768 = stor[('array', 10, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + arg2].field_0
            require arg2 < supply[stor14[address(arg3)][uint16(idx) / 16]].field_2816
            mem[0] = sha3(stor14[address(arg3)][uint16(idx) / 16], 10) + 11
            userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_1024 = stor[('array', 11, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + arg2].field_0
            userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_0 = ext_call.return_data[0]
            if userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256:
                require selectedTotem[address(arg3)] < supply[stor14[address(arg3)][uint16(idx) / 16]].field_2048
                if userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256 > stor[('array', 8, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[32] = 12
                require selectedTotem[address(arg3)] < supply[stor14[address(arg3)][uint16(idx) / 16]].field_2048
                stor[('array', 8, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 -= userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256
                require arg2 < supply[stor14[address(arg3)][uint16(idx) / 16]].field_2048
                if userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256 + stor[('array', 8, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + arg2].field_0 < stor[('array', 8, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + arg2].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require arg2 < supply[stor14[address(arg3)][uint16(idx) / 16]].field_2048
                mem[0] = sha3(stor14[address(arg3)][uint16(idx) / 16], 10) + 8
                stor[('array', 8, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + arg2].field_0 += userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_256
            if userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512:
                require selectedTotem[address(arg3)] < supply[stor14[address(arg3)][uint16(idx) / 16]].field_2304
                if userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512 > stor[('array', 9, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[32] = 12
                require selectedTotem[address(arg3)] < supply[stor14[address(arg3)][uint16(idx) / 16]].field_2304
                stor[('array', 9, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + stor12[address(arg3)]].field_0 -= userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512
                require arg2 < supply[stor14[address(arg3)][uint16(idx) / 16]].field_2304
                if userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512 + stor[('array', 9, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + arg2].field_0 < stor[('array', 9, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + arg2].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                require arg2 < supply[stor14[address(arg3)][uint16(idx) / 16]].field_2304
                mem[0] = sha3(stor14[address(arg3)][uint16(idx) / 16], 10) + 9
                stor[('array', 9, ('map', ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor14', 14)))), ('name', 'supply', 10))) + arg2].field_0 += userInfo[stor14[address(arg3)][uint16(idx) / 16]][address(arg3)].field_512
        idx = idx + 1
        continue 
    selectedTotem[address(arg3)] = arg2
    stor1 = 1
}

function rollover(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if stor4 != msg.sender:
        revert with 0, 'Only cartographer'
    require ext_code.size(stor5)
    staticcall stor5.0xb27fc048 with:
            gas gas_remaining wei
           args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while uint16(idx) < 24:
        if sub_b9aa5880[uint8(idx)].field_0:
            require uint16(idx) < 24
            mem[0] = sub_b9aa5880[uint8(idx)].field_0
            mem[32] = 10
            if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_16 = 0
                if bool(supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_32) != 0:
                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_32 = 0
                    if sub_cd5af490 < sub_cd5af490:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1 > sub_cd5af490:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_cd5af490--
                    s = 0
                    while uint8(s) < 24:
                        if sub_b9aa5880[uint8(s)].field_0 != supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_0:
                            s = s + 1
                            continue 
                        require uint8(s) < 24
                        sub_b9aa5880[uint8(s) / 16].field_0 = !(65535 * 256^(2 * s % 16)) and sub_b9aa5880[uint8(s) / 16].field_0
                        mem[100] = 4
                        mem[132] = ext_call.return_data[0] - 1
                        require ext_code.size(stor5)
                        staticcall stor5.0xcb4b3022 with:
                                gas gas_remaining wei
                               args 4, ext_call.return_data[0] - 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2048
                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2304
                        require ext_code.size(summitLpAddress)
                        staticcall summitLpAddress.0x18160ddd with:
                                gas gas_remaining wei
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                            else:
                                if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                else:
                                    if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                        if stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                        require ext_code.size(summitLpAddress)
                                        staticcall summitLpAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                        else:
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.token0() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(summitLpAddress)
                                            if address(ext_call.return_data[0]) == summitAddress:
                                                staticcall summitLpAddress.reserve0() with:
                                                        gas gas_remaining wei
                                            else:
                                                staticcall summitLpAddress.reserve1() with:
                                                        gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0] * 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if not ext_call.return_data[0] * 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_d1acb08d * ext_call.return_data[0] * 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                        require ext_code.size(summitLpAddress)
                                        staticcall summitLpAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                        else:
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.token0() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(summitLpAddress)
                                            if address(ext_call.return_data[0]) == summitAddress:
                                                staticcall summitLpAddress.reserve0() with:
                                                        gas gas_remaining wei
                                            else:
                                                staticcall summitLpAddress.reserve1() with:
                                                        gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if not ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                        else:
                            require ext_code.size(summitLpAddress)
                            staticcall summitLpAddress.token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(summitLpAddress)
                            if address(ext_call.return_data[0]) == summitAddress:
                                staticcall summitLpAddress.reserve0() with:
                                        gas gas_remaining wei
                            else:
                                staticcall summitLpAddress.reserve1() with:
                                        gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(summitLpAddress)
                            staticcall summitLpAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                else:
                                    if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                    else:
                                        if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                            if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                            else:
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.token0() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(summitLpAddress)
                                                if address(ext_call.return_data[0]) == summitAddress:
                                                    staticcall summitLpAddress.reserve0() with:
                                                            gas gas_remaining wei
                                                else:
                                                    staticcall summitLpAddress.reserve1() with:
                                                            gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if not ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                            else:
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.token0() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(summitLpAddress)
                                                if address(ext_call.return_data[0]) == summitAddress:
                                                    staticcall summitLpAddress.reserve0() with:
                                                            gas gas_remaining wei
                                                else:
                                                    staticcall summitLpAddress.reserve1() with:
                                                            gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if not ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                            else:
                                if ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                    else:
                                        if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                        else:
                                            if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                                if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                else:
                                                    require ext_code.size(summitLpAddress)
                                                    staticcall summitLpAddress.token0() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(summitLpAddress)
                                                    if address(ext_call.return_data[0]) == summitAddress:
                                                        staticcall summitLpAddress.reserve0() with:
                                                                gas gas_remaining wei
                                                    else:
                                                        staticcall summitLpAddress.reserve1() with:
                                                                gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(summitLpAddress)
                                                    staticcall summitLpAddress.0x18160ddd with:
                                                            gas gas_remaining wei
                                                    mem[96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if not ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                        else:
                                                            if sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                            else:
                                                if 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                else:
                                                    require ext_code.size(summitLpAddress)
                                                    staticcall summitLpAddress.token0() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(summitLpAddress)
                                                    if address(ext_call.return_data[0]) == summitAddress:
                                                        staticcall summitLpAddress.reserve0() with:
                                                                gas gas_remaining wei
                                                    else:
                                                        staticcall summitLpAddress.reserve1() with:
                                                                gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(summitLpAddress)
                                                    staticcall summitLpAddress.0x18160ddd with:
                                                            gas gas_remaining wei
                                                    mem[96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if not ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                        else:
                                                            if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                else:
                                    if sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                    else:
                                        if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                        else:
                                            if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                                if (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                else:
                                                    require ext_code.size(summitLpAddress)
                                                    staticcall summitLpAddress.token0() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(summitLpAddress)
                                                    if address(ext_call.return_data[0]) == summitAddress:
                                                        staticcall summitLpAddress.reserve0() with:
                                                                gas gas_remaining wei
                                                    else:
                                                        staticcall summitLpAddress.reserve1() with:
                                                                gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(summitLpAddress)
                                                    staticcall summitLpAddress.0x18160ddd with:
                                                            gas gas_remaining wei
                                                    mem[96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if not ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                        else:
                                                            if sub_d1acb08d * ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                            else:
                                                if 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                else:
                                                    require ext_code.size(summitLpAddress)
                                                    staticcall summitLpAddress.token0() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(summitLpAddress)
                                                    if address(ext_call.return_data[0]) == summitAddress:
                                                        staticcall summitLpAddress.reserve0() with:
                                                                gas gas_remaining wei
                                                    else:
                                                        staticcall summitLpAddress.reserve1() with:
                                                                gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(summitLpAddress)
                                                    staticcall summitLpAddress.0x18160ddd with:
                                                            gas gas_remaining wei
                                                    mem[96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if not ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                        else:
                                                            if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                mem[100] = 4
                mem[132] = ext_call.return_data[0] - 1
                require ext_code.size(stor5)
                staticcall stor5.0xcb4b3022 with:
                        gas gas_remaining wei
                       args 4, ext_call.return_data[0] - 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2048
                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2304
                require ext_code.size(summitLpAddress)
                staticcall summitLpAddress.0x18160ddd with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                    else:
                        if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                        else:
                            if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                if stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                require ext_code.size(summitLpAddress)
                                staticcall summitLpAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                else:
                                    require ext_code.size(summitLpAddress)
                                    staticcall summitLpAddress.token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(summitLpAddress)
                                    if address(ext_call.return_data[0]) == summitAddress:
                                        staticcall summitLpAddress.reserve0() with:
                                                gas gas_remaining wei
                                    else:
                                        staticcall summitLpAddress.reserve1() with:
                                                gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(summitLpAddress)
                                    staticcall summitLpAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                    else:
                                        if ext_call.return_data[0] * 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not ext_call.return_data[0] * 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_d1acb08d * ext_call.return_data[0] * 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                            else:
                                if 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                require ext_code.size(summitLpAddress)
                                staticcall summitLpAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                else:
                                    require ext_code.size(summitLpAddress)
                                    staticcall summitLpAddress.token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(summitLpAddress)
                                    if address(ext_call.return_data[0]) == summitAddress:
                                        staticcall summitLpAddress.reserve0() with:
                                                gas gas_remaining wei
                                    else:
                                        staticcall summitLpAddress.reserve1() with:
                                                gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(summitLpAddress)
                                    staticcall summitLpAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                    else:
                                        if ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                else:
                    require ext_code.size(summitLpAddress)
                    staticcall summitLpAddress.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(summitLpAddress)
                    if address(ext_call.return_data[0]) == summitAddress:
                        staticcall summitLpAddress.reserve0() with:
                                gas gas_remaining wei
                    else:
                        staticcall summitLpAddress.reserve1() with:
                                gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(summitLpAddress)
                    staticcall summitLpAddress.0x18160ddd with:
                            gas gas_remaining wei
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                        else:
                            if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                            else:
                                if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                    if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                    require ext_code.size(summitLpAddress)
                                    staticcall summitLpAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                    else:
                                        require ext_code.size(summitLpAddress)
                                        staticcall summitLpAddress.token0() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(summitLpAddress)
                                        if address(ext_call.return_data[0]) == summitAddress:
                                            staticcall summitLpAddress.reserve0() with:
                                                    gas gas_remaining wei
                                        else:
                                            staticcall summitLpAddress.reserve1() with:
                                                    gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(summitLpAddress)
                                        staticcall summitLpAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                        else:
                                            if ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                            else:
                                                if sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                else:
                                    if 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                    require ext_code.size(summitLpAddress)
                                    staticcall summitLpAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                    else:
                                        require ext_code.size(summitLpAddress)
                                        staticcall summitLpAddress.token0() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(summitLpAddress)
                                        if address(ext_call.return_data[0]) == summitAddress:
                                            staticcall summitLpAddress.reserve0() with:
                                                    gas gas_remaining wei
                                        else:
                                            staticcall summitLpAddress.reserve1() with:
                                                    gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(summitLpAddress)
                                        staticcall summitLpAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                        else:
                                            if ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                            else:
                                                if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                            else:
                                if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                else:
                                    if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                        if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                        require ext_code.size(summitLpAddress)
                                        staticcall summitLpAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                        else:
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.token0() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(summitLpAddress)
                                            if address(ext_call.return_data[0]) == summitAddress:
                                                staticcall summitLpAddress.reserve0() with:
                                                        gas gas_remaining wei
                                            else:
                                                staticcall summitLpAddress.reserve1() with:
                                                        gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if not ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                        require ext_code.size(summitLpAddress)
                                        staticcall summitLpAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                        else:
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.token0() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(summitLpAddress)
                                            if address(ext_call.return_data[0]) == summitAddress:
                                                staticcall summitLpAddress.reserve0() with:
                                                        gas gas_remaining wei
                                            else:
                                                staticcall summitLpAddress.reserve1() with:
                                                        gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if not ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                        else:
                            if sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                            else:
                                if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                else:
                                    if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                        if (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                        require ext_code.size(summitLpAddress)
                                        staticcall summitLpAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                        else:
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.token0() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(summitLpAddress)
                                            if address(ext_call.return_data[0]) == summitAddress:
                                                staticcall summitLpAddress.reserve0() with:
                                                        gas gas_remaining wei
                                            else:
                                                staticcall summitLpAddress.reserve1() with:
                                                        gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if not ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_d1acb08d * ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                        require ext_code.size(summitLpAddress)
                                        staticcall summitLpAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                        else:
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.token0() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(summitLpAddress)
                                            if address(ext_call.return_data[0]) == summitAddress:
                                                staticcall summitLpAddress.reserve0() with:
                                                        gas gas_remaining wei
                                            else:
                                                staticcall summitLpAddress.reserve1() with:
                                                        gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if not ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
            else:
                if ext_call.return_data[0] < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1280 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_512:
                    if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_16:
                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_16 = 1
                    else:
                        mem[100] = 4
                        mem[132] = ext_call.return_data[0] - 1
                        require ext_code.size(stor5)
                        staticcall stor5.0xcb4b3022 with:
                                gas gas_remaining wei
                               args 4, ext_call.return_data[0] - 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2048
                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2304
                        require ext_code.size(summitLpAddress)
                        staticcall summitLpAddress.0x18160ddd with:
                                gas gas_remaining wei
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                            else:
                                if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                else:
                                    if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                        if stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                        require ext_code.size(summitLpAddress)
                                        staticcall summitLpAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                        else:
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.token0() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(summitLpAddress)
                                            if address(ext_call.return_data[0]) == summitAddress:
                                                staticcall summitLpAddress.reserve0() with:
                                                        gas gas_remaining wei
                                            else:
                                                staticcall summitLpAddress.reserve1() with:
                                                        gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0] * 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if not ext_call.return_data[0] * 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_d1acb08d * ext_call.return_data[0] * 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                        require ext_code.size(summitLpAddress)
                                        staticcall summitLpAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                        else:
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.token0() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(summitLpAddress)
                                            if address(ext_call.return_data[0]) == summitAddress:
                                                staticcall summitLpAddress.reserve0() with:
                                                        gas gas_remaining wei
                                            else:
                                                staticcall summitLpAddress.reserve1() with:
                                                        gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if not ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                        else:
                            require ext_code.size(summitLpAddress)
                            staticcall summitLpAddress.token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(summitLpAddress)
                            if address(ext_call.return_data[0]) == summitAddress:
                                staticcall summitLpAddress.reserve0() with:
                                        gas gas_remaining wei
                            else:
                                staticcall summitLpAddress.reserve1() with:
                                        gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(summitLpAddress)
                            staticcall summitLpAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                else:
                                    if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                    else:
                                        if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                            if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                            else:
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.token0() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(summitLpAddress)
                                                if address(ext_call.return_data[0]) == summitAddress:
                                                    staticcall summitLpAddress.reserve0() with:
                                                            gas gas_remaining wei
                                                else:
                                                    staticcall summitLpAddress.reserve1() with:
                                                            gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if not ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                            else:
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.token0() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(summitLpAddress)
                                                if address(ext_call.return_data[0]) == summitAddress:
                                                    staticcall summitLpAddress.reserve0() with:
                                                            gas gas_remaining wei
                                                else:
                                                    staticcall summitLpAddress.reserve1() with:
                                                            gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if not ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                            else:
                                if ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                    else:
                                        if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                        else:
                                            if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                                if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                else:
                                                    require ext_code.size(summitLpAddress)
                                                    staticcall summitLpAddress.token0() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(summitLpAddress)
                                                    if address(ext_call.return_data[0]) == summitAddress:
                                                        staticcall summitLpAddress.reserve0() with:
                                                                gas gas_remaining wei
                                                    else:
                                                        staticcall summitLpAddress.reserve1() with:
                                                                gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(summitLpAddress)
                                                    staticcall summitLpAddress.0x18160ddd with:
                                                            gas gas_remaining wei
                                                    mem[96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if not ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                        else:
                                                            if sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                            else:
                                                if 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                else:
                                                    require ext_code.size(summitLpAddress)
                                                    staticcall summitLpAddress.token0() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(summitLpAddress)
                                                    if address(ext_call.return_data[0]) == summitAddress:
                                                        staticcall summitLpAddress.reserve0() with:
                                                                gas gas_remaining wei
                                                    else:
                                                        staticcall summitLpAddress.reserve1() with:
                                                                gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(summitLpAddress)
                                                    staticcall summitLpAddress.0x18160ddd with:
                                                            gas gas_remaining wei
                                                    mem[96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if not ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                        else:
                                                            if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                else:
                                    if sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                    else:
                                        if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                        else:
                                            if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                                if (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                else:
                                                    require ext_code.size(summitLpAddress)
                                                    staticcall summitLpAddress.token0() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(summitLpAddress)
                                                    if address(ext_call.return_data[0]) == summitAddress:
                                                        staticcall summitLpAddress.reserve0() with:
                                                                gas gas_remaining wei
                                                    else:
                                                        staticcall summitLpAddress.reserve1() with:
                                                                gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(summitLpAddress)
                                                    staticcall summitLpAddress.0x18160ddd with:
                                                            gas gas_remaining wei
                                                    mem[96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if not ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                        else:
                                                            if sub_d1acb08d * ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                            else:
                                                if 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                else:
                                                    require ext_code.size(summitLpAddress)
                                                    staticcall summitLpAddress.token0() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(summitLpAddress)
                                                    if address(ext_call.return_data[0]) == summitAddress:
                                                        staticcall summitLpAddress.reserve0() with:
                                                                gas gas_remaining wei
                                                    else:
                                                        staticcall summitLpAddress.reserve1() with:
                                                                gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(summitLpAddress)
                                                    staticcall summitLpAddress.0x18160ddd with:
                                                            gas gas_remaining wei
                                                    mem[96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if not ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                        else:
                                                            if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                else:
                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_16 = 0
                    if bool(supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_32) != 0:
                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_32 = 0
                        if sub_cd5af490 < sub_cd5af490:
                            revert with 0, 'SafeMath: addition overflow'
                        if 1 > sub_cd5af490:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_cd5af490--
                        s = 0
                        while uint8(s) < 24:
                            if sub_b9aa5880[uint8(s)].field_0 != supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_0:
                                s = s + 1
                                continue 
                            require uint8(s) < 24
                            sub_b9aa5880[uint8(s) / 16].field_0 = !(65535 * 256^(2 * s % 16)) and sub_b9aa5880[uint8(s) / 16].field_0
                            mem[100] = 4
                            mem[132] = ext_call.return_data[0] - 1
                            require ext_code.size(stor5)
                            staticcall stor5.0xcb4b3022 with:
                                    gas gas_remaining wei
                                   args 4, ext_call.return_data[0] - 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2048
                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2304
                            require ext_code.size(summitLpAddress)
                            staticcall summitLpAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                else:
                                    if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                    else:
                                        if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                            if stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                            else:
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.token0() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(summitLpAddress)
                                                if address(ext_call.return_data[0]) == summitAddress:
                                                    staticcall summitLpAddress.reserve0() with:
                                                            gas gas_remaining wei
                                                else:
                                                    staticcall summitLpAddress.reserve1() with:
                                                            gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0] * 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if not ext_call.return_data[0] * 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if sub_d1acb08d * ext_call.return_data[0] * 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                            else:
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.token0() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(summitLpAddress)
                                                if address(ext_call.return_data[0]) == summitAddress:
                                                    staticcall summitLpAddress.reserve0() with:
                                                            gas gas_remaining wei
                                                else:
                                                    staticcall summitLpAddress.reserve1() with:
                                                            gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if not ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                            else:
                                require ext_code.size(summitLpAddress)
                                staticcall summitLpAddress.token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(summitLpAddress)
                                if address(ext_call.return_data[0]) == summitAddress:
                                    staticcall summitLpAddress.reserve0() with:
                                            gas gas_remaining wei
                                else:
                                    staticcall summitLpAddress.reserve1() with:
                                            gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(summitLpAddress)
                                staticcall summitLpAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                    else:
                                        if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                        else:
                                            if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                                if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                else:
                                                    require ext_code.size(summitLpAddress)
                                                    staticcall summitLpAddress.token0() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(summitLpAddress)
                                                    if address(ext_call.return_data[0]) == summitAddress:
                                                        staticcall summitLpAddress.reserve0() with:
                                                                gas gas_remaining wei
                                                    else:
                                                        staticcall summitLpAddress.reserve1() with:
                                                                gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(summitLpAddress)
                                                    staticcall summitLpAddress.0x18160ddd with:
                                                            gas gas_remaining wei
                                                    mem[96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if not ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                        else:
                                                            if sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                            else:
                                                if 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                else:
                                                    require ext_code.size(summitLpAddress)
                                                    staticcall summitLpAddress.token0() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(summitLpAddress)
                                                    if address(ext_call.return_data[0]) == summitAddress:
                                                        staticcall summitLpAddress.reserve0() with:
                                                                gas gas_remaining wei
                                                    else:
                                                        staticcall summitLpAddress.reserve1() with:
                                                                gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(summitLpAddress)
                                                    staticcall summitLpAddress.0x18160ddd with:
                                                            gas gas_remaining wei
                                                    mem[96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if not ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                        else:
                                                            if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                else:
                                    if ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if not ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                        else:
                                            if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                            else:
                                                if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                                    if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require ext_code.size(summitLpAddress)
                                                    staticcall summitLpAddress.0x18160ddd with:
                                                            gas gas_remaining wei
                                                    mem[96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    else:
                                                        require ext_code.size(summitLpAddress)
                                                        staticcall summitLpAddress.token0() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(summitLpAddress)
                                                        if address(ext_call.return_data[0]) == summitAddress:
                                                            staticcall summitLpAddress.reserve0() with:
                                                                    gas gas_remaining wei
                                                        else:
                                                            staticcall summitLpAddress.reserve1() with:
                                                                    gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(summitLpAddress)
                                                        staticcall summitLpAddress.0x18160ddd with:
                                                                gas gas_remaining wei
                                                        mem[96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                        else:
                                                            if ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                            if not ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                require ext_call.return_data[0]
                                                                if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                            else:
                                                                if sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                require ext_call.return_data[0]
                                                                if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                                else:
                                                    if 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require ext_code.size(summitLpAddress)
                                                    staticcall summitLpAddress.0x18160ddd with:
                                                            gas gas_remaining wei
                                                    mem[96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    else:
                                                        require ext_code.size(summitLpAddress)
                                                        staticcall summitLpAddress.token0() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(summitLpAddress)
                                                        if address(ext_call.return_data[0]) == summitAddress:
                                                            staticcall summitLpAddress.reserve0() with:
                                                                    gas gas_remaining wei
                                                        else:
                                                            staticcall summitLpAddress.reserve1() with:
                                                                    gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(summitLpAddress)
                                                        staticcall summitLpAddress.0x18160ddd with:
                                                                gas gas_remaining wei
                                                        mem[96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                        else:
                                                            if ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                            if not ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                require ext_call.return_data[0]
                                                                if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                            else:
                                                                if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                require ext_call.return_data[0]
                                                                if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                    else:
                                        if sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                        else:
                                            if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                            else:
                                                if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                                    if (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require ext_code.size(summitLpAddress)
                                                    staticcall summitLpAddress.0x18160ddd with:
                                                            gas gas_remaining wei
                                                    mem[96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    else:
                                                        require ext_code.size(summitLpAddress)
                                                        staticcall summitLpAddress.token0() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(summitLpAddress)
                                                        if address(ext_call.return_data[0]) == summitAddress:
                                                            staticcall summitLpAddress.reserve0() with:
                                                                    gas gas_remaining wei
                                                        else:
                                                            staticcall summitLpAddress.reserve1() with:
                                                                    gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(summitLpAddress)
                                                        staticcall summitLpAddress.0x18160ddd with:
                                                                gas gas_remaining wei
                                                        mem[96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                        else:
                                                            if ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                            if not ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                require ext_call.return_data[0]
                                                                if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                            else:
                                                                if sub_d1acb08d * ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                require ext_call.return_data[0]
                                                                if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                                else:
                                                    if 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require ext_code.size(summitLpAddress)
                                                    staticcall summitLpAddress.0x18160ddd with:
                                                            gas gas_remaining wei
                                                    mem[96] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    else:
                                                        require ext_code.size(summitLpAddress)
                                                        staticcall summitLpAddress.token0() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(summitLpAddress)
                                                        if address(ext_call.return_data[0]) == summitAddress:
                                                            staticcall summitLpAddress.reserve0() with:
                                                                    gas gas_remaining wei
                                                        else:
                                                            staticcall summitLpAddress.reserve1() with:
                                                                    gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(summitLpAddress)
                                                        staticcall summitLpAddress.0x18160ddd with:
                                                                gas gas_remaining wei
                                                        mem[96] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require ext_call.return_data[0]
                                                            if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                        else:
                                                            if ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                            if not ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                require ext_call.return_data[0]
                                                                if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                            else:
                                                                if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                require ext_call.return_data[0]
                                                                if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                    mem[100] = 4
                    mem[132] = ext_call.return_data[0] - 1
                    require ext_code.size(stor5)
                    staticcall stor5.0xcb4b3022 with:
                            gas gas_remaining wei
                           args 4, ext_call.return_data[0] - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2048
                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2304
                    require ext_code.size(summitLpAddress)
                    staticcall summitLpAddress.0x18160ddd with:
                            gas gas_remaining wei
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                        else:
                            if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                            else:
                                if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                    if stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                    require ext_code.size(summitLpAddress)
                                    staticcall summitLpAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                    else:
                                        require ext_code.size(summitLpAddress)
                                        staticcall summitLpAddress.token0() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(summitLpAddress)
                                        if address(ext_call.return_data[0]) == summitAddress:
                                            staticcall summitLpAddress.reserve0() with:
                                                    gas gas_remaining wei
                                        else:
                                            staticcall summitLpAddress.reserve1() with:
                                                    gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(summitLpAddress)
                                        staticcall summitLpAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                        else:
                                            if ext_call.return_data[0] * 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not ext_call.return_data[0] * 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                            else:
                                                if sub_d1acb08d * ext_call.return_data[0] * 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                else:
                                    if 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                    require ext_code.size(summitLpAddress)
                                    staticcall summitLpAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    mem[96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                    else:
                                        require ext_code.size(summitLpAddress)
                                        staticcall summitLpAddress.token0() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(summitLpAddress)
                                        if address(ext_call.return_data[0]) == summitAddress:
                                            staticcall summitLpAddress.reserve0() with:
                                                    gas gas_remaining wei
                                        else:
                                            staticcall summitLpAddress.reserve1() with:
                                                    gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(summitLpAddress)
                                        staticcall summitLpAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                        else:
                                            if ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                            else:
                                                if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                    else:
                        require ext_code.size(summitLpAddress)
                        staticcall summitLpAddress.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(summitLpAddress)
                        if address(ext_call.return_data[0]) == summitAddress:
                            staticcall summitLpAddress.reserve0() with:
                                    gas gas_remaining wei
                        else:
                            staticcall summitLpAddress.reserve1() with:
                                    gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(summitLpAddress)
                        staticcall summitLpAddress.0x18160ddd with:
                                gas gas_remaining wei
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                            else:
                                if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                else:
                                    if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                        if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                        require ext_code.size(summitLpAddress)
                                        staticcall summitLpAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                        else:
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.token0() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(summitLpAddress)
                                            if address(ext_call.return_data[0]) == summitAddress:
                                                staticcall summitLpAddress.reserve0() with:
                                                        gas gas_remaining wei
                                            else:
                                                staticcall summitLpAddress.reserve1() with:
                                                        gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if not ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                        require ext_code.size(summitLpAddress)
                                        staticcall summitLpAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        mem[96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                            stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                        else:
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.token0() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(summitLpAddress)
                                            if address(ext_call.return_data[0]) == summitAddress:
                                                staticcall summitLpAddress.reserve0() with:
                                                        gas gas_remaining wei
                                            else:
                                                staticcall summitLpAddress.reserve1() with:
                                                        gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if not ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                else:
                                                    if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                        else:
                            if ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                else:
                                    if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                    else:
                                        if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                            if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                            else:
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.token0() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(summitLpAddress)
                                                if address(ext_call.return_data[0]) == summitAddress:
                                                    staticcall summitLpAddress.reserve0() with:
                                                            gas gas_remaining wei
                                                else:
                                                    staticcall summitLpAddress.reserve1() with:
                                                            gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if not ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                            else:
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.token0() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(summitLpAddress)
                                                if address(ext_call.return_data[0]) == summitAddress:
                                                    staticcall summitLpAddress.reserve0() with:
                                                            gas gas_remaining wei
                                                else:
                                                    staticcall summitLpAddress.reserve1() with:
                                                            gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if not ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                            else:
                                if sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                else:
                                    if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                    else:
                                        if not supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                            if (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                            else:
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.token0() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(summitLpAddress)
                                                if address(ext_call.return_data[0]) == summitAddress:
                                                    staticcall summitLpAddress.reserve0() with:
                                                            gas gas_remaining wei
                                                else:
                                                    staticcall summitLpAddress.reserve1() with:
                                                            gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if not ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if sub_d1acb08d * ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                            require ext_code.size(summitLpAddress)
                                            staticcall summitLpAddress.0x18160ddd with:
                                                    gas gas_remaining wei
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                            else:
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.token0() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(summitLpAddress)
                                                if address(ext_call.return_data[0]) == summitAddress:
                                                    staticcall summitLpAddress.reserve0() with:
                                                            gas gas_remaining wei
                                                else:
                                                    staticcall summitLpAddress.reserve1() with:
                                                            gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(summitLpAddress)
                                                staticcall summitLpAddress.0x18160ddd with:
                                                        gas gas_remaining wei
                                                mem[96] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                    require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                    mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                    stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if not ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                                    else:
                                                        if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                                                        stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0
                                                        require uint8(ext_call.return_data[0]) < supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                        mem[0] = sha3(sub_b9aa5880[uint16(idx) / 16].field_(16 * idx % 16) - 240, 10) + 11
                                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor16[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 8, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor16', 16)))), ('name', 'supply', 10))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
        idx = idx + 1
        continue 
}



}
