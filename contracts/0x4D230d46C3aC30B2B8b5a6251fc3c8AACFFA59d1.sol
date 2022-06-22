contract main {




// =====================  Runtime code  =====================


#
#  - hypotheticalRewards(uint16 arg1, address arg2)
#
bool stor0; offset 256
uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
address owner;
uint256 stor1;
mapping of uint8 stor10;
mapping of uint8 stor11;
mapping of struct supply;
mapping of struct userInfo;
mapping of uint8 selectedTotem;
mapping of uint256 sub_c15df323;
address summitAddress;
address summitLpAddress;
address stor4;
address stor5;
uint256 sub_d1acb08d;
uint256 sub_81e81f4e;
uint256 sub_1df1d044;

function selectedTotem(uint8 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return selectedTotem[address(arg2)]
}

function sub_1df1d044(?) payable {
    return sub_1df1d044
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
    if not stor10[arg1 << 240]:
        revert with 0, 'nPool doesnt exist'
    return supply[arg1 << 240].field_1792
}

function expeditionsCount() payable {
    return stor9.length
}

function sub_80b795c0(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function sub_81e81f4e(?) payable {
    return sub_81e81f4e
}

function sub_83ead6b2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor9.length
    return sub_83ead6b2[uint8(arg1)]
}

function owner() payable {
    return owner
}

function summit() payable {
    return summitAddress
}

function sub_c15df323(?) payable {
    require calldata.size - 4 >= 32
    return sub_c15df323[arg1]
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function sub_d1acb08d(?) payable {
    return sub_d1acb08d
}

function userTotem(address arg1) payable {
    require calldata.size - 4 >= 32
    return selectedTotem[arg1]
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
           supply[arg1].field_0,
           supply[arg1].field_256,
           supply[arg1].field_512,
           supply[arg1].field_768,
           supply[arg1].field_1024,
           supply[arg1].field_1280,
           supply[arg1].field_1536,
           supply[arg1].field_1792,
           supply[arg1].field_2048
}

function isTotemInUse(uint8 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(sub_c15df323[address(arg2)])
}

function _fallback() payable {
    revert
}

function massUpdatePools() payable {
  stop
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
        revert with 0, 'rOnly cartographer'
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_0129f43b(?) payable {
    require calldata.size - 4 >= 96
    if stor4 != msg.sender:
        revert with 0, 'rOnly cartographer'
    summitAddress = arg1
    summitLpAddress = arg2
}

function sub_d81964c3(?) payable {
    require calldata.size - 4 >= 96
    if stor4 != msg.sender:
        revert with 0, 'rOnly cartographer'
    revert with 0, 'Set doesnt exist for expedition'
}

function token(uint16 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if not stor10[arg1 << 240]:
        revert with 0, 'nPool doesnt exist'
    if arg2:
        return summitLpAddress
    return summitAddress
}

function sub_a44a89ad(?) payable {
    require calldata.size - 4 >= 32
    if not stor10[arg1 << 240]:
        revert with 0, 'nPool doesnt exist'
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
    if not stor10[arg1 << 240]:
        revert with 0, 'nPool doesnt exist'
    if not supply[arg1 << 240].field_16:
        revert with 0, 'Pool not launched yet'
    if not supply[arg1 << 240].field_24:
        revert with 0, 'Pool already disabled'
    supply[arg1 << 240].field_24 = 0
}

function sub_428d64c3(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor10[arg1 << 240]:
        revert with 0, 'nPool doesnt exist'
    if not supply[arg1 << 240].field_16:
        revert with 0, 'Pool not launched yet'
    if supply[arg1 << 240].field_24:
        revert with 0, 'Expedition already enabled'
    supply[arg1 << 240].field_24 = 1
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

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
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
        revert with 0, 'rOnly cartographer'
    if not arg1:
        revert with 0, 'Contract is zero'
    stor5 = arg1
    if not uint8(stor0.field_168):
        uint8(stor0.field_168) = 0
}

function sub_8d50d31f(?) payable {
    require calldata.size - 4 >= 32
    if not stor10[arg1 << 240]:
        revert with 0, 'nPool doesnt exist'
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

function sub_736c3672(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 < 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x65496e63656e74697665206d756c7469706c696572206d757374206265206265747765656e20317820616e642032,
                    mem[210 len 18]
    if arg1 > 200:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x65496e63656e74697665206d756c7469706c696572206d757374206265206265747765656e20317820616e642032,
                    mem[210 len 18]
    if not sub_1df1d044:
        sub_81e81f4e = arg1
        sub_1df1d044 = block.timestamp + (72 * 24 * 3600)
        emit 0x418e58eb: (block.timestamp + (72 * 24 * 3600)), msg.sender, arg1
    else:
        if arg1 != sub_81e81f4e:
            sub_81e81f4e = arg1
            sub_1df1d044 = block.timestamp + (72 * 24 * 3600)
            emit 0x418e58eb: (block.timestamp + (72 * 24 * 3600)), msg.sender, arg1
        else:
            if block.timestamp < sub_1df1d044:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x50726f706f73616c2065786973747320627574206e6f7420796574206d6174757200,
                            mem[198 len 30]
            sub_d1acb08d = sub_81e81f4e
            emit 0x31b85bdd: msg.sender, sub_81e81f4e
}

function sub_317b3e3e(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor10[arg1 << 240]:
        revert with 0, 'nPool doesnt exist'
    if supply[arg1 << 240].field_16:
        revert with 0, 'Expedition already running'
    require ext_code.size(supply[arg1 << 240].field_32)
    staticcall supply[arg1 << 240].field_32.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if supply[arg1 << 240].field_1024 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] - supply[arg1 << 240].field_1024 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x4d75737420686176652066756e647320746f20636f7665722065787065646974696f00,
                    mem[199 len 29]
    supply[arg1 << 240].field_16 = 0
    supply[arg1 << 240].field_24 = 1
    supply[arg1 << 240].field_512 = arg3
    supply[arg1 << 240].field_768 = arg2
    if arg3 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require arg3
    supply[arg1 << 240].field_256 = arg2 / arg3
    require ext_code.size(stor5)
    staticcall stor5.0xc1ccf476 with:
            gas gas_remaining wei
           args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    supply[arg1 << 240].field_1280 = ext_call.return_data[0]
    emit ExpeditionRestarted(supply[arg1 << 240].field_0, supply[arg1 << 240].field_768, supply[arg1 << 240].field_512, arg1);
}

function sub_286ee927(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor10[arg1 << 240]:
        revert with 0, 'nPool doesnt exist'
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
        require ext_code.size(supply[arg1 << 240].field_32)
        staticcall supply[arg1 << 240].field_32.0x70a08231 with:
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
                        0x4d75737420686176652066756e647320746f20636f7665722065787065646974696f00,
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
        require ext_code.size(supply[arg1 << 240].field_32)
        staticcall supply[arg1 << 240].field_32.0x70a08231 with:
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
                        0x4d75737420686176652066756e647320746f20636f7665722065787065646974696f00,
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

function sub_c633e6c7(?) payable {
    require calldata.size - 4 >= 160
    if stor4 != msg.sender:
        revert with 0, 'rOnly cartographer'
    if stor11[address(arg3)]:
        revert with 0, 'Duplicated'
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x4d75737420686176652066756e647320746f20636f7665722065787065646974696f00,
                    mem[199 len 29]
    stor11[address(arg3)] = 1
    stor10[arg1 << 240] = 1
    stor9.length++
    stor9[stor9.length.field_4].field_0 = 256^(2 * stor9.length % 16) * arg1 or stor9[stor9.length.field_4].field_0 and !(65535 * 256^(2 * stor9.length % 16))
    require ext_code.size(stor5)
    staticcall stor5.0x2ae834e0 with:
            gas gas_remaining wei
           args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg5 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require arg5
    mem[612] = 4
    require ext_code.size(stor5)
    staticcall stor5.0xc1ccf476 with:
            gas gas_remaining wei
           args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    supply[arg1 << 240].field_32 = arg3
    supply[arg1 << 240].field_192 = 0
    supply[arg1 << 240].field_192 = Mask(64, 168, arg2) >> 168
    supply[arg1 << 240].field_256 = arg4 / arg5
    supply[arg1 << 240].field_512 = arg5
    supply[arg1 << 240].field_768 = arg4
    supply[arg1 << 240].field_1024 = 0
    supply[arg1 << 240].field_1280 = ext_call.return_data[0]
    supply[arg1 << 240].field_1536 = 0
    supply[arg1 << 240].field_1792 = 0
    supply[arg1 << 240].field_2048 = 0
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
        idx = 640
        while (32 * uint8(ext_call.return_data[0])) + 640 > idx:
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
        idx = (32 * uint8(ext_call.return_data[0])) + 672
        while (64 * uint8(ext_call.return_data[0])) + 672 > idx:
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
        idx = (64 * uint8(ext_call.return_data[0])) + 704
        while (64 * uint8(ext_call.return_data[0])) + (32 * uint8(ext_call.return_data[0])) + 704 > idx:
            supply[arg1 << 240][s + 11].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * uint8(ext_call.return_data[0])) + 31) >> 5
        while supply[arg1 << 240].field_2816 > idx:
            supply[arg1 << 240][idx + 11].field_0 = 0
            idx = idx + 1
            continue 
    supply[arg1 << 240].field_3072 = uint8(ext_call.return_data[0])
    supply[arg1 << 240].field_3080 = 0
    if not uint8(ext_call.return_data[0]):
        idx = 0
        while supply[arg1 << 240].field_3072 > idx:
            supply[arg1 << 240][idx + 12].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (64 * uint8(ext_call.return_data[0])) + (32 * uint8(ext_call.return_data[0])) + 736
        while (uint8(ext_call.return_data[0]) << 7) + 736 > idx:
            supply[arg1 << 240][s + 12].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * uint8(ext_call.return_data[0])) + 31) >> 5
        while supply[arg1 << 240].field_3072 > idx:
            supply[arg1 << 240][idx + 12].field_0 = 0
            idx = idx + 1
            continue 
}

