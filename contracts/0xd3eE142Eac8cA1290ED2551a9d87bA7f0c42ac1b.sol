contract main {




// =====================  Runtime code  =====================


#
#  - sub_c75e1448(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address treasuryAddress;
address rewardManagerAddress;
mapping of uint256 sub_166bd8c6;
uint256 sub_e85640b7;
uint256 sub_10577885;
uint256 sub_ae819c6f;
uint256 stor107;
uint256 stor108;
uint256 stor109;
uint256 stor110;
uint32 stor111;
address vaultAddress;
uint256 stor111;
address underlyingAddress;
uint32 stor113;
address masterChefAddress;
uint256 stor113;
address booAddress;
uint8 sell; offset 160
address sub_cce4ae1dAddress;
uint256 sellFloor;
uint256 poolId;

function rewardManager() payable {
    return rewardManagerAddress
}

function sub_10577885(?) payable {
    return sub_10577885
}

function sub_166bd8c6(?) payable {
    require calldata.size - 4 >= 32
    return sub_166bd8c6[arg1]
}

function poolId() payable {
    return poolId
}

function sell() payable {
    return bool(sell)
}

function boo() payable {
    return booAddress
}

function masterChef() payable {
    return address(masterChefAddress)
}

function treasury() payable {
    return treasuryAddress
}

function underlying() payable {
    return underlyingAddress
}

function owner() payable {
    return owner
}

function sellFloor() payable {
    return sellFloor
}

function sub_ae819c6f(?) payable {
    return sub_ae819c6f
}

function sub_cce4ae1d(?) payable {
    return sub_cce4ae1dAddress
}

function sub_e85640b7(?) payable {
    return sub_e85640b7
}

function vault() payable {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit 0x728be007: owner, 0
    owner = 0
}

function unsalvagableTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if booAddress == arg1:
        return True
    return (underlyingAddress == arg1)
}

function sub_822bfafe(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    rewardManagerAddress = arg1
}

function setOnxTreasuryFundAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    treasuryAddress = arg1
}

function sub_54ce4d1c(?) payable {
    require ext_code.size(sub_cce4ae1dAddress)
    staticcall sub_cce4ae1dAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x728be007: owner, arg1
    owner = arg1
}

function sub_5190edfd(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x646665654d61782073686f756c6420626520626967676572207468616e207a6572,
                    mem[197 len 31]
    if arg1 >= arg2:
        revert with 0, 'fee can't be bigger than feeMax'
    stor109 = arg1
    stor110 = arg2
}

function setKeepFee(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x646665654d61782073686f756c6420626520626967676572207468616e207a6572,
                    mem[197 len 31]
    if arg1 >= arg2:
        revert with 0, 'fee can't be bigger than feeMax'
    stor107 = arg1
    stor108 = arg2
}

