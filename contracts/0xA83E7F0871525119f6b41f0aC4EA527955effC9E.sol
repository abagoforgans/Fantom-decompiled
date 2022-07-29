contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#  - beforeDeposit()
#
uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address wrappedAddress;
address wantAddress;
address outputAddress;
uint32 stor4;
address unirouterAddress;
uint256 stor4;
uint32 stor5;
address masterchefAddress;
uint256 stor5;
uint32 stor7;
address stor7;
uint256 stor7;
address strategistAddress;
address feeBatchAddress;
uint32 stor10;
address vaultAddress;
uint256 stor10;
address harvesterAddress;
uint256 poolId;
uint8 sub_a5a7cb60;
array of address wantToWrappedRoute;
array of address outputToWrappedRoute;
array of address sub_2183cde9;
array of address outputToWantRoute;
array of struct stor18;
mapping of uint8 stor19;
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

function feeBatchAddress() payable {
    return feeBatchAddress
}

function outputToWrappedRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToWrappedRoute.length
    return outputToWrappedRoute[arg1]
}

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
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
    return bool(stor19[arg1])
}

function WITHDRAW_FEE() payable {
    return WITHDRAW_FEE
}

function sub_a5a7cb60(?) payable {
    return bool(sub_a5a7cb60)
}

function MAX_FEE() payable {
    return MAX_FEE
}

function outputToWantRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToWantRoute.length
    return outputToWantRoute[arg1]
}

function output() payable {
    return outputAddress
}

function masterchef() payable {
    return address(masterchefAddress)
}

