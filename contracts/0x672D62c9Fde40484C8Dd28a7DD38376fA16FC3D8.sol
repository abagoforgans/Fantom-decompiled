contract main {




// =====================  Runtime code  =====================


#
#  - sub_f7b0b9f7(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner;
address assetManagerAddress;
uint256 stor152;
address aTokenAddress;
address sub_873ba41eAddress;
address incentivesControllerAddress;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_873ba41e(?) payable {
    return sub_873ba41eAddress
}

function owner() payable {
    return owner
}

function assetManager() payable {
    return assetManagerAddress
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function aToken() payable {
    return aTokenAddress
}

function incentivesController() payable {
    return incentivesControllerAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setAssetManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    assetManagerAddress = arg1
    emit AssetManagerTransferred(0, arg1);
    return 1
}

function depositToken() payable {
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.UNDERLYING_ASSET_ADDRESS() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function freeze() payable {
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            uint8(stor0.field_8) = 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function claimRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    if assetManagerAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        61,
                        0x646f6e6c794f776e65724f7241737365744d616e616765723a2063616c6c6572206973206e6f74206f776e6572206f72206173736574206d616e616765,
                        mem[225 len 3]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6f41546f6b656e5969656c64536f757263652f726563697069656e742d6e6f742d7a65726f2d616464726573,
                    mem[208 len 20]
    require ext_code.size(incentivesControllerAddress)
    call incentivesControllerAddress.exit() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Claimed(msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function balanceOfToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if not totalSupply:
        return balanceOf[address(arg1)]
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalSupply:
            return 0
        if balanceOf[address(arg1)] * 0 / totalSupply / 0 / totalSupply != balanceOf[address(arg1)]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return (balanceOf[address(arg1)] * 0 / totalSupply / 10^18)
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if not 10^18 * ext_call.return_data[0] / totalSupply:
        return 0
    if balanceOf[address(arg1)] * 10^18 * ext_call.return_data[0] / totalSupply / 10^18 * ext_call.return_data[0] / totalSupply != balanceOf[address(arg1)]:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (balanceOf[address(arg1)] * 10^18 * ext_call.return_data[0] / totalSupply / 10^18)
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function transferERC20(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if assetManagerAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        61,
                        0x646f6e6c794f776e65724f7241737365744d616e616765723a2063616c6c6572206973206e6f74206f776e6572206f72206173736574206d616e616765,
                        mem[225 len 3]
    if aTokenAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x7341546f6b656e5969656c64536f757263652f61546f6b656e2d7472616e736665722d6e6f742d616c6c6f7765,
                    mem[209 len 19]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit 0x29fcb7bb: arg3, msg.sender, arg2, arg1
}

function sponsor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor152 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor152 = 2
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.UNDERLYING_ASSET_ADDRESS() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x365ccbbf00000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_873ba41eAddress)
    staticcall sub_873ba41eAddress.getAddressesProvidersList() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _10 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _13 = mem[_10 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_10 + 96])] = mem[_10 + 128 len floor32(mem[_10 + 96])]
    require 0 < mem[ceil32(return_data.size) + 96]
    require ext_code.size(mem[ceil32(return_data.size) + 140 len 20])
    staticcall mem[ceil32(return_data.size) + 140 len 20].getLendingPool() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _13) + ceil32(return_data.size) + 164] = msg.sender
    mem[(32 * _13) + ceil32(return_data.size) + 196] = this.address
    mem[(32 * _13) + ceil32(return_data.size) + 228] = arg1
    mem[(32 * _13) + ceil32(return_data.size) + 128] = 100
    mem[(32 * _13) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(32 * _13) + ceil32(return_data.size) + 160 len 4] = unknown_0x23b872dd(?????)
    mem[(32 * _13) + ceil32(return_data.size) + 260] = 32
    mem[(32 * _13) + ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[(32 * _13) + ceil32(return_data.size) + 430 len 26]
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[(32 * _13) + ceil32(return_data.size) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[(32 * _13) + ceil32(return_data.size) + 448 len 4] = 0
    call address(ext_call.return_data[0]) with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[(32 * _13) + ceil32(return_data.size) + 420 len 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _13) + ceil32(return_data.size) + 434 len 14],
                            0,
                            mem[(32 * _13) + ceil32(return_data.size) + 452 len 4]
    else:
        mem[(32 * _13) + ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _13) + ceil32(return_data.size) + 356]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _13) + ceil32(return_data.size) + ceil32(return_data.size) + 435 len 22]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg1, this.address, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Sponsored(arg1, msg.sender);
    stor152 = 1
}

