contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#  - harvest()
#
uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address strategistAddress;
uint32 stor2;
address unirouterAddress;
uint32 stor3;
address vaultAddress;
uint256 stor3;
address sub_743b7c63Address;
mapping of uint8 stor5;
address wrappedAddress;
address tombAddress;
address sub_ee6822a7Address;
address wantAddress;
uint256 WITHDRAWAL_MAX;
uint256 WITHDRAW_FEE;
uint256 MAX_FEE;
uint256 CALL_FEE;
uint256 STRATEGIST_FEE;
uint256 FEE_BATCH;
uint256 PLATFORM_FEE;
uint32 stor17;
address stor17;
uint256 stor17;
uint256 poolId;
uint8 locked;
uint8 stor19; offset 8
address harvesterAddress; offset 16
uint256 stor19; offset 8
array of struct stor24;
array of struct stor26;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;

function FEE_BATCH() payable {
    return FEE_BATCH
}

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function unirouter() payable {
    return address(unirouterAddress)
}

function PLATFORM_FEE() payable {
    return PLATFORM_FEE
}

function poolId() payable {
    return poolId
}

function harvester() payable {
    return harvesterAddress
}

function wrapped() payable {
    return wrappedAddress
}

function WITHDRAWAL_MAX() payable {
    return WITHDRAWAL_MAX
}

