contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#  - beforeDeposit()
#  - sub_cd7860b0(?)
#  - deposit()
#
uint8 stor0; offset 160
address owner;
address wrappedAddress;
address wantAddress;
address outputAddress;
address sub_aaba2d23Address;
uint32 stor5;
address unirouterAddress;
uint256 stor5;
address aceAddress;
address sub_e6128ca0Address;
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
    return bool(stor0)
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
    return aceAddress
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
    return sub_e6128ca0Address
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
    aceAddress = arg1
}

function sub_4cdd7435(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor8 != msg.sender:
        revert with 0, '!auth to set Mirror'
    sub_e6128ca0Address = arg1
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
    require ext_code.size(aceAddress)
    call aceAddress.withdraw(uint256 arg1, uint256 arg2) with:
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
    require ext_code.size(aceAddress)
    staticcall aceAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_e6128ca0Address)
    staticcall sub_e6128ca0Address.0x43b0ff51 with:
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
    require ext_code.size(aceAddress)
    call aceAddress.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
    require ext_code.size(aceAddress)
    staticcall aceAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_e6128ca0Address)
    staticcall sub_e6128ca0Address.0x43b0ff51 with:
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
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
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
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
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
        require ext_code.size(aceAddress)
        call aceAddress.emergencyWithdraw(uint256 arg1) with:
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
            require ext_code.size(aceAddress)
            call aceAddress.emergencyWithdraw(uint256 arg1) with:
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
            require ext_code.size(aceAddress)
            call aceAddress.emergencyWithdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args poolId, mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
    require ext_code.size(wantAddress)
    staticcall wantAddress.0xdd62ed3e with:
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
        staticcall wrappedAddress.0xdd62ed3e with:
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
        if not return_data.size:
            require ext_code.size(wrappedAddress)
            staticcall wrappedAddress.0xdd62ed3e with:
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
        else:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
            require ext_code.size(wrappedAddress)
            staticcall wrappedAddress.0xdd62ed3e with:
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
            mem[ceil32(return_data.size) + 489 len 0] = 0
            call wrappedAddress with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[ceil32(return_data.size) + 489 len 4]
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
                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(sub_e6128ca0Address)
    staticcall sub_e6128ca0Address.0xbbe9b09e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aceAddress)
    staticcall aceAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(aceAddress)
    call aceAddress.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args poolId, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_e6128ca0Address)
    staticcall sub_e6128ca0Address.0xbc3bcb4f with:
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
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                if tx.origin == owner:
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0 len 28]
                    call wantAddress with:
                       funct uint32(stor11)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0]
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor11):
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
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).0x9695c95a with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - (0 / WITHDRAWAL_MAX))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / WITHDRAWAL_MAX > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) >> 32
                        call wantAddress with:
                           funct uint32(stor11)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) << 224, mem[516 len 4]
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
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).0x9695c95a with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX)) >> 32
                        mem[516 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor11)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX)) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
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
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0 len 28]
                    mem[324 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor11)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0]
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor11):
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
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).0x9695c95a with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - (0 / WITHDRAWAL_MAX))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / WITHDRAWAL_MAX > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) >> 32
                        call wantAddress with:
                           funct uint32(stor11)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) << 224, mem[516 len 4]
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
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).0x9695c95a with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX)) >> 32
                        mem[516 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor11)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX)) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
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
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(sub_e6128ca0Address)
            call sub_e6128ca0Address.leave(uint256 arg1) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                if tx.origin == owner:
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0 len 28]
                    mem[388 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor11)
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
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).0x9695c95a with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - (0 / WITHDRAWAL_MAX))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / WITHDRAWAL_MAX > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) >> 32
                        mem[580 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor11)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) << 224, mem[580 len 4]
                    else:
                        if WITHDRAW_FEE * ext_call.return_data[0] / ext_call.return_data[0] != WITHDRAW_FEE:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not WITHDRAWAL_MAX:
                            revert with 0, 'SafeMath: division by zero'
                        if WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).0x9695c95a with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX)) >> 32
                        mem[580 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor11)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX)) << 224, mem[580 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 627 len 22]
            else:
                if tx.origin == owner:
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0 len 28]
                    call wantAddress with:
                       funct uint32(stor11)
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
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).0x9695c95a with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - (0 / WITHDRAWAL_MAX))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / WITHDRAWAL_MAX > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) >> 32
                        call wantAddress with:
                           funct uint32(stor11)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) << 224, mem[580 len 4]
                    else:
                        if WITHDRAW_FEE * ext_call.return_data[0] / ext_call.return_data[0] != WITHDRAW_FEE:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not WITHDRAWAL_MAX:
                            revert with 0, 'SafeMath: division by zero'
                        if WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).0x9695c95a with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX)) >> 32
                        mem[580 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor11)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX)) << 224, mem[580 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 627 len 22]
    else:
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                if tx.origin == owner:
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0 len 28]
                    call wantAddress with:
                       funct uint32(stor11)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0]
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor11):
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
                    if ext_call.return_data[0]:
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
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).0x9695c95a with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX)) >> 32
                        call wantAddress with:
                           funct uint32(stor11)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX)) << 224, mem[516 len 4]
                    else:
                        if not WITHDRAWAL_MAX:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / WITHDRAWAL_MAX > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).0x9695c95a with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - (0 / WITHDRAWAL_MAX))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / WITHDRAWAL_MAX > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) >> 32
                        mem[516 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor11)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
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
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0 len 28]
                    mem[324 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor11)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0]
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor11):
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
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).0x9695c95a with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - (0 / WITHDRAWAL_MAX))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / WITHDRAWAL_MAX > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) >> 32
                        call wantAddress with:
                           funct uint32(stor11)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) << 224, mem[516 len 4]
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
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).0x9695c95a with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX)) >> 32
                        mem[516 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor11)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX)) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
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
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(sub_e6128ca0Address)
            call sub_e6128ca0Address.leave(uint256 arg1) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                if tx.origin == owner:
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0 len 28]
                    call wantAddress with:
                       funct uint32(stor11)
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
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).0x9695c95a with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - (0 / WITHDRAWAL_MAX))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / WITHDRAWAL_MAX > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) >> 32
                        mem[580 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor11)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) << 224, mem[580 len 4]
                    else:
                        if WITHDRAW_FEE * ext_call.return_data[0] / ext_call.return_data[0] != WITHDRAW_FEE:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not WITHDRAWAL_MAX:
                            revert with 0, 'SafeMath: division by zero'
                        if WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).0x9695c95a with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX)) >> 32
                        mem[580 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor11)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX)) << 224, mem[580 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 627 len 22]
            else:
                if tx.origin == owner:
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[0 len 28]
                    call wantAddress with:
                       funct uint32(stor11)
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
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).0x9695c95a with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - (0 / WITHDRAWAL_MAX))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / WITHDRAWAL_MAX > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) >> 32
                        call wantAddress with:
                           funct uint32(stor11)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) << 224, mem[580 len 4]
                    else:
                        if WITHDRAW_FEE * ext_call.return_data[0] / ext_call.return_data[0] != WITHDRAW_FEE:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not WITHDRAWAL_MAX:
                            revert with 0, 'SafeMath: division by zero'
                        if WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(vaultAddress))
                        call address(vaultAddress).0x9695c95a with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX)) >> 32
                        mem[580 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor11)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (WITHDRAW_FEE * ext_call.return_data[0] / WITHDRAWAL_MAX)) << 224, mem[580 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 627 len 22]
}



}
