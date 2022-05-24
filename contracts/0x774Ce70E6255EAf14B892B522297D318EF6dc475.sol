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
    mem[160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[164] = ext_call.return_data[0] / 4
    mem[196] = 0
    mem[260] = this.address
    mem[292] = block.timestamp
    mem[228] = 160
    mem[324] = stor31.length
    if not stor31.length:
        require ext_code.size(sub_50d7d613Address)
        call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, Mask(30, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor31.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 160
        require return_data.size >= 32
        _12 = mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
        require mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
        require mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
        require mem[mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160] <= 4294967296 and mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 160] = mem[mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]
        _15 = mem[_12 + 160]
        mem[ceil32(return_data.size) + 192 len floor32(mem[_12 + 160])] = mem[_12 + 192 len floor32(mem[_12 + 160])]
        mem[(32 * _15) + ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _15) + ceil32(return_data.size) + 196] = ext_call.return_data[0] / 4
        mem[(32 * _15) + ceil32(return_data.size) + 228] = 0
        mem[(32 * _15) + ceil32(return_data.size) + 292] = this.address
        mem[(32 * _15) + ceil32(return_data.size) + 324] = block.timestamp
        mem[(32 * _15) + ceil32(return_data.size) + 260] = 160
        mem[(32 * _15) + ceil32(return_data.size) + 356] = stor32.length
        if not stor32.length:
            require ext_code.size(sub_50d7d613Address)
            call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor32.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _15) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _15) + (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _86 = mem[(32 * _15) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(32 * _15) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[(32 * _15) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[(32 * _15) + ceil32(return_data.size) + mem[(32 * _15) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] <= 4294967296 and mem[(32 * _15) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _15) + ceil32(return_data.size) + mem[(32 * _15) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 32 <= return_data.size
            mem[(32 * _15) + (2 * ceil32(return_data.size)) + 192] = mem[(32 * _15) + ceil32(return_data.size) + mem[(32 * _15) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
            _89 = mem[(32 * _15) + ceil32(return_data.size) + _86 + 192]
            mem[(32 * _15) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[(32 * _15) + ceil32(return_data.size) + _86 + 192])] = mem[(32 * _15) + ceil32(return_data.size) + _86 + 224 len floor32(mem[(32 * _15) + ceil32(return_data.size) + _86 + 192])]
            mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] / 4
            mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 260] = 0
            mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 324] = this.address
            mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 356] = block.timestamp
            mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 292] = 160
            mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 388] = stor33.length
            if not stor33.length:
                require ext_code.size(sub_0313e640Address)
                call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _155 = mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224] <= 4294967296 and mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 224] = mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]
                _160 = mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + _155 + 224]
                mem[(32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + _155 + 224])] = mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + _155 + 256 len floor32(mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + _155 + 224])]
                mem[(32 * _160) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _160) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] / 4
                mem[(32 * _160) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 292] = 0
                mem[(32 * _160) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 356] = this.address
                mem[(32 * _160) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                mem[(32 * _160) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 324] = 160
                mem[(32 * _160) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 420] = stor34.length
                if not stor34.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor34.length
                else:
                    mem[0] = 34
                    mem[(32 * _160) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 452] = address(stor34.field_0)
                    idx = (32 * _160) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 452
                    s = 0
                    while (32 * _160) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + (32 * stor34.length) + 452 > idx + 32:
                        mem[idx + 32] = stor34[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor34.length, mem[(32 * _160) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 452 len 32 * stor34.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _160) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _160) + (32 * _89) + (32 * _15) + (6 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                require mem[(32 * _160) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _160) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _160) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + mem[(32 * _160) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[(32 * _160) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _160) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + mem[(32 * _160) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
            else:
                mem[0] = 33
                mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 420] = address(stor33.field_0)
                idx = (32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 420
                s = 0
                while (32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + (32 * stor33.length) + 420 > idx + 32:
                    mem[idx + 32] = stor33[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(sub_0313e640Address)
                call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length, mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 420 len 32 * stor33.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _460 = mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224] <= 4294967296 and mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 224] = mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]
                _473 = mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + _460 + 224]
                mem[(32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + _460 + 224])] = mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + _460 + 256 len floor32(mem[(32 * _89) + (32 * _15) + (2 * ceil32(return_data.size)) + _460 + 224])]
                mem[(32 * _473) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _473) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] / 4
                mem[(32 * _473) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 292] = 0
                mem[(32 * _473) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 356] = this.address
                mem[(32 * _473) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                mem[(32 * _473) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 324] = 160
                mem[(32 * _473) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 420] = stor34.length
                if not stor34.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor34.length
                else:
                    mem[0] = 34
                    mem[(32 * _473) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 452] = address(stor34.field_0)
                    idx = (32 * _473) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 452
                    s = 0
                    while (32 * _473) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + (32 * stor34.length) + 452 > idx + 32:
                        mem[idx + 32] = stor34[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor34.length, mem[(32 * _473) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 452 len 32 * stor34.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _473) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _473) + (32 * _89) + (32 * _15) + (6 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                require mem[(32 * _473) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _473) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _473) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + mem[(32 * _473) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[(32 * _473) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _473) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + mem[(32 * _473) + (32 * _89) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
        else:
            mem[0] = 32
            mem[(32 * _15) + ceil32(return_data.size) + 388] = address(stor32.field_0)
            idx = (32 * _15) + ceil32(return_data.size) + 388
            s = 0
            while (32 * _15) + ceil32(return_data.size) + (32 * stor32.length) + 388 > idx + 32:
                mem[idx + 32] = stor32[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(sub_50d7d613Address)
            call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor32.length, mem[(32 * _15) + ceil32(return_data.size) + 388 len 32 * stor32.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _15) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _15) + (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _283 = mem[(32 * _15) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(32 * _15) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[(32 * _15) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[(32 * _15) + ceil32(return_data.size) + mem[(32 * _15) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] <= 4294967296 and mem[(32 * _15) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _15) + ceil32(return_data.size) + mem[(32 * _15) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 32 <= return_data.size
            mem[(32 * _15) + (2 * ceil32(return_data.size)) + 192] = mem[(32 * _15) + ceil32(return_data.size) + mem[(32 * _15) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
            _292 = mem[(32 * _15) + ceil32(return_data.size) + _283 + 192]
            mem[(32 * _15) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[(32 * _15) + ceil32(return_data.size) + _283 + 192])] = mem[(32 * _15) + ceil32(return_data.size) + _283 + 224 len floor32(mem[(32 * _15) + ceil32(return_data.size) + _283 + 192])]
            mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] / 4
            mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 260] = 0
            mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 324] = this.address
            mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 356] = block.timestamp
            mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 292] = 160
            mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 388] = stor33.length
            if not stor33.length:
                require ext_code.size(sub_0313e640Address)
                call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _468 = mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224] <= 4294967296 and mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 224] = mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]
                _481 = mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + _468 + 224]
                mem[(32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + _468 + 224])] = mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + _468 + 256 len floor32(mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + _468 + 224])]
                mem[(32 * _481) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _481) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] / 4
                mem[(32 * _481) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 292] = 0
                mem[(32 * _481) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 356] = this.address
                mem[(32 * _481) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                mem[(32 * _481) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 324] = 160
                mem[(32 * _481) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 420] = stor34.length
                if not stor34.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor34.length
                else:
                    mem[0] = 34
                    mem[(32 * _481) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 452] = address(stor34.field_0)
                    idx = (32 * _481) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 452
                    s = 0
                    while (32 * _481) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + (32 * stor34.length) + 452 > idx + 32:
                        mem[idx + 32] = stor34[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor34.length, mem[(32 * _481) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 452 len 32 * stor34.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _481) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _481) + (32 * _292) + (32 * _15) + (6 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                require mem[(32 * _481) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _481) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _481) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + mem[(32 * _481) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[(32 * _481) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _481) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + mem[(32 * _481) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
            else:
                mem[0] = 33
                mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 420] = address(stor33.field_0)
                idx = (32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 420
                s = 0
                while (32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + (32 * stor33.length) + 420 > idx + 32:
                    mem[idx + 32] = stor33[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(sub_0313e640Address)
                call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length, mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 420 len 32 * stor33.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _916 = mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224] <= 4294967296 and mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 224] = mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]
                _941 = mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + _916 + 224]
                mem[(32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + _916 + 224])] = mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + _916 + 256 len floor32(mem[(32 * _292) + (32 * _15) + (2 * ceil32(return_data.size)) + _916 + 224])]
                mem[(32 * _941) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _941) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] / 4
                mem[(32 * _941) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 292] = 0
                mem[(32 * _941) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 356] = this.address
                mem[(32 * _941) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                mem[(32 * _941) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 324] = 160
                mem[(32 * _941) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 420] = stor34.length
                if not stor34.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor34.length
                else:
                    mem[0] = 34
                    mem[(32 * _941) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 452] = address(stor34.field_0)
                    idx = (32 * _941) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 452
                    s = 0
                    while (32 * _941) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + (32 * stor34.length) + 452 > idx + 32:
                        mem[idx + 32] = stor34[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor34.length, mem[(32 * _941) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 452 len 32 * stor34.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _941) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _941) + (32 * _292) + (32 * _15) + (6 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                require mem[(32 * _941) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _941) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _941) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + mem[(32 * _941) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[(32 * _941) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _941) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + mem[(32 * _941) + (32 * _292) + (32 * _15) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
    else:
        mem[0] = 31
        mem[356] = address(stor31.field_0)
        idx = 356
        s = 0
        while (32 * stor31.length) + 356 > idx + 32:
            mem[idx + 32] = stor31[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(sub_50d7d613Address)
        call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, Mask(30, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor31.length, mem[356 len 32 * stor31.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 160
        require return_data.size >= 32
        _152 = mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
        require mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
        require mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
        require mem[mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160] <= 4294967296 and mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 160] = mem[mem[160 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 160]
        _158 = mem[_152 + 160]
        mem[ceil32(return_data.size) + 192 len floor32(mem[_152 + 160])] = mem[_152 + 192 len floor32(mem[_152 + 160])]
        mem[(32 * _158) + ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _158) + ceil32(return_data.size) + 196] = ext_call.return_data[0] / 4
        mem[(32 * _158) + ceil32(return_data.size) + 228] = 0
        mem[(32 * _158) + ceil32(return_data.size) + 292] = this.address
        mem[(32 * _158) + ceil32(return_data.size) + 324] = block.timestamp
        mem[(32 * _158) + ceil32(return_data.size) + 260] = 160
        mem[(32 * _158) + ceil32(return_data.size) + 356] = stor32.length
        if not stor32.length:
            require ext_code.size(sub_50d7d613Address)
            call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor32.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _158) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _158) + (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _290 = mem[(32 * _158) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(32 * _158) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[(32 * _158) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[(32 * _158) + ceil32(return_data.size) + mem[(32 * _158) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] <= 4294967296 and mem[(32 * _158) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _158) + ceil32(return_data.size) + mem[(32 * _158) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 32 <= return_data.size
            mem[(32 * _158) + (2 * ceil32(return_data.size)) + 192] = mem[(32 * _158) + ceil32(return_data.size) + mem[(32 * _158) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
            _298 = mem[(32 * _158) + ceil32(return_data.size) + _290 + 192]
            mem[(32 * _158) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[(32 * _158) + ceil32(return_data.size) + _290 + 192])] = mem[(32 * _158) + ceil32(return_data.size) + _290 + 224 len floor32(mem[(32 * _158) + ceil32(return_data.size) + _290 + 192])]
            mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] / 4
            mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 260] = 0
            mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 324] = this.address
            mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 356] = block.timestamp
            mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 292] = 160
            mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 388] = stor33.length
            if not stor33.length:
                require ext_code.size(sub_0313e640Address)
                call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _470 = mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224] <= 4294967296 and mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 224] = mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]
                _482 = mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + _470 + 224]
                mem[(32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + _470 + 224])] = mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + _470 + 256 len floor32(mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + _470 + 224])]
                mem[(32 * _482) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _482) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] / 4
                mem[(32 * _482) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 292] = 0
                mem[(32 * _482) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 356] = this.address
                mem[(32 * _482) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                mem[(32 * _482) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 324] = 160
                mem[(32 * _482) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 420] = stor34.length
                if not stor34.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor34.length
                else:
                    mem[0] = 34
                    mem[(32 * _482) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 452] = address(stor34.field_0)
                    idx = (32 * _482) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 452
                    s = 0
                    while (32 * _482) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + (32 * stor34.length) + 452 > idx + 32:
                        mem[idx + 32] = stor34[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor34.length, mem[(32 * _482) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 452 len 32 * stor34.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _482) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _482) + (32 * _298) + (32 * _158) + (6 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                require mem[(32 * _482) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _482) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _482) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + mem[(32 * _482) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[(32 * _482) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _482) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + mem[(32 * _482) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
            else:
                mem[0] = 33
                mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 420] = address(stor33.field_0)
                idx = (32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 420
                s = 0
                while (32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + (32 * stor33.length) + 420 > idx + 32:
                    mem[idx + 32] = stor33[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(sub_0313e640Address)
                call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length, mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 420 len 32 * stor33.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _919 = mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224] <= 4294967296 and mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 224] = mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]
                _943 = mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + _919 + 224]
                mem[(32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + _919 + 224])] = mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + _919 + 256 len floor32(mem[(32 * _298) + (32 * _158) + (2 * ceil32(return_data.size)) + _919 + 224])]
                mem[(32 * _943) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _943) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] / 4
                mem[(32 * _943) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 292] = 0
                mem[(32 * _943) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 356] = this.address
                mem[(32 * _943) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                mem[(32 * _943) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 324] = 160
                mem[(32 * _943) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 420] = stor34.length
                if not stor34.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor34.length
                else:
                    mem[0] = 34
                    mem[(32 * _943) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 452] = address(stor34.field_0)
                    idx = (32 * _943) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 452
                    s = 0
                    while (32 * _943) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + (32 * stor34.length) + 452 > idx + 32:
                        mem[idx + 32] = stor34[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor34.length, mem[(32 * _943) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 452 len 32 * stor34.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _943) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _943) + (32 * _298) + (32 * _158) + (6 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                require mem[(32 * _943) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _943) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _943) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + mem[(32 * _943) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[(32 * _943) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _943) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + mem[(32 * _943) + (32 * _298) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
        else:
            mem[0] = 32
            mem[(32 * _158) + ceil32(return_data.size) + 388] = address(stor32.field_0)
            idx = (32 * _158) + ceil32(return_data.size) + 388
            s = 0
            while (32 * _158) + ceil32(return_data.size) + (32 * stor32.length) + 388 > idx + 32:
                mem[idx + 32] = stor32[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(sub_50d7d613Address)
            call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor32.length, mem[(32 * _158) + ceil32(return_data.size) + 388 len 32 * stor32.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _158) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _158) + (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _668 = mem[(32 * _158) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(32 * _158) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[(32 * _158) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[(32 * _158) + ceil32(return_data.size) + mem[(32 * _158) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192] <= 4294967296 and mem[(32 * _158) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _158) + ceil32(return_data.size) + mem[(32 * _158) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]) + 32 <= return_data.size
            mem[(32 * _158) + (2 * ceil32(return_data.size)) + 192] = mem[(32 * _158) + ceil32(return_data.size) + mem[(32 * _158) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 192]
            _682 = mem[(32 * _158) + ceil32(return_data.size) + _668 + 192]
            mem[(32 * _158) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[(32 * _158) + ceil32(return_data.size) + _668 + 192])] = mem[(32 * _158) + ceil32(return_data.size) + _668 + 224 len floor32(mem[(32 * _158) + ceil32(return_data.size) + _668 + 192])]
            mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] / 4
            mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 260] = 0
            mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 324] = this.address
            mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 356] = block.timestamp
            mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 292] = 160
            mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 388] = stor33.length
            if not stor33.length:
                require ext_code.size(sub_0313e640Address)
                call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _936 = mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224] <= 4294967296 and mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 224] = mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]
                _961 = mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + _936 + 224]
                mem[(32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + _936 + 224])] = mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + _936 + 256 len floor32(mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + _936 + 224])]
                mem[(32 * _961) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _961) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] / 4
                mem[(32 * _961) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 292] = 0
                mem[(32 * _961) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 356] = this.address
                mem[(32 * _961) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                mem[(32 * _961) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 324] = 160
                mem[(32 * _961) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 420] = stor34.length
                if not stor34.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor34.length
                else:
                    mem[0] = 34
                    mem[(32 * _961) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 452] = address(stor34.field_0)
                    idx = (32 * _961) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 452
                    s = 0
                    while (32 * _961) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + (32 * stor34.length) + 452 > idx + 32:
                        mem[idx + 32] = stor34[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor34.length, mem[(32 * _961) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 452 len 32 * stor34.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _961) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _961) + (32 * _682) + (32 * _158) + (6 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                require mem[(32 * _961) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _961) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _961) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + mem[(32 * _961) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[(32 * _961) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _961) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + mem[(32 * _961) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
            else:
                mem[0] = 33
                mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 420] = address(stor33.field_0)
                idx = (32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 420
                s = 0
                while (32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + (32 * stor33.length) + 420 > idx + 32:
                    mem[idx + 32] = stor33[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(sub_0313e640Address)
                call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length, mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 420 len 32 * stor33.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _1504 = mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224] <= 4294967296 and mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]) + 32 <= return_data.size
                mem[(32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 224] = mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]
                _1531 = mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + _1504 + 224]
                mem[(32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + _1504 + 224])] = mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + _1504 + 256 len floor32(mem[(32 * _682) + (32 * _158) + (2 * ceil32(return_data.size)) + _1504 + 224])]
                mem[(32 * _1531) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _1531) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] / 4
                mem[(32 * _1531) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 292] = 0
                mem[(32 * _1531) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 356] = this.address
                mem[(32 * _1531) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 388] = block.timestamp
                mem[(32 * _1531) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 324] = 160
                mem[(32 * _1531) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 420] = stor34.length
                if not stor34.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor34.length
                else:
                    mem[0] = 34
                    mem[(32 * _1531) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 452] = address(stor34.field_0)
                    idx = (32 * _1531) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 452
                    s = 0
                    while (32 * _1531) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + (32 * stor34.length) + 452 > idx + 32:
                        mem[idx + 32] = stor34[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor34.length, mem[(32 * _1531) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 452 len 32 * stor34.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1531) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1531) + (32 * _682) + (32 * _158) + (6 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                require mem[(32 * _1531) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _1531) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _1531) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + mem[(32 * _1531) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[(32 * _1531) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _1531) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + mem[(32 * _1531) + (32 * _682) + (32 * _158) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
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
    require ext_code.size(sub_50d7d613Address)
    call sub_50d7d613Address.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args stor17, stor18, ext_call.return_data[0], ext_call.return_data[0], 1, 1, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_0313e640Address)
    call sub_0313e640Address.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args stor19, stor20, ext_call.return_data[0], ext_call.return_data[0], 1, 1, this.address, block.timestamp
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
    require sub_6a0f7701.length
    require poolIds.length
    require ext_code.size(address(sub_6a0f7701.field_0))
    call address(sub_6a0f7701.field_0).deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uint256(poolIds.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 1 < sub_6a0f7701.length
    require 1 < poolIds.length
    require ext_code.size(address(sub_6a0f7701.field_256))
    call address(sub_6a0f7701.field_256).deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uint256(poolIds.field_256), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
