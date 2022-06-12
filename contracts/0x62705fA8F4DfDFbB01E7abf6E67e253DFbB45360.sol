contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#  - beforeDeposit()
#
uint8 paused; offset 160
address owner;
address wrappedAddress;
address wantAddress;
address outputAddress;
address sub_aaba2d23Address;
uint32 stor5;
address unirouterAddress;
uint256 stor5;
uint32 stor6;
address aceAddress;
uint256 stor6;
uint32 stor7;
address sub_e6128ca0Address;
uint256 stor7;
address stor8;
address stor10;
uint32 stor11;
address vaultAddress;
uint256 stor11;
uint256 poolId;
array of address wantToWrappedRoute;
array of address outputToWrappedRoute;
array of address sub_2183cde9;
array of address outputToWantRoute;
array of struct stor17;
mapping of uint8 stor18;
uint256 WITHDRAWAL_MAX;
uint256 WITHDRAW_FEE;
uint256 MAX_FEE;
uint256 CALL_FEE;
uint256 STRATEGIST_FEE;
uint256 FEE_BATCH;
uint256 PLATFORM_FEE;

function FEE_BATCH() payable {
    return FEE_BATCH
}

function outputToWrappedRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToWrappedRoute.length
    return outputToWrappedRoute[arg1]
}

function want() payable {
    return wantAddress
}

function sub_2183cde9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_2183cde9.length
    return sub_2183cde9[arg1]
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

function wrapped() payable {
    return wrappedAddress
}

function WITHDRAWAL_MAX() payable {
    return WITHDRAWAL_MAX
}

function paused() payable {
    return bool(paused)
}

function wantToWrappedRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < wantToWrappedRoute.length
    return wantToWrappedRoute[arg1]
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
    return bool(stor18[arg1])
}

function WITHDRAW_FEE() payable {
    return WITHDRAW_FEE
}

function ace() payable {
    return address(aceAddress)
}

function sub_aaba2d23(?) payable {
    return sub_aaba2d23Address
}

function MAX_FEE() payable {
    return MAX_FEE
}

function outputToWantRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToWantRoute.length
    return outputToWantRoute[arg1]
}

function sub_e6128ca0(?) payable {
    return address(sub_e6128ca0Address)
}

function output() payable {
    return outputAddress
}

function vault() payable {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function setWant(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor8 != msg.sender:
        revert with 0, '!auth'
    wantAddress = arg1
}

function sub_d2969d01(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor10 = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(vaultAddress) = arg1
}

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(unirouterAddress) = arg1
}

function addOrRemoveFromWhitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor18[address(arg1)] = uint8(arg2)
}

function setPid(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor8 != msg.sender:
        revert with 0, '!auth'
    poolId = arg1
}

function sub_6b5b2c31(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor8 != msg.sender:
        revert with 0, '!auth'
    outputAddress = arg1
}

function sub_a9ac66e9(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor8 != msg.sender:
        revert with 0, '!auth to set Ace'
    address(aceAddress) = arg1
}