function approveMaxAmount() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 0x365ccbbf00000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_873ba41eAddress)
    staticcall sub_873ba41eAddress.getAddressesProvidersList() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _9 = mem[_6 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_6 + 96])] = mem[_6 + 128 len floor32(mem[_6 + 96])]
    require 0 < mem[ceil32(return_data.size) + 96]
    require ext_code.size(mem[ceil32(return_data.size) + 140 len 20])
    staticcall mem[ceil32(return_data.size) + 140 len 20].getLendingPool() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.UNDERLYING_ASSET_ADDRESS() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > -1:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if -1 < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    mem[(32 * _9) + ceil32(return_data.size) + 164] = address(ext_call.return_data[0])
    mem[(32 * _9) + ceil32(return_data.size) + 196] = -1
    mem[(32 * _9) + ceil32(return_data.size) + 128] = 68
    mem[(32 * _9) + ceil32(return_data.size) + 164 len 28] = address(ext_call.return_data[0]) << 64
    mem[(32 * _9) + ceil32(return_data.size) + 160 len 4] = approve(address arg1, uint256 arg2)
    mem[(32 * _9) + ceil32(return_data.size) + 228] = 32
    mem[(32 * _9) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[(32 * _9) + ceil32(return_data.size) + 398 len 26]
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[(32 * _9) + ceil32(return_data.size) + 292 len 64] = approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[(32 * _9) + ceil32(return_data.size) + 384 len 4] = 0
    mem[(32 * _9) + ceil32(return_data.size) + 356 len 0] = 0
    call address(ext_call.return_data[0]) with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _9) + ceil32(return_data.size) + 356 len 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _9) + ceil32(return_data.size) + 402 len 22]
    else:
        mem[(32 * _9) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _9) + ceil32(return_data.size) + 324]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
    return 1
}