function rewards(uint16 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if stor4 != msg.sender:
        revert with 0, 'rOnly cartographer'
    if not stor10[arg1 << 240]:
        revert with 0, 'nPool doesnt exist'
    if not arg2:
        revert with 0, 'User address is zero'
    if not stor10[stor12[arg1 << 240].field_0]:
        revert with 0, 'nPool doesnt exist'
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
    require selectedTotem[address(arg2)] < supply[arg1 << 240].field_2816
    if userInfo[arg1 << 240][address(arg2)].field_768 > stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg2)]].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    if not userInfo[arg1 << 240][address(arg2)].field_256:
        require selectedTotem[address(arg2)] < supply[arg1 << 240].field_3072
        if userInfo[arg1 << 240][address(arg2)].field_1024 > stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg2)]].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not userInfo[arg1 << 240][address(arg2)].field_512:
            return 0
        if (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_512) - (userInfo[arg1 << 240][address(arg2)].field_1024 * userInfo[arg1 << 240][address(arg2)].field_512) / userInfo[arg1 << 240][address(arg2)].field_512 != stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg2)]].field_0 - userInfo[arg1 << 240][address(arg2)].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_512) - (userInfo[arg1 << 240][address(arg2)].field_1024 * userInfo[arg1 << 240][address(arg2)].field_512) / 10^12 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_512) - (userInfo[arg1 << 240][address(arg2)].field_1024 * userInfo[arg1 << 240][address(arg2)].field_512) / 10^12, 
               0,
               0,
               0
    if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_256) - (userInfo[arg1 << 240][address(arg2)].field_768 * userInfo[arg1 << 240][address(arg2)].field_256) / userInfo[arg1 << 240][address(arg2)].field_256 != stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg2)]].field_0 - userInfo[arg1 << 240][address(arg2)].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require selectedTotem[address(arg2)] < supply[arg1 << 240].field_3072
    if userInfo[arg1 << 240][address(arg2)].field_1024 > stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg2)]].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    if not userInfo[arg1 << 240][address(arg2)].field_512:
        if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_256) - (userInfo[arg1 << 240][address(arg2)].field_768 * userInfo[arg1 << 240][address(arg2)].field_256) / 10^12 < (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_256) - (userInfo[arg1 << 240][address(arg2)].field_768 * userInfo[arg1 << 240][address(arg2)].field_256) / 10^12:
            revert with 0, 'SafeMath: addition overflow'
        return (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_256) - (userInfo[arg1 << 240][address(arg2)].field_768 * userInfo[arg1 << 240][address(arg2)].field_256) / 10^12, 
               0,
               0,
               0
    if (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_512) - (userInfo[arg1 << 240][address(arg2)].field_1024 * userInfo[arg1 << 240][address(arg2)].field_512) / userInfo[arg1 << 240][address(arg2)].field_512 != stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg2)]].field_0 - userInfo[arg1 << 240][address(arg2)].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_512) - (userInfo[arg1 << 240][address(arg2)].field_1024 * userInfo[arg1 << 240][address(arg2)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_256) - (userInfo[arg1 << 240][address(arg2)].field_768 * userInfo[arg1 << 240][address(arg2)].field_256) / 10^12) < (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_256) - (userInfo[arg1 << 240][address(arg2)].field_768 * userInfo[arg1 << 240][address(arg2)].field_256) / 10^12:
        revert with 0, 'SafeMath: addition overflow'
    return ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_512) - (userInfo[arg1 << 240][address(arg2)].field_1024 * userInfo[arg1 << 240][address(arg2)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg2)]].field_0 * userInfo[arg1 << 240][address(arg2)].field_256) - (userInfo[arg1 << 240][address(arg2)].field_768 * userInfo[arg1 << 240][address(arg2)].field_256) / 10^12), 
           0,
           0,
           0
}

function sub_5169da0b(?) payable {
    require calldata.size - 4 >= 32
    if not stor10[arg1 << 240]:
        revert with 0, 'nPool doesnt exist'
    require 0 < supply[arg1 << 240].field_2304
    require 0 < supply[arg1 << 240].field_2560
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
    if not supply[arg1 << 240][10].field_0:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_0 < supply[arg1 << 240][9].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require 1 < supply[arg1 << 240].field_2304
        require 1 < supply[arg1 << 240].field_2560
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
        if not supply[arg1 << 240][10].field_256:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_256 < supply[arg1 << 240][9].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (0 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_0, 
                   (0 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_256
        if ext_call.return_data[0] * supply[arg1 << 240][10].field_256 / supply[arg1 << 240][10].field_256 != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0] * supply[arg1 << 240][10].field_256:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_256 < supply[arg1 << 240][9].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (0 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_0, 
                   (0 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_256
        if sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][10].field_256 / ext_call.return_data[0] * supply[arg1 << 240][10].field_256 != sub_d1acb08d:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][10].field_256 / 100 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_256 < supply[arg1 << 240][9].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (0 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_0, 
               (sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][10].field_256 / 100 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_256
    if ext_call.return_data[0] * supply[arg1 << 240][10].field_0 / supply[arg1 << 240][10].field_0 != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0] * supply[arg1 << 240][10].field_0:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_0 < supply[arg1 << 240][9].field_0:
            revert with 0, 'SafeMath: addition overflow'
        require 1 < supply[arg1 << 240].field_2304
        require 1 < supply[arg1 << 240].field_2560
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
        if not supply[arg1 << 240][10].field_256:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_256 < supply[arg1 << 240][9].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (0 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_0, 
                   (0 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_256
        if ext_call.return_data[0] * supply[arg1 << 240][10].field_256 / supply[arg1 << 240][10].field_256 != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0] * supply[arg1 << 240][10].field_256:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_256 < supply[arg1 << 240][9].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (0 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_0, 
                   (0 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_256
        if sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][10].field_256 / ext_call.return_data[0] * supply[arg1 << 240][10].field_256 != sub_d1acb08d:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][10].field_256 / 100 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_256 < supply[arg1 << 240][9].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (0 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_0, 
               (sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][10].field_256 / 100 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_256
    if sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][10].field_0 / ext_call.return_data[0] * supply[arg1 << 240][10].field_0 != sub_d1acb08d:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if (sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][10].field_0 / 100 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_0 < supply[arg1 << 240][9].field_0:
        revert with 0, 'SafeMath: addition overflow'
    require 1 < supply[arg1 << 240].field_2304
    require 1 < supply[arg1 << 240].field_2560
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
    if not supply[arg1 << 240][10].field_256:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_256 < supply[arg1 << 240][9].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][10].field_0 / 100 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_0, 
               (0 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_256
    if ext_call.return_data[0] * supply[arg1 << 240][10].field_256 / supply[arg1 << 240][10].field_256 != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0] * supply[arg1 << 240][10].field_256:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_256 < supply[arg1 << 240][9].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][10].field_0 / 100 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_0, 
               (0 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_256
    if sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][10].field_256 / ext_call.return_data[0] * supply[arg1 << 240][10].field_256 != sub_d1acb08d:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if (sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][10].field_256 / 100 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_256 < supply[arg1 << 240][9].field_256:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][10].field_0 / 100 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_0, 
           (sub_d1acb08d * ext_call.return_data[0] * supply[arg1 << 240][10].field_256 / 100 / ext_call.return_data[0]) + supply[arg1 << 240][9].field_256
}

