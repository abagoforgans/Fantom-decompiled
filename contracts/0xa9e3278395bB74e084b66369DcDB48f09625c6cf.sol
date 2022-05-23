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
address wrappedAddress;
array of address output;
address wantAddress;
address lpToken0Address;
address lpToken1Address;
address sub_225715a1Address;
address sub_57a1d5b4Address;
address stor16;
address stor17;
address stor18;
address stor19;
uint256 WITHDRAWAL_MAX;
uint256 WITHDRAW_FEE;
uint256 MAX_FEE;
uint256 CALL_FEE;
uint256 STRATEGIST_FEE;
uint256 FEE_BATCH;
uint256 PLATFORM_FEE;
array of address sub_6a0f7701;
array of struct stor30;
array of struct stor31;
array of struct stor32;
array of struct stor33;
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

function wrapped() payable {
    return wrappedAddress
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
    staticcall wantAddress.balanceOf(address arg1) with:
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
    staticcall wantAddress.balanceOf(address arg1) with:
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
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    call wantAddress.transfer(address arg1, uint256 arg2) with:
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
    staticcall wantAddress.balanceOf(address arg1) with:
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
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg1:
        if tx.origin == owner:
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
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
                mem[324 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
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
                    mem[452 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) >> 32
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
                    mem[452 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX)) >> 32
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
            mem[324 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
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
                mem[324 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
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
                if arg1:
                    if WITHDRAW_FEE * arg1 / arg1 != WITHDRAW_FEE:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not WITHDRAWAL_MAX:
                        revert with 0, 'SafeMath: division by zero'
                    if WITHDRAW_FEE * arg1 / WITHDRAWAL_MAX > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1 - (WITHDRAW_FEE * arg1 / WITHDRAWAL_MAX)) >> 32
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1 - (WITHDRAW_FEE * arg1 / WITHDRAWAL_MAX)) << 224, mem[516 len 4]
                else:
                    if not WITHDRAWAL_MAX:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / WITHDRAWAL_MAX > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1 - (0 / WITHDRAWAL_MAX)) >> 32
                    mem[516 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1 - (0 / WITHDRAWAL_MAX)) << 224, mem[516 len 4]
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