function sub_4cdd7435(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor8 != msg.sender:
        revert with 0, '!auth to set Mirror'
    address(sub_e6128ca0Address) = arg1
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
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

function sub_0e48a24e(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor8 != msg.sender:
        revert with 0, '!auth to withdraw'
    require ext_code.size(address(aceAddress))
    call address(aceAddress).withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function balanceOfPool() payable {
    require ext_code.size(address(aceAddress))
    staticcall address(aceAddress).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(sub_e6128ca0Address))
    staticcall address(sub_e6128ca0Address).0x43b0ff51 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_93693097(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor8 != msg.sender:
        revert with 0, '!auth'
    require ext_code.size(sub_aaba2d23Address)
    staticcall sub_aaba2d23Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(aceAddress))
    call address(aceAddress).deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
    require ext_code.size(address(aceAddress))
    staticcall address(aceAddress).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(sub_e6128ca0Address))
    staticcall address(sub_e6128ca0Address).0x43b0ff51 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
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

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
    call wantAddress with:
       funct uint32(stor5)
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor5):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if not ext_code.size(wrappedAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
        call wrappedAddress with:
           funct uint32(stor5)
             gas gas_remaining wei
            args 0, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor5):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
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
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        if not ext_code.size(wrappedAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
        call wrappedAddress with:
           funct uint32(stor5)
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor5):
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function panic() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
    call wantAddress with:
       funct uint32(stor5)
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor5):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if not ext_code.size(wrappedAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
        call wrappedAddress with:
           funct uint32(stor5)
             gas gas_remaining wei
            args 0, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor5):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
        require ext_code.size(address(aceAddress))
        call address(aceAddress).emergencyWithdraw(uint256 arg1) with:
             gas gas_remaining wei
            args poolId
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
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        if not ext_code.size(wrappedAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
        mem[ceil32(return_data.size) + 517 len 4] = 0
        call wrappedAddress with:
           funct uint32(stor5)
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor5):
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
            require ext_code.size(address(aceAddress))
            call address(aceAddress).emergencyWithdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args poolId
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
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            require ext_code.size(address(aceAddress))
            call address(aceAddress).emergencyWithdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args poolId, mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(address(sub_e6128ca0Address))
    staticcall address(sub_e6128ca0Address).0xbbe9b09e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(aceAddress))
    staticcall address(aceAddress).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(aceAddress))
    call address(aceAddress).withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args poolId, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_aaba2d23Address)
    staticcall sub_aaba2d23Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_e6128ca0Address))
    call address(sub_e6128ca0Address).leave(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(sub_e6128ca0Address))
    staticcall address(sub_e6128ca0Address).0x43b0ff51 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if tx.origin == owner:
        if not ext_code.size(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0 len 28]
        call wantAddress with:
           funct uint32(stor11)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0]
            if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor11):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    else:
        if not ext_call.return_data[0]:
            if not WITHDRAWAL_MAX:
                revert with 0, 'SafeMath: division by zero'
            if 0 / WITHDRAWAL_MAX > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[388 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) >> 32
            call wantAddress with:
               funct uint32(stor11)
                 gas gas_remaining wei
                args Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) << 224, mem[452 len 4]
        else:
            if WITHDRAW_FEE * ext_call.return_data[0] / ext_call.return_data[0] != WITHDRAW_FEE:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not WITHDRAWAL_MAX:
                revert with 0, 'SafeMath: division by zero'
            if WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[388 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX)) >> 32
            call wantAddress with:
               funct uint32(stor11)
                 gas gas_remaining wei
                args Mask(224, 32, ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX)) << 224, mem[452 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[420]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 499 len 22]
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
    require ext_code.size(wantAddress)
    staticcall wantAddress.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, address(unirouterAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[218 len 10]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    call wantAddress with:
       funct uint32(stor5)
         gas gas_remaining wei
        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), -1
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor5):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        require ext_code.size(wrappedAddress)
        staticcall wrappedAddress.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args this.address, address(unirouterAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[382 len 10]
        if not ext_code.size(wrappedAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call wrappedAddress with:
           funct uint32(stor5)
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), -1
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor5):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
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
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        require ext_code.size(wrappedAddress)
        staticcall wrappedAddress.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args this.address, address(unirouterAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[ceil32(return_data.size) + 383 len 10]
        if not ext_code.size(wrappedAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call wrappedAddress with:
           funct uint32(stor5)
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), -1
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor5):
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function sub_cd7860b0(?) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor8 != msg.sender:
        revert with 0, '!auth for custom txn'
    mem[96] = arg2
    if not arg5:
        mem[128] = arg3
        stor17.length = 2
        mem[0] = 17
        s = 0
        idx = 96
        while 160 > idx:
            stor17[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while stor17.length > idx:
            stor17[idx].field_0 = 0
            idx = idx + 1
            continue 
        require ext_code.size(arg2)
        staticcall arg2.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= arg4:
            if block.timestamp + 600 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[164] = arg4
            mem[196] = 0
            mem[260] = this.address
            mem[292] = block.timestamp + 600
            mem[228] = 160
            mem[324] = stor17.length
            if not stor17.length:
                require ext_code.size(arg1)
                call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, uint32(arg4), 0, 160, address(this.address), block.timestamp + 600, stor17.length
            else:
                mem[0] = 17
                mem[356] = address(stor17.field_0)
                idx = 356
                s = 0
                while (32 * stor17.length) + 356 > idx + 32:
                    mem[idx + 32] = stor17[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(arg1)
                call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, uint32(arg4), 0, 160, address(this.address), block.timestamp + 600, stor17.length, mem[356 len 32 * stor17.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 32
            require mem[160 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[160 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[160 len 4], Mask(224, 32, arg4) >> 32 + 160] <= 4294967296 and mem[160 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[160 len 4], Mask(224, 32, arg4) >> 32 + 160]) + 32 <= return_data.size
        else:
            mem[196] = arg1
            mem[228] = 0
            mem[160] = 68
            mem[196 len 28] = address(arg1) << 64
            mem[192 len 4] = approve(address arg1, uint256 arg2)
            mem[260] = 32
            mem[292] = 'SafeERC20: low-level call failed'
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0
            mem[416 len 4] = 0
            call arg2 with:
                 gas gas_remaining wei
                args 0, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg2:
                        revert with memory
                          from 128
                           len arg2
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg2:
                    require arg2 >= 32
                    if not arg3:
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[434 len 22]
                require ext_code.size(arg2)
                staticcall arg2.allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args this.address, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[446 len 10]
                mem[360] = arg1
                mem[392] = -1
                mem[324] = 68
                mem[360 len 28] = address(arg1) << 64
                mem[356 len 4] = approve(address arg1, uint256 arg2)
                mem[424] = 32
                mem[456] = 'SafeERC20: low-level call failed'
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[488 len 64] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[580 len 4] = 0
                call arg2 with:
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[552 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg2:
                            revert with memory
                              from 128
                               len arg2
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg2:
                        require arg2 >= 32
                        if not arg3:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[598 len 22]
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[488] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[492] = arg4
                    mem[524] = 0
                    mem[588] = this.address
                    mem[620] = block.timestamp + 600
                    mem[556] = 160
                    mem[652] = stor17.length
                    if not stor17.length:
                        require ext_code.size(arg1)
                        call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length
                    else:
                        mem[0] = 17
                        mem[684] = address(stor17.field_0)
                        idx = 684
                        s = 0
                        while (32 * stor17.length) + 684 > idx + 32:
                            mem[idx + 32] = stor17[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(arg1)
                        call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length, mem[684 len 32 * stor17.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 488
                    require return_data.size >= 32
                    require mem[488 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[488 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[mem[488 len 4], Mask(224, 32, arg4) >> 32 + 488] <= 4294967296 and mem[488 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[488 len 4], Mask(224, 32, arg4) >> 32 + 488]) + 32 <= return_data.size
                else:
                    mem[488] = return_data.size
                    mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[520]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 599 len 22]
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 489] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 493] = arg4
                    mem[ceil32(return_data.size) + 525] = 0
                    mem[ceil32(return_data.size) + 589] = this.address
                    mem[ceil32(return_data.size) + 621] = block.timestamp + 600
                    mem[ceil32(return_data.size) + 557] = 160
                    mem[ceil32(return_data.size) + 653] = stor17.length
                    if not stor17.length:
                        require ext_code.size(arg1)
                        call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length
                    else:
                        mem[0] = 17
                        mem[ceil32(return_data.size) + 685] = address(stor17.field_0)
                        idx = ceil32(return_data.size) + 685
                        s = 0
                        while ceil32(return_data.size) + (32 * stor17.length) + 685 > idx + 32:
                            mem[idx + 32] = stor17[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(arg1)
                        call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length, mem[ceil32(return_data.size) + 685 len 32 * stor17.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 489
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + 489] <= 4294967296 and mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + 489]) + 32 <= return_data.size
            else:
                mem[324] = return_data.size
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
                require ext_code.size(arg2)
                staticcall arg2.allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args this.address, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 447 len 10]
                mem[ceil32(return_data.size) + 361] = arg1
                mem[ceil32(return_data.size) + 393] = -1
                mem[ceil32(return_data.size) + 325] = 68
                mem[ceil32(return_data.size) + 361 len 28] = address(arg1) << 64
                mem[ceil32(return_data.size) + 357 len 4] = approve(address arg1, uint256 arg2)
                mem[ceil32(return_data.size) + 425] = 32
                mem[ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 489 len 64] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[ceil32(return_data.size) + 581 len 4] = 0
                call arg2 with:
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg2:
                            revert with memory
                              from 128
                               len arg2
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg2:
                        require arg2 >= 32
                        if not arg3:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 599 len 22]
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 489] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 493] = arg4
                    mem[ceil32(return_data.size) + 525] = 0
                    mem[ceil32(return_data.size) + 589] = this.address
                    mem[ceil32(return_data.size) + 621] = block.timestamp + 600
                    mem[ceil32(return_data.size) + 557] = 160
                    mem[ceil32(return_data.size) + 653] = stor17.length
                    if not stor17.length:
                        require ext_code.size(arg1)
                        call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length
                    else:
                        mem[0] = 17
                        mem[ceil32(return_data.size) + 685] = address(stor17.field_0)
                        idx = ceil32(return_data.size) + 685
                        s = 0
                        while ceil32(return_data.size) + (32 * stor17.length) + 685 > idx + 32:
                            mem[idx + 32] = stor17[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(arg1)
                        call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length, mem[ceil32(return_data.size) + 685 len 32 * stor17.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 489
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + 489] <= 4294967296 and mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + 489]) + 32 <= return_data.size
                else:
                    mem[ceil32(return_data.size) + 489] = return_data.size
                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
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
                    mem[(2 * ceil32(return_data.size)) + 654] = stor17.length
                    if not stor17.length:
                        require ext_code.size(arg1)
                        call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length, mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        mem[0] = 17
                        mem[(2 * ceil32(return_data.size)) + 686] = address(stor17.field_0)
                        idx = (2 * ceil32(return_data.size)) + 686
                        s = 0
                        while (2 * ceil32(return_data.size)) + (32 * stor17.length) + 686 > idx + 32:
                            mem[idx + 32] = stor17[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(arg1)
                        call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length, mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) + (32 * stor17.length) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 490 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 490
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 + 490] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 + 490]) + 32 <= return_data.size
    else:
        mem[128] = wrappedAddress
        mem[160] = arg3
        stor17.length = 3
        mem[0] = 17
        s = 0
        idx = 96
        while 192 > idx:
            stor17[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 3
        while stor17.length > idx:
            stor17[idx].field_0 = 0
            idx = idx + 1
            continue 
        require ext_code.size(arg2)
        staticcall arg2.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= arg4:
            if block.timestamp + 600 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[196] = arg4
            mem[228] = 0
            mem[292] = this.address
            mem[324] = block.timestamp + 600
            mem[260] = 160
            mem[356] = stor17.length
            if not stor17.length:
                require ext_code.size(arg1)
                call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length
            else:
                mem[0] = 17
                mem[388] = address(stor17.field_0)
                idx = 388
                s = 0
                while (32 * stor17.length) + 388 > idx + 32:
                    mem[idx + 32] = stor17[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(arg1)
                call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length, mem[388 len 32 * stor17.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            require mem[192 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 32 <= return_data.size
        else:
            mem[228] = arg1
            mem[260] = 0
            mem[192] = 68
            mem[228 len 28] = address(arg1) << 64
            mem[224 len 4] = approve(address arg1, uint256 arg2)
            mem[292] = 32
            mem[324] = 'SafeERC20: low-level call failed'
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            mem[356 len 64] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0
            mem[448 len 4] = 0
            call arg2 with:
                 gas gas_remaining wei
                args 0, mem[420 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg2:
                        revert with memory
                          from 128
                           len arg2
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg2:
                    require arg2 >= 32
                    if not wrappedAddress:
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[466 len 22]
                require ext_code.size(arg2)
                staticcall arg2.allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args this.address, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[478 len 10]
                mem[392] = arg1
                mem[424] = -1
                mem[356] = 68
                mem[392 len 28] = address(arg1) << 64
                mem[388 len 4] = approve(address arg1, uint256 arg2)
                mem[456] = 32
                mem[488] = 'SafeERC20: low-level call failed'
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[520 len 64] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[612 len 4] = 0
                call arg2 with:
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[584 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg2:
                            revert with memory
                              from 128
                               len arg2
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg2:
                        require arg2 >= 32
                        if not wrappedAddress:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[630 len 22]
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[520] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[524] = arg4
                    mem[556] = 0
                    mem[620] = this.address
                    mem[652] = block.timestamp + 600
                    mem[588] = 160
                    mem[684] = stor17.length
                    if not stor17.length:
                        require ext_code.size(arg1)
                        call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length
                    else:
                        mem[0] = 17
                        mem[716] = address(stor17.field_0)
                        idx = 716
                        s = 0
                        while (32 * stor17.length) + 716 > idx + 32:
                            mem[idx + 32] = stor17[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(arg1)
                        call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length, mem[716 len 32 * stor17.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 520
                    require return_data.size >= 32
                    require mem[520 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[520 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[mem[520 len 4], Mask(224, 32, arg4) >> 32 + 520] <= 4294967296 and mem[520 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[520 len 4], Mask(224, 32, arg4) >> 32 + 520]) + 32 <= return_data.size
                else:
                    mem[520] = return_data.size
                    mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[552]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 631 len 22]
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 525] = arg4
                    mem[ceil32(return_data.size) + 557] = 0
                    mem[ceil32(return_data.size) + 621] = this.address
                    mem[ceil32(return_data.size) + 653] = block.timestamp + 600
                    mem[ceil32(return_data.size) + 589] = 160
                    mem[ceil32(return_data.size) + 685] = stor17.length
                    if not stor17.length:
                        require ext_code.size(arg1)
                        call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length
                    else:
                        mem[0] = 17
                        mem[ceil32(return_data.size) + 717] = address(stor17.field_0)
                        idx = ceil32(return_data.size) + 717
                        s = 0
                        while ceil32(return_data.size) + (32 * stor17.length) + 717 > idx + 32:
                            mem[idx + 32] = stor17[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(arg1)
                        call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length, mem[ceil32(return_data.size) + 717 len 32 * stor17.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 521
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg4) >> 32 + 521] <= 4294967296 and mem[ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg4) >> 32 + 521]) + 32 <= return_data.size
            else:
                mem[356] = return_data.size
                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[388]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 467 len 22]
                require ext_code.size(arg2)
                staticcall arg2.allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args this.address, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 479 len 10]
                mem[ceil32(return_data.size) + 393] = arg1
                mem[ceil32(return_data.size) + 425] = -1
                mem[ceil32(return_data.size) + 357] = 68
                mem[ceil32(return_data.size) + 393 len 28] = address(arg1) << 64
                mem[ceil32(return_data.size) + 389 len 4] = approve(address arg1, uint256 arg2)
                mem[ceil32(return_data.size) + 457] = 32
                mem[ceil32(return_data.size) + 489] = 'SafeERC20: low-level call failed'
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 521 len 64] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[ceil32(return_data.size) + 613 len 4] = 0
                call arg2 with:
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 585 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg2:
                            revert with memory
                              from 128
                               len arg2
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg2:
                        require arg2 >= 32
                        if not wrappedAddress:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 631 len 22]
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 521] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 525] = arg4
                    mem[ceil32(return_data.size) + 557] = 0
                    mem[ceil32(return_data.size) + 621] = this.address
                    mem[ceil32(return_data.size) + 653] = block.timestamp + 600
                    mem[ceil32(return_data.size) + 589] = 160
                    mem[ceil32(return_data.size) + 685] = stor17.length
                    if not stor17.length:
                        require ext_code.size(arg1)
                        call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length
                    else:
                        mem[0] = 17
                        mem[ceil32(return_data.size) + 717] = address(stor17.field_0)
                        idx = ceil32(return_data.size) + 717
                        s = 0
                        while ceil32(return_data.size) + (32 * stor17.length) + 717 > idx + 32:
                            mem[idx + 32] = stor17[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(arg1)
                        call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length, mem[ceil32(return_data.size) + 717 len 32 * stor17.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 521
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg4) >> 32 + 521] <= 4294967296 and mem[ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 521 len 4], Mask(224, 32, arg4) >> 32 + 521]) + 32 <= return_data.size
                else:
                    mem[ceil32(return_data.size) + 521] = return_data.size
                    mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 553]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 
                                    'SafeMath: addition overflow',
                                    mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    mem[(2 * ceil32(return_data.size)) + 522] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 526] = arg4
                    mem[(2 * ceil32(return_data.size)) + 558] = 0
                    mem[(2 * ceil32(return_data.size)) + 622] = this.address
                    mem[(2 * ceil32(return_data.size)) + 654] = block.timestamp + 600
                    mem[(2 * ceil32(return_data.size)) + 590] = 160
                    mem[(2 * ceil32(return_data.size)) + 686] = stor17.length
                    if not stor17.length:
                        require ext_code.size(arg1)
                        call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length, mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        mem[0] = 17
                        mem[(2 * ceil32(return_data.size)) + 718] = address(stor17.field_0)
                        idx = (2 * ceil32(return_data.size)) + 718
                        s = 0
                        while (2 * ceil32(return_data.size)) + (32 * stor17.length) + 718 > idx + 32:
                            mem[idx + 32] = stor17[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(arg1)
                        call arg1.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg4, 0, 160, address(this.address), block.timestamp + 600, stor17.length, mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) + (32 * stor17.length) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 522 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 522
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                    require mem[(2 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg4) >> 32 + 522] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 522 len 4], Mask(224, 32, arg4) >> 32 + 522]) + 32 <= return_data.size
}