function investedUnderlyingBalance() payable {
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(masterChefAddress):
        return ext_call.return_data[0]
    require ext_code.size(address(masterChefAddress))
    staticcall address(masterChefAddress).0x93f1a40b with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function updateUserRewardDebts(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, 'Not a vault'
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        sub_166bd8c6[address(arg1)] = 0
    else:
        if sub_e85640b7 * ext_call.return_data[0] / ext_call.return_data[0] != sub_e85640b7:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        sub_166bd8c6[address(arg1)] = sub_e85640b7 * ext_call.return_data[0] / 1000000000000000000 * 10^18
}

function salvage(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if booAddress == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe746f6b656e20697320646566696e6564206173206e6f742073616c76616761626c,
                    mem[198 len 30]
    if underlyingAddress == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe746f6b656e20697320646566696e6564206173206e6f742073616c76616761626c,
                    mem[198 len 30]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg3) >> 32
    mem[324 len 0] = 0
    call arg2 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3
        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
            revert with 0, 32, 42, 0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function withdrawToVault(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 <= ext_call.return_data[0]:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(underlyingAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor111), uint32(stor111), Mask(224, 32, arg1) >> 32
        mem[324 len 0] = 0
    else:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(masterChefAddress))
        staticcall address(masterChefAddress).0x93f1a40b with:
                gas gas_remaining wei
               args poolId, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(masterChefAddress))
        if ext_call.return_data[0] < arg1 - ext_call.return_data[0]:
            call address(masterChefAddress).0x441a3e70 with:
                 gas gas_remaining wei
                args poolId, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(underlyingAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor111), uint32(stor111), Mask(224, 32, arg1) >> 32
        else:
            call address(masterChefAddress).0x441a3e70 with:
                 gas gas_remaining wei
                args poolId, arg1 - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(underlyingAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor111), uint32(stor111), Mask(224, 32, arg1) >> 32
            mem[324 len 0] = 0
    call underlyingAddress with:
       funct uint32(stor111)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor111), uint32(stor111), arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor111):
            revert with 0, 32, 42, 0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function updateAccPerShare(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, 'Not a vault'
    require ext_code.size(sub_cce4ae1dAddress)
    staticcall sub_cce4ae1dAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_ae819c6f = ext_call.return_data[0]
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_10577885:
        if not ext_call.return_data[0]:
            sub_e85640b7 = 0
        else:
            if sub_10577885 > sub_ae819c6f:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_ae819c6f - sub_10577885:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + sub_e85640b7 < sub_e85640b7:
                    revert with 0, 'SafeMath: addition overflow'
                sub_e85640b7 += 0 / ext_call.return_data[0]
            else:
                if (1000000000000000000 * 10^18 * sub_ae819c6f) - (1000000000000000000 * 10^18 * sub_10577885) / sub_ae819c6f - sub_10577885 != 1000000000000000000 * 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if ((1000000000000000000 * 10^18 * sub_ae819c6f) - (1000000000000000000 * 10^18 * sub_10577885) / ext_call.return_data[0]) + sub_e85640b7 < sub_e85640b7:
                    revert with 0, 'SafeMath: addition overflow'
                sub_e85640b7 += (1000000000000000000 * 10^18 * sub_ae819c6f) - (1000000000000000000 * 10^18 * sub_10577885) / ext_call.return_data[0]
    else:
        if sub_ae819c6f < sub_10577885:
            sub_ae819c6f = 0
            sub_10577885 = 0
            sub_e85640b7 = 0
            sub_166bd8c6[address(arg1)] = 0
        else:
            if not ext_call.return_data[0]:
                sub_e85640b7 = 0
            else:
                if sub_10577885 > sub_ae819c6f:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_ae819c6f - sub_10577885:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + sub_e85640b7 < sub_e85640b7:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_e85640b7 += 0 / ext_call.return_data[0]
                else:
                    if (1000000000000000000 * 10^18 * sub_ae819c6f) - (1000000000000000000 * 10^18 * sub_10577885) / sub_ae819c6f - sub_10577885 != 1000000000000000000 * 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if ((1000000000000000000 * 10^18 * sub_ae819c6f) - (1000000000000000000 * 10^18 * sub_10577885) / ext_call.return_data[0]) + sub_e85640b7 < sub_e85640b7:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_e85640b7 += (1000000000000000000 * 10^18 * sub_ae819c6f) - (1000000000000000000 * 10^18 * sub_10577885) / ext_call.return_data[0]
}

function withdrawAllToVault() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not address(masterChefAddress):
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(underlyingAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor111), uint32(stor111), ext_call.return_data[0 len 28]
        mem[324 len 0] = 0
    else:
        require ext_code.size(address(masterChefAddress))
        staticcall address(masterChefAddress).0x93f1a40b with:
                gas gas_remaining wei
               args poolId, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[0]:
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(underlyingAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor111), uint32(stor111), ext_call.return_data[0 len 28]
            mem[324 len 0] = 0
        else:
            require ext_code.size(address(masterChefAddress))
            call address(masterChefAddress).0x441a3e70 with:
                 gas gas_remaining wei
                args poolId, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(underlyingAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor111), uint32(stor111), ext_call.return_data[0 len 28]
    call underlyingAddress with:
       funct uint32(stor111)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor111), uint32(stor111), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor111):
            revert with 0, 32, 42, 0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_d83aabb7(?) payable {
    require calldata.size - 4 >= 192
    if uint8(stor0.field_8):
        underlyingAddress = arg1
        address(vaultAddress) = arg2
        address(masterChefAddress) = arg3
        sell = 1
        poolId = arg4
        owner = msg.sender
        emit 0x728be007: 0, msg.sender
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            underlyingAddress = arg1
            address(vaultAddress) = arg2
            address(masterChefAddress) = arg3
            sell = 1
            poolId = arg4
            owner = msg.sender
            emit 0x728be007: 0, msg.sender
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            underlyingAddress = arg1
            address(vaultAddress) = arg2
            address(masterChefAddress) = arg3
            sell = 1
            poolId = arg4
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit 0x728be007: 0, msg.sender
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit 0x728be007: 0, msg.sender
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit 0x728be007: 0, msg.sender
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit 0x728be007: 0, msg.sender
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
    require ext_code.size(arg3)
    staticcall arg3.0x1526fe27 with:
            gas gas_remaining wei
           args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if underlyingAddress != ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x64506f6f6c20496e666f20646f6573206e6f74206d6174636820756e6465726c79696e,
                    ext_call.return_data[103 len 25],
                    mem[224 len 4]
    booAddress = arg5
    sub_cce4ae1dAddress = arg6
    treasuryAddress = 0x252766cd49395b6f11b9f319dac1c786a72f6537
    stor107 = 10
    stor108 = 100
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_8f979361(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_cce4ae1dAddress)
    staticcall sub_cce4ae1dAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_10577885:
        return 0
    if sub_10577885 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[0] - sub_10577885:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + sub_e85640b7 < sub_e85640b7:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            if sub_166bd8c6[address(arg1)] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -sub_166bd8c6[address(arg1)]
        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_e85640b7 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + sub_e85640b7:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_166bd8c6[address(arg1)] > (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_e85640b7 * ext_call.return_data[0]) / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_e85640b7 * ext_call.return_data[0]) / 1000000000000000000 * 10^18) - sub_166bd8c6[address(arg1)])
    if (1000000000000000000 * 10^18 * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * sub_10577885) / ext_call.return_data[0] - sub_10577885 != 1000000000000000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if ((1000000000000000000 * 10^18 * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * sub_10577885) / ext_call.return_data[0]) + sub_e85640b7 < sub_e85640b7:
        revert with 0, 'SafeMath: addition overflow'
    if not ext_call.return_data[0]:
        if sub_166bd8c6[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -sub_166bd8c6[address(arg1)]
    if ((1000000000000000000 * 10^18 * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * sub_10577885) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_e85640b7 * ext_call.return_data[0]) / ext_call.return_data[0] != ((1000000000000000000 * 10^18 * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * sub_10577885) / ext_call.return_data[0]) + sub_e85640b7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if sub_166bd8c6[address(arg1)] > ((1000000000000000000 * 10^18 * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * sub_10577885) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_e85640b7 * ext_call.return_data[0]) / 1000000000000000000 * 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((((1000000000000000000 * 10^18 * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * sub_10577885) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_e85640b7 * ext_call.return_data[0]) / 1000000000000000000 * 10^18) - sub_166bd8c6[address(arg1)])
}