function sub_442f9583(?) payable {
    require calldata.size - 4 >= 160
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if stor4 != msg.sender:
        revert with 0, 'rOnly cartographer'
    if not stor10[arg1 << 240]:
        revert with 0, 'nPool doesnt exist'
    if not supply[arg1 << 240].field_16:
        revert with 0, 'Pool not launched yet'
    require ext_code.size(stor5)
    staticcall stor5.0x2ae834e0 with:
            gas gas_remaining wei
           args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 >= ext_call.return_data[31 len 1]:
        revert with 0, 'Invalid totem'
    if not arg5:
        revert with 0, 'User address is zero'
    require ext_code.size(stor5)
    staticcall stor5.0xf351b962 with:
            gas gas_remaining wei
           args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'sElev locked until rollover'
    if not stor10[stor12[arg1 << 240].field_0]:
        revert with 0, 'nPool doesnt exist'
    require ext_code.size(stor5)
    staticcall stor5.0xb27fc048 with:
            gas gas_remaining wei
           args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > supply[arg1 << 240].field_1280:
        if ext_call.return_data[0] != userInfo[arg1 << 240][address(arg5)].field_0:
            require selectedTotem[address(arg5)] < supply[arg1 << 240].field_2816
            if userInfo[arg1 << 240][address(arg5)].field_768 > stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1 << 240][address(arg5)].field_256:
                require selectedTotem[address(arg5)] < supply[arg1 << 240].field_3072
                if userInfo[arg1 << 240][address(arg5)].field_1024 > stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1 << 240][address(arg5)].field_512:
                    if (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / userInfo[arg1 << 240][address(arg5)].field_512 != stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 - userInfo[arg1 << 240][address(arg5)].field_1024:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12:
                        if not ext_code.size(supply[arg1 << 240].field_32):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) >> 32
                        call supply[arg1 << 240].field_32 with:
                             gas gas_remaining wei
                            args Mask(224, 32, (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            address(arg5) << 64,
                                            0,
                                            (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12
                            if not unknown_0xa9059cbb(?????), address(arg5) << 64:
                                revert with 0, 32, 42, 0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        if (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12 > supply[arg1 << 240].field_1024:
                            revert with 0, 'SafeMath: subtraction overflow'
                        supply[arg1 << 240].field_1024 -= (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12
            else:
                if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / userInfo[arg1 << 240][address(arg5)].field_256 != stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 - userInfo[arg1 << 240][address(arg5)].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require selectedTotem[address(arg5)] < supply[arg1 << 240].field_3072
                if userInfo[arg1 << 240][address(arg5)].field_1024 > stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1 << 240][address(arg5)].field_512:
                    if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12 < (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12:
                        revert with 0, 'SafeMath: addition overflow'
                    if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12:
                        if not ext_code.size(supply[arg1 << 240].field_32):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12) >> 32
                        call supply[arg1 << 240].field_32 with:
                             gas gas_remaining wei
                            args Mask(224, 32, (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            address(arg5) << 64,
                                            0,
                                            (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12
                            if not unknown_0xa9059cbb(?????), address(arg5) << 64:
                                revert with 0, 32, 42, 0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12 > supply[arg1 << 240].field_1024:
                            revert with 0, 'SafeMath: subtraction overflow'
                        supply[arg1 << 240].field_1024 -= (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12
                else:
                    if (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / userInfo[arg1 << 240][address(arg5)].field_512 != stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 - userInfo[arg1 << 240][address(arg5)].field_1024:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12) < (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12:
                        revert with 0, 'SafeMath: addition overflow'
                    if ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12):
                        if not ext_code.size(supply[arg1 << 240].field_32):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12)) >> 32
                        mem[324 len 0] = 0
                        call supply[arg1 << 240].field_32 with:
                             gas gas_remaining wei
                            args Mask(224, 32, ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12)) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            address(arg5) << 64,
                                            0,
                                            ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12)
                            if not unknown_0xa9059cbb(?????), address(arg5) << 64:
                                revert with 0, 32, 42, 0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        if ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12) > supply[arg1 << 240].field_1024:
                            revert with 0, 'SafeMath: subtraction overflow'
                        supply[arg1 << 240].field_1024 = supply[arg1 << 240].field_1024 - ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) - ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12)
    if arg3 + arg2 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 + arg2 > 0:
        if userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256 < userInfo[arg1 << 240][address(arg5)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256:
            sub_c15df323[address(arg5)]++
        if arg2:
            require arg4 < supply[arg1 << 240].field_2304
            stor[('array', 9, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg2
            supply[arg1 << 240].field_1792 += arg2
        if arg3:
            require arg4 < supply[arg1 << 240].field_2560
            stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg3
            supply[arg1 << 240].field_2048 += arg3
    require ext_code.size(stor5)
    staticcall stor5.0xb27fc048 with:
            gas gas_remaining wei
           args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    userInfo[arg1 << 240][address(arg5)].field_256 += arg2
    userInfo[arg1 << 240][address(arg5)].field_512 += arg3
    require arg4 < supply[arg1 << 240].field_2816
    userInfo[arg1 << 240][address(arg5)].field_768 = stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0
    require arg4 < supply[arg1 << 240].field_3072
    userInfo[arg1 << 240][address(arg5)].field_1024 = stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0
    userInfo[arg1 << 240][address(arg5)].field_0 = ext_call.return_data[0]
    selectedTotem[address(arg5)] = arg4
    stor1 = 1
    return arg2, arg3
}

function sub_ef39a716(?) payable {
    require calldata.size - 4 >= 128
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if stor4 != msg.sender:
        revert with 0, 'rOnly cartographer'
    if not stor10[arg1 << 240]:
        revert with 0, 'nPool doesnt exist'
    if not arg4:
        revert with 0, 'User address is zero'
    require ext_code.size(stor5)
    staticcall stor5.0xf351b962 with:
            gas gas_remaining wei
           args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'sElev locked until rollover'
    if arg3 + arg2 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 + arg2 <= 0:
        revert with 0, 'Bad withdrawal'
    if userInfo[arg1 << 240][address(arg4)].field_256 < arg2:
        revert with 0, 'Bad withdrawal'
    if userInfo[arg1 << 240][address(arg4)].field_512 < arg3:
        revert with 0, 'Bad withdrawal'
    if not stor10[stor12[arg1 << 240].field_0]:
        revert with 0, 'nPool doesnt exist'
    require ext_code.size(stor5)
    staticcall stor5.0xb27fc048 with:
            gas gas_remaining wei
           args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > supply[arg1 << 240].field_1280:
        if ext_call.return_data[0] != userInfo[arg1 << 240][address(arg4)].field_0:
            require selectedTotem[address(arg4)] < supply[arg1 << 240].field_2816
            if userInfo[arg1 << 240][address(arg4)].field_768 > stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1 << 240][address(arg4)].field_256:
                if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / userInfo[arg1 << 240][address(arg4)].field_256 != stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 - userInfo[arg1 << 240][address(arg4)].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require selectedTotem[address(arg4)] < supply[arg1 << 240].field_3072
                if userInfo[arg1 << 240][address(arg4)].field_1024 > stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1 << 240][address(arg4)].field_512:
                    if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12 < (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12:
                        revert with 0, 'SafeMath: addition overflow'
                    if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12:
                        if not ext_code.size(supply[arg1 << 240].field_32):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg4) << 64, 0, Mask(224, 32, (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12) >> 32
                        call supply[arg1 << 240].field_32 with:
                             gas gas_remaining wei
                            args Mask(224, 32, (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            address(arg4) << 64,
                                            0,
                                            (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12
                            if not unknown_0xa9059cbb(?????), address(arg4) << 64:
                                revert with 0, 32, 42, 0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12 > supply[arg1 << 240].field_1024:
                            revert with 0, 'SafeMath: subtraction overflow'
                        supply[arg1 << 240].field_1024 -= (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12
                else:
                    if (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / userInfo[arg1 << 240][address(arg4)].field_512 != stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 - userInfo[arg1 << 240][address(arg4)].field_1024:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12) < (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12:
                        revert with 0, 'SafeMath: addition overflow'
                    if ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12):
                        if not ext_code.size(supply[arg1 << 240].field_32):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg4) << 64, 0, Mask(224, 32, ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12)) >> 32
                        call supply[arg1 << 240].field_32 with:
                             gas gas_remaining wei
                            args Mask(224, 32, ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12)) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            address(arg4) << 64,
                                            0,
                                            ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12)
                            if not unknown_0xa9059cbb(?????), address(arg4) << 64:
                                revert with 0, 32, 42, 0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        if ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12) > supply[arg1 << 240].field_1024:
                            revert with 0, 'SafeMath: subtraction overflow'
                        supply[arg1 << 240].field_1024 = supply[arg1 << 240].field_1024 - ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12) - ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12)
            else:
                require selectedTotem[address(arg4)] < supply[arg1 << 240].field_3072
                if userInfo[arg1 << 240][address(arg4)].field_1024 > stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1 << 240][address(arg4)].field_512:
                    if (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / userInfo[arg1 << 240][address(arg4)].field_512 != stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 - userInfo[arg1 << 240][address(arg4)].field_1024:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12:
                        if not ext_code.size(supply[arg1 << 240].field_32):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg4) << 64, 0, Mask(224, 32, (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12) >> 32
                        mem[324 len 0] = 0
                        call supply[arg1 << 240].field_32 with:
                             gas gas_remaining wei
                            args Mask(224, 32, (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            address(arg4) << 64,
                                            0,
                                            (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12
                            if not unknown_0xa9059cbb(?????), address(arg4) << 64:
                                revert with 0, 32, 42, 0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        if (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12 > supply[arg1 << 240].field_1024:
                            revert with 0, 'SafeMath: subtraction overflow'
                        supply[arg1 << 240].field_1024 -= (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12
    require ext_code.size(stor5)
    staticcall stor5.0xb27fc048 with:
            gas gas_remaining wei
           args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    userInfo[arg1 << 240][address(arg4)].field_256 -= arg2
    userInfo[arg1 << 240][address(arg4)].field_512 -= arg3
    require selectedTotem[address(arg4)] < supply[arg1 << 240].field_2816
    userInfo[arg1 << 240][address(arg4)].field_768 = stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0
    require selectedTotem[address(arg4)] < supply[arg1 << 240].field_3072
    userInfo[arg1 << 240][address(arg4)].field_1024 = stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0
    userInfo[arg1 << 240][address(arg4)].field_0 = ext_call.return_data[0]
    if arg2:
        require selectedTotem[address(arg4)] < supply[arg1 << 240].field_2304
        if arg2 > stor[('array', 9, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        require selectedTotem[address(arg4)] < supply[arg1 << 240].field_2304
        stor[('array', 9, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 -= arg2
        if arg2 > supply[arg1 << 240].field_1792:
            revert with 0, 'SafeMath: subtraction overflow'
        supply[arg1 << 240].field_1792 -= arg2
    if arg3:
        require selectedTotem[address(arg4)] < supply[arg1 << 240].field_2560
        if arg3 > stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        require selectedTotem[address(arg4)] < supply[arg1 << 240].field_2560
        stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 -= arg3
        if arg3 > supply[arg1 << 240].field_2048:
            revert with 0, 'SafeMath: subtraction overflow'
        supply[arg1 << 240].field_2048 -= arg3
    if userInfo[arg1 << 240][address(arg4)].field_512 + userInfo[arg1 << 240][address(arg4)].field_256 < userInfo[arg1 << 240][address(arg4)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1 << 240][address(arg4)].field_512 + userInfo[arg1 << 240][address(arg4)].field_256:
        if 1 > sub_c15df323[address(arg4)]:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_c15df323[address(arg4)]--
    stor1 = 1
    return arg2, arg3
}

function sub_775dd80f(?) payable {
    require calldata.size - 4 >= 128
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if stor4 != msg.sender:
        revert with 0, 'rOnly cartographer'
    if not stor10[arg1 << 240]:
        revert with 0, 'nPool doesnt exist'
    if not arg4:
        revert with 0, 'User address is zero'
    require ext_code.size(stor5)
    staticcall stor5.0xf351b962 with:
            gas gas_remaining wei
           args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'sElev locked until rollover'
    if arg3 + arg2 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 + arg2 <= 0:
        revert with 0, 'Bad withdrawal'
    if userInfo[arg1 << 240][address(arg4)].field_256 < arg2:
        revert with 0, 'Bad withdrawal'
    if userInfo[arg1 << 240][address(arg4)].field_512 < arg3:
        revert with 0, 'Bad withdrawal'
    if not stor10[stor12[arg1 << 240].field_0]:
        revert with 0, 'nPool doesnt exist'
    require ext_code.size(stor5)
    staticcall stor5.0xb27fc048 with:
            gas gas_remaining wei
           args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= supply[arg1 << 240].field_1280:
        require ext_code.size(stor5)
        staticcall stor5.0xb27fc048 with:
                gas gas_remaining wei
               args 4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        userInfo[arg1 << 240][address(arg4)].field_256 -= arg2
        userInfo[arg1 << 240][address(arg4)].field_512 -= arg3
        require selectedTotem[address(arg4)] < supply[arg1 << 240].field_2816
        userInfo[arg1 << 240][address(arg4)].field_768 = stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0
        require selectedTotem[address(arg4)] < supply[arg1 << 240].field_3072
        userInfo[arg1 << 240][address(arg4)].field_1024 = stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0
        userInfo[arg1 << 240][address(arg4)].field_0 = ext_call.return_data[0]
        require ext_code.size(stor4)
        call stor4.0xb613ef84 with:
             gas gas_remaining wei
            args 0, 0, summitAddress, 0, arg2, arg3
    else:
        if ext_call.return_data[0] == userInfo[arg1 << 240][address(arg4)].field_0:
            require ext_code.size(stor5)
            staticcall stor5.0xb27fc048 with:
                    gas gas_remaining wei
                   args 4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            userInfo[arg1 << 240][address(arg4)].field_256 -= arg2
            userInfo[arg1 << 240][address(arg4)].field_512 -= arg3
            require selectedTotem[address(arg4)] < supply[arg1 << 240].field_2816
            userInfo[arg1 << 240][address(arg4)].field_768 = stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0
            require selectedTotem[address(arg4)] < supply[arg1 << 240].field_3072
            userInfo[arg1 << 240][address(arg4)].field_1024 = stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0
            userInfo[arg1 << 240][address(arg4)].field_0 = ext_call.return_data[0]
            require ext_code.size(stor4)
            call stor4.0xb613ef84 with:
                 gas gas_remaining wei
                args 0, 0, summitAddress, 0, arg2, arg3
        else:
            require selectedTotem[address(arg4)] < supply[arg1 << 240].field_2816
            if userInfo[arg1 << 240][address(arg4)].field_768 > stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1 << 240][address(arg4)].field_256:
                require selectedTotem[address(arg4)] < supply[arg1 << 240].field_3072
                if userInfo[arg1 << 240][address(arg4)].field_1024 > stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1 << 240][address(arg4)].field_512:
                    require ext_code.size(stor5)
                    staticcall stor5.0xb27fc048 with:
                            gas gas_remaining wei
                           args 4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    userInfo[arg1 << 240][address(arg4)].field_256 -= arg2
                    userInfo[arg1 << 240][address(arg4)].field_512 -= arg3
                    require selectedTotem[address(arg4)] < supply[arg1 << 240].field_2816
                    userInfo[arg1 << 240][address(arg4)].field_768 = stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0
                    require selectedTotem[address(arg4)] < supply[arg1 << 240].field_3072
                    userInfo[arg1 << 240][address(arg4)].field_1024 = stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0
                    userInfo[arg1 << 240][address(arg4)].field_0 = ext_call.return_data[0]
                    require ext_code.size(stor4)
                    call stor4.0xb613ef84 with:
                         gas gas_remaining wei
                        args 0, 0, summitAddress, 0, arg2, arg3
                else:
                    if (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / userInfo[arg1 << 240][address(arg4)].field_512 != stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 - userInfo[arg1 << 240][address(arg4)].field_1024:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12:
                        require ext_code.size(stor5)
                        staticcall stor5.0xb27fc048 with:
                                gas gas_remaining wei
                               args 4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        userInfo[arg1 << 240][address(arg4)].field_256 -= arg2
                        userInfo[arg1 << 240][address(arg4)].field_512 -= arg3
                        require selectedTotem[address(arg4)] < supply[arg1 << 240].field_2816
                        userInfo[arg1 << 240][address(arg4)].field_768 = stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0
                        require selectedTotem[address(arg4)] < supply[arg1 << 240].field_3072
                        userInfo[arg1 << 240][address(arg4)].field_1024 = stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0
                        userInfo[arg1 << 240][address(arg4)].field_0 = ext_call.return_data[0]
                        require ext_code.size(stor4)
                        call stor4.0xb613ef84 with:
                             gas gas_remaining wei
                            args 0, 0, summitAddress, 0, arg2, arg3
                    else:
                        if not ext_code.size(supply[arg1 << 240].field_32):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg4) << 64, 0, Mask(224, 32, (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12) >> 32
                        call supply[arg1 << 240].field_32 with:
                             gas gas_remaining wei
                            args Mask(224, 32, (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            address(arg4) << 64,
                                            0,
                                            (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12
                            if not unknown_0xa9059cbb(?????), address(arg4) << 64:
                                revert with 0, 32, 42, 0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        if (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12 > supply[arg1 << 240].field_1024:
                            revert with 0, 'SafeMath: subtraction overflow'
                        supply[arg1 << 240].field_1024 -= (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12
                        require ext_code.size(stor5)
                        staticcall stor5.0xb27fc048 with:
                                gas gas_remaining wei
                               args 4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        userInfo[arg1 << 240][address(arg4)].field_256 -= arg2
                        userInfo[arg1 << 240][address(arg4)].field_512 -= arg3
                        require selectedTotem[address(arg4)] < supply[arg1 << 240].field_2816
                        userInfo[arg1 << 240][address(arg4)].field_768 = stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0
                        require selectedTotem[address(arg4)] < supply[arg1 << 240].field_3072
                        userInfo[arg1 << 240][address(arg4)].field_1024 = stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0
                        userInfo[arg1 << 240][address(arg4)].field_0 = ext_call.return_data[0]
                        require ext_code.size(stor4)
                        call stor4.0xb613ef84 with:
                             gas gas_remaining wei
                            args address(arg4), summitAddress, 0, arg2, arg3
            else:
                if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / userInfo[arg1 << 240][address(arg4)].field_256 != stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 - userInfo[arg1 << 240][address(arg4)].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require selectedTotem[address(arg4)] < supply[arg1 << 240].field_3072
                if userInfo[arg1 << 240][address(arg4)].field_1024 > stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1 << 240][address(arg4)].field_512:
                    if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12 < (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12:
                        require ext_code.size(stor5)
                        staticcall stor5.0xb27fc048 with:
                                gas gas_remaining wei
                               args 4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        userInfo[arg1 << 240][address(arg4)].field_256 -= arg2
                        userInfo[arg1 << 240][address(arg4)].field_512 -= arg3
                        require selectedTotem[address(arg4)] < supply[arg1 << 240].field_2816
                        userInfo[arg1 << 240][address(arg4)].field_768 = stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0
                        require selectedTotem[address(arg4)] < supply[arg1 << 240].field_3072
                        userInfo[arg1 << 240][address(arg4)].field_1024 = stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0
                        userInfo[arg1 << 240][address(arg4)].field_0 = ext_call.return_data[0]
                        require ext_code.size(stor4)
                        call stor4.0xb613ef84 with:
                             gas gas_remaining wei
                            args 0, 0, summitAddress, 0, arg2, arg3
                    else:
                        if not ext_code.size(supply[arg1 << 240].field_32):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg4) << 64, 0, Mask(224, 32, (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12) >> 32
                        call supply[arg1 << 240].field_32 with:
                             gas gas_remaining wei
                            args Mask(224, 32, (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            address(arg4) << 64,
                                            0,
                                            (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12
                            if not unknown_0xa9059cbb(?????), address(arg4) << 64:
                                revert with 0, 32, 42, 0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12 > supply[arg1 << 240].field_1024:
                            revert with 0, 'SafeMath: subtraction overflow'
                        supply[arg1 << 240].field_1024 -= (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12
                        require ext_code.size(stor5)
                        staticcall stor5.0xb27fc048 with:
                                gas gas_remaining wei
                               args 4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        userInfo[arg1 << 240][address(arg4)].field_256 -= arg2
                        userInfo[arg1 << 240][address(arg4)].field_512 -= arg3
                        require selectedTotem[address(arg4)] < supply[arg1 << 240].field_2816
                        userInfo[arg1 << 240][address(arg4)].field_768 = stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0
                        require selectedTotem[address(arg4)] < supply[arg1 << 240].field_3072
                        userInfo[arg1 << 240][address(arg4)].field_1024 = stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0
                        userInfo[arg1 << 240][address(arg4)].field_0 = ext_call.return_data[0]
                        require ext_code.size(stor4)
                        call stor4.0xb613ef84 with:
                             gas gas_remaining wei
                            args address(arg4), summitAddress, 0, arg2, arg3
                else:
                    if (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / userInfo[arg1 << 240][address(arg4)].field_512 != stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 - userInfo[arg1 << 240][address(arg4)].field_1024:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12) < (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12):
                        require ext_code.size(stor5)
                        staticcall stor5.0xb27fc048 with:
                                gas gas_remaining wei
                               args 4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        userInfo[arg1 << 240][address(arg4)].field_256 -= arg2
                        userInfo[arg1 << 240][address(arg4)].field_512 -= arg3
                        require selectedTotem[address(arg4)] < supply[arg1 << 240].field_2816
                        userInfo[arg1 << 240][address(arg4)].field_768 = stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0
                        require selectedTotem[address(arg4)] < supply[arg1 << 240].field_3072
                        userInfo[arg1 << 240][address(arg4)].field_1024 = stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0
                        userInfo[arg1 << 240][address(arg4)].field_0 = ext_call.return_data[0]
                        require ext_code.size(stor4)
                        call stor4.0xb613ef84 with:
                             gas gas_remaining wei
                            args 0, 0, summitAddress, 0, arg2, arg3
                    else:
                        if not ext_code.size(supply[arg1 << 240].field_32):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg4) << 64, 0, Mask(224, 32, ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12)) >> 32
                        call supply[arg1 << 240].field_32 with:
                             gas gas_remaining wei
                            args Mask(224, 32, ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12)) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            address(arg4) << 64,
                                            0,
                                            ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12)
                            if not unknown_0xa9059cbb(?????), address(arg4) << 64:
                                revert with 0, 32, 42, 0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        if ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12) > supply[arg1 << 240].field_1024:
                            revert with 0, 'SafeMath: subtraction overflow'
                        supply[arg1 << 240].field_1024 = supply[arg1 << 240].field_1024 - ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_512) - (userInfo[arg1 << 240][address(arg4)].field_1024 * userInfo[arg1 << 240][address(arg4)].field_512) / 10^12) - ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 * userInfo[arg1 << 240][address(arg4)].field_256) - (userInfo[arg1 << 240][address(arg4)].field_768 * userInfo[arg1 << 240][address(arg4)].field_256) / 10^12)
                        require ext_code.size(stor5)
                        staticcall stor5.0xb27fc048 with:
                                gas gas_remaining wei
                               args 4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        userInfo[arg1 << 240][address(arg4)].field_256 -= arg2
                        userInfo[arg1 << 240][address(arg4)].field_512 -= arg3
                        require selectedTotem[address(arg4)] < supply[arg1 << 240].field_2816
                        userInfo[arg1 << 240][address(arg4)].field_768 = stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0
                        require selectedTotem[address(arg4)] < supply[arg1 << 240].field_3072
                        userInfo[arg1 << 240][address(arg4)].field_1024 = stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0
                        userInfo[arg1 << 240][address(arg4)].field_0 = ext_call.return_data[0]
                        require ext_code.size(stor4)
                        call stor4.0xb613ef84 with:
                             gas gas_remaining wei
                            args address(arg4), summitAddress, 0, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2:
        require selectedTotem[address(arg4)] < supply[arg1 << 240].field_2304
        if arg2 > stor[('array', 9, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        require selectedTotem[address(arg4)] < supply[arg1 << 240].field_2304
        stor[('array', 9, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 -= arg2
        if arg2 > supply[arg1 << 240].field_1792:
            revert with 0, 'SafeMath: subtraction overflow'
        supply[arg1 << 240].field_1792 -= arg2
    if arg3:
        require selectedTotem[address(arg4)] < supply[arg1 << 240].field_2560
        if arg3 > stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        require selectedTotem[address(arg4)] < supply[arg1 << 240].field_2560
        stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg4)]].field_0 -= arg3
        if arg3 > supply[arg1 << 240].field_2048:
            revert with 0, 'SafeMath: subtraction overflow'
        supply[arg1 << 240].field_2048 -= arg3
    if userInfo[arg1 << 240][address(arg4)].field_512 + userInfo[arg1 << 240][address(arg4)].field_256 < userInfo[arg1 << 240][address(arg4)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1 << 240][address(arg4)].field_512 + userInfo[arg1 << 240][address(arg4)].field_256:
        if 1 > sub_c15df323[address(arg4)]:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_c15df323[address(arg4)]--
    stor1 = 1
    return arg2, arg3
}

function switchTotem(uint8 arg1, uint8 arg2, address arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if stor4 != msg.sender:
        revert with 0, 'rOnly cartographer'
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
    idx = 0
    while uint16(idx) < stor9.length:
        mem[0] = stor('array', ('mask_shl', 12, 4, -4, ('var', 0)), ('name', 'stor9', 9))[uint8(idx)]
        mem[32] = 12
        if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_16:
            mem[0] = arg3
            mem[32] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 13)
            if userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512 + userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256 < userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512 + userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256 > 0:
                mem[32] = 10
                if not stor10[stor12[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_0]:
                    revert with 0, 'nPool doesnt exist'
                mem[mem[64] + 4] = 4
                require ext_code.size(stor5)
                staticcall stor5.0xb27fc048 with:
                        gas gas_remaining wei
                       args 4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1280:
                    mem[mem[64] + 4] = 4
                    require ext_code.size(stor5)
                    staticcall stor5.0xb27fc048 with:
                            gas gas_remaining wei
                           args 4
                    mem[mem[64]] = ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] == userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_0:
                        mem[mem[64] + 4] = 4
                        require ext_code.size(stor5)
                        staticcall stor5.0xb27fc048 with:
                                gas gas_remaining wei
                               args 4
                        mem[mem[64]] = ext_call.return_data[0]
                    else:
                        require selectedTotem[address(arg3)] < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                        if userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_768 > stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256:
                            mem[32] = 14
                            require selectedTotem[address(arg3)] < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                            mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                            if userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_1024 > stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512:
                                mem[mem[64] + 4] = 4
                                require ext_code.size(stor5)
                                staticcall stor5.0xb27fc048 with:
                                        gas gas_remaining wei
                                       args 4
                                mem[mem[64]] = ext_call.return_data[0]
                            else:
                                if (stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_1024 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) / userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512 != stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 - userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_1024:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if (stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_1024 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) / 10^12 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_1024 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) / 10^12:
                                    mem[mem[64] + 4] = 4
                                    require ext_code.size(stor5)
                                    staticcall stor5.0xb27fc048 with:
                                            gas gas_remaining wei
                                           args 4
                                    mem[mem[64]] = ext_call.return_data[0]
                                else:
                                    _562 = mem[64]
                                    mem[mem[64] + 36] = arg3
                                    mem[mem[64] + 68] = (stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_1024 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) / 10^12
                                    _563 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_563 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_563 + 36 len 28]
                                    mem[64] = _562 + 164
                                    mem[_562 + 100] = 32
                                    mem[_562 + 132] = 'SafeBEP20: low-level call failed'
                                    if not ext_code.size(supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_32):
                                        revert with 0, 'Address: call to non-contract'
                                    _585 = mem[_563]
                                    t = _563 + 32
                                    u = _562 + 164
                                    s = mem[_563]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_562 + floor32(mem[_563]) + 164] = mem[_563 + -(mem[_563] % 32) + floor32(mem[_563]) + 64 len mem[_563] % 32] or Mask(8 * -(mem[_563] % 32) + 32, -(8 * -(mem[_563] % 32) + 32) + 256, mem[_562 + floor32(mem[_563]) + 164])
                                    call supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_32.mem[_562 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_562 + 168 len _585 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_562 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_562 + 168] = 32
                                            mem[_562 + 200] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _562 + 232] = mem[idx + _562 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with memory
                                              from mem[64]
                                               len _562 + -mem[64] + 264
                                        if mem[96]:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                            mem[_562 + 274 len 22]
                                        if (stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_1024 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) / 10^12 > supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 -= (stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_1024 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) / 10^12
                                        mem[_562 + 168] = 4
                                        require ext_code.size(stor5)
                                        staticcall stor5.0xb27fc048 with:
                                                gas gas_remaining wei
                                               args 4
                                        mem[_562 + 164] = ext_call.return_data[0]
                                    else:
                                        mem[64] = _562 + ceil32(return_data.size) + 165
                                        mem[_562 + 164] = return_data.size
                                        mem[_562 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_562 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_562 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _562 + ceil32(return_data.size) + 233] = mem[idx + _562 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_562 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[_562 + 196]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                            mem[_562 + ceil32(return_data.size) + 275 len 22]
                                        if (stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_1024 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) / 10^12 > supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 -= (stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_1024 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) / 10^12
                                        mem[_562 + ceil32(return_data.size) + 169] = 4
                                        require ext_code.size(stor5)
                                        staticcall stor5.0xb27fc048 with:
                                                gas gas_remaining wei
                                               args 4
                                        mem[_562 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                        else:
                            if (stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_768 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) / userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256 != stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 - userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_768:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            mem[32] = 14
                            require selectedTotem[address(arg3)] < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                            mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                            if userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_1024 > stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512:
                                if (stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_768 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) / 10^12 < (stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_768 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) / 10^12:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_768 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) / 10^12:
                                    mem[mem[64] + 4] = 4
                                    require ext_code.size(stor5)
                                    staticcall stor5.0xb27fc048 with:
                                            gas gas_remaining wei
                                           args 4
                                    mem[mem[64]] = ext_call.return_data[0]
                                else:
                                    _558 = mem[64]
                                    mem[mem[64] + 36] = arg3
                                    mem[mem[64] + 68] = (stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_768 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) / 10^12
                                    _559 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_559 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_559 + 36 len 28]
                                    mem[64] = _558 + 164
                                    mem[_558 + 100] = 32
                                    mem[_558 + 132] = 'SafeBEP20: low-level call failed'
                                    if not ext_code.size(supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_32):
                                        revert with 0, 'Address: call to non-contract'
                                    _580 = mem[_559]
                                    t = _559 + 32
                                    u = _558 + 164
                                    s = mem[_559]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_558 + floor32(mem[_559]) + 164] = mem[_559 + -(mem[_559] % 32) + floor32(mem[_559]) + 64 len mem[_559] % 32] or Mask(8 * -(mem[_559] % 32) + 32, -(8 * -(mem[_559] % 32) + 32) + 256, mem[_558 + floor32(mem[_559]) + 164])
                                    call supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_32.mem[_558 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_558 + 168 len _580 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_558 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_558 + 168] = 32
                                            mem[_558 + 200] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _558 + 232] = mem[idx + _558 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with memory
                                              from mem[64]
                                               len _558 + -mem[64] + 264
                                        if mem[96]:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                            mem[_558 + 274 len 22]
                                        if (stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_768 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) / 10^12 > supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 -= (stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_768 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) / 10^12
                                        mem[_558 + 168] = 4
                                        require ext_code.size(stor5)
                                        staticcall stor5.0xb27fc048 with:
                                                gas gas_remaining wei
                                               args 4
                                        mem[_558 + 164] = ext_call.return_data[0]
                                    else:
                                        mem[64] = _558 + ceil32(return_data.size) + 165
                                        mem[_558 + 164] = return_data.size
                                        mem[_558 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_558 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_558 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _558 + ceil32(return_data.size) + 233] = mem[idx + _558 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_558 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[_558 + 196]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                            mem[_558 + ceil32(return_data.size) + 275 len 22]
                                        if (stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_768 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) / 10^12 > supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 -= (stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_768 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) / 10^12
                                        mem[_558 + ceil32(return_data.size) + 169] = 4
                                        require ext_code.size(stor5)
                                        staticcall stor5.0xb27fc048 with:
                                                gas gas_remaining wei
                                               args 4
                                        mem[_558 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            else:
                                if (stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_1024 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) / userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512 != stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 - userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_1024:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if ((stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_1024 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_768 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) / 10^12) < (stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_768 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) / 10^12:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not ((stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_1024 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_768 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) / 10^12):
                                    mem[mem[64] + 4] = 4
                                    require ext_code.size(stor5)
                                    staticcall stor5.0xb27fc048 with:
                                            gas gas_remaining wei
                                           args 4
                                    mem[mem[64]] = ext_call.return_data[0]
                                else:
                                    _566 = mem[64]
                                    mem[mem[64] + 36] = arg3
                                    mem[mem[64] + 68] = ((stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_1024 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_768 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) / 10^12)
                                    _567 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_567 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_567 + 36 len 28]
                                    mem[64] = _566 + 164
                                    mem[_566 + 100] = 32
                                    mem[_566 + 132] = 'SafeBEP20: low-level call failed'
                                    if not ext_code.size(supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_32):
                                        revert with 0, 'Address: call to non-contract'
                                    _591 = mem[_567]
                                    t = _567 + 32
                                    u = _566 + 164
                                    s = mem[_567]
                                    while s >= 32:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s - 32
                                        continue 
                                    mem[_566 + floor32(mem[_567]) + 164] = mem[_567 + -(mem[_567] % 32) + floor32(mem[_567]) + 64 len mem[_567] % 32] or Mask(8 * -(mem[_567] % 32) + 32, -(8 * -(mem[_567] % 32) + 32) + 256, mem[_566 + floor32(mem[_567]) + 164])
                                    call supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_32.mem[_566 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_566 + 168 len _591 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_566 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_566 + 168] = 32
                                            mem[_566 + 200] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _566 + 232] = mem[idx + _566 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with memory
                                              from mem[64]
                                               len _566 + -mem[64] + 264
                                        if mem[96]:
                                            require mem[96] >= 32
                                            if not mem[128]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                            mem[_566 + 274 len 22]
                                        if ((stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_1024 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_768 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) / 10^12) > supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 = supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 - ((stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_1024 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) / 10^12) - ((stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_768 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) / 10^12)
                                        mem[_566 + 168] = 4
                                        require ext_code.size(stor5)
                                        staticcall stor5.0xb27fc048 with:
                                                gas gas_remaining wei
                                               args 4
                                        mem[_566 + 164] = ext_call.return_data[0]
                                    else:
                                        mem[64] = _566 + ceil32(return_data.size) + 165
                                        mem[_566 + 164] = return_data.size
                                        mem[_566 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_566 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_566 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _566 + ceil32(return_data.size) + 233] = mem[idx + _566 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_566 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[_566 + 196]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                            mem[_566 + ceil32(return_data.size) + 275 len 22]
                                        if ((stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_1024 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_768 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) / 10^12) > supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 = supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 - ((stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_1024 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512) / 10^12) - ((stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) - (userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_768 * userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256) / 10^12)
                                        mem[_566 + ceil32(return_data.size) + 169] = 4
                                        require ext_code.size(stor5)
                                        staticcall stor5.0xb27fc048 with:
                                                gas gas_remaining wei
                                               args 4
                                        mem[_566 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require arg2 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_768 = stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + arg2].field_0
                require arg2 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_1024 = stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + arg2].field_0
                userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_0 = ext_call.return_data[0]
                if userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256:
                    mem[32] = 14
                    require selectedTotem[address(arg3)] < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2304
                    stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 -= userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256
                    require arg2 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2304
                    mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 9
                    stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + arg2].field_0 += userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_256
                if userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512:
                    mem[32] = 14
                    require selectedTotem[address(arg3)] < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + stor14[address(arg3)]].field_0 -= userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512
                    require arg2 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
                    mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 10
                    stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + arg2].field_0 += userInfo[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240][address(arg3)].field_512
        idx = idx + 1
        continue 
    selectedTotem[address(arg3)] = arg2
    stor1 = 1
}

function sub_42c53d2f(?) payable {
    require calldata.size - 4 >= 160
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if stor4 != msg.sender:
        revert with 0, 'rOnly cartographer'
    if not stor10[arg1 << 240]:
        revert with 0, 'nPool doesnt exist'
    if not supply[arg1 << 240].field_16:
        revert with 0, 'Pool not launched yet'
    require ext_code.size(stor5)
    staticcall stor5.0x2ae834e0 with:
            gas gas_remaining wei
           args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 >= ext_call.return_data[31 len 1]:
        revert with 0, 'Invalid totem'
    if not arg5:
        revert with 0, 'User address is zero'
    require ext_code.size(stor5)
    staticcall stor5.0xf351b962 with:
            gas gas_remaining wei
           args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'sElev locked until rollover'
    if not sub_c15df323[address(arg5)]:
        if not stor10[stor12[arg1 << 240].field_0]:
            revert with 0, 'nPool doesnt exist'
        require ext_code.size(stor5)
        staticcall stor5.0xb27fc048 with:
                gas gas_remaining wei
               args 4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= supply[arg1 << 240].field_1280:
            if arg3 + arg2 < arg2:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 + arg2 > 0:
                if userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256 < userInfo[arg1 << 240][address(arg5)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256:
                    sub_c15df323[address(arg5)]++
                require ext_code.size(stor4)
                call stor4.0x8968ba23 with:
                     gas gas_remaining wei
                    args 0, 0, summitAddress, 0, arg2, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2:
                    require arg4 < supply[arg1 << 240].field_2304
                    stor[('array', 9, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg2
                    supply[arg1 << 240].field_1792 += arg2
                if arg3:
                    require arg4 < supply[arg1 << 240].field_2560
                    stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg3
                    supply[arg1 << 240].field_2048 += arg3
        else:
            if ext_call.return_data[0] == userInfo[arg1 << 240][address(arg5)].field_0:
                if arg3 + arg2 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 + arg2 > 0:
                    if userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256 < userInfo[arg1 << 240][address(arg5)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256:
                        sub_c15df323[address(arg5)]++
                    require ext_code.size(stor4)
                    call stor4.0x8968ba23 with:
                         gas gas_remaining wei
                        args 0, 0, summitAddress, 0, arg2, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2:
                        require arg4 < supply[arg1 << 240].field_2304
                        stor[('array', 9, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg2
                        supply[arg1 << 240].field_1792 += arg2
                    if arg3:
                        require arg4 < supply[arg1 << 240].field_2560
                        stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg3
                        supply[arg1 << 240].field_2048 += arg3
            else:
                require selectedTotem[address(arg5)] < supply[arg1 << 240].field_2816
                if userInfo[arg1 << 240][address(arg5)].field_768 > stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not userInfo[arg1 << 240][address(arg5)].field_256:
                    require selectedTotem[address(arg5)] < supply[arg1 << 240].field_3072
                    if userInfo[arg1 << 240][address(arg5)].field_1024 > stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userInfo[arg1 << 240][address(arg5)].field_512:
                        if arg3 + arg2 < arg2:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg3 + arg2 > 0:
                            if userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256 < userInfo[arg1 << 240][address(arg5)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            if not userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256:
                                sub_c15df323[address(arg5)]++
                            require ext_code.size(stor4)
                            call stor4.0x8968ba23 with:
                                 gas gas_remaining wei
                                args 0, 0, summitAddress, 0, arg2, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2:
                                require arg4 < supply[arg1 << 240].field_2304
                                stor[('array', 9, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg2
                                supply[arg1 << 240].field_1792 += arg2
                            if arg3:
                                require arg4 < supply[arg1 << 240].field_2560
                                stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg3
                                supply[arg1 << 240].field_2048 += arg3
                    else:
                        if (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / userInfo[arg1 << 240][address(arg5)].field_512 != stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 - userInfo[arg1 << 240][address(arg5)].field_1024:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12:
                            if arg3 + arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg3 + arg2 > 0:
                                if userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256 < userInfo[arg1 << 240][address(arg5)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256:
                                    sub_c15df323[address(arg5)]++
                                require ext_code.size(stor4)
                                call stor4.0x8968ba23 with:
                                     gas gas_remaining wei
                                    args 0, 0, summitAddress, 0, arg2, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg2:
                                    require arg4 < supply[arg1 << 240].field_2304
                                    stor[('array', 9, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg2
                                    supply[arg1 << 240].field_1792 += arg2
                                if arg3:
                                    require arg4 < supply[arg1 << 240].field_2560
                                    stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg3
                                    supply[arg1 << 240].field_2048 += arg3
                        else:
                            if not ext_code.size(supply[arg1 << 240].field_32):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) >> 32
                            call supply[arg1 << 240].field_32 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                address(arg5) << 64,
                                                0,
                                                (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12
                                if not unknown_0xa9059cbb(?????), address(arg5) << 64:
                                    revert with 0, 32, 42, 0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            if (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12 > supply[arg1 << 240].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            supply[arg1 << 240].field_1024 -= (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12
                            if arg3 + arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg3 + arg2 > 0:
                                if userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256 < userInfo[arg1 << 240][address(arg5)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256:
                                    sub_c15df323[address(arg5)]++
                                require ext_code.size(stor4)
                                call stor4.0x8968ba23 with:
                                     gas gas_remaining wei
                                    args address(arg5), summitAddress, 0, arg2, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg2:
                                    require arg4 < supply[arg1 << 240].field_2304
                                    stor[('array', 9, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg2
                                    supply[arg1 << 240].field_1792 += arg2
                                if arg3:
                                    require arg4 < supply[arg1 << 240].field_2560
                                    stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg3
                                    supply[arg1 << 240].field_2048 += arg3
                else:
                    if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / userInfo[arg1 << 240][address(arg5)].field_256 != stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 - userInfo[arg1 << 240][address(arg5)].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require selectedTotem[address(arg5)] < supply[arg1 << 240].field_3072
                    if userInfo[arg1 << 240][address(arg5)].field_1024 > stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userInfo[arg1 << 240][address(arg5)].field_512:
                        if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12 < (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12:
                            if arg3 + arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg3 + arg2 > 0:
                                if userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256 < userInfo[arg1 << 240][address(arg5)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256:
                                    sub_c15df323[address(arg5)]++
                                require ext_code.size(stor4)
                                call stor4.0x8968ba23 with:
                                     gas gas_remaining wei
                                    args 0, 0, summitAddress, 0, arg2, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg2:
                                    require arg4 < supply[arg1 << 240].field_2304
                                    stor[('array', 9, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg2
                                    supply[arg1 << 240].field_1792 += arg2
                                if arg3:
                                    require arg4 < supply[arg1 << 240].field_2560
                                    stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg3
                                    supply[arg1 << 240].field_2048 += arg3
                        else:
                            if not ext_code.size(supply[arg1 << 240].field_32):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12) >> 32
                            mem[324 len 0] = 0
                            call supply[arg1 << 240].field_32 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                address(arg5) << 64,
                                                0,
                                                (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12
                                if not unknown_0xa9059cbb(?????), address(arg5) << 64:
                                    revert with 0, 32, 42, 0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12 > supply[arg1 << 240].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            supply[arg1 << 240].field_1024 -= (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12
                            if arg3 + arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg3 + arg2 > 0:
                                if userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256 < userInfo[arg1 << 240][address(arg5)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256:
                                    sub_c15df323[address(arg5)]++
                                require ext_code.size(stor4)
                                call stor4.0x8968ba23 with:
                                     gas gas_remaining wei
                                    args address(arg5), summitAddress, 0, arg2, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg2:
                                    require arg4 < supply[arg1 << 240].field_2304
                                    stor[('array', 9, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg2
                                    supply[arg1 << 240].field_1792 += arg2
                                if arg3:
                                    require arg4 < supply[arg1 << 240].field_2560
                                    stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg3
                                    supply[arg1 << 240].field_2048 += arg3
                    else:
                        if (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / userInfo[arg1 << 240][address(arg5)].field_512 != stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 - userInfo[arg1 << 240][address(arg5)].field_1024:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12) < (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12):
                            if arg3 + arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg3 + arg2 > 0:
                                if userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256 < userInfo[arg1 << 240][address(arg5)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256:
                                    sub_c15df323[address(arg5)]++
                                require ext_code.size(stor4)
                                call stor4.0x8968ba23 with:
                                     gas gas_remaining wei
                                    args 0, 0, summitAddress, 0, arg2, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg2:
                                    require arg4 < supply[arg1 << 240].field_2304
                                    stor[('array', 9, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg2
                                    supply[arg1 << 240].field_1792 += arg2
                                if arg3:
                                    require arg4 < supply[arg1 << 240].field_2560
                                    stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg3
                                    supply[arg1 << 240].field_2048 += arg3
                        else:
                            if not ext_code.size(supply[arg1 << 240].field_32):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12)) >> 32
                            mem[324 len 0] = 0
                            call supply[arg1 << 240].field_32 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12)) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                address(arg5) << 64,
                                                0,
                                                ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12)
                                if not unknown_0xa9059cbb(?????), address(arg5) << 64:
                                    revert with 0, 32, 42, 0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            if ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12) > supply[arg1 << 240].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            supply[arg1 << 240].field_1024 = supply[arg1 << 240].field_1024 - ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) - ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12)
                            if arg3 + arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg3 + arg2 > 0:
                                if userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256 < userInfo[arg1 << 240][address(arg5)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256:
                                    sub_c15df323[address(arg5)]++
                                require ext_code.size(stor4)
                                call stor4.0x8968ba23 with:
                                     gas gas_remaining wei
                                    args address(arg5), summitAddress, 0, arg2, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg2:
                                    require arg4 < supply[arg1 << 240].field_2304
                                    stor[('array', 9, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg2
                                    supply[arg1 << 240].field_1792 += arg2
                                if arg3:
                                    require arg4 < supply[arg1 << 240].field_2560
                                    stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg3
                                    supply[arg1 << 240].field_2048 += arg3
    else:
        if selectedTotem[address(arg5)] != arg4:
            revert with 0, 'Cant switch totem during deposit'
        if not stor10[stor12[arg1 << 240].field_0]:
            revert with 0, 'nPool doesnt exist'
        require ext_code.size(stor5)
        staticcall stor5.0xb27fc048 with:
                gas gas_remaining wei
               args 4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= supply[arg1 << 240].field_1280:
            if arg3 + arg2 < arg2:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 + arg2 > 0:
                if userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256 < userInfo[arg1 << 240][address(arg5)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256:
                    sub_c15df323[address(arg5)]++
                require ext_code.size(stor4)
                call stor4.0x8968ba23 with:
                     gas gas_remaining wei
                    args 0, 0, summitAddress, 0, arg2, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2:
                    require arg4 < supply[arg1 << 240].field_2304
                    stor[('array', 9, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg2
                    supply[arg1 << 240].field_1792 += arg2
                if arg3:
                    require arg4 < supply[arg1 << 240].field_2560
                    stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg3
                    supply[arg1 << 240].field_2048 += arg3
        else:
            if ext_call.return_data[0] == userInfo[arg1 << 240][address(arg5)].field_0:
                if arg3 + arg2 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 + arg2 > 0:
                    if userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256 < userInfo[arg1 << 240][address(arg5)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256:
                        sub_c15df323[address(arg5)]++
                    require ext_code.size(stor4)
                    call stor4.0x8968ba23 with:
                         gas gas_remaining wei
                        args 0, 0, summitAddress, 0, arg2, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2:
                        require arg4 < supply[arg1 << 240].field_2304
                        stor[('array', 9, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg2
                        supply[arg1 << 240].field_1792 += arg2
                    if arg3:
                        require arg4 < supply[arg1 << 240].field_2560
                        stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg3
                        supply[arg1 << 240].field_2048 += arg3
            else:
                require selectedTotem[address(arg5)] < supply[arg1 << 240].field_2816
                if userInfo[arg1 << 240][address(arg5)].field_768 > stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1 << 240][address(arg5)].field_256:
                    if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / userInfo[arg1 << 240][address(arg5)].field_256 != stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 - userInfo[arg1 << 240][address(arg5)].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require selectedTotem[address(arg5)] < supply[arg1 << 240].field_3072
                    if userInfo[arg1 << 240][address(arg5)].field_1024 > stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userInfo[arg1 << 240][address(arg5)].field_512:
                        if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12 < (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12:
                            if arg3 + arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg3 + arg2 > 0:
                                if userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256 < userInfo[arg1 << 240][address(arg5)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256:
                                    sub_c15df323[address(arg5)]++
                                require ext_code.size(stor4)
                                call stor4.0x8968ba23 with:
                                     gas gas_remaining wei
                                    args 0, 0, summitAddress, 0, arg2, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg2:
                                    require arg4 < supply[arg1 << 240].field_2304
                                    stor[('array', 9, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg2
                                    supply[arg1 << 240].field_1792 += arg2
                                if arg3:
                                    require arg4 < supply[arg1 << 240].field_2560
                                    stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg3
                                    supply[arg1 << 240].field_2048 += arg3
                        else:
                            if not ext_code.size(supply[arg1 << 240].field_32):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12) >> 32
                            call supply[arg1 << 240].field_32 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                address(arg5) << 64,
                                                0,
                                                (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12
                                if not unknown_0xa9059cbb(?????), address(arg5) << 64:
                                    revert with 0, 32, 42, 0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            if (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12 > supply[arg1 << 240].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            supply[arg1 << 240].field_1024 -= (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12
                            if arg3 + arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg3 + arg2 > 0:
                                if userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256 < userInfo[arg1 << 240][address(arg5)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256:
                                    sub_c15df323[address(arg5)]++
                                require ext_code.size(stor4)
                                call stor4.0x8968ba23 with:
                                     gas gas_remaining wei
                                    args address(arg5), summitAddress, 0, arg2, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg2:
                                    require arg4 < supply[arg1 << 240].field_2304
                                    stor[('array', 9, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg2
                                    supply[arg1 << 240].field_1792 += arg2
                                if arg3:
                                    require arg4 < supply[arg1 << 240].field_2560
                                    stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg3
                                    supply[arg1 << 240].field_2048 += arg3
                    else:
                        if (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / userInfo[arg1 << 240][address(arg5)].field_512 != stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 - userInfo[arg1 << 240][address(arg5)].field_1024:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12) < (stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12):
                            if arg3 + arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg3 + arg2 > 0:
                                if userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256 < userInfo[arg1 << 240][address(arg5)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256:
                                    sub_c15df323[address(arg5)]++
                                require ext_code.size(stor4)
                                call stor4.0x8968ba23 with:
                                     gas gas_remaining wei
                                    args 0, 0, summitAddress, 0, arg2, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg2:
                                    require arg4 < supply[arg1 << 240].field_2304
                                    stor[('array', 9, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg2
                                    supply[arg1 << 240].field_1792 += arg2
                                if arg3:
                                    require arg4 < supply[arg1 << 240].field_2560
                                    stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg3
                                    supply[arg1 << 240].field_2048 += arg3
                        else:
                            if not ext_code.size(supply[arg1 << 240].field_32):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12)) >> 32
                            call supply[arg1 << 240].field_32 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12)) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                address(arg5) << 64,
                                                0,
                                                ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12)
                                if not unknown_0xa9059cbb(?????), address(arg5) << 64:
                                    revert with 0, 32, 42, 0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            if ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) + ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12) > supply[arg1 << 240].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            supply[arg1 << 240].field_1024 = supply[arg1 << 240].field_1024 - ((stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) - ((stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_256) - (userInfo[arg1 << 240][address(arg5)].field_768 * userInfo[arg1 << 240][address(arg5)].field_256) / 10^12)
                            if arg3 + arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg3 + arg2 > 0:
                                if userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256 < userInfo[arg1 << 240][address(arg5)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256:
                                    sub_c15df323[address(arg5)]++
                                require ext_code.size(stor4)
                                call stor4.0x8968ba23 with:
                                     gas gas_remaining wei
                                    args address(arg5), summitAddress, 0, arg2, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg2:
                                    require arg4 < supply[arg1 << 240].field_2304
                                    stor[('array', 9, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg2
                                    supply[arg1 << 240].field_1792 += arg2
                                if arg3:
                                    require arg4 < supply[arg1 << 240].field_2560
                                    stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg3
                                    supply[arg1 << 240].field_2048 += arg3
                else:
                    require selectedTotem[address(arg5)] < supply[arg1 << 240].field_3072
                    if userInfo[arg1 << 240][address(arg5)].field_1024 > stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not userInfo[arg1 << 240][address(arg5)].field_512:
                        if arg3 + arg2 < arg2:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg3 + arg2 > 0:
                            if userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256 < userInfo[arg1 << 240][address(arg5)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            if not userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256:
                                sub_c15df323[address(arg5)]++
                            require ext_code.size(stor4)
                            call stor4.0x8968ba23 with:
                                 gas gas_remaining wei
                                args 0, 0, summitAddress, 0, arg2, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2:
                                require arg4 < supply[arg1 << 240].field_2304
                                stor[('array', 9, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg2
                                supply[arg1 << 240].field_1792 += arg2
                            if arg3:
                                require arg4 < supply[arg1 << 240].field_2560
                                stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg3
                                supply[arg1 << 240].field_2048 += arg3
                    else:
                        if (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / userInfo[arg1 << 240][address(arg5)].field_512 != stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 - userInfo[arg1 << 240][address(arg5)].field_1024:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12:
                            if arg3 + arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg3 + arg2 > 0:
                                if userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256 < userInfo[arg1 << 240][address(arg5)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256:
                                    sub_c15df323[address(arg5)]++
                                require ext_code.size(stor4)
                                call stor4.0x8968ba23 with:
                                     gas gas_remaining wei
                                    args 0, 0, summitAddress, 0, arg2, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg2:
                                    require arg4 < supply[arg1 << 240].field_2304
                                    stor[('array', 9, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg2
                                    supply[arg1 << 240].field_1792 += arg2
                                if arg3:
                                    require arg4 < supply[arg1 << 240].field_2560
                                    stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg3
                                    supply[arg1 << 240].field_2048 += arg3
                        else:
                            if not ext_code.size(supply[arg1 << 240].field_32):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, Mask(224, 32, (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) >> 32
                            mem[324 len 0] = 0
                            call supply[arg1 << 240].field_32 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                address(arg5) << 64,
                                                0,
                                                (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12
                                if not unknown_0xa9059cbb(?????), address(arg5) << 64:
                                    revert with 0, 32, 42, 0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            if (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12 > supply[arg1 << 240].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            supply[arg1 << 240].field_1024 -= (stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + stor14[address(arg5)]].field_0 * userInfo[arg1 << 240][address(arg5)].field_512) - (userInfo[arg1 << 240][address(arg5)].field_1024 * userInfo[arg1 << 240][address(arg5)].field_512) / 10^12
                            if arg3 + arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg3 + arg2 > 0:
                                if userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256 < userInfo[arg1 << 240][address(arg5)].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[arg1 << 240][address(arg5)].field_512 + userInfo[arg1 << 240][address(arg5)].field_256:
                                    sub_c15df323[address(arg5)]++
                                require ext_code.size(stor4)
                                call stor4.0x8968ba23 with:
                                     gas gas_remaining wei
                                    args address(arg5), summitAddress, 0, arg2, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg2:
                                    require arg4 < supply[arg1 << 240].field_2304
                                    stor[('array', 9, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg2
                                    supply[arg1 << 240].field_1792 += arg2
                                if arg3:
                                    require arg4 < supply[arg1 << 240].field_2560
                                    stor[('array', 10, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0 += arg3
                                    supply[arg1 << 240].field_2048 += arg3
    require ext_code.size(stor5)
    staticcall stor5.0xb27fc048 with:
            gas gas_remaining wei
           args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    userInfo[arg1 << 240][address(arg5)].field_256 += arg2
    userInfo[arg1 << 240][address(arg5)].field_512 += arg3
    require arg4 < supply[arg1 << 240].field_2816
    userInfo[arg1 << 240][address(arg5)].field_768 = stor[('array', 11, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0
    require arg4 < supply[arg1 << 240].field_3072
    userInfo[arg1 << 240][address(arg5)].field_1024 = stor[('array', 12, ('map', ('mask_shl', 16, 0, 240, ('param', 'arg1')), ('name', 'supply', 12))) + arg4].field_0
    userInfo[arg1 << 240][address(arg5)].field_0 = ext_call.return_data[0]
    selectedTotem[address(arg5)] = arg4
    stor1 = 1
    return arg2, arg3
}

function sub_3ed09099(?) payable {
    require calldata.size - 4 >= 96
    if stor4 != msg.sender:
        revert with 0, 'rOnly cartographer'
    require ext_code.size(stor5)
    staticcall stor5.0xb27fc048 with:
            gas gas_remaining wei
           args 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > stor9.length:
        idx = arg1
        while uint16(idx) < uint16(stor9.length):
            require uint16(idx) < stor9.length
            if not supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_16:
                mem[0] = stor('array', ('mask_shl', 12, 4, -4, ('var', 0)), ('name', 'stor9', 9))[uint8(idx)]
                mem[32] = 12
                if ext_call.return_data[0] == supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1280:
                    mem[0] = stor('array', ('mask_shl', 12, 4, -4, ('var', 0)), ('name', 'stor9', 9))[uint8(idx)]
                    mem[32] = 12
                    supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_16 = 1
                    supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1536 = ext_call.return_data[0]
            else:
                if not stor10[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240]:
                    revert with 0, 'nPool doesnt exist'
                if not supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_16:
                    revert with 0, 'Pool not launched yet'
                mem[0] = stor('array', ('mask_shl', 12, 4, -4, ('var', 0)), ('name', 'stor9', 9))[uint8(idx)]
                mem[32] = 12
                if ext_call.return_data[0] > supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1536:
                    mem[100] = 4
                    mem[132] = ext_call.return_data[0] - 1
                    require ext_code.size(stor5)
                    staticcall stor5.0xcb4b3022 with:
                            gas gas_remaining wei
                           args 4, ext_call.return_data[0] - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2304
                    require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
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
                    if not stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                            if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                            mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                        else:
                            if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                            else:
                                if not supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                    if (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
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
                                    if not 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                            if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                        require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                        require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                        mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                        stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                    else:
                                        if ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                            mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                            stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                            mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                            stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                else:
                                    if 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
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
                                    if not 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                            if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                        require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                        require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                        mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                        stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                    else:
                                        if ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                            mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                            stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                            mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                            stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                            else:
                                if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                    require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                    mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                else:
                                    if not supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                        if (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
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
                                        if not 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                            mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                            stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                        else:
                                            if ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                                mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                                stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                            else:
                                                if sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                                mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                                stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
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
                                        if not 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                            mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                            stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                        else:
                                            if ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                                mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                                stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                            else:
                                                if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                                mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                                stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                        else:
                            if sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                            else:
                                if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                    require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                    mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                else:
                                    if not supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                        if (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
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
                                        if not 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                            mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                            stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                        else:
                                            if ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                                mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                                stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                            else:
                                                if sub_d1acb08d * ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                                mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                                stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
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
                                        if not 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                            mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                            stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                        else:
                                            if ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                                mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                                stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                            else:
                                                if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                                mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                                stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                    if ext_call.return_data[0] == supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1280 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_512:
                        supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_16 = 0
                    supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1536 = ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        idx = arg1
        while uint16(idx) < arg2:
            require uint16(idx) < stor9.length
            if not supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_16:
                mem[0] = stor('array', ('mask_shl', 12, 4, -4, ('var', 0)), ('name', 'stor9', 9))[uint8(idx)]
                mem[32] = 12
                if ext_call.return_data[0] == supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1280:
                    mem[0] = stor('array', ('mask_shl', 12, 4, -4, ('var', 0)), ('name', 'stor9', 9))[uint8(idx)]
                    mem[32] = 12
                    supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_16 = 1
                    supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1536 = ext_call.return_data[0]
            else:
                if not stor10[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240]:
                    revert with 0, 'nPool doesnt exist'
                if not supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_16:
                    revert with 0, 'Pool not launched yet'
                mem[0] = stor('array', ('mask_shl', 12, 4, -4, ('var', 0)), ('name', 'stor9', 9))[uint8(idx)]
                mem[32] = 12
                if ext_call.return_data[0] > supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1536:
                    mem[100] = 4
                    mem[132] = ext_call.return_data[0] - 1
                    require ext_code.size(stor5)
                    staticcall stor5.0xcb4b3022 with:
                            gas gas_remaining wei
                           args 4, ext_call.return_data[0] - 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2304
                    require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2560
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
                    if not stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                            if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                            mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                        else:
                            if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                            else:
                                if not supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                    if (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
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
                                    if not 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                            if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                        require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                        require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                        mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                        stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                    else:
                                        if ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                            mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                            stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                            mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                            stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                else:
                                    if 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
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
                                    if not 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                            if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                        require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                        stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                        require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                        mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                        stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                    else:
                                        if ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                            mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                            stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                        else:
                                            if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                            mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                            stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                            else:
                                if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                    require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                    mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                else:
                                    if not supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                        if (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
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
                                        if not 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                            mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                            stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                        else:
                                            if ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                                mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                                stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                            else:
                                                if sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                                mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                                stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
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
                                        if not 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                            mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                            stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                        else:
                                            if ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                                mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                                stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                            else:
                                                if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                                mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                                stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (0 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                        else:
                            if sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 < stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_24:
                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                            else:
                                if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                    require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                    mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                else:
                                    if not supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256:
                                        if (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
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
                                        if not 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                            mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                            stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                        else:
                                            if ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                                mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                                stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                            else:
                                                if sub_d1acb08d * ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                                mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                                stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 0 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 != 10^12:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
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
                                        if not 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                            stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                            require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                            mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                            stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                        else:
                                            if ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                                mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                                stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 0 / ext_call.return_data[0]
                                            else:
                                                if sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 != sub_d1acb08d:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if not (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1024 += supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_2816
                                                stor[('array', 11, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0
                                                require uint8(ext_call.return_data[0]) < supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_3072
                                                mem[0] = sha3(stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240, 12) + 12
                                                stor[('array', 12, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 += sub_d1acb08d * ext_call.return_data[0] * 10^12 * supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_256 / (sub_d1acb08d * ext_call.return_data[0] * stor[('array', 10, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]) + stor[('array', 9, ('map', ('field', ('add', -240, ('mask_shl', 4, 0, 4, ('var', 0))), ('stor', ('array', ('div', ('mask', 16, 0, ('var', 0)), 16), ('name', 'stor9', 9)))), ('name', 'supply', 12))) + uint8(ext_call.return_data[0])].field_0 / 100 / ext_call.return_data[0]
                    if ext_call.return_data[0] == supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1280 + supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_512:
                        supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_16 = 0
                    supply[stor9[uint16(idx) / 16].field_(16 * idx % 16) - 240].field_1536 = ext_call.return_data[0]
            idx = idx + 1
            continue 
}



}
