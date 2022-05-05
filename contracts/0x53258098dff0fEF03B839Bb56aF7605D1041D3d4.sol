contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#  - harvest()
#  - panic()
#  - pause()
#
const PERCENT_DIVISOR = 10000

const MAX_FEE = 500


uint8 paused; offset 160
address owner;
address wftmAddress;
address rewardTokenAddress;
address sub_5035f273Address;
address DAIAddress;
address USDCAddress;
address uniRouterAddress;
address sub_b55b335fAddress;
address treasuryAddress;
uint32 stor9;
address vaultAddress;
uint256 stor9;
uint256 callFee;
uint256 treasuryFee;
uint256 sub_d68e1302;
uint256 totalFee;
array of address sub_65108ea4;
array of address sub_cd9f8a67;
array of address sub_20e95b5f;
array of address sub_7ab0266e;

function totalFee() payable {
    return totalFee
}

function sub_20e95b5f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_20e95b5f.length
    return sub_20e95b5f[arg1]
}

function sub_5035f273(?) payable {
    return sub_5035f273Address
}

function paused() payable {
    return bool(paused)
}

function treasury() payable {
    return treasuryAddress
}

function sub_65108ea4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_65108ea4.length
    return sub_65108ea4[arg1]
}

function sub_7ab0266e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_7ab0266e.length
    return sub_7ab0266e[arg1]
}

function USDC() payable {
    return USDCAddress
}

function owner() payable {
    return owner
}

function callFee() payable {
    return callFee
}

function uniRouter() payable {
    return uniRouterAddress
}

function sub_b55b335f(?) payable {
    return sub_b55b335fAddress
}

function treasuryFee() payable {
    return treasuryFee
}

function sub_cd9f8a67(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_cd9f8a67.length
    return sub_cd9f8a67[arg1]
}

function sub_d68e1302(?) payable {
    return sub_d68e1302
}

function DAI() payable {
    return DAIAddress
}

function wftm() payable {
    return wftmAddress
}

function rewardToken() payable {
    return rewardTokenAddress
}

function vault() payable {
    return address(vaultAddress)
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

function updateTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
    return 1
}

function sub_d32b9604(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 500:
        revert with 0, 'Fee Too High'
    totalFee = arg1
    emit 0x2e59d502: totalFee
    return 1
}

function sub_f88fb689(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    callFee = arg1
    if callFee > 10000:
        revert with 0, 'SafeMath: subtraction overflow'
    treasuryFee = -callFee + 10000
    emit 0x6a730aa6: callFee, treasuryFee
    return 1
}

function balanceOfPool() payable {
    require ext_code.size(sub_b55b335fAddress)
    staticcall sub_b55b335fAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_d9bb7701(?) payable {
    require ext_code.size(sub_5035f273Address)
    staticcall sub_5035f273Address.balanceOf(address arg1) with:
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

function deposit() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(sub_5035f273Address)
    staticcall sub_5035f273Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_b55b335fAddress)
        call sub_b55b335fAddress.deposit(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
    require ext_code.size(sub_b55b335fAddress)
    staticcall sub_b55b335fAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_5035f273Address)
    staticcall sub_5035f273Address.balanceOf(address arg1) with:
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
    require ext_code.size(sub_b55b335fAddress)
    staticcall sub_b55b335fAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_b55b335fAddress)
    call sub_b55b335fAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_5035f273Address)
    staticcall sub_5035f273Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_5035f273Address)
    call sub_5035f273Address.transfer(address arg1, uint256 arg2) with:
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
    require ext_code.size(sub_5035f273Address)
    staticcall sub_5035f273Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if ext_call.return_data[0] <= arg1:
            if not ext_call.return_data[0]:
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(sub_5035f273Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0 len 28]
                call sub_5035f273Address with:
                   funct uint32(stor9)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * sub_d68e1302 / ext_call.return_data[0] != sub_d68e1302:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] * sub_d68e1302 / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(sub_5035f273Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * sub_d68e1302 / 10000)) >> 32
                call sub_5035f273Address with:
                   funct uint32(stor9)
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * sub_d68e1302 / 10000)) << 224, mem[452 len 4]
        else:
            if not arg1:
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(sub_5035f273Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg1) >> 32
                call sub_5035f273Address with:
                   funct uint32(stor9)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[452 len 4]
            else:
                require arg1
                if arg1 * sub_d68e1302 / arg1 != sub_d68e1302:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg1 * sub_d68e1302 / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(sub_5035f273Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg1 - (arg1 * sub_d68e1302 / 10000)) >> 32
                call sub_5035f273Address with:
                   funct uint32(stor9)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1 - (arg1 * sub_d68e1302 / 10000)) << 224, mem[452 len 4]
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
        require ext_code.size(sub_b55b335fAddress)
        call sub_b55b335fAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args (arg1 - ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_5035f273Address)
        staticcall sub_5035f273Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= arg1:
            if not ext_call.return_data[0]:
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(sub_5035f273Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0 len 28]
                call sub_5035f273Address with:
                   funct uint32(stor9)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * sub_d68e1302 / ext_call.return_data[0] != sub_d68e1302:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_call.return_data[0] * sub_d68e1302 / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(sub_5035f273Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * sub_d68e1302 / 10000)) >> 32
                call sub_5035f273Address with:
                   funct uint32(stor9)
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * sub_d68e1302 / 10000)) << 224, mem[516 len 4]
        else:
            if not arg1:
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(sub_5035f273Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg1) >> 32
                mem[516 len 0] = 0
                call sub_5035f273Address with:
                   funct uint32(stor9)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[516 len 4]
            else:
                require arg1
                if arg1 * sub_d68e1302 / arg1 != sub_d68e1302:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if arg1 * sub_d68e1302 / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(sub_5035f273Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, arg1 - (arg1 * sub_d68e1302 / 10000)) >> 32
                call sub_5035f273Address with:
                   funct uint32(stor9)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1 - (arg1 * sub_d68e1302 / 10000)) << 224, mem[516 len 4]
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