function sub_f4ee2328(?) payable {
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(wrappedAddress)
    staticcall wrappedAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    mem[160] = 26
    mem[192] = 'SafeMath: division by zero'
    mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[228] = ext_call.return_data[0] / 4
    mem[260] = 0
    mem[324] = this.address
    mem[356] = block.timestamp
    mem[292] = 160
    mem[388] = stor30.length
    if not stor30.length:
        require ext_code.size(sub_50d7d613Address)
        call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor30.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _13 = mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
        require mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
        require mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
        require mem[mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]
        _16 = mem[_13 + 224]
        mem[ceil32(return_data.size) + 256 len floor32(mem[_13 + 224])] = mem[_13 + 256 len floor32(mem[_13 + 224])]
        mem[(32 * _16) + ceil32(return_data.size) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _16) + ceil32(return_data.size) + 260] = ext_call.return_data[0] / 4
        mem[(32 * _16) + ceil32(return_data.size) + 292] = 0
        mem[(32 * _16) + ceil32(return_data.size) + 356] = this.address
        mem[(32 * _16) + ceil32(return_data.size) + 388] = block.timestamp
        mem[(32 * _16) + ceil32(return_data.size) + 324] = 160
        mem[(32 * _16) + ceil32(return_data.size) + 420] = stor31.length
        if not stor31.length:
            require ext_code.size(sub_50d7d613Address)
            call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor31.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _16) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _16) + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _71 = mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[(32 * _16) + ceil32(return_data.size) + mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _16) + ceil32(return_data.size) + mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
            mem[(32 * _16) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _16) + ceil32(return_data.size) + mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]
            _74 = mem[(32 * _16) + ceil32(return_data.size) + _71 + 256]
            mem[(32 * _16) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _16) + ceil32(return_data.size) + _71 + 256])] = mem[(32 * _16) + ceil32(return_data.size) + _71 + 288 len floor32(mem[(32 * _16) + ceil32(return_data.size) + _71 + 256])]
            mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] / 4
            mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 324] = 0
            mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 388] = this.address
            mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
            mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 356] = 160
            mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 452] = stor32.length
            if not stor32.length:
                require ext_code.size(sub_0313e640Address)
                call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor32.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _124 = mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288] <= 4294967296 and mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 288] = mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]
                _129 = mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + _124 + 288]
                mem[(32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + _124 + 288])] = mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + _124 + 320 len floor32(mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + _124 + 288])]
                mem[(32 * _129) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _129) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] / 4
                mem[(32 * _129) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 356] = 0
                mem[(32 * _129) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * _129) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 452] = block.timestamp
                mem[(32 * _129) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * _129) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 484] = stor33.length
                if not stor33.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length
                else:
                    mem[0] = 33
                    mem[(32 * _129) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 516] = address(stor33.field_0)
                    idx = (32 * _129) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 516
                    s = 0
                    while (32 * _129) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + (32 * stor33.length) + 516 > idx + 32:
                        mem[idx + 32] = stor33[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length, mem[(32 * _129) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 516 len 32 * stor33.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _129) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _129) + (32 * _74) + (32 * _16) + (6 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                require mem[(32 * _129) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _129) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _129) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + mem[(32 * _129) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320] <= 4294967296 and mem[(32 * _129) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _129) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + mem[(32 * _129) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320]) + 32 <= return_data.size
            else:
                mem[0] = 32
                mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 484] = address(stor32.field_0)
                idx = (32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 484
                s = 0
                while (32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + (32 * stor32.length) + 484 > idx + 32:
                    mem[idx + 32] = stor32[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(sub_0313e640Address)
                call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor32.length, mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 484 len 32 * stor32.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _349 = mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288] <= 4294967296 and mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 288] = mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]
                _362 = mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + _349 + 288]
                mem[(32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + _349 + 288])] = mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + _349 + 320 len floor32(mem[(32 * _74) + (32 * _16) + (2 * ceil32(return_data.size)) + _349 + 288])]
                mem[(32 * _362) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _362) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] / 4
                mem[(32 * _362) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 356] = 0
                mem[(32 * _362) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * _362) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 452] = block.timestamp
                mem[(32 * _362) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * _362) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 484] = stor33.length
                if not stor33.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length
                else:
                    mem[0] = 33
                    mem[(32 * _362) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 516] = address(stor33.field_0)
                    idx = (32 * _362) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 516
                    s = 0
                    while (32 * _362) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + (32 * stor33.length) + 516 > idx + 32:
                        mem[idx + 32] = stor33[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length, mem[(32 * _362) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 516 len 32 * stor33.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _362) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _362) + (32 * _74) + (32 * _16) + (6 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                require mem[(32 * _362) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _362) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _362) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + mem[(32 * _362) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320] <= 4294967296 and mem[(32 * _362) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _362) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + mem[(32 * _362) + (32 * _74) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320]) + 32 <= return_data.size
        else:
            mem[0] = 31
            mem[(32 * _16) + ceil32(return_data.size) + 452] = address(stor31.field_0)
            idx = (32 * _16) + ceil32(return_data.size) + 452
            s = 0
            while (32 * _16) + ceil32(return_data.size) + (32 * stor31.length) + 452 > idx + 32:
                mem[idx + 32] = stor31[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(sub_50d7d613Address)
            call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor31.length, mem[(32 * _16) + ceil32(return_data.size) + 452 len 32 * stor31.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _16) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _16) + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _220 = mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[(32 * _16) + ceil32(return_data.size) + mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _16) + ceil32(return_data.size) + mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
            mem[(32 * _16) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _16) + ceil32(return_data.size) + mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]
            _229 = mem[(32 * _16) + ceil32(return_data.size) + _220 + 256]
            mem[(32 * _16) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _16) + ceil32(return_data.size) + _220 + 256])] = mem[(32 * _16) + ceil32(return_data.size) + _220 + 288 len floor32(mem[(32 * _16) + ceil32(return_data.size) + _220 + 256])]
            mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] / 4
            mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 324] = 0
            mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 388] = this.address
            mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
            mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 356] = 160
            mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 452] = stor32.length
            if not stor32.length:
                require ext_code.size(sub_0313e640Address)
                call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor32.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _357 = mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288] <= 4294967296 and mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 288] = mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]
                _370 = mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + _357 + 288]
                mem[(32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + _357 + 288])] = mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + _357 + 320 len floor32(mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + _357 + 288])]
                mem[(32 * _370) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _370) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] / 4
                mem[(32 * _370) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 356] = 0
                mem[(32 * _370) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * _370) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 452] = block.timestamp
                mem[(32 * _370) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * _370) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 484] = stor33.length
                if not stor33.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length
                else:
                    mem[0] = 33
                    mem[(32 * _370) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 516] = address(stor33.field_0)
                    idx = (32 * _370) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 516
                    s = 0
                    while (32 * _370) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + (32 * stor33.length) + 516 > idx + 32:
                        mem[idx + 32] = stor33[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length, mem[(32 * _370) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 516 len 32 * stor33.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _370) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _370) + (32 * _229) + (32 * _16) + (6 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                require mem[(32 * _370) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _370) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _370) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + mem[(32 * _370) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320] <= 4294967296 and mem[(32 * _370) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _370) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + mem[(32 * _370) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320]) + 32 <= return_data.size
            else:
                mem[0] = 32
                mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 484] = address(stor32.field_0)
                idx = (32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 484
                s = 0
                while (32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + (32 * stor32.length) + 484 > idx + 32:
                    mem[idx + 32] = stor32[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(sub_0313e640Address)
                call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor32.length, mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 484 len 32 * stor32.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _661 = mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288] <= 4294967296 and mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 288] = mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]
                _686 = mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + _661 + 288]
                mem[(32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + _661 + 288])] = mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + _661 + 320 len floor32(mem[(32 * _229) + (32 * _16) + (2 * ceil32(return_data.size)) + _661 + 288])]
                mem[(32 * _686) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _686) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] / 4
                mem[(32 * _686) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 356] = 0
                mem[(32 * _686) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * _686) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 452] = block.timestamp
                mem[(32 * _686) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * _686) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 484] = stor33.length
                if not stor33.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length
                else:
                    mem[0] = 33
                    mem[(32 * _686) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 516] = address(stor33.field_0)
                    idx = (32 * _686) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 516
                    s = 0
                    while (32 * _686) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + (32 * stor33.length) + 516 > idx + 32:
                        mem[idx + 32] = stor33[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length, mem[(32 * _686) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 516 len 32 * stor33.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _686) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _686) + (32 * _229) + (32 * _16) + (6 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                require mem[(32 * _686) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _686) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _686) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + mem[(32 * _686) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320] <= 4294967296 and mem[(32 * _686) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _686) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + mem[(32 * _686) + (32 * _229) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320]) + 32 <= return_data.size
    else:
        mem[0] = 30
        mem[420] = address(stor30.field_0)
        idx = 420
        s = 0
        while (32 * stor30.length) + 420 > idx + 32:
            mem[idx + 32] = stor30[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(sub_50d7d613Address)
        call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor30.length, mem[420 len 32 * stor30.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _121 = mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
        require mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
        require mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
        require mem[mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]
        _127 = mem[_121 + 224]
        mem[ceil32(return_data.size) + 256 len floor32(mem[_121 + 224])] = mem[_121 + 256 len floor32(mem[_121 + 224])]
        mem[(32 * _127) + ceil32(return_data.size) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _127) + ceil32(return_data.size) + 260] = ext_call.return_data[0] / 4
        mem[(32 * _127) + ceil32(return_data.size) + 292] = 0
        mem[(32 * _127) + ceil32(return_data.size) + 356] = this.address
        mem[(32 * _127) + ceil32(return_data.size) + 388] = block.timestamp
        mem[(32 * _127) + ceil32(return_data.size) + 324] = 160
        mem[(32 * _127) + ceil32(return_data.size) + 420] = stor31.length
        if not stor31.length:
            require ext_code.size(sub_50d7d613Address)
            call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor31.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _127) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _127) + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _227 = mem[(32 * _127) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(32 * _127) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[(32 * _127) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[(32 * _127) + ceil32(return_data.size) + mem[(32 * _127) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[(32 * _127) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _127) + ceil32(return_data.size) + mem[(32 * _127) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
            mem[(32 * _127) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _127) + ceil32(return_data.size) + mem[(32 * _127) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]
            _235 = mem[(32 * _127) + ceil32(return_data.size) + _227 + 256]
            mem[(32 * _127) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _127) + ceil32(return_data.size) + _227 + 256])] = mem[(32 * _127) + ceil32(return_data.size) + _227 + 288 len floor32(mem[(32 * _127) + ceil32(return_data.size) + _227 + 256])]
            mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] / 4
            mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 324] = 0
            mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 388] = this.address
            mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
            mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 356] = 160
            mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 452] = stor32.length
            if not stor32.length:
                require ext_code.size(sub_0313e640Address)
                call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor32.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _359 = mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288] <= 4294967296 and mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 288] = mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]
                _371 = mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + _359 + 288]
                mem[(32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + _359 + 288])] = mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + _359 + 320 len floor32(mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + _359 + 288])]
                mem[(32 * _371) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _371) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] / 4
                mem[(32 * _371) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 356] = 0
                mem[(32 * _371) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * _371) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 452] = block.timestamp
                mem[(32 * _371) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * _371) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 484] = stor33.length
                if not stor33.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length
                else:
                    mem[0] = 33
                    mem[(32 * _371) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 516] = address(stor33.field_0)
                    idx = (32 * _371) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 516
                    s = 0
                    while (32 * _371) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + (32 * stor33.length) + 516 > idx + 32:
                        mem[idx + 32] = stor33[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length, mem[(32 * _371) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 516 len 32 * stor33.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _371) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _371) + (32 * _235) + (32 * _127) + (6 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                require mem[(32 * _371) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _371) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _371) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + mem[(32 * _371) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320] <= 4294967296 and mem[(32 * _371) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _371) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + mem[(32 * _371) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320]) + 32 <= return_data.size
            else:
                mem[0] = 32
                mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 484] = address(stor32.field_0)
                idx = (32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 484
                s = 0
                while (32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + (32 * stor32.length) + 484 > idx + 32:
                    mem[idx + 32] = stor32[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(sub_0313e640Address)
                call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor32.length, mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 484 len 32 * stor32.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _664 = mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288] <= 4294967296 and mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 288] = mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]
                _688 = mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + _664 + 288]
                mem[(32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + _664 + 288])] = mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + _664 + 320 len floor32(mem[(32 * _235) + (32 * _127) + (2 * ceil32(return_data.size)) + _664 + 288])]
                mem[(32 * _688) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _688) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] / 4
                mem[(32 * _688) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 356] = 0
                mem[(32 * _688) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * _688) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 452] = block.timestamp
                mem[(32 * _688) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * _688) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 484] = stor33.length
                if not stor33.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length
                else:
                    mem[0] = 33
                    mem[(32 * _688) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 516] = address(stor33.field_0)
                    idx = (32 * _688) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 516
                    s = 0
                    while (32 * _688) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + (32 * stor33.length) + 516 > idx + 32:
                        mem[idx + 32] = stor33[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length, mem[(32 * _688) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 516 len 32 * stor33.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _688) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _688) + (32 * _235) + (32 * _127) + (6 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                require mem[(32 * _688) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _688) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _688) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + mem[(32 * _688) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320] <= 4294967296 and mem[(32 * _688) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _688) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + mem[(32 * _688) + (32 * _235) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320]) + 32 <= return_data.size
        else:
            mem[0] = 31
            mem[(32 * _127) + ceil32(return_data.size) + 452] = address(stor31.field_0)
            idx = (32 * _127) + ceil32(return_data.size) + 452
            s = 0
            while (32 * _127) + ceil32(return_data.size) + (32 * stor31.length) + 452 > idx + 32:
                mem[idx + 32] = stor31[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(sub_50d7d613Address)
            call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor31.length, mem[(32 * _127) + ceil32(return_data.size) + 452 len 32 * stor31.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _127) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _127) + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _493 = mem[(32 * _127) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(32 * _127) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[(32 * _127) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[(32 * _127) + ceil32(return_data.size) + mem[(32 * _127) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[(32 * _127) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _127) + ceil32(return_data.size) + mem[(32 * _127) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
            mem[(32 * _127) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _127) + ceil32(return_data.size) + mem[(32 * _127) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]
            _507 = mem[(32 * _127) + ceil32(return_data.size) + _493 + 256]
            mem[(32 * _127) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _127) + ceil32(return_data.size) + _493 + 256])] = mem[(32 * _127) + ceil32(return_data.size) + _493 + 288 len floor32(mem[(32 * _127) + ceil32(return_data.size) + _493 + 256])]
            mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] / 4
            mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 324] = 0
            mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 388] = this.address
            mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
            mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 356] = 160
            mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 452] = stor32.length
            if not stor32.length:
                require ext_code.size(sub_0313e640Address)
                call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor32.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _681 = mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288] <= 4294967296 and mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 288] = mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]
                _706 = mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + _681 + 288]
                mem[(32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + _681 + 288])] = mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + _681 + 320 len floor32(mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + _681 + 288])]
                mem[(32 * _706) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _706) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] / 4
                mem[(32 * _706) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 356] = 0
                mem[(32 * _706) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * _706) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 452] = block.timestamp
                mem[(32 * _706) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * _706) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 484] = stor33.length
                if not stor33.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length
                else:
                    mem[0] = 33
                    mem[(32 * _706) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 516] = address(stor33.field_0)
                    idx = (32 * _706) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 516
                    s = 0
                    while (32 * _706) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + (32 * stor33.length) + 516 > idx + 32:
                        mem[idx + 32] = stor33[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length, mem[(32 * _706) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 516 len 32 * stor33.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _706) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _706) + (32 * _507) + (32 * _127) + (6 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                require mem[(32 * _706) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _706) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _706) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + mem[(32 * _706) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320] <= 4294967296 and mem[(32 * _706) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _706) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + mem[(32 * _706) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320]) + 32 <= return_data.size
            else:
                mem[0] = 32
                mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 484] = address(stor32.field_0)
                idx = (32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 484
                s = 0
                while (32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + (32 * stor32.length) + 484 > idx + 32:
                    mem[idx + 32] = stor32[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(sub_0313e640Address)
                call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor32.length, mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 484 len 32 * stor32.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _1041 = mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288] <= 4294967296 and mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 288] = mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]
                _1068 = mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + _1041 + 288]
                mem[(32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + _1041 + 288])] = mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + _1041 + 320 len floor32(mem[(32 * _507) + (32 * _127) + (2 * ceil32(return_data.size)) + _1041 + 288])]
                mem[(32 * _1068) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _1068) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] / 4
                mem[(32 * _1068) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 356] = 0
                mem[(32 * _1068) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * _1068) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 452] = block.timestamp
                mem[(32 * _1068) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * _1068) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 484] = stor33.length
                if not stor33.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length
                else:
                    mem[0] = 33
                    mem[(32 * _1068) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 516] = address(stor33.field_0)
                    idx = (32 * _1068) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 516
                    s = 0
                    while (32 * _1068) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + (32 * stor33.length) + 516 > idx + 32:
                        mem[idx + 32] = stor33[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length, mem[(32 * _1068) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 516 len 32 * stor33.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1068) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1068) + (32 * _507) + (32 * _127) + (6 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                require mem[(32 * _1068) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _1068) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _1068) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + mem[(32 * _1068) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320] <= 4294967296 and mem[(32 * _1068) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _1068) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + mem[(32 * _1068) + (32 * _507) + (32 * _127) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320]) + 32 <= return_data.size
    require ext_code.size(stor16)
    staticcall stor16.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor17)
    staticcall stor17.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor18)
    staticcall stor18.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor19)
    staticcall stor19.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_50d7d613Address)
    call sub_50d7d613Address.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args stor16, stor17, ext_call.return_data[0], ext_call.return_data[0], 1, 1, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_0313e640Address)
    call sub_0313e640Address.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args stor18, stor19, ext_call.return_data[0], ext_call.return_data[0], 1, 1, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}