function deposit() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_aaba2d23Address)
        staticcall sub_aaba2d23Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_aaba2d23Address)
        staticcall sub_aaba2d23Address.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args this.address, address(aceAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            require ext_code.size(address(aceAddress))
            call address(aceAddress).deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args poolId, ext_call.return_data[0]
        else:
            if not ext_code.size(sub_aaba2d23Address):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
            call sub_aaba2d23Address with:
               funct uint32(stor6)
                 gas gas_remaining wei
                args 0, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6):
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                require ext_code.size(sub_aaba2d23Address)
                staticcall sub_aaba2d23Address.allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args this.address, address(aceAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[382 len 10]
                if not ext_code.size(sub_aaba2d23Address):
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call sub_aaba2d23Address with:
                   funct uint32(stor6)
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[488 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(address(aceAddress))
                call address(aceAddress).deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args poolId, ext_call.return_data[0]
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
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                require ext_code.size(sub_aaba2d23Address)
                staticcall sub_aaba2d23Address.allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args this.address, address(aceAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 383 len 10]
                if not ext_code.size(sub_aaba2d23Address):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[ceil32(return_data.size) + 517 len 4] = 0
                call sub_aaba2d23Address with:
                   funct uint32(stor6)
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                    require ext_code.size(address(aceAddress))
                    call address(aceAddress).deposit(uint256 arg1, uint256 arg2) with:
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
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(address(aceAddress))
                    call address(aceAddress).deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args poolId, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        require ext_code.size(wantAddress)
        staticcall wantAddress.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args this.address, address(sub_e6128ca0Address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            require ext_code.size(address(sub_e6128ca0Address))
            call address(sub_e6128ca0Address).enter(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_aaba2d23Address)
            staticcall sub_aaba2d23Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_aaba2d23Address)
            staticcall sub_aaba2d23Address.allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args this.address, address(aceAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                require ext_code.size(address(aceAddress))
                call address(aceAddress).deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args poolId, ext_call.return_data[0]
            else:
                if not ext_code.size(sub_aaba2d23Address):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
                call sub_aaba2d23Address with:
                   funct uint32(stor6)
                     gas gas_remaining wei
                    args 0, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    require ext_code.size(sub_aaba2d23Address)
                    staticcall sub_aaba2d23Address.allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(aceAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[382 len 10]
                    if not ext_code.size(sub_aaba2d23Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    call sub_aaba2d23Address with:
                       funct uint32(stor6)
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[488 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                    require ext_code.size(address(aceAddress))
                    call address(aceAddress).deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args poolId, ext_call.return_data[0]
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
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                    require ext_code.size(sub_aaba2d23Address)
                    staticcall sub_aaba2d23Address.allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(aceAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(return_data.size) + 383 len 10]
                    if not ext_code.size(sub_aaba2d23Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[ceil32(return_data.size) + 517 len 4] = 0
                    call sub_aaba2d23Address with:
                       funct uint32(stor6)
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
                        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6):
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                        require ext_code.size(address(aceAddress))
                        call address(aceAddress).deposit(uint256 arg1, uint256 arg2) with:
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require ext_code.size(address(aceAddress))
                        call address(aceAddress).deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args poolId, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0
            call wantAddress with:
               funct uint32(stor7)
                 gas gas_remaining wei
                args 0, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor7):
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                require ext_code.size(wantAddress)
                staticcall wantAddress.allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args this.address, address(sub_e6128ca0Address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[382 len 10]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call wantAddress with:
                   funct uint32(stor7)
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[488 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor7):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                    require ext_code.size(address(sub_e6128ca0Address))
                    call address(sub_e6128ca0Address).enter(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_aaba2d23Address)
                    staticcall sub_aaba2d23Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_aaba2d23Address)
                    staticcall sub_aaba2d23Address.allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(aceAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                        require ext_code.size(address(aceAddress))
                        call address(aceAddress).deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args poolId, ext_call.return_data[0]
                    else:
                        if not ext_code.size(sub_aaba2d23Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[588 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
                        call sub_aaba2d23Address with:
                           funct uint32(stor6)
                             gas gas_remaining wei
                            args 0, mem[652 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0
                            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor7):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
                            require ext_code.size(sub_aaba2d23Address)
                            staticcall sub_aaba2d23Address.allowance(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(aceAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[710 len 10]
                            if not ext_code.size(sub_aaba2d23Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[752 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            call sub_aaba2d23Address with:
                               funct uint32(stor6)
                                 gas gas_remaining wei
                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[816 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0
                                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor7):
                                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[862 len 22]
                            else:
                                mem[784 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[784]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 863 len 22]
                            require ext_code.size(address(aceAddress))
                            call address(aceAddress).deposit(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args poolId, ext_call.return_data[0]
                        else:
                            mem[620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[620]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 699 len 22]
                            require ext_code.size(sub_aaba2d23Address)
                            staticcall sub_aaba2d23Address.allowance(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(aceAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(return_data.size) + 711 len 10]
                            if not ext_code.size(sub_aaba2d23Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 753 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[ceil32(return_data.size) + 845 len 4] = 0
                            call sub_aaba2d23Address with:
                               funct uint32(stor6)
                                 gas gas_remaining wei
                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 817 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0
                                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor7):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 863 len 22]
                                require ext_code.size(address(aceAddress))
                                call address(aceAddress).deposit(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args poolId, ext_call.return_data[0]
                            else:
                                mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 785]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                require ext_code.size(address(aceAddress))
                                call address(aceAddress).deposit(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args poolId, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                    require ext_code.size(address(sub_e6128ca0Address))
                    call address(sub_e6128ca0Address).enter(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_aaba2d23Address)
                    staticcall sub_aaba2d23Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_aaba2d23Address)
                    staticcall sub_aaba2d23Address.allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(aceAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                        require ext_code.size(address(aceAddress))
                        call address(aceAddress).deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args poolId, ext_call.return_data[0]
                    else:
                        if not ext_code.size(sub_aaba2d23Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
                        mem[ceil32(return_data.size) + 681 len 4] = 0
                        call sub_aaba2d23Address with:
                           funct uint32(stor6)
                             gas gas_remaining wei
                            args 0, mem[ceil32(return_data.size) + 653 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0
                            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor7):
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 699 len 22]
                            require ext_code.size(sub_aaba2d23Address)
                            staticcall sub_aaba2d23Address.allowance(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(aceAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(return_data.size) + 711 len 10]
                            if not ext_code.size(sub_aaba2d23Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 753 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[ceil32(return_data.size) + 845 len 4] = 0
                            call sub_aaba2d23Address with:
                               funct uint32(stor6)
                                 gas gas_remaining wei
                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 817 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0
                                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor7):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 863 len 22]
                                require ext_code.size(address(aceAddress))
                                call address(aceAddress).deposit(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args poolId, ext_call.return_data[0]
                            else:
                                mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 785]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                require ext_code.size(address(aceAddress))
                                call address(aceAddress).deposit(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args poolId, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        else:
                            mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 621]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            require ext_code.size(sub_aaba2d23Address)
                            staticcall sub_aaba2d23Address.allowance(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(aceAddress), mem[(2 * ceil32(return_data.size)) + 658 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[(2 * ceil32(return_data.size)) + 712 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 10]
                            if not ext_code.size(sub_aaba2d23Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[(2 * ceil32(return_data.size)) + 754 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, -1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                            call sub_aaba2d23Address with:
                               funct uint32(stor6), mem[(2 * ceil32(return_data.size)) + 658 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                                 gas gas_remaining wei
                                args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, -1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 754 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0
                                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor7):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 864 len 22]
                            else:
                                mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(2 * ceil32(return_data.size)) + 786]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                            require ext_code.size(address(aceAddress))
                            call address(aceAddress).deposit(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args poolId, ext_call.return_data[0]
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
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                require ext_code.size(wantAddress)
                staticcall wantAddress.allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args this.address, address(sub_e6128ca0Address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 383 len 10]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[ceil32(return_data.size) + 517 len 4] = 0
                call wantAddress with:
                   funct uint32(stor7)
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor7):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                    require ext_code.size(address(sub_e6128ca0Address))
                    call address(sub_e6128ca0Address).enter(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_aaba2d23Address)
                    staticcall sub_aaba2d23Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_aaba2d23Address)
                    staticcall sub_aaba2d23Address.allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(aceAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                        require ext_code.size(address(aceAddress))
                        call address(aceAddress).deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args poolId, ext_call.return_data[0]
                    else:
                        if not ext_code.size(sub_aaba2d23Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0
                        mem[ceil32(return_data.size) + 681 len 4] = 0
                        call sub_aaba2d23Address with:
                           funct uint32(stor6)
                             gas gas_remaining wei
                            args 0, mem[ceil32(return_data.size) + 653 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0
                            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor7):
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 699 len 22]
                            require ext_code.size(sub_aaba2d23Address)
                            staticcall sub_aaba2d23Address.allowance(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(aceAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[ceil32(return_data.size) + 711 len 10]
                            if not ext_code.size(sub_aaba2d23Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 753 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[ceil32(return_data.size) + 845 len 4] = 0
                            call sub_aaba2d23Address with:
                               funct uint32(stor6)
                                 gas gas_remaining wei
                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 817 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0
                                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor7):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 863 len 22]
                                require ext_code.size(address(aceAddress))
                                call address(aceAddress).deposit(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args poolId, ext_call.return_data[0]
                            else:
                                mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 785]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                require ext_code.size(address(aceAddress))
                                call address(aceAddress).deposit(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args poolId, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 822 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        else:
                            mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 621]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            require ext_code.size(sub_aaba2d23Address)
                            staticcall sub_aaba2d23Address.allowance(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(aceAddress), mem[(2 * ceil32(return_data.size)) + 658 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[(2 * ceil32(return_data.size)) + 712 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 10]
                            if not ext_code.size(sub_aaba2d23Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[(2 * ceil32(return_data.size)) + 754 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, -1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                            call sub_aaba2d23Address with:
                               funct uint32(stor6), mem[(2 * ceil32(return_data.size)) + 658 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                                 gas gas_remaining wei
                                args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, -1) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 754 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0
                                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor7):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 864 len 22]
                            else:
                                mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(2 * ceil32(return_data.size)) + 786]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                            require ext_code.size(address(aceAddress))
                            call address(aceAddress).deposit(uint256 arg1, uint256 arg2) with:
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
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(address(sub_e6128ca0Address))
                    call address(sub_e6128ca0Address).enter(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_aaba2d23Address)
                    staticcall sub_aaba2d23Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address, mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_aaba2d23Address)
                    staticcall sub_aaba2d23Address.allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, address(aceAddress), mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                        require ext_code.size(address(aceAddress))
                        call address(aceAddress).deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args poolId, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        if not ext_code.size(sub_aaba2d23Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 590 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                        call sub_aaba2d23Address with:
                           funct uint32(stor6), mem[(2 * ceil32(return_data.size)) + 494 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                             gas gas_remaining wei
                            args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 590 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0
                            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor7):
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 700 len 22]
                            require ext_code.size(sub_aaba2d23Address)
                            staticcall sub_aaba2d23Address.allowance(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(aceAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[(2 * ceil32(return_data.size)) + 712 len 10]
                            if not ext_code.size(sub_aaba2d23Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[(2 * ceil32(return_data.size)) + 754 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            call sub_aaba2d23Address with:
                               funct uint32(stor6)
                                 gas gas_remaining wei
                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[(2 * ceil32(return_data.size)) + 818 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0
                                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor7):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 864 len 22]
                            else:
                                mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(2 * ceil32(return_data.size)) + 786]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                            require ext_code.size(address(aceAddress))
                            call address(aceAddress).deposit(uint256 arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args poolId, ext_call.return_data[0]
                        else:
                            mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(2 * ceil32(return_data.size)) + 622]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
                            require ext_code.size(sub_aaba2d23Address)
                            staticcall sub_aaba2d23Address.allowance(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args this.address, address(aceAddress)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len 10]
                            if not ext_code.size(sub_aaba2d23Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 847 len 4] = 0
                            call sub_aaba2d23Address with:
                               funct uint32(stor6)
                                 gas gas_remaining wei
                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0
                                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor7):
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                                require ext_code.size(address(aceAddress))
                                call address(aceAddress).deposit(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args poolId, ext_call.return_data[0]
                            else:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755] = return_data.size
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
                                        mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 760] = 32
                                        mem[(4 * ceil32(return_data.size)) + 792] = 42
                                        mem[(4 * ceil32(return_data.size)) + 824 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 756
                                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                mem[(4 * ceil32(return_data.size)) + 760] = poolId
                                mem[(4 * ceil32(return_data.size)) + 792] = ext_call.return_data[0]
                                require ext_code.size(address(aceAddress))
                                call address(aceAddress).deposit(uint256 arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 760 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
