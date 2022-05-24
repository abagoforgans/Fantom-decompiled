contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#  - harvest()
#  - panic()
#  - pause()
#
uint8 paused; offset 160
address owner;
address keeperAddress;
address strategistAddress;
address unirouterAddress;
uint32 stor4;
address vaultAddress;
uint256 stor4;
address sub_743b7c63Address;
mapping of uint8 stor6;
address stor7;
address sub_68f997b6Address;
array of address output;
address wantAddress;
address lpToken0Address;
address lpToken1Address;
address sub_225715a1Address;
address sub_57a1d5b4Address;
address stor17;
address stor18;
address stor19;
address stor20;
uint256 WITHDRAWAL_MAX;
uint256 WITHDRAW_FEE;
uint256 MAX_FEE;
uint256 CALL_FEE;
uint256 STRATEGIST_FEE;
uint256 FEE_BATCH;
uint256 PLATFORM_FEE;
array of address sub_6a0f7701;
address stor29;
address stor30;
array of struct stor31;
array of struct stor32;
array of struct stor33;
array of struct stor34;
address sub_0313e640Address;
address sub_50d7d613Address;
array of uint256 poolIds;

function FEE_BATCH() payable {
    return FEE_BATCH
}

function sub_0313e640(?) payable {
    return sub_0313e640Address
}

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function sub_225715a1(?) payable {
    return sub_225715a1Address
}

function unirouter() payable {
    return unirouterAddress
}

function PLATFORM_FEE() payable {
    return PLATFORM_FEE
}

function sub_50d7d613(?) payable {
    return sub_50d7d613Address
}

function WITHDRAWAL_MAX() payable {
    return WITHDRAWAL_MAX
}

function sub_57a1d5b4(?) payable {
    return sub_57a1d5b4Address
}

function paused() payable {
    return bool(paused)
}

function lpToken0() payable {
    return lpToken0Address
}

function output(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < output.length
    return output[arg1]
}

function sub_68f997b6(?) payable {
    return sub_68f997b6Address
}

function poolIds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolIds.length
    return poolIds[arg1].field_0
}

function sub_6a0f7701(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_6a0f7701.length
    return sub_6a0f7701[arg1].field_0
}

function sub_743b7c63(?) payable {
    return sub_743b7c63Address
}

function STRATEGIST_FEE() payable {
    return STRATEGIST_FEE
}

function lpToken1() payable {
    return lpToken1Address
}

function owner() payable {
    return owner
}

function CALL_FEE() payable {
    return CALL_FEE
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function WITHDRAW_FEE() payable {
    return WITHDRAW_FEE
}

function keeper() payable {
    return keeperAddress
}

function MAX_FEE() payable {
    return MAX_FEE
}

function vault() payable {
    return address(vaultAddress)
}

function beforeDeposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_d2969d01(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_743b7c63Address = arg1
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    strategistAddress = arg1
}

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    unirouterAddress = arg1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(vaultAddress) = arg1
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    keeperAddress = arg1
}

function addOrRemoveFromWhitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    stor6[address(arg1)] = uint8(arg2)
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    CALL_FEE = arg1
    STRATEGIST_FEE = arg2
    WITHDRAW_FEE = arg3
    FEE_BATCH = arg4
}

function balanceOfWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfPool() payable {
    require 0 < sub_6a0f7701.length
    require poolIds.length
    require ext_code.size(address(sub_6a0f7701.field_0))
    staticcall address(sub_6a0f7701.field_0).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args uint256(poolIds.field_0), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
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
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOf() payable {
    require 0 < sub_6a0f7701.length
    require poolIds.length
    require ext_code.size(address(sub_6a0f7701.field_0))
    staticcall address(sub_6a0f7701.field_0).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args uint256(poolIds.field_0), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function retireStrat() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require 0 < sub_6a0f7701.length
    require poolIds.length
    require ext_code.size(address(sub_6a0f7701.field_0))
    call address(sub_6a0f7701.field_0).emergencyWithdraw(uint256 arg1) with:
         gas gas_remaining wei
        args uint256(poolIds.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 1 < sub_6a0f7701.length
    require 1 < poolIds.length
    require ext_code.size(address(sub_6a0f7701.field_256))
    call address(sub_6a0f7701.field_256).emergencyWithdraw(uint256 arg1) with:
         gas gas_remaining wei
        args uint256(poolIds.field_256)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    call wantAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(vaultAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_6a0f7701.length
    require poolIds.length
    if ext_call.return_data[0] > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(address(sub_6a0f7701.field_0))
    call address(sub_6a0f7701.field_0).withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uint256(poolIds.field_0), arg1 - ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg1:
        if tx.origin == owner:
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
            mem[388 len 0] = 0
            call wantAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
        else:
            if paused:
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
            else:
                if not ext_call.return_data[0]:
                    if not WITHDRAWAL_MAX:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / WITHDRAWAL_MAX > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) >> 32
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) << 224, mem[516 len 4]
                else:
                    if WITHDRAW_FEE * ext_call.return_data[0] / ext_call.return_data[0] != WITHDRAW_FEE:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not WITHDRAWAL_MAX:
                        revert with 0, 'SafeMath: division by zero'
                    if WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX)) >> 32
                    mem[516 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX)) << 224, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 563 len 22]
    else:
        if tx.origin == owner:
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
            call wantAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
        else:
            if paused:
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
            else:
                if not arg1:
                    if not WITHDRAWAL_MAX:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / WITHDRAWAL_MAX > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1 - (0 / WITHDRAWAL_MAX)) >> 32
                    mem[516 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1 - (0 / WITHDRAWAL_MAX)) << 224, mem[516 len 4]
                else:
                    if WITHDRAW_FEE * arg1 / arg1 != WITHDRAW_FEE:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not WITHDRAWAL_MAX:
                        revert with 0, 'SafeMath: division by zero'
                    if WITHDRAW_FEE * arg1 / WITHDRAWAL_MAX > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1 - (WITHDRAW_FEE * arg1 / WITHDRAWAL_MAX)) >> 32
                    mem[516 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1 - (WITHDRAW_FEE * arg1 / WITHDRAWAL_MAX)) << 224, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 563 len 22]
}