function deposit() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(wrappedAddress)
    staticcall wrappedAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    mem[160] = 26
    mem[192] = 'SafeMath: division by zero'
    mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[228] = ext_call.return_data[0] / 4
    mem[260] = 0
    mem[324] = this.address
    mem[356] = block.timestamp
    mem[292] = 160
    mem[388] = stor30.length
    if not stor30.length:
        require ext_code.size(sub_50d7d613Address)
        call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor30.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _13 = mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
        require mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
        require mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
        require mem[mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]
        _16 = mem[_13 + 224]
        mem[ceil32(return_data.size) + 256 len floor32(mem[_13 + 224])] = mem[_13 + 256 len floor32(mem[_13 + 224])]
        mem[(32 * _16) + ceil32(return_data.size) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _16) + ceil32(return_data.size) + 260] = ext_call.return_data[0] / 4
        mem[(32 * _16) + ceil32(return_data.size) + 292] = 0
        mem[(32 * _16) + ceil32(return_data.size) + 356] = this.address
        mem[(32 * _16) + ceil32(return_data.size) + 388] = block.timestamp
        mem[(32 * _16) + ceil32(return_data.size) + 324] = 160
        mem[(32 * _16) + ceil32(return_data.size) + 420] = stor31.length
        if not stor31.length:
            require ext_code.size(sub_50d7d613Address)
            call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor31.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _16) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _16) + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _87 = mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[(32 * _16) + ceil32(return_data.size) + mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _16) + ceil32(return_data.size) + mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
            mem[(32 * _16) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _16) + ceil32(return_data.size) + mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]
            _90 = mem[(32 * _16) + ceil32(return_data.size) + _87 + 256]
            mem[(32 * _16) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _16) + ceil32(return_data.size) + _87 + 256])] = mem[(32 * _16) + ceil32(return_data.size) + _87 + 288 len floor32(mem[(32 * _16) + ceil32(return_data.size) + _87 + 256])]
            mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] / 4
            mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 324] = 0
            mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 388] = this.address
            mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
            mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 356] = 160
            mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 452] = stor32.length
            if not stor32.length:
                require ext_code.size(sub_0313e640Address)
                call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor32.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _156 = mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288] <= 4294967296 and mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 288] = mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]
                _161 = mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + _156 + 288]
                mem[(32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + _156 + 288])] = mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + _156 + 320 len floor32(mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + _156 + 288])]
                mem[(32 * _161) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _161) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] / 4
                mem[(32 * _161) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 356] = 0
                mem[(32 * _161) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * _161) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 452] = block.timestamp
                mem[(32 * _161) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * _161) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 484] = stor33.length
                if not stor33.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length
                else:
                    mem[0] = 33
                    mem[(32 * _161) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 516] = address(stor33.field_0)
                    idx = (32 * _161) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 516
                    s = 0
                    while (32 * _161) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + (32 * stor33.length) + 516 > idx + 32:
                        mem[idx + 32] = stor33[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length, mem[(32 * _161) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 516 len 32 * stor33.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _161) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _161) + (32 * _90) + (32 * _16) + (6 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                require mem[(32 * _161) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _161) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _161) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + mem[(32 * _161) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320] <= 4294967296 and mem[(32 * _161) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _161) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + mem[(32 * _161) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320]) + 32 <= return_data.size
            else:
                mem[0] = 32
                mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 484] = address(stor32.field_0)
                idx = (32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 484
                s = 0
                while (32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + (32 * stor32.length) + 484 > idx + 32:
                    mem[idx + 32] = stor32[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(sub_0313e640Address)
                call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor32.length, mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 484 len 32 * stor32.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _461 = mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288] <= 4294967296 and mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 288] = mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]
                _474 = mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + _461 + 288]
                mem[(32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + _461 + 288])] = mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + _461 + 320 len floor32(mem[(32 * _90) + (32 * _16) + (2 * ceil32(return_data.size)) + _461 + 288])]
                mem[(32 * _474) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _474) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] / 4
                mem[(32 * _474) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 356] = 0
                mem[(32 * _474) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * _474) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 452] = block.timestamp
                mem[(32 * _474) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * _474) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 484] = stor33.length
                if not stor33.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length
                else:
                    mem[0] = 33
                    mem[(32 * _474) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 516] = address(stor33.field_0)
                    idx = (32 * _474) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 516
                    s = 0
                    while (32 * _474) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + (32 * stor33.length) + 516 > idx + 32:
                        mem[idx + 32] = stor33[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length, mem[(32 * _474) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 516 len 32 * stor33.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _474) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _474) + (32 * _90) + (32 * _16) + (6 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                require mem[(32 * _474) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _474) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _474) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + mem[(32 * _474) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320] <= 4294967296 and mem[(32 * _474) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _474) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + mem[(32 * _474) + (32 * _90) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320]) + 32 <= return_data.size
        else:
            mem[0] = 31
            mem[(32 * _16) + ceil32(return_data.size) + 452] = address(stor31.field_0)
            idx = (32 * _16) + ceil32(return_data.size) + 452
            s = 0
            while (32 * _16) + ceil32(return_data.size) + (32 * stor31.length) + 452 > idx + 32:
                mem[idx + 32] = stor31[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(sub_50d7d613Address)
            call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor31.length, mem[(32 * _16) + ceil32(return_data.size) + 452 len 32 * stor31.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _16) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _16) + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _284 = mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[(32 * _16) + ceil32(return_data.size) + mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _16) + ceil32(return_data.size) + mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
            mem[(32 * _16) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _16) + ceil32(return_data.size) + mem[(32 * _16) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]
            _293 = mem[(32 * _16) + ceil32(return_data.size) + _284 + 256]
            mem[(32 * _16) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _16) + ceil32(return_data.size) + _284 + 256])] = mem[(32 * _16) + ceil32(return_data.size) + _284 + 288 len floor32(mem[(32 * _16) + ceil32(return_data.size) + _284 + 256])]
            mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] / 4
            mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 324] = 0
            mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 388] = this.address
            mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
            mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 356] = 160
            mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 452] = stor32.length
            if not stor32.length:
                require ext_code.size(sub_0313e640Address)
                call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor32.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _469 = mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288] <= 4294967296 and mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 288] = mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]
                _482 = mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + _469 + 288]
                mem[(32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + _469 + 288])] = mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + _469 + 320 len floor32(mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + _469 + 288])]
                mem[(32 * _482) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _482) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] / 4
                mem[(32 * _482) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 356] = 0
                mem[(32 * _482) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * _482) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 452] = block.timestamp
                mem[(32 * _482) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * _482) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 484] = stor33.length
                if not stor33.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length
                else:
                    mem[0] = 33
                    mem[(32 * _482) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 516] = address(stor33.field_0)
                    idx = (32 * _482) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 516
                    s = 0
                    while (32 * _482) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + (32 * stor33.length) + 516 > idx + 32:
                        mem[idx + 32] = stor33[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length, mem[(32 * _482) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 516 len 32 * stor33.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _482) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _482) + (32 * _293) + (32 * _16) + (6 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                require mem[(32 * _482) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _482) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _482) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + mem[(32 * _482) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320] <= 4294967296 and mem[(32 * _482) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _482) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + mem[(32 * _482) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320]) + 32 <= return_data.size
            else:
                mem[0] = 32
                mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 484] = address(stor32.field_0)
                idx = (32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 484
                s = 0
                while (32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + (32 * stor32.length) + 484 > idx + 32:
                    mem[idx + 32] = stor32[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(sub_0313e640Address)
                call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor32.length, mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 484 len 32 * stor32.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _917 = mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288] <= 4294967296 and mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 288] = mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]
                _942 = mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + _917 + 288]
                mem[(32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + _917 + 288])] = mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + _917 + 320 len floor32(mem[(32 * _293) + (32 * _16) + (2 * ceil32(return_data.size)) + _917 + 288])]
                mem[(32 * _942) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _942) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] / 4
                mem[(32 * _942) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 356] = 0
                mem[(32 * _942) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * _942) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 452] = block.timestamp
                mem[(32 * _942) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * _942) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 484] = stor33.length
                if not stor33.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length
                else:
                    mem[0] = 33
                    mem[(32 * _942) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 516] = address(stor33.field_0)
                    idx = (32 * _942) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 516
                    s = 0
                    while (32 * _942) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + (32 * stor33.length) + 516 > idx + 32:
                        mem[idx + 32] = stor33[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length, mem[(32 * _942) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 516 len 32 * stor33.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _942) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _942) + (32 * _293) + (32 * _16) + (6 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                require mem[(32 * _942) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _942) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _942) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + mem[(32 * _942) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320] <= 4294967296 and mem[(32 * _942) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _942) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + mem[(32 * _942) + (32 * _293) + (32 * _16) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320]) + 32 <= return_data.size
    else:
        mem[0] = 30
        mem[420] = address(stor30.field_0)
        idx = 420
        s = 0
        while (32 * stor30.length) + 420 > idx + 32:
            mem[idx + 32] = stor30[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(sub_50d7d613Address)
        call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor30.length, mem[420 len 32 * stor30.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _153 = mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
        require mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
        require mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
        require mem[mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 224]
        _159 = mem[_153 + 224]
        mem[ceil32(return_data.size) + 256 len floor32(mem[_153 + 224])] = mem[_153 + 256 len floor32(mem[_153 + 224])]
        mem[(32 * _159) + ceil32(return_data.size) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _159) + ceil32(return_data.size) + 260] = ext_call.return_data[0] / 4
        mem[(32 * _159) + ceil32(return_data.size) + 292] = 0
        mem[(32 * _159) + ceil32(return_data.size) + 356] = this.address
        mem[(32 * _159) + ceil32(return_data.size) + 388] = block.timestamp
        mem[(32 * _159) + ceil32(return_data.size) + 324] = 160
        mem[(32 * _159) + ceil32(return_data.size) + 420] = stor31.length
        if not stor31.length:
            require ext_code.size(sub_50d7d613Address)
            call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor31.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _159) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _159) + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _291 = mem[(32 * _159) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(32 * _159) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[(32 * _159) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[(32 * _159) + ceil32(return_data.size) + mem[(32 * _159) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[(32 * _159) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _159) + ceil32(return_data.size) + mem[(32 * _159) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
            mem[(32 * _159) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _159) + ceil32(return_data.size) + mem[(32 * _159) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]
            _299 = mem[(32 * _159) + ceil32(return_data.size) + _291 + 256]
            mem[(32 * _159) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _159) + ceil32(return_data.size) + _291 + 256])] = mem[(32 * _159) + ceil32(return_data.size) + _291 + 288 len floor32(mem[(32 * _159) + ceil32(return_data.size) + _291 + 256])]
            mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] / 4
            mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 324] = 0
            mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 388] = this.address
            mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
            mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 356] = 160
            mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 452] = stor32.length
            if not stor32.length:
                require ext_code.size(sub_0313e640Address)
                call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor32.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _471 = mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288] <= 4294967296 and mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 288] = mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]
                _483 = mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + _471 + 288]
                mem[(32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + _471 + 288])] = mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + _471 + 320 len floor32(mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + _471 + 288])]
                mem[(32 * _483) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _483) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] / 4
                mem[(32 * _483) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 356] = 0
                mem[(32 * _483) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * _483) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 452] = block.timestamp
                mem[(32 * _483) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * _483) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 484] = stor33.length
                if not stor33.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length
                else:
                    mem[0] = 33
                    mem[(32 * _483) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 516] = address(stor33.field_0)
                    idx = (32 * _483) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 516
                    s = 0
                    while (32 * _483) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + (32 * stor33.length) + 516 > idx + 32:
                        mem[idx + 32] = stor33[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length, mem[(32 * _483) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 516 len 32 * stor33.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _483) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _483) + (32 * _299) + (32 * _159) + (6 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                require mem[(32 * _483) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _483) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _483) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + mem[(32 * _483) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320] <= 4294967296 and mem[(32 * _483) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _483) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + mem[(32 * _483) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320]) + 32 <= return_data.size
            else:
                mem[0] = 32
                mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 484] = address(stor32.field_0)
                idx = (32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 484
                s = 0
                while (32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + (32 * stor32.length) + 484 > idx + 32:
                    mem[idx + 32] = stor32[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(sub_0313e640Address)
                call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor32.length, mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 484 len 32 * stor32.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _920 = mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288] <= 4294967296 and mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 288] = mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]
                _944 = mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + _920 + 288]
                mem[(32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + _920 + 288])] = mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + _920 + 320 len floor32(mem[(32 * _299) + (32 * _159) + (2 * ceil32(return_data.size)) + _920 + 288])]
                mem[(32 * _944) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _944) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] / 4
                mem[(32 * _944) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 356] = 0
                mem[(32 * _944) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * _944) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 452] = block.timestamp
                mem[(32 * _944) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * _944) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 484] = stor33.length
                if not stor33.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length
                else:
                    mem[0] = 33
                    mem[(32 * _944) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 516] = address(stor33.field_0)
                    idx = (32 * _944) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 516
                    s = 0
                    while (32 * _944) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + (32 * stor33.length) + 516 > idx + 32:
                        mem[idx + 32] = stor33[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length, mem[(32 * _944) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 516 len 32 * stor33.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _944) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _944) + (32 * _299) + (32 * _159) + (6 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                require mem[(32 * _944) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _944) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _944) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + mem[(32 * _944) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320] <= 4294967296 and mem[(32 * _944) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _944) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + mem[(32 * _944) + (32 * _299) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320]) + 32 <= return_data.size
        else:
            mem[0] = 31
            mem[(32 * _159) + ceil32(return_data.size) + 452] = address(stor31.field_0)
            idx = (32 * _159) + ceil32(return_data.size) + 452
            s = 0
            while (32 * _159) + ceil32(return_data.size) + (32 * stor31.length) + 452 > idx + 32:
                mem[idx + 32] = stor31[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(sub_50d7d613Address)
            call sub_50d7d613Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor31.length, mem[(32 * _159) + ceil32(return_data.size) + 452 len 32 * stor31.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _159) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _159) + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _669 = mem[(32 * _159) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
            require mem[(32 * _159) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
            require mem[(32 * _159) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
            require mem[(32 * _159) + ceil32(return_data.size) + mem[(32 * _159) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256] <= 4294967296 and mem[(32 * _159) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _159) + ceil32(return_data.size) + mem[(32 * _159) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]) + 32 <= return_data.size
            mem[(32 * _159) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _159) + ceil32(return_data.size) + mem[(32 * _159) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 256]
            _683 = mem[(32 * _159) + ceil32(return_data.size) + _669 + 256]
            mem[(32 * _159) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _159) + ceil32(return_data.size) + _669 + 256])] = mem[(32 * _159) + ceil32(return_data.size) + _669 + 288 len floor32(mem[(32 * _159) + ceil32(return_data.size) + _669 + 256])]
            mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] / 4
            mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 324] = 0
            mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 388] = this.address
            mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 420] = block.timestamp
            mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 356] = 160
            mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 452] = stor32.length
            if not stor32.length:
                require ext_code.size(sub_0313e640Address)
                call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor32.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _937 = mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288] <= 4294967296 and mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 288] = mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]
                _962 = mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + _937 + 288]
                mem[(32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + _937 + 288])] = mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + _937 + 320 len floor32(mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + _937 + 288])]
                mem[(32 * _962) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _962) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] / 4
                mem[(32 * _962) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 356] = 0
                mem[(32 * _962) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * _962) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 452] = block.timestamp
                mem[(32 * _962) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * _962) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 484] = stor33.length
                if not stor33.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length
                else:
                    mem[0] = 33
                    mem[(32 * _962) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 516] = address(stor33.field_0)
                    idx = (32 * _962) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 516
                    s = 0
                    while (32 * _962) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + (32 * stor33.length) + 516 > idx + 32:
                        mem[idx + 32] = stor33[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length, mem[(32 * _962) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 516 len 32 * stor33.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _962) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _962) + (32 * _683) + (32 * _159) + (6 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                require mem[(32 * _962) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _962) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _962) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + mem[(32 * _962) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320] <= 4294967296 and mem[(32 * _962) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _962) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + mem[(32 * _962) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320]) + 32 <= return_data.size
            else:
                mem[0] = 32
                mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 484] = address(stor32.field_0)
                idx = (32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 484
                s = 0
                while (32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + (32 * stor32.length) + 484 > idx + 32:
                    mem[idx + 32] = stor32[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(sub_0313e640Address)
                call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor32.length, mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 484 len 32 * stor32.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                _1505 = mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
                require mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288] <= 4294967296 and mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]) + 32 <= return_data.size
                mem[(32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 288] = mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 288]
                _1532 = mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + _1505 + 288]
                mem[(32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + _1505 + 288])] = mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + _1505 + 320 len floor32(mem[(32 * _683) + (32 * _159) + (2 * ceil32(return_data.size)) + _1505 + 288])]
                mem[(32 * _1532) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _1532) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] / 4
                mem[(32 * _1532) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 356] = 0
                mem[(32 * _1532) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * _1532) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 452] = block.timestamp
                mem[(32 * _1532) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * _1532) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 484] = stor33.length
                if not stor33.length:
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length
                else:
                    mem[0] = 33
                    mem[(32 * _1532) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 516] = address(stor33.field_0)
                    idx = (32 * _1532) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 516
                    s = 0
                    while (32 * _1532) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + (32 * stor33.length) + 516 > idx + 32:
                        mem[idx + 32] = stor33[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0313e640Address)
                    call sub_0313e640Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(254, 2, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, stor33.length, mem[(32 * _1532) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 516 len 32 * stor33.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1532) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1532) + (32 * _683) + (32 * _159) + (6 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                require mem[(32 * _1532) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= 4294967296
                require mem[(32 * _1532) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 32 <= return_data.size
                require mem[(32 * _1532) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + mem[(32 * _1532) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320] <= 4294967296 and mem[(32 * _1532) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + (32 * mem[(32 * _1532) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + mem[(32 * _1532) + (32 * _683) + (32 * _159) + (4 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 320]) + 32 <= return_data.size
    require ext_code.size(stor16)
    staticcall stor16.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor17)
    staticcall stor17.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor18)
    staticcall stor18.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor19)
    staticcall stor19.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_50d7d613Address)
    call sub_50d7d613Address.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args stor16, stor17, ext_call.return_data[0], ext_call.return_data[0], 1, 1, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_0313e640Address)
    call sub_0313e640Address.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args stor18, stor19, ext_call.return_data[0], ext_call.return_data[0], 1, 1, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_225715a1Address)
    staticcall sub_225715a1Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_57a1d5b4Address)
    staticcall sub_57a1d5b4Address.balanceOf(address arg1) with:
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
