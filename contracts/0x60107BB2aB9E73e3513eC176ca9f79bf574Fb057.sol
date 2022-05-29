contract main {




// =====================  Runtime code  =====================


uint8 paused; offset 160
address owner;
address wrappedAddress;
address wantAddress;
uint32 stor3;
address unirouterAddress;
uint256 stor3;
uint32 stor4;
address burnAddress;
address strategistAddress;
address feeBatchAddress;
uint32 stor7;
address vaultAddress;
uint256 stor7;
uint32 stor8;
address sub_6286b839Address;
uint256 stor8;
address masterContractAddress;
array of address wantToWrappedRoute;
array of address sub_2183cde9;
uint8 sub_0ba83c6d;
uint256 sub_f43acfd5;
mapping of uint8 stor14;
uint256 WITHDRAWAL_MAX;
uint256 WITHDRAW_FEE;
uint256 MAX_FEE;
uint256 CALL_FEE;
uint256 STRATEGIST_FEE;
uint256 FEE_BATCH;
uint256 PLATFORM_FEE;
uint256 BURN_FEE;
uint256 sub_2f624bc8;

function FEE_BATCH() payable {
    return FEE_BATCH
}

function sub_0ba83c6d(?) payable {
    return bool(sub_0ba83c6d)
}

function feeBatchAddress() payable {
    return feeBatchAddress
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

function sub_2f624bc8(?) payable {
    return sub_2f624bc8
}

function PLATFORM_FEE() payable {
    return PLATFORM_FEE
}

function BURN_FEE() payable {
    return BURN_FEE
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

function sub_6286b839(?) payable {
    return address(sub_6286b839Address)
}

function wantToWrappedRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < wantToWrappedRoute.length
    return wantToWrappedRoute[arg1]
}

function burnAddress() payable {
    return address(burnAddress)
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
    return bool(stor14[arg1])
}

function WITHDRAW_FEE() payable {
    return WITHDRAW_FEE
}

function getAnswer() payable {
    return sub_f43acfd5
}

function MAX_FEE() payable {
    return MAX_FEE
}

function masterContract() payable {
    return masterContractAddress
}

function sub_f43acfd5(?) payable {
    return sub_f43acfd5
}

function vault() payable {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function deposit() payable {
    if paused:
        revert with 0, 'Pausable: paused'
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_4267f36a(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_f43acfd5 = arg1
}

function sub_d2969d01(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    feeBatchAddress = arg1
}

function setWant(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    wantAddress = arg1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(vaultAddress) = arg1
}

function sub_7221616c(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(sub_6286b839Address) = arg1
}

function setMasterContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    masterContractAddress = arg1
}

function addOrRemoveFromWhitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor14[address(arg1)] = uint8(arg2)
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

function balanceOfPool() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
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
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_8af86cfa(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor3):
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
}

function sub_04e91a37(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.allowance(address arg1, address arg2) with:
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
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), -1
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor3):
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
    if ext_call.return_data[0] < arg1:
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    if ext_call.return_data[0] <= arg1:
        mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), ext_call.return_data[0 len 28]
        mem[324 len 0] = 0
        call wantAddress with:
           funct uint32(stor7)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), ext_call.return_data[0]
            if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor7):
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
        mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, arg1) >> 32
        mem[324 len 0] = 0
        call wantAddress with:
           funct uint32(stor7)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), arg1
            if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor7):
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
}

function sub_21814f90(?) payable {
    require calldata.size - 4 >= 32
    if masterContractAddress != msg.sender:
        revert with 0, '!Master contract'
    if arg1 != sub_f43acfd5:
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not sub_2f624bc8:
                revert with 0, 'SafeMath: division by zero'
            if 0 / sub_2f624bc8 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[388 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, ext_call.return_data[0] - (0 / sub_2f624bc8)) >> 32
            mem[452 len 0] = 0
            call wantAddress with:
               funct uint32(stor8)
                 gas gas_remaining wei
                args Mask(224, 32, ext_call.return_data[0] - (0 / sub_2f624bc8)) << 224, mem[452 len 4]
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
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 553 len 64] = 0, address(burnAddress), Mask(224, 32, 0 / sub_2f624bc8) >> 32
            call wantAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args 0 / sub_2f624bc8, mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
        else:
            if BURN_FEE * ext_call.return_data[0] / ext_call.return_data[0] != BURN_FEE:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not sub_2f624bc8:
                revert with 0, 'SafeMath: division by zero'
            if BURN_FEE * ext_call.return_data[0] / sub_2f624bc8 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[388 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, ext_call.return_data[0] - (BURN_FEE * ext_call.return_data[0] / sub_2f624bc8)) >> 32
            mem[452 len 0] = 0
            call wantAddress with:
               funct uint32(stor8)
                 gas gas_remaining wei
                args Mask(224, 32, ext_call.return_data[0] - (BURN_FEE * ext_call.return_data[0] / sub_2f624bc8)) << 224, mem[452 len 4]
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
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 553 len 64] = 0, address(burnAddress), Mask(224, 32, BURN_FEE * ext_call.return_data[0] / sub_2f624bc8) >> 32
            call wantAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args BURN_FEE * ext_call.return_data[0] / sub_2f624bc8, mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        'SafeERC20: low-level call failed',
                        mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 585]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}



}
