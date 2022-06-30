contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#  - panic()
#  - pause()
#
uint8 stor0; offset 160
address owner;
array of address stor1;
address unirouterAddress;
uint256 stor2;
uint32 stor3;
address vaultAddress;
uint256 stor3;
address sub_743b7c63Address;
mapping of uint8 stor5;
address wrappedAddress;
address outputAddress;
address wantAddress;
address lpToken0Address;
address lpToken1Address;
address poolTokenAddress;
array of address rewardTokens;
uint256 WITHDRAWAL_MAX;
uint256 WITHDRAW_FEE;
uint256 MAX_FEE;
uint256 CALL_FEE;
uint256 STRATEGIST_FEE;
uint256 FEE_BATCH;
uint256 PLATFORM_FEE;
address masterchefAddress;
address sub_f6bcd63aAddress;
address router1Address;
address sub_ed4ddfe3Address;
address stor24;
address stor25;
array of struct stor26;
array of uint256 stor27;
address harvesterAddress;
array of struct outputToWrappedRoute;
array of address outputToLp0Route;
array of address outputToLp1Route;
array of struct stor33;
array of address sub_a3e5be35;
array of address sub_329a597c;
array of address sub_d8bdf22a;
uint8 wrappedRoute;

function FEE_BATCH() payable {
    return FEE_BATCH
}

function router1() payable {
    return router1Address
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
    return stor1.length
}

function unirouter() payable {
    return address(unirouterAddress)
}

function wrappedRoute() payable {
    return bool(wrappedRoute)
}

function sub_329a597c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_329a597c.length
    return sub_329a597c[arg1]
}

function PLATFORM_FEE() payable {
    return PLATFORM_FEE
}

function outputToLp0Route(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToLp0Route.length
    return outputToLp0Route[arg1]
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
    return bool(stor0)
}

function lpToken0() payable {
    return lpToken0Address
}

function sub_743b7c63(?) payable {
    return sub_743b7c63Address
}

function rewardTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewardTokens.length
    return rewardTokens[arg1]
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
    return bool(stor5[arg1])
}

function WITHDRAW_FEE() payable {
    return WITHDRAW_FEE
}

function sub_a3e5be35(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_a3e5be35.length
    return sub_a3e5be35[arg1]
}

function MAX_FEE() payable {
    return MAX_FEE
}

function poolToken() payable {
    return poolTokenAddress
}

function sub_d8bdf22a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_d8bdf22a.length
    return sub_d8bdf22a[arg1]
}

function sub_ed4ddfe3(?) payable {
    return sub_ed4ddfe3Address
}

function output() payable {
    return outputAddress
}

function sub_f6bcd63a(?) payable {
    return sub_f6bcd63aAddress
}

function masterchef() payable {
    return masterchefAddress
}

function vault() payable {
    return address(vaultAddress)
}

function outputToLp1Route(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToLp1Route.length
    return outputToLp1Route[arg1]
}

function beforeDeposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1.length != msg.sender:
        revert with 0, '!strategist'
    stor1.length = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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
    if stor1.length != msg.sender:
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
    if stor1.length != msg.sender:
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
    staticcall masterchefAddress.userInfo(address arg1, address arg2) with:
            gas gas_remaining wei
           args poolTokenAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
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
    call masterchefAddress.deposit(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args poolTokenAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(address arg1, address arg2) with:
            gas gas_remaining wei
           args poolTokenAddress, this.address
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

function sub_614b4c21(?) payable {
    require ext_code.size(stor25)
    staticcall stor25.claimableRewards(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 448
    require 0 < stor27.length
    require 1 < stor27.length
    require 2 < stor27.length
    require 3 < stor27.length
    require 4 < stor27.length
    require 5 < stor27.length
    require 6 < stor27.length
    uint256(stor27.field_1536) = ext_call.return_data[416]
    uint256(stor27.field_1280) = ext_call.return_data[352]
    uint256(stor27.field_1024) = ext_call.return_data[288]
    uint256(stor27.field_768) = ext_call.return_data[224]
    uint256(stor27.field_512) = ext_call.return_data[160]
    uint256(stor27.field_256) = ext_call.return_data[96]
    uint256(stor27.field_0) = ext_call.return_data[32]
}

function retireStrat() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(masterchefAddress)
    call masterchefAddress.emergencyWithdraw(address arg1) with:
         gas gas_remaining wei
        args poolTokenAddress
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

function claimReward() payable {
    if stor1.length != msg.sender:
        revert with 0, '!auth'
    if not stor26.length:
        require ext_code.size(masterchefAddress)
        call masterchefAddress.claim(address arg1, address[] arg2) with:
             gas gas_remaining wei
            args address(this.address), 64, stor26.length
    else:
        mem[196] = address(stor26.field_0)
        idx = 196
        s = 0
        while (32 * stor26.length) + 196 > idx + 32:
            mem[idx + 32] = stor26[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(masterchefAddress)
        call masterchefAddress.claim(address arg1, address[] arg2) with:
             gas gas_remaining wei
            args address(this.address), Array(len=stor26.length, data=mem[196 len 32 * stor26.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function harvest() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    if bool(stor5[address(msg.sender)]) != 1:
        revert with 0, 'You are not whitelisted'
    if not stor26.length:
        require ext_code.size(masterchefAddress)
        call masterchefAddress.claim(address arg1, address[] arg2) with:
             gas gas_remaining wei
            args address(this.address), 64, stor26.length
    else:
        mem[196] = address(stor26.field_0)
        idx = 196
        s = 0
        while (32 * stor26.length) + 196 > idx + 32:
            mem[idx + 32] = stor26[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(masterchefAddress)
        call masterchefAddress.claim(address arg1, address[] arg2) with:
             gas gas_remaining wei
            args address(this.address), Array(len=stor26.length, data=mem[196 len 32 * stor26.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor25)
    call stor25.getReward() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor25)
    call stor25.exit() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor25)
    staticcall stor25.claimableRewards(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 448
    require 0 < stor27.length
    require 1 < stor27.length
    require 2 < stor27.length
    require 3 < stor27.length
    require 4 < stor27.length
    require 5 < stor27.length
    require 6 < stor27.length
    uint256(stor27.field_1536) = ext_call.return_data[416]
    uint256(stor27.field_1280) = ext_call.return_data[352]
    uint256(stor27.field_1024) = ext_call.return_data[288]
    uint256(stor27.field_768) = ext_call.return_data[224]
    uint256(stor27.field_512) = ext_call.return_data[160]
    uint256(stor27.field_256) = ext_call.return_data[96]
    uint256(stor27.field_0) = ext_call.return_data[32]
    emit StratHarvest(msg.sender);
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
    call masterchefAddress.withdraw(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args poolTokenAddress, arg1 - ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > arg1:
        if tx.origin == owner:
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1) >> 32
            mem[388 len 0] = 0
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
                mem[388 len 0] = 0
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
    else:
        if tx.origin == owner:
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
                    mem[516 len 0] = 0
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
                    mem[516 len 0] = 0
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
}

function makeCustomTxn(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if stor1.length != msg.sender:
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
        stor33.length = 2
        s = 0
        idx = 96
        while 160 > idx:
            stor33[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while stor33.length > idx:
            stor33[idx].field_0 = 0
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
        mem[324] = stor33.length
        if not stor33.length:
            require ext_code.size(arg3)
            call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, uint32(arg4), 0, 160, address(this.address), block.timestamp + 600, stor33.length
        else:
            mem[0] = 33
            mem[356] = address(stor33.field_0)
            idx = 356
            s = 0
            while (32 * stor33.length) + 356 > idx + 32:
                mem[idx + 32] = stor33[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(arg3)
            call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, uint32(arg4), 0, 160, address(this.address), block.timestamp + 600, stor33.length, mem[356 len 32 * stor33.length]
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
                stor33.length = 2
                mem[0] = 33
                s = 0
                idx = 424
                while 488 > idx:
                    stor33[s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while stor33.length > idx:
                    stor33[idx].field_0 = 0
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
                mem[652] = stor33.length
                if not stor33.length:
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor33.length
                else:
                    mem[0] = 33
                    mem[684] = address(stor33.field_0)
                    idx = 684
                    s = 0
                    while (32 * stor33.length) + 684 > idx + 32:
                        mem[idx + 32] = stor33[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor33.length, mem[684 len 32 * stor33.length]
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
                stor33.length = 2
                mem[0] = 33
                s = 0
                idx = ceil32(return_data.size) + 425
                while ceil32(return_data.size) + 489 > idx:
                    stor33[s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while stor33.length > idx:
                    stor33[idx].field_0 = 0
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
                mem[ceil32(return_data.size) + 653] = stor33.length
                if not stor33.length:
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor33.length
                else:
                    mem[0] = 33
                    mem[ceil32(return_data.size) + 685] = address(stor33.field_0)
                    idx = ceil32(return_data.size) + 685
                    s = 0
                    while ceil32(return_data.size) + (32 * stor33.length) + 685 > idx + 32:
                        mem[idx + 32] = stor33[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor33.length, mem[ceil32(return_data.size) + 685 len 32 * stor33.length]
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
            if return_data.size <= 0:
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
                    stor33.length = 2
                    mem[0] = 33
                    s = 0
                    idx = ceil32(return_data.size) + 425
                    while ceil32(return_data.size) + 489 > idx:
                        stor33[s].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while stor33.length > idx:
                        stor33[idx].field_0 = 0
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
                    mem[ceil32(return_data.size) + 653] = stor33.length
                    if not stor33.length:
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), block.timestamp + 600, stor33.length
                    else:
                        mem[0] = 33
                        mem[ceil32(return_data.size) + 685] = address(stor33.field_0)
                        idx = ceil32(return_data.size) + 685
                        s = 0
                        while ceil32(return_data.size) + (32 * stor33.length) + 685 > idx + 32:
                            mem[idx + 32] = stor33[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), block.timestamp + 600, stor33.length, mem[ceil32(return_data.size) + 685 len 32 * stor33.length]
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
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                    mem[(2 * ceil32(return_data.size)) + 426] = arg1
                    mem[(2 * ceil32(return_data.size)) + 458] = arg2
                    stor33.length = 2
                    mem[0] = 33
                    s = 0
                    idx = (2 * ceil32(return_data.size)) + 426
                    while (2 * ceil32(return_data.size)) + 490 > idx:
                        stor33[s].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while stor33.length > idx:
                        stor33[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(2 * ceil32(return_data.size)) + 490] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 494] = arg4
                    mem[(2 * ceil32(return_data.size)) + 526] = 0
                    mem[(2 * ceil32(return_data.size)) + 590] = this.address
                    mem[(2 * ceil32(return_data.size)) + 622] = block.timestamp + 600
                    mem[(2 * ceil32(return_data.size)) + 558] = 160
                    mem[(2 * ceil32(return_data.size)) + 654] = stor33.length
                    if not stor33.length:
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), block.timestamp + 600, stor33.length
                    else:
                        mem[0] = 33
                        mem[(2 * ceil32(return_data.size)) + 686] = address(stor33.field_0)
                        idx = (2 * ceil32(return_data.size)) + 686
                        s = 0
                        while (2 * ceil32(return_data.size)) + (32 * stor33.length) + 686 > idx + 32:
                            mem[idx + 32] = stor33[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), block.timestamp + 600, stor33.length, mem[(2 * ceil32(return_data.size)) + 686 len 32 * stor33.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 490 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 490
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 + (2 * ceil32(return_data.size)) + 490] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 + (2 * ceil32(return_data.size)) + 490]) + 32 <= return_data.size
            else:
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
                    stor33.length = 2
                    mem[0] = 33
                    s = 0
                    idx = ceil32(return_data.size) + 425
                    while ceil32(return_data.size) + 489 > idx:
                        stor33[s].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while stor33.length > idx:
                        stor33[idx].field_0 = 0
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
                    mem[ceil32(return_data.size) + 653] = stor33.length
                    if not stor33.length:
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), block.timestamp + 600, stor33.length
                    else:
                        mem[0] = 33
                        mem[ceil32(return_data.size) + 685] = address(stor33.field_0)
                        idx = ceil32(return_data.size) + 685
                        s = 0
                        while ceil32(return_data.size) + (32 * stor33.length) + 685 > idx + 32:
                            mem[idx + 32] = stor33[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), block.timestamp + 600, stor33.length, mem[ceil32(return_data.size) + 685 len 32 * stor33.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 489
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + ceil32(return_data.size) + 489] <= 4294967296 and mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + ceil32(return_data.size) + 489]) + 32 <= return_data.size
                else:
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                    mem[(2 * ceil32(return_data.size)) + 426] = arg1
                    mem[(2 * ceil32(return_data.size)) + 458] = arg2
                    stor33.length = 2
                    s = 0
                    idx = (2 * ceil32(return_data.size)) + 426
                    while (2 * ceil32(return_data.size)) + 490 > idx:
                        stor33[s].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while stor33.length > idx:
                        stor33[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(2 * ceil32(return_data.size)) + 490] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 494] = arg4
                    mem[(2 * ceil32(return_data.size)) + 526] = 0
                    mem[(2 * ceil32(return_data.size)) + 590] = this.address
                    mem[(2 * ceil32(return_data.size)) + 622] = block.timestamp + 600
                    mem[(2 * ceil32(return_data.size)) + 558] = 160
                    mem[(2 * ceil32(return_data.size)) + 654] = stor33.length
                    if not stor33.length:
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), block.timestamp + 600, stor33.length
                    else:
                        mem[0] = 33
                        mem[(2 * ceil32(return_data.size)) + 686] = address(stor33.field_0)
                        idx = (2 * ceil32(return_data.size)) + 686
                        s = 0
                        while (2 * ceil32(return_data.size)) + (32 * stor33.length) + 686 > idx + 32:
                            mem[idx + 32] = stor33[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), block.timestamp + 600, stor33.length, mem[(2 * ceil32(return_data.size)) + 686 len 32 * stor33.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 490 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 490
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 + (2 * ceil32(return_data.size)) + 490] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 + (2 * ceil32(return_data.size)) + 490]) + 32 <= return_data.size
}