function initialize(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor0.field_8):
        underlyingAddress = arg2
        address(vaultAddress) = arg1
        address(masterChefAddress) = 0x2b2929e785374c651a81a63878ab22742656dcdd
        sell = 1
        poolId = arg3
        owner = msg.sender
        emit 0x728be007: 0, msg.sender
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            underlyingAddress = arg2
            address(vaultAddress) = arg1
            address(masterChefAddress) = 0x2b2929e785374c651a81a63878ab22742656dcdd
            sell = 1
            poolId = arg3
            owner = msg.sender
            emit 0x728be007: 0, msg.sender
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                underlyingAddress = arg2
                address(vaultAddress) = arg1
                address(masterChefAddress) = 0x2b2929e785374c651a81a63878ab22742656dcdd
                sell = 1
                poolId = arg3
                owner = msg.sender
                emit 0x728be007: 0, msg.sender
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                underlyingAddress = arg2
                address(vaultAddress) = arg1
                address(masterChefAddress) = 0x2b2929e785374c651a81a63878ab22742656dcdd
                sell = 1
                poolId = arg3
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit 0x728be007: 0, msg.sender
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit 0x728be007: 0, msg.sender
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit 0x728be007: 0, msg.sender
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            owner = msg.sender
                            emit 0x728be007: 0, msg.sender
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
    require ext_code.size(0x2b2929e785374c651a81a63878ab22742656dcdd)
    staticcall 0x2b2929e785374c651a81a63878ab22742656dcdd.0x1526fe27 with:
            gas gas_remaining wei
           args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if underlyingAddress != ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x64506f6f6c20496e666f20646f6573206e6f74206d6174636820756e6465726c79696e,
                    ext_call.return_data[103 len 25],
                    mem[224 len 4]
    booAddress = 0x841fad6eae12c286d1fd18d1d525dffa75c7effe
    sub_cce4ae1dAddress = 0xf28164a485b0b2c90639e47b0f377b4a438a16b1
    treasuryAddress = 0x252766cd49395b6f11b9f319dac1c786a72f6537
    stor107 = 10
    stor108 = 100
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
}

