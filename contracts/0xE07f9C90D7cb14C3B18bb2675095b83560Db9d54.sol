contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#  - panic()
#  - pause()
#  - chargeFees()
#
uint8 stor0; offset 160
address owner;
address strategistAddress;
address unirouterAddress;
uint32 stor3;
address vaultAddress;
uint256 stor3;
address sub_743b7c63Address;
mapping of uint8 stor5;
address wrappedAddress;
address outputAddress;
address wantAddress;
address usdcAddress;
address sub_4e1ea47cAddress;
address daiAddress;
uint256 WITHDRAWAL_MAX;
uint256 WITHDRAW_FEE;
uint256 MAX_FEE;
uint256 CALL_FEE;
uint256 STRATEGIST_FEE;
uint256 FEE_BATCH;
uint256 PLATFORM_FEE;
address masterchefAddress;
address sub_9b0af0d8Address;
uint256 poolId;
array of struct stor22;
address harvesterAddress;
array of struct outputToWrappedRoute;
array of struct stor26;
array of struct stor29;
array of struct stor30;
array of struct stor31;

function FEE_BATCH() payable {
    return FEE_BATCH
}

function outputToWrappedRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToWrappedRoute.length
    return outputToWrappedRoute[arg1].field_0
}

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function unirouter() payable {
    return unirouterAddress
}

function PLATFORM_FEE() payable {
    return PLATFORM_FEE
}

function poolId() payable {
    return poolId
}

function usdc() payable {
    return usdcAddress
}

function harvester() payable {
    return harvesterAddress
}

function sub_4e1ea47c(?) payable {
    return sub_4e1ea47cAddress
}

function wrapped() payable {
    return wrappedAddress
}

function WITHDRAWAL_MAX() payable {
    return WITHDRAWAL_MAX
}

function paused() payable {
    return bool(stor0)
}

function sub_743b7c63(?) payable {
    return sub_743b7c63Address
}

function STRATEGIST_FEE() payable {
    return STRATEGIST_FEE
}

function owner() payable {
    return owner
}

function CALL_FEE() payable {
    return CALL_FEE
}

function sub_9b0af0d8(?) payable {
    return sub_9b0af0d8Address
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function WITHDRAW_FEE() payable {
    return WITHDRAW_FEE
}

function MAX_FEE() payable {
    return MAX_FEE
}

function output() payable {
    return outputAddress
}

function dai() payable {
    return daiAddress
}

function masterchef() payable {
    return masterchefAddress
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
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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
        revert with 0, 'Ownable: caller is not the owner'
    unirouterAddress = arg1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(vaultAddress) = arg1
}

function addOrRemoveFromWhitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if strategistAddress != msg.sender:
        revert with 0, '!auth'
    stor5[address(arg1)] = uint8(arg2)
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

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if strategistAddress != msg.sender:
        revert with 0, '!auth'
    if arg3 >= 5000:
        revert with 0, 'withdrawal fee too high'
    CALL_FEE = arg1
    STRATEGIST_FEE = arg2
    WITHDRAW_FEE = arg3
    FEE_BATCH = arg4
}