function deposit() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    if Mask(254, 2, ext_call.return_data[0]):
        if block.timestamp + 1200 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        mem[160] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[164] = ext_call.return_data[0] / 4
        mem[228] = this.address
        mem[260] = block.timestamp + 1200
        mem[196] = 128
        mem[292] = stor31.length
        if not stor31.length:
            require ext_code.size(sub_50d7d613Address)
            call sub_50d7d613Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args Mask(254, 2, ext_call.return_data[0]), 128, address(this.address), block.timestamp + 1200, stor31.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 32
            _14 = mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160] <= 4294967296 and mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]
            _17 = mem[_14 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[_14 + 160])] = mem[_14 + 192 len floor32(mem[_14 + 160])]
            if block.timestamp + 1200 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[(32 * _17) + ceil32(return_data.size) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[(32 * _17) + ceil32(return_data.size) + 196] = ext_call.return_data[0] / 4
            mem[(32 * _17) + ceil32(return_data.size) + 260] = this.address
            mem[(32 * _17) + ceil32(return_data.size) + 292] = block.timestamp + 1200
            mem[(32 * _17) + ceil32(return_data.size) + 228] = 128
            mem[(32 * _17) + ceil32(return_data.size) + 324] = stor32.length
            if not stor32.length:
                require ext_code.size(sub_50d7d613Address)
                call sub_50d7d613Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 128, address(this.address), block.timestamp + 1200, stor32.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _17) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _17) + (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _96 = mem[(32 * _17) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _17) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _17) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _17) + ceil32(return_data.size) + mem[(32 * _17) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] <= 4294967296 and mem[(32 * _17) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _17) + ceil32(return_data.size) + mem[(32 * _17) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 32 <= return_data.size
                mem[(32 * _17) + (2 * ceil32(return_data.size)) + 192] = mem[(32 * _17) + ceil32(return_data.size) + mem[(32 * _17) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
                _99 = mem[(32 * _17) + ceil32(return_data.size) + _96 + 192]
                mem[(32 * _17) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[(32 * _17) + ceil32(return_data.size) + _96 + 192])] = mem[(32 * _17) + ceil32(return_data.size) + _96 + 224 len floor32(mem[(32 * _17) + ceil32(return_data.size) + _96 + 192])]
                if block.timestamp + 1200 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + 224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] / 4
                mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + 292] = this.address
                mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + 324] = block.timestamp + 1200
                mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + 260] = 128
                mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + 356] = stor33.length
                if not stor33.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 128, address(this.address), block.timestamp + 1200, stor33.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _174 = mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                    require mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                    require mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                    require mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224] <= 4294967296 and mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 224] = mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]
                    _179 = mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + _174 + 224]
                    mem[(32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + _174 + 224])] = mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + _174 + 256 len floor32(mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + _174 + 224])]
                    if block.timestamp + 1200 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * _179) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 256] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(32 * _179) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] / 4
                    mem[(32 * _179) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 324] = this.address
                    mem[(32 * _179) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 356] = block.timestamp + 1200
                    mem[(32 * _179) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 292] = 128
                    mem[(32 * _179) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 388] = stor34.length
                    if not stor34.length:
                        require ext_code.size(sub_0313e640Address)
                        call sub_0313e640Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args Mask(254, 2, ext_call.return_data[0]), 128, address(this.address), block.timestamp + 1200, stor34.length
                    else:
                        mem[0] = 34
                        mem[(32 * _179) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 420] = address(stor34.field_0)
                        idx = (32 * _179) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 420
                        s = 0
                        while (32 * _179) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + (32 * stor34.length) + 420 > idx + 32:
                            mem[idx + 32] = stor34[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(sub_0313e640Address)
                        call sub_0313e640Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args Mask(254, 2, ext_call.return_data[0]), Array(len=stor34.length, data=mem[(32 * _179) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 420 len 32 * stor34.length]), address(this.address), block.timestamp + 1200
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _179) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _179) + (32 * _99) + (32 * _17) + (6 * ceil32(return_data.size)) + 256
                    require return_data.size >= 32
                    require mem[(32 * _179) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                    require mem[(32 * _179) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                    require mem[(32 * _179) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + mem[(32 * _179) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[(32 * _179) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _179) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + mem[(32 * _179) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
                else:
                    mem[0] = 33
                    mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + 388] = address(stor33.field_0)
                    idx = (32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + 388
                    s = 0
                    while (32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + (32 * stor33.length) + 388 > idx + 32:
                        mem[idx + 32] = stor33[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), Array(len=stor33.length, data=mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + 388 len 32 * stor33.length]), address(this.address), block.timestamp + 1200
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _490 = mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                    require mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                    require mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                    require mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224] <= 4294967296 and mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 224] = mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]
                    _503 = mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + _490 + 224]
                    mem[(32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + _490 + 224])] = mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + _490 + 256 len floor32(mem[(32 * _99) + (32 * _17) + (2 * ceil32(return_data.size)) + _490 + 224])]
                    if block.timestamp + 1200 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * _503) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 256] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(32 * _503) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] / 4
                    mem[(32 * _503) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 324] = this.address
                    mem[(32 * _503) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 356] = block.timestamp + 1200
                    mem[(32 * _503) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 292] = 128
                    mem[(32 * _503) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 388] = stor34.length
                    if not stor34.length:
                        require ext_code.size(sub_0313e640Address)
                        call sub_0313e640Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args Mask(254, 2, ext_call.return_data[0]), 128, address(this.address), block.timestamp + 1200, stor34.length
                    else:
                        mem[0] = 34
                        mem[(32 * _503) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 420] = address(stor34.field_0)
                        idx = (32 * _503) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 420
                        s = 0
                        while (32 * _503) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + (32 * stor34.length) + 420 > idx + 32:
                            mem[idx + 32] = stor34[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(sub_0313e640Address)
                        call sub_0313e640Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args Mask(254, 2, ext_call.return_data[0]), Array(len=stor34.length, data=mem[(32 * _503) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 420 len 32 * stor34.length]), address(this.address), block.timestamp + 1200
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _503) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _503) + (32 * _99) + (32 * _17) + (6 * ceil32(return_data.size)) + 256
                    require return_data.size >= 32
                    require mem[(32 * _503) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                    require mem[(32 * _503) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                    require mem[(32 * _503) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + mem[(32 * _503) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[(32 * _503) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _503) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + mem[(32 * _503) + (32 * _99) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
            else:
                mem[0] = 32
                mem[(32 * _17) + ceil32(return_data.size) + 356] = address(stor32.field_0)
                idx = (32 * _17) + ceil32(return_data.size) + 356
                s = 0
                while (32 * _17) + ceil32(return_data.size) + (32 * stor32.length) + 356 > idx + 32:
                    mem[idx + 32] = stor32[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(sub_50d7d613Address)
                call sub_50d7d613Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), Array(len=stor32.length, data=mem[(32 * _17) + ceil32(return_data.size) + 356 len 32 * stor32.length]), address(this.address), block.timestamp + 1200
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _17) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _17) + (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _303 = mem[(32 * _17) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _17) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _17) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _17) + ceil32(return_data.size) + mem[(32 * _17) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] <= 4294967296 and mem[(32 * _17) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _17) + ceil32(return_data.size) + mem[(32 * _17) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 32 <= return_data.size
                mem[(32 * _17) + (2 * ceil32(return_data.size)) + 192] = mem[(32 * _17) + ceil32(return_data.size) + mem[(32 * _17) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
                _312 = mem[(32 * _17) + ceil32(return_data.size) + _303 + 192]
                mem[(32 * _17) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[(32 * _17) + ceil32(return_data.size) + _303 + 192])] = mem[(32 * _17) + ceil32(return_data.size) + _303 + 224 len floor32(mem[(32 * _17) + ceil32(return_data.size) + _303 + 192])]
                if block.timestamp + 1200 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + 224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] / 4
                mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + 292] = this.address
                mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + 324] = block.timestamp + 1200
                mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + 260] = 128
                mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + 356] = stor33.length
                if not stor33.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 128, address(this.address), block.timestamp + 1200, stor33.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _515 = mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                    require mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                    require mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                    require mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224] <= 4294967296 and mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 224] = mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]
                    _528 = mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + _515 + 224]
                    mem[(32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + _515 + 224])] = mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + _515 + 256 len floor32(mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + _515 + 224])]
                    if block.timestamp + 1200 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * _528) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 256] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(32 * _528) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] / 4
                    mem[(32 * _528) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 324] = this.address
                    mem[(32 * _528) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 356] = block.timestamp + 1200
                    mem[(32 * _528) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 292] = 128
                    mem[(32 * _528) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 388] = stor34.length
                    if not stor34.length:
                        require ext_code.size(sub_0313e640Address)
                        call sub_0313e640Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args Mask(254, 2, ext_call.return_data[0]), 128, address(this.address), block.timestamp + 1200, stor34.length
                    else:
                        mem[0] = 34
                        mem[(32 * _528) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 420] = address(stor34.field_0)
                        idx = (32 * _528) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 420
                        s = 0
                        while (32 * _528) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + (32 * stor34.length) + 420 > idx + 32:
                            mem[idx + 32] = stor34[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(sub_0313e640Address)
                        call sub_0313e640Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args Mask(254, 2, ext_call.return_data[0]), Array(len=stor34.length, data=mem[(32 * _528) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 420 len 32 * stor34.length]), address(this.address), block.timestamp + 1200
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _528) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _528) + (32 * _312) + (32 * _17) + (6 * ceil32(return_data.size)) + 256
                    require return_data.size >= 32
                    require mem[(32 * _528) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                    require mem[(32 * _528) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                    require mem[(32 * _528) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + mem[(32 * _528) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[(32 * _528) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _528) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + mem[(32 * _528) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
                else:
                    mem[0] = 33
                    mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + 388] = address(stor33.field_0)
                    idx = (32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + 388
                    s = 0
                    while (32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + (32 * stor33.length) + 388 > idx + 32:
                        mem[idx + 32] = stor33[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), Array(len=stor33.length, data=mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + 388 len 32 * stor33.length]), address(this.address), block.timestamp + 1200
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _969 = mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                    require mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                    require mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                    require mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224] <= 4294967296 and mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 224] = mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]
                    _994 = mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + _969 + 224]
                    mem[(32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + _969 + 224])] = mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + _969 + 256 len floor32(mem[(32 * _312) + (32 * _17) + (2 * ceil32(return_data.size)) + _969 + 224])]
                    if block.timestamp + 1200 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * _994) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 256] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(32 * _994) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] / 4
                    mem[(32 * _994) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 324] = this.address
                    mem[(32 * _994) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 356] = block.timestamp + 1200
                    mem[(32 * _994) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 292] = 128
                    mem[(32 * _994) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 388] = stor34.length
                    if not stor34.length:
                        require ext_code.size(sub_0313e640Address)
                        call sub_0313e640Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args Mask(254, 2, ext_call.return_data[0]), 128, address(this.address), block.timestamp + 1200, stor34.length
                    else:
                        mem[0] = 34
                        mem[(32 * _994) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 420] = address(stor34.field_0)
                        idx = (32 * _994) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 420
                        s = 0
                        while (32 * _994) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + (32 * stor34.length) + 420 > idx + 32:
                            mem[idx + 32] = stor34[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(sub_0313e640Address)
                        call sub_0313e640Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args Mask(254, 2, ext_call.return_data[0]), Array(len=stor34.length, data=mem[(32 * _994) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 420 len 32 * stor34.length]), address(this.address), block.timestamp + 1200
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _994) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _994) + (32 * _312) + (32 * _17) + (6 * ceil32(return_data.size)) + 256
                    require return_data.size >= 32
                    require mem[(32 * _994) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                    require mem[(32 * _994) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                    require mem[(32 * _994) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + mem[(32 * _994) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[(32 * _994) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _994) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + mem[(32 * _994) + (32 * _312) + (32 * _17) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
        else:
            mem[0] = 31
            mem[324] = address(stor31.field_0)
            idx = 324
            s = 0
            while (32 * stor31.length) + 324 > idx + 32:
                mem[idx + 32] = stor31[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(sub_50d7d613Address)
            call sub_50d7d613Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args Mask(254, 2, ext_call.return_data[0]), Array(len=stor31.length, data=mem[324 len 32 * stor31.length]), address(this.address), block.timestamp + 1200
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 32
            _165 = mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160] <= 4294967296 and mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]
            _171 = mem[_165 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[_165 + 160])] = mem[_165 + 192 len floor32(mem[_165 + 160])]
            if block.timestamp + 1200 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[(32 * _171) + ceil32(return_data.size) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[(32 * _171) + ceil32(return_data.size) + 196] = ext_call.return_data[0] / 4
            mem[(32 * _171) + ceil32(return_data.size) + 260] = this.address
            mem[(32 * _171) + ceil32(return_data.size) + 292] = block.timestamp + 1200
            mem[(32 * _171) + ceil32(return_data.size) + 228] = 128
            mem[(32 * _171) + ceil32(return_data.size) + 324] = stor32.length
            if not stor32.length:
                require ext_code.size(sub_50d7d613Address)
                call sub_50d7d613Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 128, address(this.address), block.timestamp + 1200, stor32.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _171) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _171) + (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _320 = mem[(32 * _171) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _171) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _171) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _171) + ceil32(return_data.size) + mem[(32 * _171) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] <= 4294967296 and mem[(32 * _171) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _171) + ceil32(return_data.size) + mem[(32 * _171) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 32 <= return_data.size
                mem[(32 * _171) + (2 * ceil32(return_data.size)) + 192] = mem[(32 * _171) + ceil32(return_data.size) + mem[(32 * _171) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
                _328 = mem[(32 * _171) + ceil32(return_data.size) + _320 + 192]
                mem[(32 * _171) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[(32 * _171) + ceil32(return_data.size) + _320 + 192])] = mem[(32 * _171) + ceil32(return_data.size) + _320 + 224 len floor32(mem[(32 * _171) + ceil32(return_data.size) + _320 + 192])]
                if block.timestamp + 1200 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + 224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] / 4
                mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + 292] = this.address
                mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + 324] = block.timestamp + 1200
                mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + 260] = 128
                mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + 356] = stor33.length
                if not stor33.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 128, address(this.address), block.timestamp + 1200, stor33.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _517 = mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                    require mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                    require mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                    require mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224] <= 4294967296 and mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 224] = mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]
                    _529 = mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + _517 + 224]
                    mem[(32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + _517 + 224])] = mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + _517 + 256 len floor32(mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + _517 + 224])]
                    if block.timestamp + 1200 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * _529) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 256] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(32 * _529) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] / 4
                    mem[(32 * _529) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 324] = this.address
                    mem[(32 * _529) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 356] = block.timestamp + 1200
                    mem[(32 * _529) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 292] = 128
                    mem[(32 * _529) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 388] = stor34.length
                    if not stor34.length:
                        require ext_code.size(sub_0313e640Address)
                        call sub_0313e640Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args Mask(254, 2, ext_call.return_data[0]), 128, address(this.address), block.timestamp + 1200, stor34.length
                    else:
                        mem[0] = 34
                        mem[(32 * _529) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 420] = address(stor34.field_0)
                        idx = (32 * _529) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 420
                        s = 0
                        while (32 * _529) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + (32 * stor34.length) + 420 > idx + 32:
                            mem[idx + 32] = stor34[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(sub_0313e640Address)
                        call sub_0313e640Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args Mask(254, 2, ext_call.return_data[0]), Array(len=stor34.length, data=mem[(32 * _529) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 420 len 32 * stor34.length]), address(this.address), block.timestamp + 1200
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _529) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _529) + (32 * _328) + (32 * _171) + (6 * ceil32(return_data.size)) + 256
                    require return_data.size >= 32
                    require mem[(32 * _529) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                    require mem[(32 * _529) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                    require mem[(32 * _529) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + mem[(32 * _529) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[(32 * _529) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _529) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + mem[(32 * _529) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
                else:
                    mem[0] = 33
                    mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + 388] = address(stor33.field_0)
                    idx = (32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + 388
                    s = 0
                    while (32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + (32 * stor33.length) + 388 > idx + 32:
                        mem[idx + 32] = stor33[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), Array(len=stor33.length, data=mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + 388 len 32 * stor33.length]), address(this.address), block.timestamp + 1200
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _972 = mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                    require mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                    require mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                    require mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224] <= 4294967296 and mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 224] = mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]
                    _996 = mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + _972 + 224]
                    mem[(32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + _972 + 224])] = mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + _972 + 256 len floor32(mem[(32 * _328) + (32 * _171) + (2 * ceil32(return_data.size)) + _972 + 224])]
                    if block.timestamp + 1200 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * _996) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 256] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(32 * _996) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] / 4
                    mem[(32 * _996) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 324] = this.address
                    mem[(32 * _996) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 356] = block.timestamp + 1200
                    mem[(32 * _996) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 292] = 128
                    mem[(32 * _996) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 388] = stor34.length
                    if not stor34.length:
                        require ext_code.size(sub_0313e640Address)
                        call sub_0313e640Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args Mask(254, 2, ext_call.return_data[0]), 128, address(this.address), block.timestamp + 1200, stor34.length
                    else:
                        mem[0] = 34
                        mem[(32 * _996) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 420] = address(stor34.field_0)
                        idx = (32 * _996) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 420
                        s = 0
                        while (32 * _996) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + (32 * stor34.length) + 420 > idx + 32:
                            mem[idx + 32] = stor34[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(sub_0313e640Address)
                        call sub_0313e640Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args Mask(254, 2, ext_call.return_data[0]), Array(len=stor34.length, data=mem[(32 * _996) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 420 len 32 * stor34.length]), address(this.address), block.timestamp + 1200
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _996) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _996) + (32 * _328) + (32 * _171) + (6 * ceil32(return_data.size)) + 256
                    require return_data.size >= 32
                    require mem[(32 * _996) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                    require mem[(32 * _996) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                    require mem[(32 * _996) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + mem[(32 * _996) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[(32 * _996) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _996) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + mem[(32 * _996) + (32 * _328) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
            else:
                mem[0] = 32
                mem[(32 * _171) + ceil32(return_data.size) + 356] = address(stor32.field_0)
                idx = (32 * _171) + ceil32(return_data.size) + 356
                s = 0
                while (32 * _171) + ceil32(return_data.size) + (32 * stor32.length) + 356 > idx + 32:
                    mem[idx + 32] = stor32[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(sub_50d7d613Address)
                call sub_50d7d613Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), Array(len=stor32.length, data=mem[(32 * _171) + ceil32(return_data.size) + 356 len 32 * stor32.length]), address(this.address), block.timestamp + 1200
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _171) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _171) + (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _711 = mem[(32 * _171) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _171) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _171) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _171) + ceil32(return_data.size) + mem[(32 * _171) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] <= 4294967296 and mem[(32 * _171) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _171) + ceil32(return_data.size) + mem[(32 * _171) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 32 <= return_data.size
                mem[(32 * _171) + (2 * ceil32(return_data.size)) + 192] = mem[(32 * _171) + ceil32(return_data.size) + mem[(32 * _171) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
                _725 = mem[(32 * _171) + ceil32(return_data.size) + _711 + 192]
                mem[(32 * _171) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[(32 * _171) + ceil32(return_data.size) + _711 + 192])] = mem[(32 * _171) + ceil32(return_data.size) + _711 + 224 len floor32(mem[(32 * _171) + ceil32(return_data.size) + _711 + 192])]
                if block.timestamp + 1200 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + 224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] / 4
                mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + 292] = this.address
                mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + 324] = block.timestamp + 1200
                mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + 260] = 128
                mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + 356] = stor33.length
                if not stor33.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 128, address(this.address), block.timestamp + 1200, stor33.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _1018 = mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                    require mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                    require mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                    require mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224] <= 4294967296 and mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 224] = mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]
                    _1043 = mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + _1018 + 224]
                    mem[(32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + _1018 + 224])] = mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + _1018 + 256 len floor32(mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + _1018 + 224])]
                    if block.timestamp + 1200 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * _1043) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 256] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1043) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] / 4
                    mem[(32 * _1043) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 324] = this.address
                    mem[(32 * _1043) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 356] = block.timestamp + 1200
                    mem[(32 * _1043) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 292] = 128
                    mem[(32 * _1043) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 388] = stor34.length
                    if not stor34.length:
                        require ext_code.size(sub_0313e640Address)
                        call sub_0313e640Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args Mask(254, 2, ext_call.return_data[0]), 128, address(this.address), block.timestamp + 1200, stor34.length
                    else:
                        mem[0] = 34
                        mem[(32 * _1043) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 420] = address(stor34.field_0)
                        idx = (32 * _1043) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 420
                        s = 0
                        while (32 * _1043) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + (32 * stor34.length) + 420 > idx + 32:
                            mem[idx + 32] = stor34[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(sub_0313e640Address)
                        call sub_0313e640Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args Mask(254, 2, ext_call.return_data[0]), Array(len=stor34.length, data=mem[(32 * _1043) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 420 len 32 * stor34.length]), address(this.address), block.timestamp + 1200
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1043) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1043) + (32 * _725) + (32 * _171) + (6 * ceil32(return_data.size)) + 256
                    require return_data.size >= 32
                    require mem[(32 * _1043) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                    require mem[(32 * _1043) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1043) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + mem[(32 * _1043) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[(32 * _1043) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _1043) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + mem[(32 * _1043) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
                else:
                    mem[0] = 33
                    mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + 388] = address(stor33.field_0)
                    idx = (32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + 388
                    s = 0
                    while (32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + (32 * stor33.length) + 388 > idx + 32:
                        mem[idx + 32] = stor33[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), Array(len=stor33.length, data=mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + 388 len 32 * stor33.length]), address(this.address), block.timestamp + 1200
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _1574 = mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                    require mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                    require mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                    require mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224] <= 4294967296 and mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]) + 32 <= return_data.size
                    mem[(32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 224] = mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]
                    _1601 = mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + _1574 + 224]
                    mem[(32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + _1574 + 224])] = mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + _1574 + 256 len floor32(mem[(32 * _725) + (32 * _171) + (2 * ceil32(return_data.size)) + _1574 + 224])]
                    if block.timestamp + 1200 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * _1601) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 256] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1601) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] / 4
                    mem[(32 * _1601) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 324] = this.address
                    mem[(32 * _1601) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 356] = block.timestamp + 1200
                    mem[(32 * _1601) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 292] = 128
                    mem[(32 * _1601) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 388] = stor34.length
                    if not stor34.length:
                        require ext_code.size(sub_0313e640Address)
                        call sub_0313e640Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args Mask(254, 2, ext_call.return_data[0]), 128, address(this.address), block.timestamp + 1200, stor34.length
                    else:
                        mem[0] = 34
                        mem[(32 * _1601) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 420] = address(stor34.field_0)
                        idx = (32 * _1601) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 420
                        s = 0
                        while (32 * _1601) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + (32 * stor34.length) + 420 > idx + 32:
                            mem[idx + 32] = stor34[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(sub_0313e640Address)
                        call sub_0313e640Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args Mask(254, 2, ext_call.return_data[0]), Array(len=stor34.length, data=mem[(32 * _1601) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 420 len 32 * stor34.length]), address(this.address), block.timestamp + 1200
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1601) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1601) + (32 * _725) + (32 * _171) + (6 * ceil32(return_data.size)) + 256
                    require return_data.size >= 32
                    require mem[(32 * _1601) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                    require mem[(32 * _1601) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1601) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + mem[(32 * _1601) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[(32 * _1601) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _1601) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + mem[(32 * _1601) + (32 * _725) + (32 * _171) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
        require ext_code.size(stor17)
        staticcall stor17.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor18)
        staticcall stor18.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor19)
        staticcall stor19.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor20)
        staticcall stor20.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp + 600 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(sub_50d7d613Address)
        call sub_50d7d613Address.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args stor17, stor18, ext_call.return_data[0], ext_call.return_data[0], 1, 1, address(this.address), block.timestamp + 600
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if block.timestamp + 600 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(sub_0313e640Address)
        call sub_0313e640Address.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args stor19, stor20, ext_call.return_data[0], ext_call.return_data[0], 1, 1, address(this.address), block.timestamp + 600
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_225715a1Address)
        staticcall sub_225715a1Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_57a1d5b4Address)
        staticcall sub_57a1d5b4Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor29)
        call stor29.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 27, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor30)
        call stor30.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 9, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