function withdrawReward(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, 'Not a vault'
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if sub_166bd8c6[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(sub_cce4ae1dAddress)
        staticcall sub_cce4ae1dAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(sub_cce4ae1dAddress):
            revert with 0, 'Address: call to non-contract'
        if ext_call.return_data[0] >= -sub_166bd8c6[address(arg1)]:
            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, -sub_166bd8c6[address(arg1)]) >> 32
            mem[324 len 0] = 0
            call sub_cce4ae1dAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, -sub_166bd8c6[address(arg1)]) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, -sub_166bd8c6[address(arg1)]
                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                    revert with 0, 32, 42, 0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                    0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            if -sub_166bd8c6[address(arg1)] > sub_ae819c6f:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_10577885 = sub_ae819c6f + sub_166bd8c6[address(arg1)]
        else:
            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
            mem[324 len 0] = 0
            call sub_cce4ae1dAddress with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                    revert with 0, 32, 42, 0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                    0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            if ext_call.return_data[0] > sub_ae819c6f:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_10577885 = sub_ae819c6f - ext_call.return_data[0]
    else:
        if sub_e85640b7 * ext_call.return_data[0] / ext_call.return_data[0] != sub_e85640b7:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_166bd8c6[address(arg1)] > sub_e85640b7 * ext_call.return_data[0] / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(sub_cce4ae1dAddress)
        staticcall sub_cce4ae1dAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(sub_cce4ae1dAddress):
            revert with 0, 'Address: call to non-contract'
        if ext_call.return_data[0] >= (sub_e85640b7 * ext_call.return_data[0] / 1000000000000000000 * 10^18) - sub_166bd8c6[address(arg1)]:
            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, (sub_e85640b7 * ext_call.return_data[0] / 1000000000000000000 * 10^18) - sub_166bd8c6[address(arg1)]) >> 32
            mem[324 len 0] = 0
            call sub_cce4ae1dAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, (sub_e85640b7 * ext_call.return_data[0] / 1000000000000000000 * 10^18) - sub_166bd8c6[address(arg1)]) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), 
                                address(arg1) << 64,
                                0,
                                (sub_e85640b7 * ext_call.return_data[0] / 1000000000000000000 * 10^18) - sub_166bd8c6[address(arg1)]
                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                    revert with 0, 32, 42, 0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                    0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            if (sub_e85640b7 * ext_call.return_data[0] / 1000000000000000000 * 10^18) - sub_166bd8c6[address(arg1)] > sub_ae819c6f:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_10577885 = sub_ae819c6f - (sub_e85640b7 * ext_call.return_data[0] / 1000000000000000000 * 10^18) + sub_166bd8c6[address(arg1)]
        else:
            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
            mem[324 len 0] = 0
            call sub_cce4ae1dAddress with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                    revert with 0, 32, 42, 0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                    0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            if ext_call.return_data[0] > sub_ae819c6f:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_10577885 = sub_ae819c6f - ext_call.return_data[0]
}

function sub_24a81939(?) payable {
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(underlyingAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor113), uint32(stor113), 0
        call underlyingAddress with:
           funct uint32(stor113)
             gas gas_remaining wei
            args 0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor113), uint32(stor113), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor113):
                revert with 0, 32, 42, 0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if ext_call.return_data[0]:
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(masterChefAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x6f5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[382 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
            if not ext_code.size(underlyingAddress):
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor113), uint32(stor113), ext_call.return_data[0 len 28]
            mem[488 len 0] = 0
            call underlyingAddress with:
               funct uint32(stor113)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor113), uint32(stor113), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor113):
                    revert with 0, 32, 42, 0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            else:
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
            require ext_code.size(address(masterChefAddress))
            call address(masterChefAddress).deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args poolId, ext_call.return_data[0]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if not ext_call.return_data[0]:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 531 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor113), uint32(stor113), ext_call.return_data[0 len 28]
                    mem[ceil32(return_data.size) + 517 len 4] = 0
                    call underlyingAddress with:
                       funct uint32(stor113)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor113), uint32(stor113), 0
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor113):
                            revert with 0, 
                                        32,
                                        42,
                                        0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                        require ext_code.size(address(masterChefAddress))
                        call address(masterChefAddress).deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args poolId, ext_call.return_data[0]
                    else:
                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require ext_code.size(address(masterChefAddress))
                        call address(masterChefAddress).deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args poolId, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(masterChefAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x6f5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(return_data.size) + 383 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 531 len 26]
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor113), uint32(stor113), ext_call.return_data[0 len 28]
                    mem[ceil32(return_data.size) + 489 len 0] = 0
                    call underlyingAddress with:
                       funct uint32(stor113)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor113), uint32(stor113), 0
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor113):
                            revert with 0, 
                                        32,
                                        42,
                                        0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                    else:
                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
                    require ext_code.size(address(masterChefAddress))
                    call address(masterChefAddress).deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args poolId, ext_call.return_data[0]
            else:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
                if ext_call.return_data[0]:
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(masterChefAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x6f5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(return_data.size) + 383 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if not ext_code.size(underlyingAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor113), uint32(stor113), ext_call.return_data[0 len 28]
                mem[ceil32(return_data.size) + 489 len 0] = 0
                call underlyingAddress with:
                   funct uint32(stor113)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor113), uint32(stor113), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor113):
                        revert with 0, 
                                    32,
                                    42,
                                    0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                else:
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xe05361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                require ext_code.size(address(masterChefAddress))
                call address(masterChefAddress).deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args poolId, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