function paused() payable {
    return bool(uint8(stor0.field_160))
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

function tomb() payable {
    return tombAddress
}

function locked() payable {
    return bool(locked)
}

function sub_ee6822a7(?) payable {
    return sub_ee6822a7Address
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

function sub_771db083(?) payable {
    return (stor28 + stor29 - block.timestamp)
}

function sub_90e93fdc(?) payable {
    return (stor27 + stor30 - block.timestamp)
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

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(vaultAddress) = arg1
}

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(unirouterAddress) = arg1
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
    require ext_code.size(address(stor17))
    staticcall address(stor17).0x70a08231 with:
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

function balanceOf() payable {
    require ext_code.size(address(stor17))
    staticcall address(stor17).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    require ext_code.size(address(stor17))
    staticcall address(stor17).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor17))
    call address(stor17).0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
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

function deposit() payable {
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    if uint8(stor19.field_8):
        require ext_code.size(address(stor17))
        call address(stor17).claimReward() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tombAddress)
        staticcall tombAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[100] = ext_call.return_data[0]
            mem[132] = 0
            mem[196] = this.address
            mem[228] = block.timestamp
            mem[164] = 160
            mem[260] = stor24.length
            if not stor24.length:
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, stor24.length
            else:
                mem[0] = 24
                mem[292] = address(stor24.field_0)
                idx = 292
                s = 0
                while (32 * stor24.length) + 292 > idx + 32:
                    mem[idx + 32] = stor24[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, stor24.length, mem[292 len 32 * stor24.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
        require ext_code.size(sub_ee6822a7Address)
        staticcall sub_ee6822a7Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor17))
        call address(stor17).stake(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor27 = block.timestamp
        Mask(248, 0, stor19.field_8) = 0
}

function panic() payable {
    if strategistAddress != msg.sender:
        revert with 0, '!auth'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
    if ext_code.size(sub_ee6822a7Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor17), uint32(stor17), 0
    mem[324 len 0] = 0
    call sub_ee6822a7Address with:
       funct uint32(stor17)
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor17), uint32(stor17), 0) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor17), uint32(stor17), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor17):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if ext_code.size(sub_ee6822a7Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, address(unirouterAddress), 0
        call sub_ee6822a7Address with:
           funct uint32(stor2)
             gas gas_remaining wei
            args 0, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor17), uint32(stor17), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor17):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        if ext_code.size(sub_ee6822a7Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0
        call sub_ee6822a7Address with:
           funct uint32(stor2)
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor17), uint32(stor17), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor17):
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
        else:
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function pause() payable {
    if strategistAddress != msg.sender:
        revert with 0, '!auth'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
    if ext_code.size(sub_ee6822a7Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor17), uint32(stor17), 0
    mem[324 len 0] = 0
    call sub_ee6822a7Address with:
       funct uint32(stor17)
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor17), uint32(stor17), 0) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor17), uint32(stor17), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor17):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if ext_code.size(sub_ee6822a7Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, address(unirouterAddress), 0
        call sub_ee6822a7Address with:
           funct uint32(stor2)
             gas gas_remaining wei
            args 0, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor17), uint32(stor17), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor17):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        if ext_code.size(sub_ee6822a7Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0
        call sub_ee6822a7Address with:
           funct uint32(stor2)
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor17), uint32(stor17), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor17):
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
        else:
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    if locked:
        revert with 0, 'Withdrawals locked'
    require ext_code.size(address(stor17))
    staticcall address(stor17).canWithdraw(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_ee6822a7Address)
    staticcall sub_ee6822a7Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg1:
        if tx.origin == owner:
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0 len 28]
            mem[324 len 0] = 0
            call wantAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
        else:
            if uint8(stor0.field_160):
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0 len 28]
                mem[324 len 0] = 0
                call wantAddress with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0]
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if not ext_call.return_data[0]:
                    if WITHDRAWAL_MAX <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require WITHDRAWAL_MAX
                    if 0 / WITHDRAWAL_MAX > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) >> 32
                    mem[452 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) << 224, mem[452 len 4]
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * WITHDRAW_FEE / ext_call.return_data[0] != WITHDRAW_FEE:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if WITHDRAWAL_MAX <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require WITHDRAWAL_MAX
                    if ext_call.return_data[0] * WITHDRAW_FEE / WITHDRAWAL_MAX > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * WITHDRAW_FEE / WITHDRAWAL_MAX)) >> 32
                    mem[452 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * WITHDRAW_FEE / WITHDRAWAL_MAX)) << 224, mem[452 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[420]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 499 len 22]
    else:
        if tx.origin == owner:
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1) >> 32
            mem[324 len 0] = 0
            call wantAddress with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), arg1
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
        else:
            if uint8(stor0.field_160):
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1) >> 32
                mem[324 len 0] = 0
                call wantAddress with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), arg1
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if not arg1:
                    if WITHDRAWAL_MAX <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require WITHDRAWAL_MAX
                    if 0 / WITHDRAWAL_MAX > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1 - (0 / WITHDRAWAL_MAX)) >> 32
                    mem[452 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1 - (0 / WITHDRAWAL_MAX)) << 224, mem[452 len 4]
                else:
                    require arg1
                    if arg1 * WITHDRAW_FEE / arg1 != WITHDRAW_FEE:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if WITHDRAWAL_MAX <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require WITHDRAWAL_MAX
                    if arg1 * WITHDRAW_FEE / WITHDRAWAL_MAX > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1 - (arg1 * WITHDRAW_FEE / WITHDRAWAL_MAX)) >> 32
                    mem[452 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1 - (arg1 * WITHDRAW_FEE / WITHDRAWAL_MAX)) << 224, mem[452 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[420]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 499 len 22]
}