function balanceOfPool() payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x93f1a40b with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function harvest() payable {
    if bool(stor5[address(msg.sender)]) != 1:
        revert with 0, 'You are not whitelisted'
    require ext_code.size(masterchefAddress)
    call masterchefAddress.harvest(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit StratHarvest(msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deposit() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(masterchefAddress)
    call masterchefAddress.0x8dbdbe6d with:
         gas gas_remaining wei
        args poolId, ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x93f1a40b with:
            gas gas_remaining wei
           args poolId, this.address
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

function sub_2894f8c5(?) payable {
    if strategistAddress != msg.sender:
        revert with 0, '!auth'
    require ext_code.size(wrappedAddress)
    staticcall wrappedAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor26.length:
        require ext_code.size(unirouterAddress)
        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, stor26.length
    else:
        mem[292] = address(stor26.field_0)
        idx = 292
        s = 0
        while (32 * stor26.length) + 292 > idx + 32:
            mem[idx + 32] = stor26[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(unirouterAddress)
        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, stor26.length, mem[292 len 32 * stor26.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2ee94bbf(?) payable {
    if strategistAddress != msg.sender:
        revert with 0, '!auth'
    require ext_code.size(outputAddress)
    staticcall outputAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not outputToWrappedRoute.length:
        require ext_code.size(unirouterAddress)
        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, outputToWrappedRoute.length
    else:
        mem[292] = address(outputToWrappedRoute.field_0)
        idx = 292
        s = 0
        while (32 * outputToWrappedRoute.length) + 292 > idx + 32:
            mem[idx + 32] = outputToWrappedRoute[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(unirouterAddress)
        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, outputToWrappedRoute.length, mem[292 len 32 * outputToWrappedRoute.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_42e99d1a(?) payable {
    if strategistAddress != msg.sender:
        revert with 0, '!auth'
    require ext_code.size(usdcAddress)
    staticcall usdcAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < stor22.length
    uint256(stor22.field_0) = ext_call.return_data[0]
    require ext_code.size(sub_4e1ea47cAddress)
    staticcall sub_4e1ea47cAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 < stor22.length
    uint256(stor22.field_256) = ext_call.return_data[0]
    require ext_code.size(daiAddress)
    staticcall daiAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 < stor22.length
    uint256(stor22.field_512) = ext_call.return_data[0]
    require 1 < stor22.length
    require 0 < stor22.length
    if uint256(stor22.field_0) >= uint256(stor22.field_256):
        require 1 < stor22.length
        require 2 < stor22.length
        if uint256(stor22.field_256) <= uint256(stor22.field_512):
            idx = 0
            while idx < stor22.length:
                mem[0] = 22
                stor22[idx].field_0 = uint256(stor22.field_256)
                idx = idx + 1
                continue 
        else:
            require 2 < stor22.length
            idx = 0
            while idx < stor22.length:
                mem[0] = 22
                stor22[idx].field_0 = uint256(stor22.field_512)
                idx = idx + 1
                continue 
    else:
        require 0 < stor22.length
        require 2 < stor22.length
        if uint256(stor22.field_0) <= uint256(stor22.field_512):
            idx = 0
            while idx < stor22.length:
                mem[0] = 22
                stor22[idx].field_0 = uint256(stor22.field_0)
                idx = idx + 1
                continue 
        else:
            require 2 < stor22.length
            idx = 0
            while idx < stor22.length:
                mem[0] = 22
                stor22[idx].field_0 = uint256(stor22.field_512)
                idx = idx + 1
                continue 
    if not stor22.length:
        require ext_code.size(sub_9b0af0d8Address)
        call sub_9b0af0d8Address.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args 0, 96, 0, block.timestamp, stor22.length
    else:
        mem[228] = uint256(stor22.field_0)
        idx = 228
        s = 0
        while (32 * stor22.length) + 228 > idx + 32:
            mem[idx + 32] = stor22[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(sub_9b0af0d8Address)
        call sub_9b0af0d8Address.addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args 0, 96, 0, block.timestamp, stor22.length, mem[228 len 32 * stor22.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function rebalance() payable {
    if strategistAddress != msg.sender:
        revert with 0, '!auth'
    require ext_code.size(usdcAddress)
    staticcall usdcAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_4e1ea47cAddress)
    staticcall sub_4e1ea47cAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(daiAddress)
    staticcall daiAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor29.length:
        require ext_code.size(unirouterAddress)
        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, stor29.length
    else:
        mem[292] = address(stor29.field_0)
        idx = 292
        s = 0
        while (32 * stor29.length) + 292 > idx + 32:
            mem[idx + 32] = stor29[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(unirouterAddress)
        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, stor29.length, mem[292 len 32 * stor29.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not stor30.length:
        require ext_code.size(unirouterAddress)
        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, stor30.length
    else:
        mem[292] = address(stor30.field_0)
        idx = 292
        s = 0
        while (32 * stor30.length) + 292 > idx + 32:
            mem[idx + 32] = stor30[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(unirouterAddress)
        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, stor30.length, mem[292 len 32 * stor30.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not stor31.length:
        require ext_code.size(unirouterAddress)
        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, stor31.length
    else:
        mem[292] = address(stor31.field_0)
        idx = 292
        s = 0
        while (32 * stor31.length) + 292 > idx + 32:
            mem[idx + 32] = stor31[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(unirouterAddress)
        call unirouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, stor31.length, mem[292 len 32 * stor31.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    if ext_call.return_data[0] > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(masterchefAddress)
    call masterchefAddress.withdraw(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args poolId, arg1 - ext_call.return_data[0], this.address
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
        if tx.origin == strategistAddress:
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0 len 28]
            call wantAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
        else:
            if stor0:
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0 len 28]
                call wantAddress with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
            else:
                if not ext_call.return_data[0]:
                    if WITHDRAWAL_MAX <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require WITHDRAWAL_MAX
                    if 0 / WITHDRAWAL_MAX > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) >> 32
                    call wantAddress with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) << 224, mem[516 len 4]
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * WITHDRAW_FEE / ext_call.return_data[0] != WITHDRAW_FEE:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if WITHDRAWAL_MAX <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require WITHDRAWAL_MAX
                    if ext_call.return_data[0] * WITHDRAW_FEE / WITHDRAWAL_MAX > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * WITHDRAW_FEE / WITHDRAWAL_MAX)) >> 32
                    call wantAddress with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * WITHDRAW_FEE / WITHDRAWAL_MAX)) << 224, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 563 len 22]
    else:
        if tx.origin == strategistAddress:
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1) >> 32
            call wantAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
        else:
            if stor0:
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1) >> 32
                call wantAddress with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
            else:
                if not arg1:
                    if WITHDRAWAL_MAX <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require WITHDRAWAL_MAX
                    if 0 / WITHDRAWAL_MAX > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1 - (0 / WITHDRAWAL_MAX)) >> 32
                    mem[516 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1 - (0 / WITHDRAWAL_MAX)) << 224, mem[516 len 4]
                else:
                    require arg1
                    if arg1 * WITHDRAW_FEE / arg1 != WITHDRAW_FEE:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if WITHDRAWAL_MAX <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require WITHDRAWAL_MAX
                    if arg1 * WITHDRAW_FEE / WITHDRAWAL_MAX > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1 - (arg1 * WITHDRAW_FEE / WITHDRAWAL_MAX)) >> 32
                    call wantAddress with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1 - (arg1 * WITHDRAW_FEE / WITHDRAWAL_MAX)) << 224, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 563 len 22]
}



}