function supplyTokenTo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if stor152 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor152 = 2
    if not totalSupply:
        if arg1 <= 0:
            revert with 0, 'ATokenYieldSource/shares-gt-zero'
        require ext_code.size(aTokenAddress)
        staticcall aTokenAddress.UNDERLYING_ASSET_ADDRESS() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 0x365ccbbf00000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_873ba41eAddress)
        staticcall sub_873ba41eAddress.getAddressesProvidersList() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _27 = mem[96]
        require mem[96] <= 4294967296
        require mem[96] + 32 <= return_data.size
        require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
        _41 = mem[_27 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_27 + 96])] = mem[_27 + 128 len floor32(mem[_27 + 96])]
        require 0 < mem[ceil32(return_data.size) + 96]
        require ext_code.size(mem[ceil32(return_data.size) + 140 len 20])
        staticcall mem[ceil32(return_data.size) + 140 len 20].getLendingPool() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _41) + ceil32(return_data.size) + 164] = msg.sender
        mem[(32 * _41) + ceil32(return_data.size) + 196] = this.address
        mem[(32 * _41) + ceil32(return_data.size) + 228] = arg1
        mem[(32 * _41) + ceil32(return_data.size) + 128] = 100
        mem[(32 * _41) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(32 * _41) + ceil32(return_data.size) + 160 len 4] = unknown_0x23b872dd(?????)
        mem[(32 * _41) + ceil32(return_data.size) + 260] = 32
        mem[(32 * _41) + ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _41) + ceil32(return_data.size) + 430 len 26]
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _41) + ceil32(return_data.size) + 324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[(32 * _41) + ceil32(return_data.size) + 448 len 4] = 0
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[(32 * _41) + ceil32(return_data.size) + 420 len 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _41) + ceil32(return_data.size) + 434 len 14],
                                0,
                                mem[(32 * _41) + ceil32(return_data.size) + 452 len 4]
        else:
            mem[(32 * _41) + ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _41) + ceil32(return_data.size) + 356]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _41) + ceil32(return_data.size) + ceil32(return_data.size) + 435 len 22]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), arg1, this.address, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg2:
            revert with 0, 'ERC20: mint to the zero address'
        if arg1 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg1
        if arg1 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] += arg1
        emit Transfer(arg1, 0, arg2);
        emit SuppliedTokenTo(arg1, arg1, msg.sender, arg2);
    else:
        require ext_code.size(aTokenAddress)
        staticcall aTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not totalSupply:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'ATokenYieldSource/shares-gt-zero'
            if arg1 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != arg1:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            mem[192] = 'SafeMath: division by zero'
            if arg1 * 0 / ext_call.return_data[0] / 10^18 <= 0:
                revert with 0, 'ATokenYieldSource/shares-gt-zero'
            require ext_code.size(aTokenAddress)
            staticcall aTokenAddress.UNDERLYING_ASSET_ADDRESS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[224] = 0x365ccbbf00000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_873ba41eAddress)
            staticcall sub_873ba41eAddress.getAddressesProvidersList() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _114 = mem[224]
            require mem[224] <= 4294967296
            require mem[224] + 32 <= return_data.size
            require mem[mem[224] + 224] <= 4294967296 and mem[224] + (32 * mem[mem[224] + 224]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 224] = mem[mem[224] + 224]
            _136 = mem[_114 + 224]
            mem[ceil32(return_data.size) + 256 len floor32(mem[_114 + 224])] = mem[_114 + 256 len floor32(mem[_114 + 224])]
            require 0 < mem[ceil32(return_data.size) + 224]
            require ext_code.size(mem[ceil32(return_data.size) + 268 len 20])
            staticcall mem[ceil32(return_data.size) + 268 len 20].getLendingPool() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * _136) + ceil32(return_data.size) + 558 len 26]
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _136) + ceil32(return_data.size) + 452 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[(32 * _136) + ceil32(return_data.size) + 576 len 4] = 0
            call address(ext_call.return_data[0]) with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[(32 * _136) + ceil32(return_data.size) + 548 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[(32 * _136) + ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _136) + ceil32(return_data.size) + 484]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _136) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 22]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg1, this.address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not arg2:
                revert with 0, 'ERC20: mint to the zero address'
            if (arg1 * 0 / ext_call.return_data[0] / 10^18) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1 * 0 / ext_call.return_data[0] / 10^18
            if (arg1 * 0 / ext_call.return_data[0] / 10^18) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg1 * 0 / ext_call.return_data[0] / 10^18
            emit Transfer((arg1 * 0 / ext_call.return_data[0] / 10^18), 0, arg2);
            emit SuppliedTokenTo(arg1 * 0 / ext_call.return_data[0] / 10^18, arg1, msg.sender, arg2);
        else:
            if 10^18 * totalSupply / totalSupply != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 10^18 * totalSupply / ext_call.return_data[0]:
                revert with 0, 'ATokenYieldSource/shares-gt-zero'
            if arg1 * 10^18 * totalSupply / ext_call.return_data[0] / 10^18 * totalSupply / ext_call.return_data[0] != arg1:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            mem[192] = 'SafeMath: division by zero'
            if arg1 * 10^18 * totalSupply / ext_call.return_data[0] / 10^18 <= 0:
                revert with 0, 'ATokenYieldSource/shares-gt-zero'
            require ext_code.size(aTokenAddress)
            staticcall aTokenAddress.UNDERLYING_ASSET_ADDRESS() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[224] = 0x365ccbbf00000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_873ba41eAddress)
            staticcall sub_873ba41eAddress.getAddressesProvidersList() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _122 = mem[224]
            require mem[224] <= 4294967296
            require mem[224] + 32 <= return_data.size
            require mem[mem[224] + 224] <= 4294967296 and mem[224] + (32 * mem[mem[224] + 224]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 224] = mem[mem[224] + 224]
            _145 = mem[_122 + 224]
            mem[ceil32(return_data.size) + 256 len floor32(mem[_122 + 224])] = mem[_122 + 256 len floor32(mem[_122 + 224])]
            require 0 < mem[ceil32(return_data.size) + 224]
            require ext_code.size(mem[ceil32(return_data.size) + 268 len 20])
            staticcall mem[ceil32(return_data.size) + 268 len 20].getLendingPool() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * _145) + ceil32(return_data.size) + 558 len 26]
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _145) + ceil32(return_data.size) + 452 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[(32 * _145) + ceil32(return_data.size) + 576 len 4] = 0
            call address(ext_call.return_data[0]) with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[(32 * _145) + ceil32(return_data.size) + 548 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[(32 * _145) + ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _145) + ceil32(return_data.size) + 484]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _145) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 22]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg1, this.address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not arg2:
                revert with 0, 'ERC20: mint to the zero address'
            if (arg1 * 10^18 * totalSupply / ext_call.return_data[0] / 10^18) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1 * 10^18 * totalSupply / ext_call.return_data[0] / 10^18
            if (arg1 * 10^18 * totalSupply / ext_call.return_data[0] / 10^18) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg1 * 10^18 * totalSupply / ext_call.return_data[0] / 10^18
            emit Transfer((arg1 * 10^18 * totalSupply / ext_call.return_data[0] / 10^18), 0, arg2);
            emit SuppliedTokenTo(arg1 * 10^18 * totalSupply / ext_call.return_data[0] / 10^18, arg1, msg.sender, arg2);
    stor152 = 1
}

function redeemToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor152 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor152 = 2
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.UNDERLYING_ASSET_ADDRESS() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not totalSupply:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x6445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        balanceOf[address(msg.sender)] -= arg1
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        mem[196] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[192] = 0x365ccbbf00000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_873ba41eAddress)
        staticcall sub_873ba41eAddress.getAddressesProvidersList() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _60 = mem[192]
        require mem[192] <= 4294967296
        require mem[192] + 32 <= return_data.size
        require mem[mem[192] + 192] <= 4294967296 and mem[192] + (32 * mem[mem[192] + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192] + 192]
        _70 = mem[_60 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_60 + 192])] = mem[_60 + 224 len floor32(mem[_60 + 192])]
        require 0 < mem[ceil32(return_data.size) + 192]
        require ext_code.size(mem[ceil32(return_data.size) + 236 len 20])
        staticcall mem[ceil32(return_data.size) + 236 len 20].getLendingPool() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), arg1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _70) + ceil32(return_data.size) + 494 len 26]
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _70) + ceil32(return_data.size) + 388 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
        mem[(32 * _70) + ceil32(return_data.size) + 452 len 0] = 0
        call address(ext_call.return_data[0]) with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[(32 * _70) + ceil32(return_data.size) + 452 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0x6445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        else:
            mem[(32 * _70) + ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _70) + ceil32(return_data.size) + 420]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _70) + ceil32(return_data.size) + ceil32(return_data.size) + 499 len 22]
        emit RedeemedToken(arg1, arg1, msg.sender);
    else:
        require ext_code.size(aTokenAddress)
        staticcall aTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if totalSupply:
            if 10^18 * totalSupply / totalSupply != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 10^18 * totalSupply / ext_call.return_data[0]:
                if not msg.sender:
                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                if 0 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x6445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                if 0 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                emit Transfer(0, msg.sender, 0);
                mem[324] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[320] = 0x365ccbbf00000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_873ba41eAddress)
                staticcall sub_873ba41eAddress.getAddressesProvidersList() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _192 = mem[320]
                require mem[320] <= 4294967296
                require mem[320] + 32 <= return_data.size
                require mem[mem[320] + 320] <= 4294967296 and mem[320] + (32 * mem[mem[320] + 320]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 320] = mem[mem[320] + 320]
                _208 = mem[_192 + 320]
                mem[ceil32(return_data.size) + 352 len floor32(mem[_192 + 320])] = mem[_192 + 352 len floor32(mem[_192 + 320])]
                require 0 < mem[ceil32(return_data.size) + 320]
                require ext_code.size(mem[ceil32(return_data.size) + 364 len 20])
                staticcall mem[ceil32(return_data.size) + 364 len 20].getLendingPool() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _208) + ceil32(return_data.size) + 622 len 26]
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _208) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                call address(ext_call.return_data[0]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 0, mem[(32 * _208) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[(32 * _208) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _208) + ceil32(return_data.size) + 548]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _208) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
                emit RedeemedToken(0, arg1, msg.sender);
            else:
                if arg1 * 10^18 * totalSupply / ext_call.return_data[0] / 10^18 * totalSupply / ext_call.return_data[0] != arg1:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not msg.sender:
                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                if arg1 * 10^18 * totalSupply / ext_call.return_data[0] / 10^18 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x6445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                balanceOf[address(msg.sender)] -= arg1 * 10^18 * totalSupply / ext_call.return_data[0] / 10^18
                if arg1 * 10^18 * totalSupply / ext_call.return_data[0] / 10^18 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1 * 10^18 * totalSupply / ext_call.return_data[0] / 10^18
                emit Transfer((arg1 * 10^18 * totalSupply / ext_call.return_data[0] / 10^18), msg.sender, 0);
                mem[324] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[320] = 0x365ccbbf00000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_873ba41eAddress)
                staticcall sub_873ba41eAddress.getAddressesProvidersList() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _196 = mem[320]
                require mem[320] <= 4294967296
                require mem[320] + 32 <= return_data.size
                require mem[mem[320] + 320] <= 4294967296 and mem[320] + (32 * mem[mem[320] + 320]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 320] = mem[mem[320] + 320]
                _210 = mem[_196 + 320]
                mem[ceil32(return_data.size) + 352 len floor32(mem[_196 + 320])] = mem[_196 + 352 len floor32(mem[_196 + 320])]
                require 0 < mem[ceil32(return_data.size) + 320]
                require ext_code.size(mem[ceil32(return_data.size) + 364 len 20])
                staticcall mem[ceil32(return_data.size) + 364 len 20].getLendingPool() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _210) + ceil32(return_data.size) + 622 len 26]
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _210) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                call address(ext_call.return_data[0]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 0, mem[(32 * _210) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[(32 * _210) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _210) + ceil32(return_data.size) + 548]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _210) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
                emit RedeemedToken(arg1 * 10^18 * totalSupply / ext_call.return_data[0] / 10^18, arg1, msg.sender);
        else:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / ext_call.return_data[0]:
                if not msg.sender:
                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                if 0 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x6445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                if 0 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                emit Transfer(0, msg.sender, 0);
                mem[324] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[320] = 0x365ccbbf00000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_873ba41eAddress)
                staticcall sub_873ba41eAddress.getAddressesProvidersList() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _185 = mem[320]
                require mem[320] <= 4294967296
                require mem[320] + 32 <= return_data.size
                require mem[mem[320] + 320] <= 4294967296 and mem[320] + (32 * mem[mem[320] + 320]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 320] = mem[mem[320] + 320]
                _205 = mem[_185 + 320]
                mem[ceil32(return_data.size) + 352 len floor32(mem[_185 + 320])] = mem[_185 + 352 len floor32(mem[_185 + 320])]
                require 0 < mem[ceil32(return_data.size) + 320]
                require ext_code.size(mem[ceil32(return_data.size) + 364 len 20])
                staticcall mem[ceil32(return_data.size) + 364 len 20].getLendingPool() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _205) + ceil32(return_data.size) + 622 len 26]
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _205) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                call address(ext_call.return_data[0]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 0, mem[(32 * _205) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[(32 * _205) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _205) + ceil32(return_data.size) + 548]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _205) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
                emit RedeemedToken(0, arg1, msg.sender);
            else:
                if arg1 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != arg1:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not msg.sender:
                    revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[325 len 31]
                if arg1 * 0 / ext_call.return_data[0] / 10^18 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x6445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
                balanceOf[address(msg.sender)] -= arg1 * 0 / ext_call.return_data[0] / 10^18
                if arg1 * 0 / ext_call.return_data[0] / 10^18 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1 * 0 / ext_call.return_data[0] / 10^18
                emit Transfer((arg1 * 0 / ext_call.return_data[0] / 10^18), msg.sender, 0);
                mem[324] = this.address
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[320] = 0x365ccbbf00000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_873ba41eAddress)
                staticcall sub_873ba41eAddress.getAddressesProvidersList() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _194 = mem[320]
                require mem[320] <= 4294967296
                require mem[320] + 32 <= return_data.size
                require mem[mem[320] + 320] <= 4294967296 and mem[320] + (32 * mem[mem[320] + 320]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 320] = mem[mem[320] + 320]
                _209 = mem[_194 + 320]
                mem[ceil32(return_data.size) + 352 len floor32(mem[_194 + 320])] = mem[_194 + 352 len floor32(mem[_194 + 320])]
                require 0 < mem[ceil32(return_data.size) + 320]
                require ext_code.size(mem[ceil32(return_data.size) + 364 len 20])
                staticcall mem[ceil32(return_data.size) + 364 len 20].getLendingPool() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _209) + ceil32(return_data.size) + 622 len 26]
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _209) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                mem[(32 * _209) + ceil32(return_data.size) + 580 len 0] = 0
                call address(ext_call.return_data[0]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[(32 * _209) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[(32 * _209) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _209) + ceil32(return_data.size) + 548]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _209) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
                emit RedeemedToken(arg1 * 0 / ext_call.return_data[0] / 10^18, arg1, msg.sender);
    stor152 = 1
    return 0
}



}