function makeCustomTxn(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if strategistAddress != msg.sender:
        revert with 0, '!auth for custom txn'
    mem[132] = arg3
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg4:
        mem[96] = arg1
        mem[128] = arg2
        stor26.length = 2
        s = 0
        idx = 96
        while 160 > idx:
            stor26[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while stor26.length > idx:
            stor26[idx].field_0 = 0
            idx = idx + 1
            continue 
        if block.timestamp + 600 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        mem[160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[164] = arg4
        mem[196] = 0
        mem[260] = this.address
        mem[292] = block.timestamp + 600
        mem[228] = 160
        mem[324] = stor26.length
        if not stor26.length:
            require ext_code.size(arg3)
            call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, uint32(arg4), 0, 160, address(this.address), block.timestamp + 600, stor26.length
        else:
            mem[0] = 26
            mem[356] = address(stor26.field_0)
            idx = 356
            s = 0
            while (32 * stor26.length) + 356 > idx + 32:
                mem[idx + 32] = stor26[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(arg3)
            call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, uint32(arg4), 0, 160, address(this.address), block.timestamp + 600, stor26.length, mem[356 len 32 * stor26.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 160
        require return_data.size >= 32
        require mem[160 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
        require mem[160 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
        require mem[mem[160 len 4], Mask(224, 32, arg4) >> 32 + 160] <= 4294967296 and mem[160 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[160 len 4], Mask(224, 32, arg4) >> 32 + 160]) + 32 <= return_data.size
    else:
        mem[132] = arg3
        mem[164] = 0
        mem[96] = 68
        mem[132 len 28] = address(arg3) << 64
        mem[128 len 4] = approve(address arg1, uint256 arg2)
        mem[196] = 32
        mem[228] = 'SafeERC20: low-level call failed'
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0
        mem[352 len 4] = 0
        mem[324 len 0] = 0
        call arg1 with:
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0
            if not approve(address arg1, uint256 arg2), address(arg3) << 64:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            require ext_code.size(arg1)
            staticcall arg1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[382 len 10]
            mem[296] = arg3
            mem[328] = -1
            mem[260] = 68
            mem[292 len 4] = approve(address arg1, uint256 arg2)
            mem[360] = 32
            mem[392] = 'SafeERC20: low-level call failed'
            if ext_code.size(arg1) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = 0, address(arg3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[516 len 4] = 0
            call arg1 with:
                 gas gas_remaining wei
                args -1, 0, mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0
                if not approve(address arg1, uint256 arg2), address(arg3) << 64:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                mem[424] = arg1
                mem[456] = arg2
                stor26.length = 2
                s = 0
                idx = 424
                while 488 > idx:
                    stor26[s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while stor26.length > idx:
                    stor26[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[488] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[492] = arg4
                mem[524] = 0
                mem[588] = this.address
                mem[620] = block.timestamp + 600
                mem[556] = 160
                mem[652] = stor26.length
                if not stor26.length:
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor26.length
                else:
                    mem[0] = 26
                    mem[684] = address(stor26.field_0)
                    idx = 684
                    s = 0
                    while (32 * stor26.length) + 684 > idx + 32:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor26.length, mem[684 len 32 * stor26.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 488
                require return_data.size >= 32
                require mem[488 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[488 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[488 len 4], Mask(224, 32, arg4) >> 32 + 488] <= 4294967296 and mem[488 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[488 len 4], Mask(224, 32, arg4) >> 32 + 488]) + 32 <= return_data.size
            else:
                mem[424] = return_data.size
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                mem[ceil32(return_data.size) + 425] = arg1
                mem[ceil32(return_data.size) + 457] = arg2
                stor26.length = 2
                mem[0] = 26
                s = 0
                idx = ceil32(return_data.size) + 425
                while ceil32(return_data.size) + 489 > idx:
                    stor26[s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while stor26.length > idx:
                    stor26[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[ceil32(return_data.size) + 489] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 493] = arg4
                mem[ceil32(return_data.size) + 525] = 0
                mem[ceil32(return_data.size) + 589] = this.address
                mem[ceil32(return_data.size) + 621] = block.timestamp + 600
                mem[ceil32(return_data.size) + 557] = 160
                mem[ceil32(return_data.size) + 653] = stor26.length
                if not stor26.length:
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor26.length
                else:
                    mem[0] = 26
                    mem[ceil32(return_data.size) + 685] = address(stor26.field_0)
                    idx = ceil32(return_data.size) + 685
                    s = 0
                    while ceil32(return_data.size) + (32 * stor26.length) + 685 > idx + 32:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor26.length, mem[ceil32(return_data.size) + 685 len 32 * stor26.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 489
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + ceil32(return_data.size) + 489] <= 4294967296 and mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + ceil32(return_data.size) + 489]) + 32 <= return_data.size
        else:
            mem[260] = return_data.size
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            require ext_code.size(arg1)
            staticcall arg1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 383 len 10]
            mem[ceil32(return_data.size) + 297] = arg3
            mem[ceil32(return_data.size) + 329] = -1
            mem[ceil32(return_data.size) + 261] = 68
            mem[ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
            mem[ceil32(return_data.size) + 361] = 32
            mem[ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
            if ext_code.size(arg1) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, address(arg3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[ceil32(return_data.size) + 517 len 4] = 0
            call arg1 with:
                 gas gas_remaining wei
                args -1, 0, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(arg3) << 64, 0, 0
                if not approve(address arg1, uint256 arg2), address(arg3) << 64:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                mem[ceil32(return_data.size) + 425] = arg1
                mem[ceil32(return_data.size) + 457] = arg2
                stor26.length = 2
                mem[0] = 26
                s = 0
                idx = ceil32(return_data.size) + 425
                while ceil32(return_data.size) + 489 > idx:
                    stor26[s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while stor26.length > idx:
                    stor26[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[ceil32(return_data.size) + 489] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 493] = arg4
                mem[ceil32(return_data.size) + 525] = 0
                mem[ceil32(return_data.size) + 589] = this.address
                mem[ceil32(return_data.size) + 621] = block.timestamp + 600
                mem[ceil32(return_data.size) + 557] = 160
                mem[ceil32(return_data.size) + 653] = stor26.length
                if not stor26.length:
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor26.length
                else:
                    mem[0] = 26
                    mem[ceil32(return_data.size) + 685] = address(stor26.field_0)
                    idx = ceil32(return_data.size) + 685
                    s = 0
                    while ceil32(return_data.size) + (32 * stor26.length) + 685 > idx + 32:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor26.length, mem[ceil32(return_data.size) + 685 len 32 * stor26.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 489
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + ceil32(return_data.size) + 489] <= 4294967296 and mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + ceil32(return_data.size) + 489]) + 32 <= return_data.size
            else:
                mem[ceil32(return_data.size) + 425] = return_data.size
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                mem[(2 * ceil32(return_data.size)) + 426] = arg1
                mem[(2 * ceil32(return_data.size)) + 458] = arg2
                stor26.length = 2
                mem[0] = 26
                s = 0
                idx = (2 * ceil32(return_data.size)) + 426
                while (2 * ceil32(return_data.size)) + 490 > idx:
                    stor26[s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while stor26.length > idx:
                    stor26[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 
                                'SafeMath: addition overflow',
                                mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                mem[(2 * ceil32(return_data.size)) + 490] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 494] = arg4
                mem[(2 * ceil32(return_data.size)) + 526] = 0
                mem[(2 * ceil32(return_data.size)) + 590] = this.address
                mem[(2 * ceil32(return_data.size)) + 622] = block.timestamp + 600
                mem[(2 * ceil32(return_data.size)) + 558] = 160
                mem[(2 * ceil32(return_data.size)) + 654] = stor26.length
                if not stor26.length:
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor26.length, mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    mem[0] = 26
                    mem[(2 * ceil32(return_data.size)) + 686] = address(stor26.field_0)
                    idx = (2 * ceil32(return_data.size)) + 686
                    s = 0
                    while (2 * ceil32(return_data.size)) + (32 * stor26.length) + 686 > idx + 32:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor26.length, mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) + (32 * stor26.length) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 490 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 490
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 + (2 * ceil32(return_data.size)) + 490] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 + (2 * ceil32(return_data.size)) + 490]) + 32 <= return_data.size
}

function sub_a5a7f68a(?) payable {
    require ext_code.size(address(stor17))
    staticcall address(stor17).canWithdraw(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not locked:
            if stor28 + stor29 < stor28:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp > stor28 + stor29:
                if not locked:
                    locked = 1
                    Mask(248, 0, stor19.field_8) = 1
        if uint8(stor0.field_160):
            revert with 0, 'Pausable: paused'
        if uint8(stor19.field_8):
            require ext_code.size(address(stor17))
            call address(stor17).claimReward() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(tombAddress)
            staticcall tombAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[100] = ext_call.return_data[0]
                mem[132] = 0
                mem[196] = this.address
                mem[228] = block.timestamp
                mem[164] = 160
                mem[260] = stor24.length
                if not stor24.length:
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, stor24.length
                else:
                    mem[0] = 24
                    mem[292] = address(stor24.field_0)
                    idx = 292
                    s = 0
                    while (32 * stor24.length) + 292 > idx + 32:
                        mem[idx + 32] = stor24[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, stor24.length, mem[292 len 32 * stor24.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
            require ext_code.size(sub_ee6822a7Address)
            staticcall sub_ee6822a7Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor17))
            call address(stor17).stake(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor27 = block.timestamp
            Mask(248, 0, stor19.field_8) = 0
    else:
        if stor27 + stor30 < stor27:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp <= stor27 + stor30:
            if not locked:
                if stor28 + stor29 < stor28:
                    revert with 0, 'SafeMath: addition overflow'
                if block.timestamp > stor28 + stor29:
                    if not locked:
                        locked = 1
                        Mask(248, 0, stor19.field_8) = 1
            if uint8(stor0.field_160):
                revert with 0, 'Pausable: paused'
            if uint8(stor19.field_8):
                require ext_code.size(address(stor17))
                call address(stor17).claimReward() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tombAddress)
                staticcall tombAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = ext_call.return_data[0]
                    mem[132] = 0
                    mem[196] = this.address
                    mem[228] = block.timestamp
                    mem[164] = 160
                    mem[260] = stor24.length
                    if not stor24.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, stor24.length
                    else:
                        mem[0] = 24
                        mem[292] = address(stor24.field_0)
                        idx = 292
                        s = 0
                        while (32 * stor24.length) + 292 > idx + 32:
                            mem[idx + 32] = stor24[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, stor24.length, mem[292 len 32 * stor24.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                require ext_code.size(sub_ee6822a7Address)
                staticcall sub_ee6822a7Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor17))
                call address(stor17).stake(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor27 = block.timestamp
                Mask(248, 0, stor19.field_8) = 0
        else:
            if not locked:
                if stor28 + stor29 < stor28:
                    revert with 0, 'SafeMath: addition overflow'
                if block.timestamp > stor28 + stor29:
                    if not locked:
                        locked = 1
                        Mask(248, 0, stor19.field_8) = 1
                if uint8(stor0.field_160):
                    revert with 0, 'Pausable: paused'
                if uint8(stor19.field_8):
                    require ext_code.size(address(stor17))
                    call address(stor17).claimReward() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tombAddress)
                    staticcall tombAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0:
                        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[100] = ext_call.return_data[0]
                        mem[132] = 0
                        mem[196] = this.address
                        mem[228] = block.timestamp
                        mem[164] = 160
                        mem[260] = stor24.length
                        if not stor24.length:
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, stor24.length
                        else:
                            mem[0] = 24
                            mem[292] = address(stor24.field_0)
                            idx = 292
                            s = 0
                            while (32 * stor24.length) + 292 > idx + 32:
                                mem[idx + 32] = stor24[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, stor24.length, mem[292 len 32 * stor24.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                    require ext_code.size(sub_ee6822a7Address)
                    staticcall sub_ee6822a7Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor17))
                    call address(stor17).stake(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor27 = block.timestamp
                    Mask(248, 0, stor19.field_8) = 0
            else:
                require ext_code.size(address(stor17))
                staticcall address(stor17).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(tombAddress)
                    staticcall tombAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        stor28 = block.timestamp
                        locked = 0
                        if uint8(stor0.field_160):
                            revert with 0, 'Pausable: paused'
                        if uint8(stor19.field_8):
                            require ext_code.size(address(stor17))
                            call address(stor17).claimReward() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tombAddress)
                            staticcall tombAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[100] = ext_call.return_data[0]
                                mem[132] = 0
                                mem[196] = this.address
                                mem[228] = block.timestamp
                                mem[164] = 160
                                mem[260] = stor24.length
                                if not stor24.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, stor24.length
                                else:
                                    mem[0] = 24
                                    mem[292] = address(stor24.field_0)
                                    idx = 292
                                    s = 0
                                    while (32 * stor24.length) + 292 > idx + 32:
                                        mem[idx + 32] = stor24[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, stor24.length, mem[292 len 32 * stor24.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                            require ext_code.size(sub_ee6822a7Address)
                            staticcall sub_ee6822a7Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor17))
                            call address(stor17).stake(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor27 = block.timestamp
                            Mask(248, 0, stor19.field_8) = 0
                    else:
                        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[100] = ext_call.return_data[0]
                        mem[132] = 0
                        mem[196] = this.address
                        mem[228] = block.timestamp
                        mem[164] = 160
                        mem[260] = stor24.length
                        if not stor24.length:
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, stor24.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _90 = mem[96 len 4], ext_call.return_data[0 len 28]
                            require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                            _135 = mem[_90 + 96]
                            mem[ceil32(return_data.size) + 128 len floor32(mem[_90 + 96])] = mem[_90 + 128 len floor32(mem[_90 + 96])]
                            stor28 = block.timestamp
                            locked = 0
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            if uint8(stor19.field_8):
                                require ext_code.size(address(stor17))
                                call address(stor17).claimReward() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tombAddress)
                                staticcall tombAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    mem[(32 * _135) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _135) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                                    mem[(32 * _135) + ceil32(return_data.size) + 164] = 0
                                    mem[(32 * _135) + ceil32(return_data.size) + 228] = this.address
                                    mem[(32 * _135) + ceil32(return_data.size) + 260] = block.timestamp
                                    mem[(32 * _135) + ceil32(return_data.size) + 196] = 160
                                    mem[(32 * _135) + ceil32(return_data.size) + 292] = stor24.length
                                    if not stor24.length:
                                        require ext_code.size(address(unirouterAddress))
                                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor24.length
                                    else:
                                        mem[0] = 24
                                        mem[(32 * _135) + ceil32(return_data.size) + 324] = address(stor24.field_0)
                                        idx = (32 * _135) + ceil32(return_data.size) + 324
                                        s = 0
                                        while (32 * _135) + ceil32(return_data.size) + (32 * stor24.length) + 324 > idx + 32:
                                            mem[idx + 32] = stor24[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(address(unirouterAddress))
                                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor24.length, mem[(32 * _135) + ceil32(return_data.size) + 324 len 32 * stor24.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _135) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _135) + (2 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    require mem[(32 * _135) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _135) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[(32 * _135) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * _135) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _135) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _135) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * _135) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                                require ext_code.size(sub_ee6822a7Address)
                                staticcall sub_ee6822a7Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor17))
                                call address(stor17).stake(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor27 = block.timestamp
                                Mask(248, 0, stor19.field_8) = 0
                        else:
                            mem[0] = 24
                            mem[292] = address(stor24.field_0)
                            idx = 292
                            s = 0
                            while (32 * stor24.length) + 292 > idx + 32:
                                mem[idx + 32] = stor24[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, stor24.length, mem[292 len 32 * stor24.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _693 = mem[96 len 4], ext_call.return_data[0 len 28]
                            require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                            _733 = mem[_693 + 96]
                            mem[ceil32(return_data.size) + 128 len floor32(mem[_693 + 96])] = mem[_693 + 128 len floor32(mem[_693 + 96])]
                            stor28 = block.timestamp
                            locked = 0
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            if uint8(stor19.field_8):
                                require ext_code.size(address(stor17))
                                call address(stor17).claimReward() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tombAddress)
                                staticcall tombAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    mem[(32 * _733) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _733) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                                    mem[(32 * _733) + ceil32(return_data.size) + 164] = 0
                                    mem[(32 * _733) + ceil32(return_data.size) + 228] = this.address
                                    mem[(32 * _733) + ceil32(return_data.size) + 260] = block.timestamp
                                    mem[(32 * _733) + ceil32(return_data.size) + 196] = 160
                                    mem[(32 * _733) + ceil32(return_data.size) + 292] = stor24.length
                                    if not stor24.length:
                                        require ext_code.size(address(unirouterAddress))
                                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor24.length
                                    else:
                                        mem[0] = 24
                                        mem[(32 * _733) + ceil32(return_data.size) + 324] = address(stor24.field_0)
                                        idx = (32 * _733) + ceil32(return_data.size) + 324
                                        s = 0
                                        while (32 * _733) + ceil32(return_data.size) + (32 * stor24.length) + 324 > idx + 32:
                                            mem[idx + 32] = stor24[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(address(unirouterAddress))
                                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor24.length, mem[(32 * _733) + ceil32(return_data.size) + 324 len 32 * stor24.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _733) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _733) + (2 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    require mem[(32 * _733) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _733) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[(32 * _733) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * _733) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _733) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _733) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * _733) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                                require ext_code.size(sub_ee6822a7Address)
                                staticcall sub_ee6822a7Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor17))
                                call address(stor17).stake(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor27 = block.timestamp
                                Mask(248, 0, stor19.field_8) = 0
                else:
                    require ext_code.size(address(stor17))
                    staticcall address(stor17).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor17))
                    call address(stor17).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tombAddress)
                    staticcall tombAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        stor28 = block.timestamp
                        locked = 0
                        if uint8(stor0.field_160):
                            revert with 0, 'Pausable: paused'
                        if uint8(stor19.field_8):
                            require ext_code.size(address(stor17))
                            call address(stor17).claimReward() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tombAddress)
                            staticcall tombAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[100] = ext_call.return_data[0]
                                mem[132] = 0
                                mem[196] = this.address
                                mem[228] = block.timestamp
                                mem[164] = 160
                                mem[260] = stor24.length
                                if not stor24.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, stor24.length
                                else:
                                    mem[0] = 24
                                    mem[292] = address(stor24.field_0)
                                    idx = 292
                                    s = 0
                                    while (32 * stor24.length) + 292 > idx + 32:
                                        mem[idx + 32] = stor24[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, stor24.length, mem[292 len 32 * stor24.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                            require ext_code.size(sub_ee6822a7Address)
                            staticcall sub_ee6822a7Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor17))
                            call address(stor17).stake(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor27 = block.timestamp
                            Mask(248, 0, stor19.field_8) = 0
                    else:
                        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[100] = ext_call.return_data[0]
                        mem[132] = 0
                        mem[196] = this.address
                        mem[228] = block.timestamp
                        mem[164] = 160
                        mem[260] = stor24.length
                        if not stor24.length:
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, stor24.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _178 = mem[96 len 4], ext_call.return_data[0 len 28]
                            require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                            _238 = mem[_178 + 96]
                            mem[ceil32(return_data.size) + 128 len floor32(mem[_178 + 96])] = mem[_178 + 128 len floor32(mem[_178 + 96])]
                            stor28 = block.timestamp
                            locked = 0
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            if uint8(stor19.field_8):
                                require ext_code.size(address(stor17))
                                call address(stor17).claimReward() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tombAddress)
                                staticcall tombAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    mem[(32 * _238) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _238) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                                    mem[(32 * _238) + ceil32(return_data.size) + 164] = 0
                                    mem[(32 * _238) + ceil32(return_data.size) + 228] = this.address
                                    mem[(32 * _238) + ceil32(return_data.size) + 260] = block.timestamp
                                    mem[(32 * _238) + ceil32(return_data.size) + 196] = 160
                                    mem[(32 * _238) + ceil32(return_data.size) + 292] = stor24.length
                                    if not stor24.length:
                                        require ext_code.size(address(unirouterAddress))
                                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor24.length
                                    else:
                                        mem[0] = 24
                                        mem[(32 * _238) + ceil32(return_data.size) + 324] = address(stor24.field_0)
                                        idx = (32 * _238) + ceil32(return_data.size) + 324
                                        s = 0
                                        while (32 * _238) + ceil32(return_data.size) + (32 * stor24.length) + 324 > idx + 32:
                                            mem[idx + 32] = stor24[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(address(unirouterAddress))
                                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor24.length, mem[(32 * _238) + ceil32(return_data.size) + 324 len 32 * stor24.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _238) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _238) + (2 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    require mem[(32 * _238) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _238) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[(32 * _238) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * _238) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _238) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _238) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * _238) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                                require ext_code.size(sub_ee6822a7Address)
                                staticcall sub_ee6822a7Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor17))
                                call address(stor17).stake(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor27 = block.timestamp
                                Mask(248, 0, stor19.field_8) = 0
                        else:
                            mem[0] = 24
                            mem[292] = address(stor24.field_0)
                            idx = 292
                            s = 0
                            while (32 * stor24.length) + 292 > idx + 32:
                                mem[idx + 32] = stor24[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(address(unirouterAddress))
                            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[28 len 4], 0, 160, address(this.address), block.timestamp, stor24.length, mem[292 len 32 * stor24.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _699 = mem[96 len 4], ext_call.return_data[0 len 28]
                            require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
                            _738 = mem[_699 + 96]
                            mem[ceil32(return_data.size) + 128 len floor32(mem[_699 + 96])] = mem[_699 + 128 len floor32(mem[_699 + 96])]
                            stor28 = block.timestamp
                            locked = 0
                            if uint8(stor0.field_160):
                                revert with 0, 'Pausable: paused'
                            if uint8(stor19.field_8):
                                require ext_code.size(address(stor17))
                                call address(stor17).claimReward() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tombAddress)
                                staticcall tombAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 0:
                                    mem[(32 * _738) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _738) + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                                    mem[(32 * _738) + ceil32(return_data.size) + 164] = 0
                                    mem[(32 * _738) + ceil32(return_data.size) + 228] = this.address
                                    mem[(32 * _738) + ceil32(return_data.size) + 260] = block.timestamp
                                    mem[(32 * _738) + ceil32(return_data.size) + 196] = 160
                                    mem[(32 * _738) + ceil32(return_data.size) + 292] = stor24.length
                                    if not stor24.length:
                                        require ext_code.size(address(unirouterAddress))
                                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor24.length
                                    else:
                                        mem[0] = 24
                                        mem[(32 * _738) + ceil32(return_data.size) + 324] = address(stor24.field_0)
                                        idx = (32 * _738) + ceil32(return_data.size) + 324
                                        s = 0
                                        while (32 * _738) + ceil32(return_data.size) + (32 * stor24.length) + 324 > idx + 32:
                                            mem[idx + 32] = stor24[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        require ext_code.size(address(unirouterAddress))
                                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor24.length, mem[(32 * _738) + ceil32(return_data.size) + 324 len 32 * stor24.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _738) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _738) + (2 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    require mem[(32 * _738) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _738) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[(32 * _738) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * _738) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _738) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _738) + ceil32(return_data.size) + 128 len 4], ext_call.return_data[0 len 28] + (32 * _738) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
                                require ext_code.size(sub_ee6822a7Address)
                                staticcall sub_ee6822a7Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor17))
                                call address(stor17).stake(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor27 = block.timestamp
                                Mask(248, 0, stor19.field_8) = 0
}



}