function sub_76ac641f(?) payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < stor27.length:
        mem[0] = 27
        if uint256(stor27[idx].field_0) > 0:
            require idx < rewardTokens.length
            require idx < stor27.length
            mem[mem[64] + 36] = uint256(stor27[idx].field_0)
            mem[mem[64] + 68] = this.address
            require ext_code.size(stor24)
            call stor24.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args rewardTokens[idx], uint256(stor27[idx].field_0), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < rewardTokens.length
            mem[mem[64] + 4] = this.address
            require ext_code.size(rewardTokens[idx])
            staticcall rewardTokens[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _438 = mem[64]
            mem[64] = mem[64] + 64
            require idx < rewardTokens.length
            mem[0] = 12
            mem[_438] = rewardTokens[idx]
            mem[_438 + 32] = wrappedAddress
            stor33.length = 2
            mem[0] = 33
            t = sha3(33)
            s = _438
            while _438 + 64 > s:
                stor[t] = mem[s + 12 len 20]
                t = t + 1
                s = s + 32
                continue 
            s = sha3(33) + 2
            while sha3(33) + stor33.length > s:
                stor[s] = 0
                s = s + 1
                continue 
            require idx < rewardTokens.length
            mem[0] = 12
            mem[mem[64] + 4] = this.address
            require ext_code.size(rewardTokens[idx])
            staticcall rewardTokens[idx].0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(unirouterAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                _1232 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = 0
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = stor33.length
                if not stor33.length:
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1238 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1240 = mem[_1238]
                    require mem[_1238] <= 4294967296
                    require mem[_1238] + 32 <= return_data.size
                    require mem[mem[_1238] + _1238] <= 4294967296 and mem[_1238] + (32 * mem[mem[_1238] + _1238]) + 32 <= return_data.size
                    mem[_1238 + ceil32(return_data.size)] = mem[mem[_1238] + _1238]
                    _1243 = mem[_1240 + _1238]
                    s = 0
                    while s < 32 * _1243:
                        mem[_1238 + ceil32(return_data.size) + s + 32] = mem[_1240 + _1238 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _1243) + _1238 + ceil32(return_data.size) + 32
                else:
                    mem[0] = 33
                    mem[mem[64] + 196] = address(stor33.field_0)
                    s = mem[64] + 196
                    t = sha3(33)
                    while mem[64] + (32 * stor33.length) + 196 > s + 32:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1232 + (32 * stor33.length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2000 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2009 = mem[_2000]
                    require mem[_2000] <= 4294967296
                    require mem[_2000] + 32 <= return_data.size
                    require mem[mem[_2000] + _2000] <= 4294967296 and mem[_2000] + (32 * mem[mem[_2000] + _2000]) + 32 <= return_data.size
                    mem[_2000 + ceil32(return_data.size)] = mem[mem[_2000] + _2000]
                    _2054 = mem[_2009 + _2000]
                    s = 0
                    while s < 32 * _2054:
                        mem[_2000 + ceil32(return_data.size) + s + 32] = mem[_2009 + _2000 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _2054) + _2000 + ceil32(return_data.size) + 32
            else:
                _1235 = mem[64]
                mem[mem[64] + 36] = address(unirouterAddress)
                mem[mem[64] + 68] = 0
                _1236 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1236 + 32] = mem[_1236 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                mem[64] = _1235 + 164
                mem[_1235 + 100] = 32
                mem[_1235 + 132] = 'SafeERC20: low-level call failed'
                if ext_code.size(rewardTokens[idx]) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1245 = mem[_1236]
                t = _1236 + 32
                u = _1235 + 164
                s = mem[_1236]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_1235 + floor32(mem[_1236]) + 164] = mem[_1236 + -(mem[_1236] % 32) + floor32(mem[_1236]) + 64 len mem[_1236] % 32] or Mask(8 * -(mem[_1236] % 32) + 32, -(8 * -(mem[_1236] % 32) + 32) + 256, mem[_1235 + floor32(mem[_1236]) + 164])
                call rewardTokens[idx].mem[_1235 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_1235 + 168 len _1245 - 4]
                if return_data.size:
                    mem[_1235 + 164] = return_data.size
                    mem[_1235 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1235 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1235 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1235 + ceil32(return_data.size) + idx + 233] = mem[_1235 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1235 + ceil32(return_data.size) + 233]
                    if return_data.size <= 0:
                        require ext_code.size(rewardTokens[idx])
                        staticcall rewardTokens[idx].0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(unirouterAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[_1235 + ceil32(return_data.size) + 287 len 10]
                        mem[_1235 + ceil32(return_data.size) + 201] = address(unirouterAddress)
                        mem[_1235 + ceil32(return_data.size) + 233] = -1
                        mem[_1235 + ceil32(return_data.size) + 165] = 68
                        mem[_1235 + ceil32(return_data.size) + 197] = Mask(224, 0, stor2) or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                        mem[_1235 + ceil32(return_data.size) + 265] = 32
                        mem[_1235 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if ext_code.size(rewardTokens[idx]) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        t = _1235 + ceil32(return_data.size) + 197
                        u = _1235 + ceil32(return_data.size) + 329
                        s = 68
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1235 + ceil32(return_data.size) + 393] = 0 or Mask(224, 32, mem[_1235 + ceil32(return_data.size) + 393])
                        call rewardTokens[idx].mem[_1235 + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_1235 + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1235 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1235 + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_1235 + ceil32(return_data.size) + idx + 397] = mem[_1235 + ceil32(return_data.size) + idx + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1235 + ceil32(return_data.size) + 397]
                            if mem[96] <= 0:
                                mem[_1235 + ceil32(return_data.size) + 329] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_1235 + ceil32(return_data.size) + 333] = ext_call.return_data[0]
                                mem[_1235 + ceil32(return_data.size) + 365] = 0
                                mem[_1235 + ceil32(return_data.size) + 429] = this.address
                                mem[_1235 + ceil32(return_data.size) + 461] = block.timestamp
                                mem[_1235 + ceil32(return_data.size) + 397] = 160
                                mem[_1235 + ceil32(return_data.size) + 493] = stor33.length
                                if not stor33.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1235 + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1235 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                    require return_data.size >= 32
                                    _2184 = mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329] <= 4294967296 and mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329]) + 32 <= return_data.size
                                    mem[_1235 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329]
                                    _2228 = mem[_2184 + _1235 + ceil32(return_data.size) + 329]
                                    s = 0
                                    while s < 32 * _2228:
                                        mem[_1235 + ceil32(return_data.size) + ceil32(return_data.size) + s + 361] = mem[_2184 + _1235 + ceil32(return_data.size) + s + 361]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2228) + _1235 + ceil32(return_data.size) + ceil32(return_data.size) + 361
                                else:
                                    mem[0] = 33
                                    mem[_1235 + ceil32(return_data.size) + 525] = address(stor33.field_0)
                                    s = _1235 + ceil32(return_data.size) + 525
                                    t = sha3(33)
                                    while _1235 + ceil32(return_data.size) + (32 * stor33.length) + 525 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length, mem[_1235 + ceil32(return_data.size) + 525 len 32 * stor33.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1235 + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1235 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                    require return_data.size >= 32
                                    _2369 = mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329] <= 4294967296 and mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329]) + 32 <= return_data.size
                                    mem[_1235 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329]
                                    _2409 = mem[_2369 + _1235 + ceil32(return_data.size) + 329]
                                    s = 0
                                    while s < 32 * _2409:
                                        mem[_1235 + ceil32(return_data.size) + ceil32(return_data.size) + s + 361] = mem[_2369 + _1235 + ceil32(return_data.size) + s + 361]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2409) + _1235 + ceil32(return_data.size) + ceil32(return_data.size) + 361
                            else:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1235 + ceil32(return_data.size) + 439 len 22]
                                mem[_1235 + ceil32(return_data.size) + 329] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_1235 + ceil32(return_data.size) + 333] = ext_call.return_data[0]
                                mem[_1235 + ceil32(return_data.size) + 365] = 0
                                mem[_1235 + ceil32(return_data.size) + 429] = this.address
                                mem[_1235 + ceil32(return_data.size) + 461] = block.timestamp
                                mem[_1235 + ceil32(return_data.size) + 397] = 160
                                mem[_1235 + ceil32(return_data.size) + 493] = stor33.length
                                if not stor33.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1235 + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1235 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                    require return_data.size >= 32
                                    _2229 = mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329] <= 4294967296 and mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329]) + 32 <= return_data.size
                                    mem[_1235 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329]
                                    _2260 = mem[_2229 + _1235 + ceil32(return_data.size) + 329]
                                    s = 0
                                    while s < 32 * _2260:
                                        mem[_1235 + ceil32(return_data.size) + ceil32(return_data.size) + s + 361] = mem[_2229 + _1235 + ceil32(return_data.size) + s + 361]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2260) + _1235 + ceil32(return_data.size) + ceil32(return_data.size) + 361
                                else:
                                    mem[0] = 33
                                    mem[_1235 + ceil32(return_data.size) + 525] = address(stor33.field_0)
                                    s = _1235 + ceil32(return_data.size) + 525
                                    t = sha3(33)
                                    while _1235 + ceil32(return_data.size) + (32 * stor33.length) + 525 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length, mem[_1235 + ceil32(return_data.size) + 525 len 32 * stor33.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1235 + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1235 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                    require return_data.size >= 32
                                    _2371 = mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329] <= 4294967296 and mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329]) + 32 <= return_data.size
                                    mem[_1235 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329]
                                    _2410 = mem[_2371 + _1235 + ceil32(return_data.size) + 329]
                                    s = 0
                                    while s < 32 * _2410:
                                        mem[_1235 + ceil32(return_data.size) + ceil32(return_data.size) + s + 361] = mem[_2371 + _1235 + ceil32(return_data.size) + s + 361]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2410) + _1235 + ceil32(return_data.size) + ceil32(return_data.size) + 361
                        else:
                            mem[_1235 + ceil32(return_data.size) + 329] = return_data.size
                            mem[_1235 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1235 + (2 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1235 + (2 * ceil32(return_data.size)) + 334] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_1235 + (2 * ceil32(return_data.size)) + idx + 398] = mem[_1235 + ceil32(return_data.size) + idx + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1235 + (2 * ceil32(return_data.size)) + 398]
                            if return_data.size <= 0:
                                mem[_1235 + (2 * ceil32(return_data.size)) + 330] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_1235 + (2 * ceil32(return_data.size)) + 334] = ext_call.return_data[0]
                                mem[_1235 + (2 * ceil32(return_data.size)) + 366] = 0
                                mem[_1235 + (2 * ceil32(return_data.size)) + 430] = this.address
                                mem[_1235 + (2 * ceil32(return_data.size)) + 462] = block.timestamp
                                mem[_1235 + (2 * ceil32(return_data.size)) + 398] = 160
                                mem[_1235 + (2 * ceil32(return_data.size)) + 494] = stor33.length
                                if not stor33.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length, mem[_1235 + (2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1235 + (2 * ceil32(return_data.size)) + 330 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1235 + (4 * ceil32(return_data.size)) + 330
                                    require return_data.size >= 32
                                    _2188 = mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + _1235 + (2 * ceil32(return_data.size)) + 330] <= 4294967296 and mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + _1235 + (2 * ceil32(return_data.size)) + 330]) + 32 <= return_data.size
                                    mem[_1235 + (4 * ceil32(return_data.size)) + 330] = mem[mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + _1235 + (2 * ceil32(return_data.size)) + 330]
                                    _2231 = mem[_2188 + _1235 + (2 * ceil32(return_data.size)) + 330]
                                    s = 0
                                    while s < 32 * _2231:
                                        mem[_1235 + (4 * ceil32(return_data.size)) + s + 362] = mem[_2188 + _1235 + (2 * ceil32(return_data.size)) + s + 362]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2231) + _1235 + (4 * ceil32(return_data.size)) + 362
                                else:
                                    mem[0] = 33
                                    mem[_1235 + (2 * ceil32(return_data.size)) + 526] = address(stor33.field_0)
                                    s = _1235 + (2 * ceil32(return_data.size)) + 526
                                    t = sha3(33)
                                    while _1235 + (2 * ceil32(return_data.size)) + (32 * stor33.length) + 526 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length, mem[_1235 + (2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) + (32 * stor33.length) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1235 + (2 * ceil32(return_data.size)) + 330 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1235 + (4 * ceil32(return_data.size)) + 330
                                    require return_data.size >= 32
                                    _2373 = mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + _1235 + (2 * ceil32(return_data.size)) + 330] <= 4294967296 and mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + _1235 + (2 * ceil32(return_data.size)) + 330]) + 32 <= return_data.size
                                    mem[_1235 + (4 * ceil32(return_data.size)) + 330] = mem[mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + _1235 + (2 * ceil32(return_data.size)) + 330]
                                    _2411 = mem[_2373 + _1235 + (2 * ceil32(return_data.size)) + 330]
                                    s = 0
                                    while s < 32 * _2411:
                                        mem[_1235 + (4 * ceil32(return_data.size)) + s + 362] = mem[_2373 + _1235 + (2 * ceil32(return_data.size)) + s + 362]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2411) + _1235 + (4 * ceil32(return_data.size)) + 362
                            else:
                                require return_data.size >= 32
                                if not mem[_1235 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1235 + (2 * ceil32(return_data.size)) + 440 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                mem[_1235 + (2 * ceil32(return_data.size)) + 330] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_1235 + (2 * ceil32(return_data.size)) + 334] = ext_call.return_data[0]
                                mem[_1235 + (2 * ceil32(return_data.size)) + 366] = 0
                                mem[_1235 + (2 * ceil32(return_data.size)) + 430] = this.address
                                mem[_1235 + (2 * ceil32(return_data.size)) + 462] = block.timestamp
                                mem[_1235 + (2 * ceil32(return_data.size)) + 398] = 160
                                mem[_1235 + (2 * ceil32(return_data.size)) + 494] = stor33.length
                                if not stor33.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length, mem[_1235 + (2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1235 + (2 * ceil32(return_data.size)) + 330 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1235 + (4 * ceil32(return_data.size)) + 330
                                    require return_data.size >= 32
                                    _2232 = mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + _1235 + (2 * ceil32(return_data.size)) + 330] <= 4294967296 and mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + _1235 + (2 * ceil32(return_data.size)) + 330]) + 32 <= return_data.size
                                    mem[_1235 + (4 * ceil32(return_data.size)) + 330] = mem[mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + _1235 + (2 * ceil32(return_data.size)) + 330]
                                    _2261 = mem[_2232 + _1235 + (2 * ceil32(return_data.size)) + 330]
                                    s = 0
                                    while s < 32 * _2261:
                                        mem[_1235 + (4 * ceil32(return_data.size)) + s + 362] = mem[_2232 + _1235 + (2 * ceil32(return_data.size)) + s + 362]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2261) + _1235 + (4 * ceil32(return_data.size)) + 362
                                else:
                                    mem[0] = 33
                                    mem[_1235 + (2 * ceil32(return_data.size)) + 526] = address(stor33.field_0)
                                    s = _1235 + (2 * ceil32(return_data.size)) + 526
                                    t = sha3(33)
                                    while _1235 + (2 * ceil32(return_data.size)) + (32 * stor33.length) + 526 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length, mem[_1235 + (2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) + (32 * stor33.length) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1235 + (2 * ceil32(return_data.size)) + 330 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1235 + (4 * ceil32(return_data.size)) + 330
                                    require return_data.size >= 32
                                    _2375 = mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + _1235 + (2 * ceil32(return_data.size)) + 330] <= 4294967296 and mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + _1235 + (2 * ceil32(return_data.size)) + 330]) + 32 <= return_data.size
                                    mem[_1235 + (4 * ceil32(return_data.size)) + 330] = mem[mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + _1235 + (2 * ceil32(return_data.size)) + 330]
                                    _2412 = mem[_2375 + _1235 + (2 * ceil32(return_data.size)) + 330]
                                    s = 0
                                    while s < 32 * _2412:
                                        mem[_1235 + (4 * ceil32(return_data.size)) + s + 362] = mem[_2375 + _1235 + (2 * ceil32(return_data.size)) + s + 362]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2412) + _1235 + (4 * ceil32(return_data.size)) + 362
                    else:
                        require return_data.size >= 32
                        if not mem[_1235 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_1235 + ceil32(return_data.size) + 275 len 22]
                        require ext_code.size(rewardTokens[idx])
                        staticcall rewardTokens[idx].0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(unirouterAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[_1235 + ceil32(return_data.size) + 287 len 10]
                        mem[_1235 + ceil32(return_data.size) + 201] = address(unirouterAddress)
                        mem[_1235 + ceil32(return_data.size) + 233] = -1
                        mem[_1235 + ceil32(return_data.size) + 165] = 68
                        mem[_1235 + ceil32(return_data.size) + 197] = Mask(224, 0, stor2) or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                        mem[_1235 + ceil32(return_data.size) + 265] = 32
                        mem[_1235 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if ext_code.size(rewardTokens[idx]) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        t = _1235 + ceil32(return_data.size) + 197
                        u = _1235 + ceil32(return_data.size) + 329
                        s = 68
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1235 + ceil32(return_data.size) + 393] = 0 or Mask(224, 32, mem[_1235 + ceil32(return_data.size) + 393])
                        call rewardTokens[idx].mem[_1235 + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_1235 + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1235 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1235 + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_1235 + ceil32(return_data.size) + idx + 397] = mem[_1235 + ceil32(return_data.size) + idx + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1235 + ceil32(return_data.size) + 397]
                            if mem[96] <= 0:
                                mem[_1235 + ceil32(return_data.size) + 329] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_1235 + ceil32(return_data.size) + 333] = ext_call.return_data[0]
                                mem[_1235 + ceil32(return_data.size) + 365] = 0
                                mem[_1235 + ceil32(return_data.size) + 429] = this.address
                                mem[_1235 + ceil32(return_data.size) + 461] = block.timestamp
                                mem[_1235 + ceil32(return_data.size) + 397] = 160
                                mem[_1235 + ceil32(return_data.size) + 493] = stor33.length
                                if not stor33.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1235 + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1235 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                    require return_data.size >= 32
                                    _2192 = mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329] <= 4294967296 and mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329]) + 32 <= return_data.size
                                    mem[_1235 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329]
                                    _2234 = mem[_2192 + _1235 + ceil32(return_data.size) + 329]
                                    s = 0
                                    while s < 32 * _2234:
                                        mem[_1235 + ceil32(return_data.size) + ceil32(return_data.size) + s + 361] = mem[_2192 + _1235 + ceil32(return_data.size) + s + 361]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2234) + _1235 + ceil32(return_data.size) + ceil32(return_data.size) + 361
                                else:
                                    mem[0] = 33
                                    mem[_1235 + ceil32(return_data.size) + 525] = address(stor33.field_0)
                                    s = _1235 + ceil32(return_data.size) + 525
                                    t = sha3(33)
                                    while _1235 + ceil32(return_data.size) + (32 * stor33.length) + 525 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length, mem[_1235 + ceil32(return_data.size) + 525 len 32 * stor33.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1235 + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1235 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                    require return_data.size >= 32
                                    _2377 = mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329] <= 4294967296 and mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329]) + 32 <= return_data.size
                                    mem[_1235 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329]
                                    _2413 = mem[_2377 + _1235 + ceil32(return_data.size) + 329]
                                    s = 0
                                    while s < 32 * _2413:
                                        mem[_1235 + ceil32(return_data.size) + ceil32(return_data.size) + s + 361] = mem[_2377 + _1235 + ceil32(return_data.size) + s + 361]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2413) + _1235 + ceil32(return_data.size) + ceil32(return_data.size) + 361
                            else:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1235 + ceil32(return_data.size) + 439 len 22]
                                mem[_1235 + ceil32(return_data.size) + 329] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_1235 + ceil32(return_data.size) + 333] = ext_call.return_data[0]
                                mem[_1235 + ceil32(return_data.size) + 365] = 0
                                mem[_1235 + ceil32(return_data.size) + 429] = this.address
                                mem[_1235 + ceil32(return_data.size) + 461] = block.timestamp
                                mem[_1235 + ceil32(return_data.size) + 397] = 160
                                mem[_1235 + ceil32(return_data.size) + 493] = stor33.length
                                if not stor33.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1235 + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1235 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                    require return_data.size >= 32
                                    _2235 = mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329] <= 4294967296 and mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329]) + 32 <= return_data.size
                                    mem[_1235 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329]
                                    _2262 = mem[_2235 + _1235 + ceil32(return_data.size) + 329]
                                    s = 0
                                    while s < 32 * _2262:
                                        mem[_1235 + ceil32(return_data.size) + ceil32(return_data.size) + s + 361] = mem[_2235 + _1235 + ceil32(return_data.size) + s + 361]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2262) + _1235 + ceil32(return_data.size) + ceil32(return_data.size) + 361
                                else:
                                    mem[0] = 33
                                    mem[_1235 + ceil32(return_data.size) + 525] = address(stor33.field_0)
                                    s = _1235 + ceil32(return_data.size) + 525
                                    t = sha3(33)
                                    while _1235 + ceil32(return_data.size) + (32 * stor33.length) + 525 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length, mem[_1235 + ceil32(return_data.size) + 525 len 32 * stor33.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1235 + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1235 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                    require return_data.size >= 32
                                    _2379 = mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329] <= 4294967296 and mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329]) + 32 <= return_data.size
                                    mem[_1235 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329]
                                    _2414 = mem[_2379 + _1235 + ceil32(return_data.size) + 329]
                                    s = 0
                                    while s < 32 * _2414:
                                        mem[_1235 + ceil32(return_data.size) + ceil32(return_data.size) + s + 361] = mem[_2379 + _1235 + ceil32(return_data.size) + s + 361]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2414) + _1235 + ceil32(return_data.size) + ceil32(return_data.size) + 361
                        else:
                            mem[_1235 + ceil32(return_data.size) + 329] = return_data.size
                            mem[_1235 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1235 + (2 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1235 + (2 * ceil32(return_data.size)) + 334] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_1235 + (2 * ceil32(return_data.size)) + idx + 398] = mem[_1235 + ceil32(return_data.size) + idx + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1235 + (2 * ceil32(return_data.size)) + 398]
                            if return_data.size <= 0:
                                mem[_1235 + (2 * ceil32(return_data.size)) + 330] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_1235 + (2 * ceil32(return_data.size)) + 334] = ext_call.return_data[0]
                                mem[_1235 + (2 * ceil32(return_data.size)) + 366] = 0
                                mem[_1235 + (2 * ceil32(return_data.size)) + 430] = this.address
                                mem[_1235 + (2 * ceil32(return_data.size)) + 462] = block.timestamp
                                mem[_1235 + (2 * ceil32(return_data.size)) + 398] = 160
                                mem[_1235 + (2 * ceil32(return_data.size)) + 494] = stor33.length
                                if not stor33.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length, mem[_1235 + (2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1235 + (2 * ceil32(return_data.size)) + 330 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1235 + (4 * ceil32(return_data.size)) + 330
                                    require return_data.size >= 32
                                    _2196 = mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + _1235 + (2 * ceil32(return_data.size)) + 330] <= 4294967296 and mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + _1235 + (2 * ceil32(return_data.size)) + 330]) + 32 <= return_data.size
                                    mem[_1235 + (4 * ceil32(return_data.size)) + 330] = mem[mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + _1235 + (2 * ceil32(return_data.size)) + 330]
                                    _2237 = mem[_2196 + _1235 + (2 * ceil32(return_data.size)) + 330]
                                    s = 0
                                    while s < 32 * _2237:
                                        mem[_1235 + (4 * ceil32(return_data.size)) + s + 362] = mem[_2196 + _1235 + (2 * ceil32(return_data.size)) + s + 362]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2237) + _1235 + (4 * ceil32(return_data.size)) + 362
                                else:
                                    mem[0] = 33
                                    mem[_1235 + (2 * ceil32(return_data.size)) + 526] = address(stor33.field_0)
                                    s = _1235 + (2 * ceil32(return_data.size)) + 526
                                    t = sha3(33)
                                    while _1235 + (2 * ceil32(return_data.size)) + (32 * stor33.length) + 526 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length, mem[_1235 + (2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) + (32 * stor33.length) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1235 + (2 * ceil32(return_data.size)) + 330 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1235 + (4 * ceil32(return_data.size)) + 330
                                    require return_data.size >= 32
                                    _2381 = mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + _1235 + (2 * ceil32(return_data.size)) + 330] <= 4294967296 and mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + _1235 + (2 * ceil32(return_data.size)) + 330]) + 32 <= return_data.size
                                    mem[_1235 + (4 * ceil32(return_data.size)) + 330] = mem[mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + _1235 + (2 * ceil32(return_data.size)) + 330]
                                    _2415 = mem[_2381 + _1235 + (2 * ceil32(return_data.size)) + 330]
                                    s = 0
                                    while s < 32 * _2415:
                                        mem[_1235 + (4 * ceil32(return_data.size)) + s + 362] = mem[_2381 + _1235 + (2 * ceil32(return_data.size)) + s + 362]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2415) + _1235 + (4 * ceil32(return_data.size)) + 362
                            else:
                                require return_data.size >= 32
                                if not mem[_1235 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1235 + (2 * ceil32(return_data.size)) + 440 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                mem[_1235 + (2 * ceil32(return_data.size)) + 330] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_1235 + (2 * ceil32(return_data.size)) + 334] = ext_call.return_data[0]
                                mem[_1235 + (2 * ceil32(return_data.size)) + 366] = 0
                                mem[_1235 + (2 * ceil32(return_data.size)) + 430] = this.address
                                mem[_1235 + (2 * ceil32(return_data.size)) + 462] = block.timestamp
                                mem[_1235 + (2 * ceil32(return_data.size)) + 398] = 160
                                mem[_1235 + (2 * ceil32(return_data.size)) + 494] = stor33.length
                                if not stor33.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length, mem[_1235 + (2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1235 + (2 * ceil32(return_data.size)) + 330 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1235 + (4 * ceil32(return_data.size)) + 330
                                    require return_data.size >= 32
                                    _2238 = mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + _1235 + (2 * ceil32(return_data.size)) + 330] <= 4294967296 and mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + _1235 + (2 * ceil32(return_data.size)) + 330]) + 32 <= return_data.size
                                    mem[_1235 + (4 * ceil32(return_data.size)) + 330] = mem[mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + _1235 + (2 * ceil32(return_data.size)) + 330]
                                    _2263 = mem[_2238 + _1235 + (2 * ceil32(return_data.size)) + 330]
                                    s = 0
                                    while s < 32 * _2263:
                                        mem[_1235 + (4 * ceil32(return_data.size)) + s + 362] = mem[_2238 + _1235 + (2 * ceil32(return_data.size)) + s + 362]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2263) + _1235 + (4 * ceil32(return_data.size)) + 362
                                else:
                                    mem[0] = 33
                                    mem[_1235 + (2 * ceil32(return_data.size)) + 526] = address(stor33.field_0)
                                    s = _1235 + (2 * ceil32(return_data.size)) + 526
                                    t = sha3(33)
                                    while _1235 + (2 * ceil32(return_data.size)) + (32 * stor33.length) + 526 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length, mem[_1235 + (2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) + (32 * stor33.length) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1235 + (2 * ceil32(return_data.size)) + 330 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1235 + (4 * ceil32(return_data.size)) + 330
                                    require return_data.size >= 32
                                    _2383 = mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + _1235 + (2 * ceil32(return_data.size)) + 330] <= 4294967296 and mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + _1235 + (2 * ceil32(return_data.size)) + 330]) + 32 <= return_data.size
                                    mem[_1235 + (4 * ceil32(return_data.size)) + 330] = mem[mem[_1235 + (2 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + _1235 + (2 * ceil32(return_data.size)) + 330]
                                    _2416 = mem[_2383 + _1235 + (2 * ceil32(return_data.size)) + 330]
                                    s = 0
                                    while s < 32 * _2416:
                                        mem[_1235 + (4 * ceil32(return_data.size)) + s + 362] = mem[_2383 + _1235 + (2 * ceil32(return_data.size)) + s + 362]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2416) + _1235 + (4 * ceil32(return_data.size)) + 362
                else:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1235 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1235 + 168] = 32
                        mem[_1235 + 200] = 32
                        idx = 0
                        while idx < 32:
                            mem[_1235 + idx + 232] = mem[_1235 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with memory
                          from mem[64]
                           len _1235 + -mem[64] + 264
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_1235 + 274 len 22]
                        require ext_code.size(rewardTokens[idx])
                        staticcall rewardTokens[idx].0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(unirouterAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[_1235 + 286 len 10]
                        mem[_1235 + 200] = address(unirouterAddress)
                        mem[_1235 + 232] = -1
                        mem[_1235 + 164] = 68
                        mem[_1235 + 196] = Mask(224, 0, stor2) or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                        mem[64] = _1235 + 328
                        mem[_1235 + 264] = 32
                        mem[_1235 + 296] = 'SafeERC20: low-level call failed'
                        if ext_code.size(rewardTokens[idx]) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        t = _1235 + 196
                        u = _1235 + 328
                        s = 68
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1235 + 392] = 0 or Mask(224, 32, mem[_1235 + 392])
                        call rewardTokens[idx].mem[_1235 + 328 len 4] with:
                             gas gas_remaining wei
                            args mem[_1235 + 332 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_1235 + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1235 + 332] = 32
                                mem[_1235 + 364] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_1235 + idx + 396] = mem[_1235 + idx + 296]
                                    idx = idx + 32
                                    continue 
                                revert with memory
                                  from mem[64]
                                   len _1235 + -mem[64] + 428
                            if mem[96] <= 0:
                                mem[_1235 + 328] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_1235 + 332] = ext_call.return_data[0]
                                mem[_1235 + 364] = 0
                                mem[_1235 + 428] = this.address
                                mem[_1235 + 460] = block.timestamp
                                mem[_1235 + 396] = 160
                                mem[_1235 + 492] = stor33.length
                                if not stor33.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1235 + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1235 + ceil32(return_data.size) + 328
                                    require return_data.size >= 32
                                    _2176 = mem[_1235 + 328 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1235 + 328 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1235 + 328 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1235 + 328 len 4], ext_call.return_data[0 len 28] + _1235 + 328] <= 4294967296 and mem[_1235 + 328 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1235 + 328 len 4], ext_call.return_data[0 len 28] + _1235 + 328]) + 32 <= return_data.size
                                    mem[_1235 + ceil32(return_data.size) + 328] = mem[mem[_1235 + 328 len 4], ext_call.return_data[0 len 28] + _1235 + 328]
                                    _2222 = mem[_2176 + _1235 + 328]
                                    s = 0
                                    while s < 32 * _2222:
                                        mem[_1235 + ceil32(return_data.size) + s + 360] = mem[_2176 + _1235 + s + 360]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2222) + _1235 + ceil32(return_data.size) + 360
                                else:
                                    mem[0] = 33
                                    mem[_1235 + 524] = address(stor33.field_0)
                                    s = _1235 + 524
                                    t = sha3(33)
                                    while _1235 + (32 * stor33.length) + 524 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length, mem[_1235 + 524 len 32 * stor33.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1235 + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1235 + ceil32(return_data.size) + 328
                                    require return_data.size >= 32
                                    _2361 = mem[_1235 + 328 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1235 + 328 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1235 + 328 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1235 + 328 len 4], ext_call.return_data[0 len 28] + _1235 + 328] <= 4294967296 and mem[_1235 + 328 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1235 + 328 len 4], ext_call.return_data[0 len 28] + _1235 + 328]) + 32 <= return_data.size
                                    mem[_1235 + ceil32(return_data.size) + 328] = mem[mem[_1235 + 328 len 4], ext_call.return_data[0 len 28] + _1235 + 328]
                                    _2405 = mem[_2361 + _1235 + 328]
                                    s = 0
                                    while s < 32 * _2405:
                                        mem[_1235 + ceil32(return_data.size) + s + 360] = mem[_2361 + _1235 + s + 360]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2405) + _1235 + ceil32(return_data.size) + 360
                            else:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1235 + 438 len 22]
                                mem[_1235 + 328] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_1235 + 332] = ext_call.return_data[0]
                                mem[_1235 + 364] = 0
                                mem[_1235 + 428] = this.address
                                mem[_1235 + 460] = block.timestamp
                                mem[_1235 + 396] = 160
                                mem[_1235 + 492] = stor33.length
                                if not stor33.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1235 + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1235 + ceil32(return_data.size) + 328
                                    require return_data.size >= 32
                                    _2223 = mem[_1235 + 328 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1235 + 328 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1235 + 328 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1235 + 328 len 4], ext_call.return_data[0 len 28] + _1235 + 328] <= 4294967296 and mem[_1235 + 328 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1235 + 328 len 4], ext_call.return_data[0 len 28] + _1235 + 328]) + 32 <= return_data.size
                                    mem[_1235 + ceil32(return_data.size) + 328] = mem[mem[_1235 + 328 len 4], ext_call.return_data[0 len 28] + _1235 + 328]
                                    _2258 = mem[_2223 + _1235 + 328]
                                    s = 0
                                    while s < 32 * _2258:
                                        mem[_1235 + ceil32(return_data.size) + s + 360] = mem[_2223 + _1235 + s + 360]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2258) + _1235 + ceil32(return_data.size) + 360
                                else:
                                    mem[0] = 33
                                    mem[_1235 + 524] = address(stor33.field_0)
                                    s = _1235 + 524
                                    t = sha3(33)
                                    while _1235 + (32 * stor33.length) + 524 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length, mem[_1235 + 524 len 32 * stor33.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1235 + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1235 + ceil32(return_data.size) + 328
                                    require return_data.size >= 32
                                    _2363 = mem[_1235 + 328 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1235 + 328 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1235 + 328 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1235 + 328 len 4], ext_call.return_data[0 len 28] + _1235 + 328] <= 4294967296 and mem[_1235 + 328 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1235 + 328 len 4], ext_call.return_data[0 len 28] + _1235 + 328]) + 32 <= return_data.size
                                    mem[_1235 + ceil32(return_data.size) + 328] = mem[mem[_1235 + 328 len 4], ext_call.return_data[0 len 28] + _1235 + 328]
                                    _2406 = mem[_2363 + _1235 + 328]
                                    s = 0
                                    while s < 32 * _2406:
                                        mem[_1235 + ceil32(return_data.size) + s + 360] = mem[_2363 + _1235 + s + 360]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2406) + _1235 + ceil32(return_data.size) + 360
                        else:
                            mem[_1235 + 328] = return_data.size
                            mem[_1235 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1235 + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1235 + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[_1235 + ceil32(return_data.size) + idx + 397] = mem[_1235 + idx + 296]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_1235 + ceil32(return_data.size) + 397]
                            if return_data.size <= 0:
                                mem[_1235 + ceil32(return_data.size) + 329] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_1235 + ceil32(return_data.size) + 333] = ext_call.return_data[0]
                                mem[_1235 + ceil32(return_data.size) + 365] = 0
                                mem[_1235 + ceil32(return_data.size) + 429] = this.address
                                mem[_1235 + ceil32(return_data.size) + 461] = block.timestamp
                                mem[_1235 + ceil32(return_data.size) + 397] = 160
                                mem[_1235 + ceil32(return_data.size) + 493] = stor33.length
                                if not stor33.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1235 + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1235 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                    require return_data.size >= 32
                                    _2180 = mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329] <= 4294967296 and mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329]) + 32 <= return_data.size
                                    mem[_1235 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329]
                                    _2225 = mem[_2180 + _1235 + ceil32(return_data.size) + 329]
                                    s = 0
                                    while s < 32 * _2225:
                                        mem[_1235 + ceil32(return_data.size) + ceil32(return_data.size) + s + 361] = mem[_2180 + _1235 + ceil32(return_data.size) + s + 361]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2225) + _1235 + ceil32(return_data.size) + ceil32(return_data.size) + 361
                                else:
                                    mem[0] = 33
                                    mem[_1235 + ceil32(return_data.size) + 525] = address(stor33.field_0)
                                    s = _1235 + ceil32(return_data.size) + 525
                                    t = sha3(33)
                                    while _1235 + ceil32(return_data.size) + (32 * stor33.length) + 525 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length, mem[_1235 + ceil32(return_data.size) + 525 len 32 * stor33.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1235 + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1235 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                    require return_data.size >= 32
                                    _2365 = mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329] <= 4294967296 and mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329]) + 32 <= return_data.size
                                    mem[_1235 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329]
                                    _2407 = mem[_2365 + _1235 + ceil32(return_data.size) + 329]
                                    s = 0
                                    while s < 32 * _2407:
                                        mem[_1235 + ceil32(return_data.size) + ceil32(return_data.size) + s + 361] = mem[_2365 + _1235 + ceil32(return_data.size) + s + 361]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2407) + _1235 + ceil32(return_data.size) + ceil32(return_data.size) + 361
                            else:
                                require return_data.size >= 32
                                if not mem[_1235 + 360]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[_1235 + ceil32(return_data.size) + 439 len 22]
                                mem[_1235 + ceil32(return_data.size) + 329] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_1235 + ceil32(return_data.size) + 333] = ext_call.return_data[0]
                                mem[_1235 + ceil32(return_data.size) + 365] = 0
                                mem[_1235 + ceil32(return_data.size) + 429] = this.address
                                mem[_1235 + ceil32(return_data.size) + 461] = block.timestamp
                                mem[_1235 + ceil32(return_data.size) + 397] = 160
                                mem[_1235 + ceil32(return_data.size) + 493] = stor33.length
                                if not stor33.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1235 + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1235 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                    require return_data.size >= 32
                                    _2226 = mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329] <= 4294967296 and mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329]) + 32 <= return_data.size
                                    mem[_1235 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329]
                                    _2259 = mem[_2226 + _1235 + ceil32(return_data.size) + 329]
                                    s = 0
                                    while s < 32 * _2259:
                                        mem[_1235 + ceil32(return_data.size) + ceil32(return_data.size) + s + 361] = mem[_2226 + _1235 + ceil32(return_data.size) + s + 361]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2259) + _1235 + ceil32(return_data.size) + ceil32(return_data.size) + 361
                                else:
                                    mem[0] = 33
                                    mem[_1235 + ceil32(return_data.size) + 525] = address(stor33.field_0)
                                    s = _1235 + ceil32(return_data.size) + 525
                                    t = sha3(33)
                                    while _1235 + ceil32(return_data.size) + (32 * stor33.length) + 525 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length, mem[_1235 + ceil32(return_data.size) + 525 len 32 * stor33.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1235 + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1235 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                    require return_data.size >= 32
                                    _2367 = mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329] <= 4294967296 and mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329]) + 32 <= return_data.size
                                    mem[_1235 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[mem[_1235 + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + _1235 + ceil32(return_data.size) + 329]
                                    _2408 = mem[_2367 + _1235 + ceil32(return_data.size) + 329]
                                    s = 0
                                    while s < 32 * _2408:
                                        mem[_1235 + ceil32(return_data.size) + ceil32(return_data.size) + s + 361] = mem[_2367 + _1235 + ceil32(return_data.size) + s + 361]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2408) + _1235 + ceil32(return_data.size) + ceil32(return_data.size) + 361
                    else:
                        require ext_code.size(rewardTokens[idx])
                        staticcall rewardTokens[idx].0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(unirouterAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[_1235 + 286 len 10]
                        mem[_1235 + 200] = address(unirouterAddress)
                        mem[_1235 + 232] = -1
                        mem[_1235 + 164] = 68
                        mem[_1235 + 196] = Mask(224, 0, stor2) or 0x95ea7b300000000000000000000000000000000000000000000000000000000
                        mem[64] = _1235 + 328
                        mem[_1235 + 264] = 32
                        mem[_1235 + 296] = 'SafeERC20: low-level call failed'
                        if ext_code.size(rewardTokens[idx]) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        t = _1235 + 196
                        u = mem[64]
                        s = mem[_1235 + 164]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_1235 + 164])] = mem[_1235 + floor32(mem[_1235 + 164]) + -(mem[_1235 + 164] % 32) + 228 len mem[_1235 + 164] % 32] or Mask(8 * -(mem[_1235 + 164] % 32) + 32, -(8 * -(mem[_1235 + 164] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1235 + 164])])
                        call rewardTokens[idx].mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1235 + -mem[64] + 392]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                _2022 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[_1235 + 264]
                                _2024 = mem[_1235 + 264]
                                idx = 0
                                while idx < _2024:
                                    mem[_2022 + idx + 68] = mem[_1235 + idx + 296]
                                    idx = idx + 32
                                    continue 
                                if not _2024 % 32:
                                    revert with memory
                                      from mem[64]
                                       len _2024 + _2022 + -mem[64] + 68
                                mem[floor32(_2024) + _2022 + 68] = mem[floor32(_2024) + _2022 + -(_2024 % 32) + 100 len _2024 % 32]
                                revert with memory
                                  from mem[64]
                                   len floor32(_2024) + _2022 + -mem[64] + 100
                            if mem[96] <= 0:
                                _2128 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = stor33.length
                                if not stor33.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2152 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2168 = mem[_2152]
                                    require mem[_2152] <= 4294967296
                                    require mem[_2152] + 32 <= return_data.size
                                    require mem[mem[_2152] + _2152] <= 4294967296 and mem[_2152] + (32 * mem[mem[_2152] + _2152]) + 32 <= return_data.size
                                    mem[_2152 + ceil32(return_data.size)] = mem[mem[_2152] + _2152]
                                    _2216 = mem[_2168 + _2152]
                                    s = 0
                                    while s < 32 * _2216:
                                        mem[_2152 + ceil32(return_data.size) + s + 32] = mem[_2168 + _2152 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2216) + _2152 + ceil32(return_data.size) + 32
                                else:
                                    mem[0] = 33
                                    mem[mem[64] + 196] = address(stor33.field_0)
                                    s = mem[64] + 196
                                    t = sha3(33)
                                    while mem[64] + (32 * stor33.length) + 196 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2128 + (32 * stor33.length) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2337 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2353 = mem[_2337]
                                    require mem[_2337] <= 4294967296
                                    require mem[_2337] + 32 <= return_data.size
                                    require mem[mem[_2337] + _2337] <= 4294967296 and mem[_2337] + (32 * mem[mem[_2337] + _2337]) + 32 <= return_data.size
                                    mem[_2337 + ceil32(return_data.size)] = mem[mem[_2337] + _2337]
                                    _2401 = mem[_2353 + _2337]
                                    s = 0
                                    while s < 32 * _2401:
                                        mem[_2337 + ceil32(return_data.size) + s + 32] = mem[_2353 + _2337 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2401) + _2337 + ceil32(return_data.size) + 32
                            else:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                                _2153 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = stor33.length
                                if not stor33.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2201 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2217 = mem[_2201]
                                    require mem[_2201] <= 4294967296
                                    require mem[_2201] + 32 <= return_data.size
                                    require mem[mem[_2201] + _2201] <= 4294967296 and mem[_2201] + (32 * mem[mem[_2201] + _2201]) + 32 <= return_data.size
                                    mem[_2201 + ceil32(return_data.size)] = mem[mem[_2201] + _2201]
                                    _2256 = mem[_2217 + _2201]
                                    s = 0
                                    while s < 32 * _2256:
                                        mem[_2201 + ceil32(return_data.size) + s + 32] = mem[_2217 + _2201 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2256) + _2201 + ceil32(return_data.size) + 32
                                else:
                                    mem[0] = 33
                                    mem[mem[64] + 196] = address(stor33.field_0)
                                    s = mem[64] + 196
                                    t = sha3(33)
                                    while mem[64] + (32 * stor33.length) + 196 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2153 + (32 * stor33.length) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2338 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2355 = mem[_2338]
                                    require mem[_2338] <= 4294967296
                                    require mem[_2338] + 32 <= return_data.size
                                    require mem[mem[_2338] + _2338] <= 4294967296 and mem[_2338] + (32 * mem[mem[_2338] + _2338]) + 32 <= return_data.size
                                    mem[_2338 + ceil32(return_data.size)] = mem[mem[_2338] + _2338]
                                    _2402 = mem[_2355 + _2338]
                                    s = 0
                                    while s < 32 * _2402:
                                        mem[_2338 + ceil32(return_data.size) + s + 32] = mem[_2355 + _2338 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2402) + _2338 + ceil32(return_data.size) + 32
                        else:
                            _2003 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_2003] = return_data.size
                            mem[_2003 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2026 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = mem[_1235 + 264]
                                _2028 = mem[_1235 + 264]
                                idx = 0
                                while idx < _2028:
                                    mem[_2026 + idx + 68] = mem[_1235 + idx + 296]
                                    idx = idx + 32
                                    continue 
                                if not _2028 % 32:
                                    revert with memory
                                      from mem[64]
                                       len _2028 + _2026 + -mem[64] + 68
                                mem[floor32(_2028) + _2026 + 68] = mem[floor32(_2028) + _2026 + -(_2028 % 32) + 100 len _2028 % 32]
                                revert with memory
                                  from mem[64]
                                   len floor32(_2028) + _2026 + -mem[64] + 100
                            if return_data.size <= 0:
                                _2129 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = stor33.length
                                if not stor33.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2154 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2172 = mem[_2154]
                                    require mem[_2154] <= 4294967296
                                    require mem[_2154] + 32 <= return_data.size
                                    require mem[mem[_2154] + _2154] <= 4294967296 and mem[_2154] + (32 * mem[mem[_2154] + _2154]) + 32 <= return_data.size
                                    mem[_2154 + ceil32(return_data.size)] = mem[mem[_2154] + _2154]
                                    _2219 = mem[_2172 + _2154]
                                    s = 0
                                    while s < 32 * _2219:
                                        mem[_2154 + ceil32(return_data.size) + s + 32] = mem[_2172 + _2154 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2219) + _2154 + ceil32(return_data.size) + 32
                                else:
                                    mem[0] = 33
                                    mem[mem[64] + 196] = address(stor33.field_0)
                                    s = mem[64] + 196
                                    t = sha3(33)
                                    while mem[64] + (32 * stor33.length) + 196 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2129 + (32 * stor33.length) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2339 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2357 = mem[_2339]
                                    require mem[_2339] <= 4294967296
                                    require mem[_2339] + 32 <= return_data.size
                                    require mem[mem[_2339] + _2339] <= 4294967296 and mem[_2339] + (32 * mem[mem[_2339] + _2339]) + 32 <= return_data.size
                                    mem[_2339 + ceil32(return_data.size)] = mem[mem[_2339] + _2339]
                                    _2403 = mem[_2357 + _2339]
                                    s = 0
                                    while s < 32 * _2403:
                                        mem[_2339 + ceil32(return_data.size) + s + 32] = mem[_2357 + _2339 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2403) + _2339 + ceil32(return_data.size) + 32
                            else:
                                require return_data.size >= 32
                                if not mem[_2003 + 32]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                                _2155 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ext_call.return_data[0]
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = block.timestamp
                                mem[mem[64] + 68] = 160
                                mem[mem[64] + 164] = stor33.length
                                if not stor33.length:
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, stor33.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2203 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2220 = mem[_2203]
                                    require mem[_2203] <= 4294967296
                                    require mem[_2203] + 32 <= return_data.size
                                    require mem[mem[_2203] + _2203] <= 4294967296 and mem[_2203] + (32 * mem[mem[_2203] + _2203]) + 32 <= return_data.size
                                    mem[_2203 + ceil32(return_data.size)] = mem[mem[_2203] + _2203]
                                    _2257 = mem[_2220 + _2203]
                                    s = 0
                                    while s < 32 * _2257:
                                        mem[_2203 + ceil32(return_data.size) + s + 32] = mem[_2220 + _2203 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2257) + _2203 + ceil32(return_data.size) + 32
                                else:
                                    mem[0] = 33
                                    mem[mem[64] + 196] = address(stor33.field_0)
                                    s = mem[64] + 196
                                    t = sha3(33)
                                    while mem[64] + (32 * stor33.length) + 196 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    require ext_code.size(address(unirouterAddress))
                                    call address(unirouterAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2155 + (32 * stor33.length) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2340 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2359 = mem[_2340]
                                    require mem[_2340] <= 4294967296
                                    require mem[_2340] + 32 <= return_data.size
                                    require mem[mem[_2340] + _2340] <= 4294967296 and mem[_2340] + (32 * mem[mem[_2340] + _2340]) + 32 <= return_data.size
                                    mem[_2340 + ceil32(return_data.size)] = mem[mem[_2340] + _2340]
                                    _2404 = mem[_2359 + _2340]
                                    s = 0
                                    while s < 32 * _2404:
                                        mem[_2340 + ceil32(return_data.size) + s + 32] = mem[_2359 + _2340 + s + 32]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2404) + _2340 + ceil32(return_data.size) + 32
        idx = idx + 1
        continue 
    require ext_code.size(outputAddress)
    staticcall outputAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0]
        mem[mem[64] + 36] = 0
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = outputToWrappedRoute.length
        if not outputToWrappedRoute.length:
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWrappedRoute.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _429 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_429] <= 4294967296
            require mem[_429] + 32 <= return_data.size
            require mem[mem[_429] + _429] <= 4294967296 and mem[_429] + (32 * mem[mem[_429] + _429]) + 32 <= return_data.size
        else:
            mem[0] = 30
            mem[mem[64] + 196] = address(outputToWrappedRoute.field_0)
            idx = mem[64] + 196
            s = 0
            while mem[64] + (32 * outputToWrappedRoute.length) + 196 > idx + 32:
                mem[idx + 32] = outputToWrappedRoute[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(address(unirouterAddress))
            call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, outputToWrappedRoute.length, mem[mem[64] + 196 len 32 * outputToWrappedRoute.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1221 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1221] <= 4294967296
            require mem[_1221] + 32 <= return_data.size
            require mem[mem[_1221] + _1221] <= 4294967296 and mem[_1221] + (32 * mem[mem[_1221] + _1221]) + 32 <= return_data.size
}



}