function vault() payable {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function sub_6d54ed02(?) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        revert with 0, '!auth'
    sub_a5a7cb60 = uint8(arg1)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_d2969d01(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeBatchAddress = arg1
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19[address(arg1)] = uint8(arg2)
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 5000:
        revert with 0, 'withdraw fee too high'
    CALL_FEE = arg1
    STRATEGIST_FEE = arg2
    WITHDRAW_FEE = arg3
    FEE_BATCH = arg4
}

function balanceOfPool() payable {
    require ext_code.size(address(masterchefAddress))
    staticcall address(masterchefAddress).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, this.address
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

function balanceOf() payable {
    require ext_code.size(address(masterchefAddress))
    staticcall address(masterchefAddress).userInfo(uint256 arg1, address arg2) with:
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

function retireStrat() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(masterchefAddress))
    call address(masterchefAddress).emergencyWithdraw(uint256 arg1) with:
         gas gas_remaining wei
        args poolId
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
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(wantAddress)
        staticcall wantAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(masterchefAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            if ext_code.size(wantAddress) <= 0:
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
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(masterchefAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[382 len 10]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call wantAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[488 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor5):
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
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(masterchefAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 383 len 10]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[ceil32(return_data.size) + 489 len 0] = 0
                call wantAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor5):
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
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
        require ext_code.size(address(masterchefAddress))
        call address(masterchefAddress).deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args poolId, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function panic() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
    if ext_code.size(wantAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
    call wantAddress with:
       funct uint32(stor4)
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if ext_code.size(wrappedAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
        mem[488 len 0] = 0
        call wrappedAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0) << 256, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[588 len 64] = 0, address(masterchefAddress), 0
            call wantAddress with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args 0, mem[524 len 28], mem[652 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
            else:
                mem[620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[620]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
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
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = 0, address(masterchefAddress), 0
            call wantAddress with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 699 len 22]
            else:
                mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 621]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
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
        if ext_code.size(wrappedAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
        mem[ceil32(return_data.size) + 489 len 0] = 0
        call wrappedAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0) << 256, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = 0, address(masterchefAddress), 0
            call wantAddress with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 699 len 22]
            else:
                mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 621]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
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
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, address(masterchefAddress), 0
            call wantAddress with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 700 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 622]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
    require ext_code.size(address(masterchefAddress))
    call address(masterchefAddress).emergencyWithdraw(uint256 arg1) with:
         gas gas_remaining wei
        args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor0.field_160):
        revert with 0, 'Pausable: not paused'
    Mask(96, 0, stor0.field_160) = 0
    emit Unpaused(msg.sender);
    require ext_code.size(wantAddress)
    staticcall wantAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(unirouterAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[218 len 10]
    if ext_code.size(wantAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[324 len 0] = 0
    call wantAddress with:
       funct uint32(stor4)
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), -1
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        require ext_code.size(wrappedAddress)
        staticcall wrappedAddress.0xdd62ed3e with:
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
                        mem[382 len 10]
        if ext_code.size(wrappedAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, address(unirouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call wrappedAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args -1, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), -1
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(masterchefAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[546 len 10]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[588 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call wantAddress with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[652 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), -1
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
            else:
                mem[620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[620]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
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
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(masterchefAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 547 len 10]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call wantAddress with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), -1
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 699 len 22]
            else:
                mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 621]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
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
        require ext_code.size(wrappedAddress)
        staticcall wrappedAddress.0xdd62ed3e with:
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
                        mem[ceil32(return_data.size) + 383 len 10]
        if ext_code.size(wrappedAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[ceil32(return_data.size) + 517 len 4] = 0
        call wrappedAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args -1, 0, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), -1
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(masterchefAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 547 len 10]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = 0, address(masterchefAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call wantAddress with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args -1, mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), -1
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 699 len 22]
            else:
                mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 621]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len 22]
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
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(masterchefAddress), mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(2 * ceil32(return_data.size)) + 548 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 10]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, address(masterchefAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call wantAddress with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args -1, mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), -1
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 700 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 622]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
    if ext_code.size(wantAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
    call wantAddress with:
       funct uint32(stor4)
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if ext_code.size(wrappedAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
        call wrappedAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args 0, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[588 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
            mem[652 len 0] = 0
            call wantAddress with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[652 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
            else:
                mem[620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[620]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
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
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0
            mem[ceil32(return_data.size) + 653 len 0] = 0
            call wantAddress with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), 0) << 256, mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 699 len 22]
            else:
                mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 621]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            if ext_code.size(wrappedAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
            mem[ceil32(return_data.size) + 489 len 0] = 0
            call wrappedAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0) << 256, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = 0, address(masterchefAddress), 0
                call wantAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                else:
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
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
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, address(masterchefAddress), 0
                call wantAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 622]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
        else:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
            if ext_code.size(wrappedAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
            mem[ceil32(return_data.size) + 489 len 0] = 0
            call wrappedAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0) << 256, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = 0, address(masterchefAddress), 0
                call wantAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                else:
                    mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 621]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 700 len 22]
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
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, address(masterchefAddress), 0
                call wantAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor4):
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 622]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
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
    if ext_call.return_data[0] >= arg1:
        if ext_call.return_data[0] > arg1:
            if tx.origin == owner:
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg1) >> 32
                mem[324 len 0] = 0
                call wantAddress with:
                   funct uint32(stor10)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), arg1
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor10):
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
                    mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg1 - (0 / WITHDRAWAL_MAX)) >> 32
                    call wantAddress with:
                       funct uint32(stor10)
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
                    mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg1 - (arg1 * WITHDRAW_FEE / WITHDRAWAL_MAX)) >> 32
                    call wantAddress with:
                       funct uint32(stor10)
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
        else:
            if tx.origin == owner:
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                mem[324 len 0] = 0
                call wantAddress with:
                   funct uint32(stor10)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0]
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor10):
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
                    mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) >> 32
                    call wantAddress with:
                       funct uint32(stor10)
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
                    mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * WITHDRAW_FEE / WITHDRAWAL_MAX)) >> 32
                    mem[452 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor10)
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
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(masterchefAddress))
        call address(masterchefAddress).withdraw(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args poolId, arg1 - ext_call.return_data[0]
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
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                mem[388 len 0] = 0
                call wantAddress with:
                   funct uint32(stor10)
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
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, ext_call.return_data[0] - (0 / WITHDRAWAL_MAX)) >> 32
                    call wantAddress with:
                       funct uint32(stor10)
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
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * WITHDRAW_FEE / WITHDRAWAL_MAX)) >> 32
                    mem[516 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor10)
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
            if tx.origin == owner:
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg1) >> 32
                call wantAddress with:
                   funct uint32(stor10)
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
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg1 - (0 / WITHDRAWAL_MAX)) >> 32
                    call wantAddress with:
                       funct uint32(stor10)
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
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg1 - (arg1 * WITHDRAW_FEE / WITHDRAWAL_MAX)) >> 32
                    mem[516 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor10)
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
        stor18.length = 2
        s = 0
        idx = 96
        while 160 > idx:
            stor18[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while stor18.length > idx:
            stor18[idx].field_0 = 0
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
        mem[324] = stor18.length
        if not stor18.length:
            require ext_code.size(arg3)
            call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, uint32(arg4), 0, 160, address(this.address), block.timestamp + 600, stor18.length
        else:
            mem[0] = 18
            mem[356] = address(stor18.field_0)
            idx = 356
            s = 0
            while (32 * stor18.length) + 356 > idx + 32:
                mem[idx + 32] = stor18[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(arg3)
            call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, uint32(arg4), 0, 160, address(this.address), block.timestamp + 600, stor18.length, mem[356 len 32 * stor18.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 160
        require return_data.size >= 32
        require mem[160 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
        require mem[160 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
        require mem[mem[160 len 4], Mask(224, 32, arg4) >> 32 + 160] <= 4294967296 and mem[160 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[160 len 4], Mask(224, 32, arg4) >> 32 + 160]) + 32 <= return_data.size
    else:
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = address(arg3) << 64 or 0x95ea7b300000000000000000000000000000000000000000000000000000000, 0, 0
        mem[352 len 4] = 0
        mem[324 len 0] = 0
        call arg1 with:
             gas gas_remaining wei
            args Mask(480, -256, address(arg3) << 64 or 0x95ea7b300000000000000000000000000000000000000000000000000000000, 0, 0) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with address(arg3) << 64 or 0x95ea7b300000000000000000000000000000000000000000000000000000000, 0, 0
            if not address(arg3) << 64 and False:
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
            if ext_code.size(arg1) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = 0, address(arg3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[516 len 4] = 0
            call arg1 with:
                 gas gas_remaining wei
                args -1, mem[360 len 28], mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with address(arg3) << 64 or 0x95ea7b300000000000000000000000000000000000000000000000000000000, 0, 0
                if not address(arg3) << 64 and False:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                mem[424] = arg1
                mem[456] = arg2
                stor18.length = 2
                s = 0
                idx = 424
                while 488 > idx:
                    stor18[s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while stor18.length > idx:
                    stor18[idx].field_0 = 0
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
                mem[652] = stor18.length
                if not stor18.length:
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor18.length
                else:
                    mem[0] = 18
                    mem[684] = address(stor18.field_0)
                    idx = 684
                    s = 0
                    while (32 * stor18.length) + 684 > idx + 32:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor18.length, mem[684 len 32 * stor18.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 488
                require return_data.size >= 32
                require mem[488 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[488 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[488 len 4], Mask(224, 32, arg4) >> 32 + 488] <= 4294967296 and mem[488 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[488 len 4], Mask(224, 32, arg4) >> 32 + 488]) + 32 <= return_data.size
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
                mem[ceil32(return_data.size) + 425] = arg1
                mem[ceil32(return_data.size) + 457] = arg2
                stor18.length = 2
                s = 0
                idx = ceil32(return_data.size) + 425
                while ceil32(return_data.size) + 489 > idx:
                    stor18[s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while stor18.length > idx:
                    stor18[idx].field_0 = 0
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
                mem[ceil32(return_data.size) + 653] = stor18.length
                if not stor18.length:
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor18.length
                else:
                    mem[0] = 18
                    mem[ceil32(return_data.size) + 685] = address(stor18.field_0)
                    idx = ceil32(return_data.size) + 685
                    s = 0
                    while ceil32(return_data.size) + (32 * stor18.length) + 685 > idx + 32:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor18.length, mem[ceil32(return_data.size) + 685 len 32 * stor18.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 489
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + ceil32(return_data.size) + 489] <= 4294967296 and mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[ceil32(return_data.size) + 489 len 4], Mask(224, 32, arg4) >> 32 + ceil32(return_data.size) + 489]) + 32 <= return_data.size
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
            if ext_code.size(arg1) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, address(arg3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[ceil32(return_data.size) + 517 len 4] = 0
            call arg1 with:
                 gas gas_remaining wei
                args -1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with address(arg3) << 64 or 0x95ea7b300000000000000000000000000000000000000000000000000000000, 0, 0
                if not address(arg3) << 64 and False:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                mem[ceil32(return_data.size) + 425] = arg1
                mem[ceil32(return_data.size) + 457] = arg2
                stor18.length = 2
                s = 0
                idx = ceil32(return_data.size) + 425
                while ceil32(return_data.size) + 489 > idx:
                    stor18[s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while stor18.length > idx:
                    stor18[idx].field_0 = 0
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
                mem[ceil32(return_data.size) + 653] = stor18.length
                if not stor18.length:
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor18.length
                else:
                    mem[0] = 18
                    mem[ceil32(return_data.size) + 685] = address(stor18.field_0)
                    idx = ceil32(return_data.size) + 685
                    s = 0
                    while ceil32(return_data.size) + (32 * stor18.length) + 685 > idx + 32:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor18.length, mem[ceil32(return_data.size) + 685 len 32 * stor18.length]
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
                stor18.length = 2
                s = 0
                idx = (2 * ceil32(return_data.size)) + 426
                while (2 * ceil32(return_data.size)) + 490 > idx:
                    stor18[s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while stor18.length > idx:
                    stor18[idx].field_0 = 0
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
                mem[(2 * ceil32(return_data.size)) + 654] = stor18.length
                if not stor18.length:
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor18.length, mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    mem[0] = 18
                    mem[(2 * ceil32(return_data.size)) + 686] = address(stor18.field_0)
                    idx = (2 * ceil32(return_data.size)) + 686
                    s = 0
                    while (2 * ceil32(return_data.size)) + (32 * stor18.length) + 686 > idx + 32:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg4, 0, 160, address(this.address), block.timestamp + 600, stor18.length, mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) + (32 * stor18.length) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 490 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 490
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
                require mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
                require mem[mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 + (2 * ceil32(return_data.size)) + 490] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(2 * ceil32(return_data.size)) + 490 len 4], Mask(224, 32, arg4) >> 32 + (2 * ceil32(return_data.size)) + 490]) + 32 <= return_data.size
}

function sub_675994d6(?) payable {
    require calldata.size - 4 >= 160
    if strategistAddress != msg.sender:
        revert with 0, '!auth'
    mem[96] = wrappedAddress
    mem[128] = arg1
    if arg5 != 3:
        if arg5 != 2:
            outputToWantRoute.length = 2
            s = 0
            idx = 96
            while 160 > idx:
                outputToWantRoute[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 2
            while outputToWantRoute.length > idx:
                outputToWantRoute[idx] = 0
                idx = idx + 1
                continue 
            address(stor7) = arg4
            mem[196] = address(stor7)
            mem[228] = 0
            mem[160] = 68
            mem[196 len 28] = Mask(224, 0, stor7)
            mem[192 len 4] = approve(address arg1, uint256 arg2)
            mem[260] = 32
            mem[292] = 'SafeERC20: low-level call failed'
            if ext_code.size(wrappedAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0
            mem[416 len 4] = 0
            call wrappedAddress with:
               funct uint32(stor7)
                 gas gas_remaining wei
                args 0, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if wrappedAddress > 0:
                        revert with memory
                          from 128
                           len wrappedAddress
                    revert with 0, 'SafeERC20: low-level call failed'
                if wrappedAddress <= 0:
                    require ext_code.size(wrappedAddress)
                    staticcall wrappedAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(stor7)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[446 len 10]
                    mem[360] = address(stor7)
                    mem[392] = -1
                    mem[324] = 68
                    mem[360 len 28] = Mask(224, 0, stor7)
                    mem[356 len 4] = approve(address arg1, uint256 arg2)
                    mem[424] = 32
                    mem[456] = 'SafeERC20: low-level call failed'
                    if ext_code.size(wrappedAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[488 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[580 len 4] = 0
                    mem[552 len 0] = 0
                    call wrappedAddress with:
                       funct uint32(stor7)
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[552 len 4]
                else:
                    require wrappedAddress >= 32
                    if not arg1:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[434 len 22]
                    require ext_code.size(wrappedAddress)
                    staticcall wrappedAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(stor7)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[446 len 10]
                    mem[360] = address(stor7)
                    mem[392] = -1
                    mem[324] = 68
                    mem[360 len 28] = Mask(224, 0, stor7)
                    mem[356 len 4] = approve(address arg1, uint256 arg2)
                    mem[424] = 32
                    mem[456] = 'SafeERC20: low-level call failed'
                    if ext_code.size(wrappedAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[488 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[580 len 4] = 0
                    call wrappedAddress with:
                       funct uint32(stor7)
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[552 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if wrappedAddress > 0:
                            revert with memory
                              from 128
                               len wrappedAddress
                        revert with 0, 'SafeERC20: low-level call failed'
                    if wrappedAddress > 0:
                        require wrappedAddress >= 32
                        if not arg1:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[598 len 22]
                else:
                    mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[520]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 599 len 22]
            else:
                mem[324] = return_data.size
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    require ext_code.size(wrappedAddress)
                    staticcall wrappedAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(stor7)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(return_data.size) + 447 len 10]
                    mem[ceil32(return_data.size) + 361] = address(stor7)
                    mem[ceil32(return_data.size) + 393] = -1
                    mem[ceil32(return_data.size) + 325] = 68
                    mem[ceil32(return_data.size) + 361 len 28] = Mask(224, 0, stor7)
                    mem[ceil32(return_data.size) + 357 len 4] = approve(address arg1, uint256 arg2)
                    mem[ceil32(return_data.size) + 425] = 32
                    mem[ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                    if ext_code.size(wrappedAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 489 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[ceil32(return_data.size) + 581 len 4] = 0
                    call wrappedAddress with:
                       funct uint32(stor7)
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 553 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if wrappedAddress > 0:
                                revert with memory
                                  from 128
                                   len wrappedAddress
                            revert with 0, 'SafeERC20: low-level call failed'
                        if wrappedAddress > 0:
                            require wrappedAddress >= 32
                            if not arg1:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 22]
                    else:
                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 521]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                    require ext_code.size(wrappedAddress)
                    staticcall wrappedAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(stor7)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(return_data.size) + 447 len 10]
                    mem[ceil32(return_data.size) + 361] = address(stor7)
                    mem[ceil32(return_data.size) + 393] = -1
                    mem[ceil32(return_data.size) + 325] = 68
                    mem[ceil32(return_data.size) + 361 len 28] = Mask(224, 0, stor7)
                    mem[ceil32(return_data.size) + 357 len 4] = approve(address arg1, uint256 arg2)
                    mem[ceil32(return_data.size) + 425] = 32
                    mem[ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                    if ext_code.size(wrappedAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 489 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[ceil32(return_data.size) + 581 len 4] = 0
                    mem[ceil32(return_data.size) + 553 len 0] = 0
                    call wrappedAddress with:
                       funct uint32(stor7)
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[ceil32(return_data.size) + 553 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if wrappedAddress > 0:
                                revert with memory
                                  from 128
                                   len wrappedAddress
                            revert with 0, 'SafeERC20: low-level call failed'
                        if wrappedAddress > 0:
                            require wrappedAddress >= 32
                            if not arg1:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 599 len 22]
                    else:
                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 521]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 600 len 22]
        else:
            mem[160] = arg2
            outputToWantRoute.length = 3
            s = 0
            idx = 96
            while 192 > idx:
                outputToWantRoute[s] = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 3
            while outputToWantRoute.length > idx:
                outputToWantRoute[idx] = 0
                idx = idx + 1
                continue 
            address(stor7) = arg4
            mem[228] = address(stor7)
            mem[260] = 0
            mem[192] = 68
            mem[228 len 28] = Mask(224, 0, stor7)
            mem[224 len 4] = approve(address arg1, uint256 arg2)
            mem[292] = 32
            mem[324] = 'SafeERC20: low-level call failed'
            if ext_code.size(wrappedAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[356 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0
            mem[448 len 4] = 0
            mem[420 len 0] = 0
            call wrappedAddress with:
               funct uint32(stor7)
                 gas gas_remaining wei
                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0) << 256, mem[420 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if wrappedAddress > 0:
                        revert with memory
                          from 128
                           len wrappedAddress
                    revert with 0, 'SafeERC20: low-level call failed'
                if wrappedAddress > 0:
                    require wrappedAddress >= 32
                    if not arg1:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[466 len 22]
                require ext_code.size(wrappedAddress)
                staticcall wrappedAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(stor7)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[478 len 10]
                mem[392] = address(stor7)
                mem[424] = -1
                mem[356] = 68
                mem[388 len 4] = approve(address arg1, uint256 arg2)
                mem[456] = 32
                mem[488] = 'SafeERC20: low-level call failed'
                if ext_code.size(wrappedAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[520 len 64] = 0, address(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[612 len 4] = 0
                call wrappedAddress with:
                   funct uint32(stor7)
                     gas gas_remaining wei
                    args -1, 0, mem[584 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if wrappedAddress > 0:
                            revert with memory
                              from 128
                               len wrappedAddress
                        revert with 0, 'SafeERC20: low-level call failed'
                    if wrappedAddress > 0:
                        require wrappedAddress >= 32
                        if not arg1:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[630 len 22]
                else:
                    mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[552]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 631 len 22]
            else:
                mem[356] = return_data.size
                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    require ext_code.size(wrappedAddress)
                    staticcall wrappedAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(stor7)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(return_data.size) + 479 len 10]
                    mem[ceil32(return_data.size) + 393] = address(stor7)
                    mem[ceil32(return_data.size) + 425] = -1
                    mem[ceil32(return_data.size) + 357] = 68
                    mem[ceil32(return_data.size) + 389 len 4] = approve(address arg1, uint256 arg2)
                    mem[ceil32(return_data.size) + 457] = 32
                    mem[ceil32(return_data.size) + 489] = 'SafeERC20: low-level call failed'
                    if ext_code.size(wrappedAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 521 len 64] = 0, address(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[ceil32(return_data.size) + 613 len 4] = 0
                    call wrappedAddress with:
                       funct uint32(stor7)
                         gas gas_remaining wei
                        args -1, 0, mem[ceil32(return_data.size) + 585 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if wrappedAddress > 0:
                                revert with memory
                                  from 128
                                   len wrappedAddress
                            revert with 0, 'SafeERC20: low-level call failed'
                        if wrappedAddress > 0:
                            require wrappedAddress >= 32
                            if not arg1:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 631 len 22]
                    else:
                        mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 553]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 632 len 22]
                else:
                    require return_data.size >= 32
                    if not mem[388]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 467 len 22]
                    require ext_code.size(wrappedAddress)
                    staticcall wrappedAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(stor7)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(return_data.size) + 479 len 10]
                    mem[ceil32(return_data.size) + 393] = address(stor7)
                    mem[ceil32(return_data.size) + 425] = -1
                    mem[ceil32(return_data.size) + 357] = 68
                    mem[ceil32(return_data.size) + 389 len 4] = approve(address arg1, uint256 arg2)
                    mem[ceil32(return_data.size) + 457] = 32
                    mem[ceil32(return_data.size) + 489] = 'SafeERC20: low-level call failed'
                    if ext_code.size(wrappedAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 521 len 64] = 0, address(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[ceil32(return_data.size) + 613 len 4] = 0
                    call wrappedAddress with:
                       funct uint32(stor7)
                         gas gas_remaining wei
                        args -1, 0, mem[ceil32(return_data.size) + 585 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if wrappedAddress > 0:
                                revert with memory
                                  from 128
                                   len wrappedAddress
                            revert with 0, 'SafeERC20: low-level call failed'
                        if wrappedAddress > 0:
                            require wrappedAddress >= 32
                            if not arg1:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 631 len 22]
                    else:
                        mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 553]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        mem[160] = arg2
        mem[192] = arg3
        outputToWantRoute.length = 4
        s = 0
        idx = 96
        while 224 > idx:
            outputToWantRoute[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 4
        while outputToWantRoute.length > idx:
            outputToWantRoute[idx] = 0
            idx = idx + 1
            continue 
        address(stor7) = arg4
        mem[260] = address(stor7)
        mem[292] = 0
        mem[224] = 68
        mem[260 len 28] = Mask(224, 0, stor7)
        mem[256 len 4] = approve(address arg1, uint256 arg2)
        mem[324] = 32
        mem[356] = 'SafeERC20: low-level call failed'
        if ext_code.size(wrappedAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[388 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0
        mem[480 len 4] = 0
        mem[452 len 0] = 0
        call wrappedAddress with:
           funct uint32(stor7)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 0) << 256, mem[452 len 4]
        if not return_data.size:
            if not ext_call.success:
                if wrappedAddress > 0:
                    revert with memory
                      from 128
                       len wrappedAddress
                revert with 0, 'SafeERC20: low-level call failed'
            if wrappedAddress > 0:
                require wrappedAddress >= 32
                if not arg1:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[498 len 22]
            require ext_code.size(wrappedAddress)
            staticcall wrappedAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(stor7)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[510 len 10]
            mem[424] = address(stor7)
            mem[456] = -1
            mem[388] = 68
            mem[420 len 4] = approve(address arg1, uint256 arg2)
            mem[488] = 32
            mem[520] = 'SafeERC20: low-level call failed'
            if ext_code.size(wrappedAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[552 len 64] = 0, address(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[644 len 4] = 0
            call wrappedAddress with:
               funct uint32(stor7)
                 gas gas_remaining wei
                args -1, 0, mem[616 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if wrappedAddress > 0:
                        revert with memory
                          from 128
                           len wrappedAddress
                    revert with 0, 'SafeERC20: low-level call failed'
                if wrappedAddress > 0:
                    require wrappedAddress >= 32
                    if not arg1:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[662 len 22]
            else:
                mem[584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[584]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 663 len 22]
        else:
            mem[388] = return_data.size
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
            require ext_code.size(wrappedAddress)
            staticcall wrappedAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(stor7)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 511 len 10]
            mem[ceil32(return_data.size) + 425] = address(stor7)
            mem[ceil32(return_data.size) + 457] = -1
            mem[ceil32(return_data.size) + 389] = 68
            mem[ceil32(return_data.size) + 421 len 4] = approve(address arg1, uint256 arg2)
            mem[ceil32(return_data.size) + 489] = 32
            mem[ceil32(return_data.size) + 521] = 'SafeERC20: low-level call failed'
            if ext_code.size(wrappedAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 553 len 64] = 0, address(stor7), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[ceil32(return_data.size) + 645 len 4] = 0
            call wrappedAddress with:
               funct uint32(stor7)
                 gas gas_remaining wei
                args -1, 0, mem[ceil32(return_data.size) + 617 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if wrappedAddress > 0:
                        revert with memory
                          from 128
                           len wrappedAddress
                    revert with 0, 'SafeERC20: low-level call failed'
                if wrappedAddress > 0:
                    require wrappedAddress >= 32
                    if not arg1:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 663 len 22]
            else:
                mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 585]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 664 len 22]
}



}
