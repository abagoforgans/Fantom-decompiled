contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#  - pause()
#
const PERCENT_DIVISOR = 10000

const MAX_FEE = 500


uint8 paused; offset 160
uint128 stor0; offset 160
address owner;
address wftmAddress;
address rewardTokenAddress;
address sub_b0e2f2d5Address;
uint32 stor4;
address sub_d6d300bfAddress;
uint256 stor4;
address DAIAddress;
address USDCAddress;
address fUSDTAddress;
uint32 stor8;
address uniRouterAddress;
uint256 stor8;
address sub_b55b335fAddress;
uint32 stor10;
address sub_f007a12dAddress;
uint256 stor10;
uint32 stor11;
address treasuryAddress;
uint256 stor11;
uint32 stor12;
address vaultAddress;
uint256 stor12;
uint256 callFee;
uint256 treasuryFee;
uint256 sub_d68e1302;
uint256 totalFee;
array of struct sub_65108ea4;
array of struct sub_70c0f1ed;

function totalFee() payable {
    return totalFee
}

function fUSDT() payable {
    return fUSDTAddress
}

function paused() payable {
    return bool(paused)
}

function treasury() payable {
    return address(treasuryAddress)
}

function sub_65108ea4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_65108ea4.length
    return sub_65108ea4[arg1].field_0
}

function sub_70c0f1ed(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_70c0f1ed.length
    return sub_70c0f1ed[arg1].field_0
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
    return address(uniRouterAddress)
}

function sub_b0e2f2d5(?) payable {
    return sub_b0e2f2d5Address
}

function sub_b55b335f(?) payable {
    return sub_b55b335fAddress
}

function treasuryFee() payable {
    return treasuryFee
}

function sub_d68e1302(?) payable {
    return sub_d68e1302
}

function sub_d6d300bf(?) payable {
    return address(sub_d6d300bfAddress)
}

function DAI() payable {
    return DAIAddress
}

function sub_f007a12d(?) payable {
    return address(sub_f007a12dAddress)
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
    address(treasuryAddress) = arg1
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
    require ext_code.size(address(sub_f007a12dAddress))
    staticcall address(sub_f007a12dAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_476cdff4(?) payable {
    require ext_code.size(address(sub_d6d300bfAddress))
    staticcall address(sub_d6d300bfAddress).balanceOf(address arg1) with:
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
    require ext_code.size(address(sub_d6d300bfAddress))
    staticcall address(sub_d6d300bfAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(address(sub_f007a12dAddress))
        call address(sub_f007a12dAddress).deposit(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
    require ext_code.size(address(sub_f007a12dAddress))
    staticcall address(sub_f007a12dAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_d6d300bfAddress))
    staticcall address(sub_d6d300bfAddress).balanceOf(address arg1) with:
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
    require ext_code.size(address(sub_f007a12dAddress))
    staticcall address(sub_f007a12dAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_f007a12dAddress))
    call address(sub_f007a12dAddress).0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(sub_d6d300bfAddress))
    staticcall address(sub_d6d300bfAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_d6d300bfAddress))
    call address(sub_d6d300bfAddress).transfer(address arg1, uint256 arg2) with:
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
    require ext_code.size(address(sub_d6d300bfAddress))
    staticcall address(sub_d6d300bfAddress).balanceOf(address arg1) with:
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
                if ext_code.size(address(sub_d6d300bfAddress)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                call address(sub_d6d300bfAddress) with:
                   funct uint32(stor12)
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
                if ext_code.size(address(sub_d6d300bfAddress)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * sub_d68e1302 / 10000)) >> 32
                call address(sub_d6d300bfAddress) with:
                   funct uint32(stor12)
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * sub_d68e1302 / 10000)) << 224, mem[452 len 4]
        else:
            if not arg1:
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(address(sub_d6d300bfAddress)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg1) >> 32
                call address(sub_d6d300bfAddress) with:
                   funct uint32(stor12)
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
                if ext_code.size(address(sub_d6d300bfAddress)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg1 - (arg1 * sub_d68e1302 / 10000)) >> 32
                call address(sub_d6d300bfAddress) with:
                   funct uint32(stor12)
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
        require ext_code.size(address(sub_f007a12dAddress))
        call address(sub_f007a12dAddress).0x2e1a7d4d with:
             gas gas_remaining wei
            args (arg1 - ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(sub_d6d300bfAddress))
        staticcall address(sub_d6d300bfAddress).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= arg1:
            if not ext_call.return_data[0]:
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(address(sub_d6d300bfAddress)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                call address(sub_d6d300bfAddress) with:
                   funct uint32(stor12)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * sub_d68e1302 / ext_call.return_data[0] != sub_d68e1302:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_call.return_data[0] * sub_d68e1302 / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(address(sub_d6d300bfAddress)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * sub_d68e1302 / 10000)) >> 32
                call address(sub_d6d300bfAddress) with:
                   funct uint32(stor12)
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * sub_d68e1302 / 10000)) << 224, mem[516 len 4]
        else:
            if not arg1:
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(address(sub_d6d300bfAddress)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg1) >> 32
                mem[516 len 0] = 0
                call address(sub_d6d300bfAddress) with:
                   funct uint32(stor12)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[516 len 4]
            else:
                require arg1
                if arg1 * sub_d68e1302 / arg1 != sub_d68e1302:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if arg1 * sub_d68e1302 / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(address(sub_d6d300bfAddress)) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg1 - (arg1 * sub_d68e1302 / 10000)) >> 32
                call address(sub_d6d300bfAddress) with:
                   funct uint32(stor12)
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

function panic() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    if ext_code.size(address(sub_d6d300bfAddress)) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0
    call address(sub_d6d300bfAddress) with:
       funct uint32(stor10)
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor10):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if ext_code.size(rewardTokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor8), uint32(stor8), 0
        call rewardTokenAddress with:
           funct uint32(stor8)
             gas gas_remaining wei
            args 0, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor10):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            if ext_code.size(fUSDTAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[588 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
            call fUSDTAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args 0, mem[652 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor10):
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
            require ext_code.size(address(sub_f007a12dAddress))
            staticcall address(sub_f007a12dAddress).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sub_f007a12dAddress))
            call address(sub_f007a12dAddress).0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if ext_code.size(fUSDTAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
                mem[ceil32(return_data.size) + 653 len 0] = 0
                call fUSDTAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0) << 256, mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor10):
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
                require ext_code.size(address(sub_f007a12dAddress))
                staticcall address(sub_f007a12dAddress).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sub_f007a12dAddress))
                call address(sub_f007a12dAddress).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
            else:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                if ext_code.size(fUSDTAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
                mem[ceil32(return_data.size) + 681 len 4] = 0
                call fUSDTAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor10):
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                    require ext_code.size(address(sub_f007a12dAddress))
                    staticcall address(sub_f007a12dAddress).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sub_f007a12dAddress))
                    call address(sub_f007a12dAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
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
                    require ext_code.size(address(sub_f007a12dAddress))
                    staticcall address(sub_f007a12dAddress).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address), mem[(2 * ceil32(return_data.size)) + 626 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sub_f007a12dAddress))
                    call address(sub_f007a12dAddress).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 626 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            if ext_code.size(rewardTokenAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor8), uint32(stor8), 0
            mem[ceil32(return_data.size) + 517 len 4] = 0
            call rewardTokenAddress with:
               funct uint32(stor8)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor10):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                if ext_code.size(fUSDTAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0
                mem[ceil32(return_data.size) + 653 len 0] = 0
                call fUSDTAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), 0) << 256, mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor10):
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
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                if ext_code.size(fUSDTAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 590 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                call fUSDTAddress with:
                   funct uint32(stor4), mem[(2 * ceil32(return_data.size)) + 494 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                     gas gas_remaining wei
                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 590 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor10):
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
            if ext_code.size(rewardTokenAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor8), uint32(stor8), 0
            mem[ceil32(return_data.size) + 489 len 0] = 0
            call rewardTokenAddress with:
               funct uint32(stor8)
                 gas gas_remaining wei
                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor8), uint32(stor8), 0) << 256, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor10):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                if ext_code.size(fUSDTAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 589 len 64] = 0, address(sub_d6d300bfAddress), 0
                call fUSDTAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor10):
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
                if ext_code.size(fUSDTAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, address(sub_d6d300bfAddress), 0
                call fUSDTAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor10), uint32(stor10), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor10):
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
        require ext_code.size(address(sub_f007a12dAddress))
        staticcall address(sub_f007a12dAddress).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_f007a12dAddress))
        call address(sub_f007a12dAddress).0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function harvest() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    if ext_code.size(msg.sender) > 0:
        revert with 0, '!contract'
    require ext_code.size(address(sub_f007a12dAddress))
    call address(sub_f007a12dAddress).claim_rewards() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(rewardTokenAddress)
        staticcall rewardTokenAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if block.timestamp + 600 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_65108ea4.length:
                require ext_code.size(address(uniRouterAddress))
                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, 0, 0, 160, address(this.address), block.timestamp + 600, sub_65108ea4.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wftmAddress)
                staticcall wftmAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ext_code.size(wftmAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, 0
                    call wftmAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        if not ext_call.return_data[0]:
                            if ext_code.size(wftmAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 617 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), 0
                            mem[ceil32(return_data.size) + 709 len 4] = 0
                            call wftmAddress with:
                               funct uint32(stor11)
                                 gas gas_remaining wei
                                args 0, mem[ceil32(return_data.size) + 681 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 649]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            require ext_code.size(rewardTokenAddress)
                            staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address), mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if block.timestamp + 600 < block.timestamp:
                                revert with 0, 
                                            'SafeMath: addition overflow',
                                            mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not sub_70c0f1ed.length:
                                require ext_code.size(address(uniRouterAddress))
                                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            else:
                                mem[(2 * ceil32(return_data.size)) + 814] = address(sub_70c0f1ed.field_0)
                                idx = (2 * ceil32(return_data.size)) + 814
                                s = 0
                                while (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) + 814 > idx + 32:
                                    mem[idx + 32] = sub_70c0f1ed[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(address(uniRouterAddress))
                                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(fUSDTAddress)
                            staticcall fUSDTAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address), mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        else:
                            require ext_call.return_data[0]
                            if ext_call.return_data[0] * treasuryFee / ext_call.return_data[0] != treasuryFee:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 490 len 31]
                            if ext_code.size(wftmAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 617 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, ext_call.return_data[0] * treasuryFee / 10000) >> 32
                            mem[ceil32(return_data.size) + 681 len 0] = 0
                            call wftmAddress with:
                               funct uint32(stor11)
                                 gas gas_remaining wei
                                args Mask(224, 32, ext_call.return_data[0] * treasuryFee / 10000) << 224, mem[ceil32(return_data.size) + 681 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 649]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 728 len 22]
                            require ext_code.size(rewardTokenAddress)
                            staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if block.timestamp + 600 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            if not sub_70c0f1ed.length:
                                require ext_code.size(address(uniRouterAddress))
                                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length
                            else:
                                mem[(2 * ceil32(return_data.size)) + 814] = address(sub_70c0f1ed.field_0)
                                idx = (2 * ceil32(return_data.size)) + 814
                                s = 0
                                while (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) + 814 > idx + 32:
                                    mem[idx + 32] = sub_70c0f1ed[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(address(uniRouterAddress))
                                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len 32 * sub_70c0f1ed.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(fUSDTAddress)
                            staticcall fUSDTAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                    else:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                        if not ext_call.return_data[0]:
                            if ext_code.size(wftmAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 617 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), 0
                            mem[ceil32(return_data.size) + 709 len 4] = 0
                            call wftmAddress with:
                               funct uint32(stor11)
                                 gas gas_remaining wei
                                args 0, mem[ceil32(return_data.size) + 681 len 4]
                        else:
                            require ext_call.return_data[0]
                            if ext_call.return_data[0] * treasuryFee / ext_call.return_data[0] != treasuryFee:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 490 len 31]
                            if ext_code.size(wftmAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 617 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, ext_call.return_data[0] * treasuryFee / 10000) >> 32
                            mem[ceil32(return_data.size) + 709 len 4] = 0
                            call wftmAddress with:
                               funct uint32(stor11)
                                 gas gas_remaining wei
                                args Mask(224, 32, ext_call.return_data[0] * treasuryFee / 10000) << 224, mem[ceil32(return_data.size) + 681 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 649]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address), mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 
                                        'SafeMath: addition overflow',
                                        mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not sub_70c0f1ed.length:
                            require ext_code.size(address(uniRouterAddress))
                            call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        else:
                            mem[(2 * ceil32(return_data.size)) + 814] = address(sub_70c0f1ed.field_0)
                            idx = (2 * ceil32(return_data.size)) + 814
                            s = 0
                            while (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) + 814 > idx + 32:
                                mem[idx + 32] = sub_70c0f1ed[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(address(uniRouterAddress))
                            call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(fUSDTAddress)
                        staticcall fUSDTAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address), mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * callFee / ext_call.return_data[0] != callFee:
                        revert with 0, 'sSafeMath: multiplication overfloddres'
                    if ext_code.size(wftmAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, ext_call.return_data[0] * callFee / 10000) >> 32
                    call wftmAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] * callFee / 10000) << 224, mem[452 len 4]
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
                    if not ext_call.return_data[0]:
                        if ext_code.size(wftmAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 617 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), 0
                        mem[ceil32(return_data.size) + 709 len 4] = 0
                        call wftmAddress with:
                           funct uint32(stor11)
                             gas gas_remaining wei
                            args 0, mem[ceil32(return_data.size) + 681 len 4]
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * treasuryFee / ext_call.return_data[0] != treasuryFee:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 490 len 31]
                        if ext_code.size(wftmAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 617 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, ext_call.return_data[0] * treasuryFee / 10000) >> 32
                        mem[ceil32(return_data.size) + 709 len 4] = 0
                        call wftmAddress with:
                           funct uint32(stor11)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] * treasuryFee / 10000) << 224, mem[ceil32(return_data.size) + 681 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 649]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(rewardTokenAddress)
                    staticcall rewardTokenAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address), mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 
                                    'SafeMath: addition overflow',
                                    mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not sub_70c0f1ed.length:
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 814] = address(sub_70c0f1ed.field_0)
                        idx = (2 * ceil32(return_data.size)) + 814
                        s = 0
                        while (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) + 814 > idx + 32:
                            mem[idx + 32] = sub_70c0f1ed[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(fUSDTAddress)
                    staticcall fUSDTAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address), mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sub_d6d300bfAddress))
                call address(sub_d6d300bfAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0 >> 256, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if paused:
                    revert with 0, 'Pausable: paused'
            else:
                mem[356] = address(sub_65108ea4.field_0)
                idx = 356
                s = 0
                while (32 * sub_65108ea4.length) + 356 > idx + 32:
                    mem[idx + 32] = sub_65108ea4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(address(uniRouterAddress))
                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, 0, 0, 160, address(this.address), block.timestamp + 600, sub_65108ea4.length, mem[356 len 32 * sub_65108ea4.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wftmAddress)
                staticcall wftmAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ext_code.size(wftmAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, 0
                    mem[452 len 0] = 0
                    call wftmAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, transfer(address arg1, uint256 arg2), msg.sender, 0) << 256, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        if not ext_call.return_data[0]:
                            if ext_code.size(wftmAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 617 len 64] = 0, address(treasuryAddress), 0
                            call wftmAddress with:
                               funct uint32(stor11)
                                 gas gas_remaining wei
                                args 0, mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                require ext_code.size(rewardTokenAddress)
                                staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + 600 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not sub_70c0f1ed.length:
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(fUSDTAddress)
                                    staticcall fUSDTAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    var116001 = 64
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 814] = address(sub_70c0f1ed.field_0)
                                    idx = (2 * ceil32(return_data.size)) + 814
                                    s = 0
                                    while (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) + 814 > idx + 32:
                                        mem[idx + 32] = sub_70c0f1ed[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len 32 * sub_70c0f1ed.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(fUSDTAddress)
                                    staticcall fUSDTAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 649]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 728 len 22]
                                require ext_code.size(rewardTokenAddress)
                                staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + 600 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not sub_70c0f1ed.length:
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 814] = address(sub_70c0f1ed.field_0)
                                    idx = (2 * ceil32(return_data.size)) + 814
                                    s = 0
                                    while (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) + 814 > idx + 32:
                                        mem[idx + 32] = sub_70c0f1ed[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len 32 * sub_70c0f1ed.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(fUSDTAddress)
                                staticcall fUSDTAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            require ext_code.size(address(sub_d6d300bfAddress))
                            call address(sub_d6d300bfAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0 >> 256, 0
                        else:
                            require ext_call.return_data[0]
                            if ext_call.return_data[0] * treasuryFee / ext_call.return_data[0] != treasuryFee:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 490 len 31]
                            if ext_code.size(wftmAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 617 len 64] = 0, address(treasuryAddress), Mask(224, 32, ext_call.return_data[0] * treasuryFee / 10000) >> 32
                            call wftmAddress with:
                               funct uint32(stor11)
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * treasuryFee / 10000, mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size <= 0:
                                require ext_code.size(rewardTokenAddress)
                                staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + 600 < block.timestamp:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not sub_70c0f1ed.length:
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(fUSDTAddress)
                                    staticcall fUSDTAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    var118001 = 64
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 814] = address(sub_70c0f1ed.field_0)
                                    idx = (2 * ceil32(return_data.size)) + 814
                                    s = 0
                                    while (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) + 814 > idx + 32:
                                        mem[idx + 32] = sub_70c0f1ed[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) - (2 * ceil32(return_data.size))]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(fUSDTAddress)
                                    staticcall fUSDTAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 649]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                require ext_code.size(rewardTokenAddress)
                                staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + 600 < block.timestamp:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not sub_70c0f1ed.length:
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 814] = address(sub_70c0f1ed.field_0)
                                    idx = (2 * ceil32(return_data.size)) + 814
                                    s = 0
                                    while (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) + 814 > idx + 32:
                                        mem[idx + 32] = sub_70c0f1ed[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(fUSDTAddress)
                                staticcall fUSDTAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            require ext_code.size(address(sub_d6d300bfAddress))
                            call address(sub_d6d300bfAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0 >> 256, 0, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                        if not ext_call.return_data[0]:
                            if ext_code.size(wftmAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 617 len 64] = 0, address(treasuryAddress), 0
                            call wftmAddress with:
                               funct uint32(stor11)
                                 gas gas_remaining wei
                                args 0, mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
                        else:
                            require ext_call.return_data[0]
                            if ext_call.return_data[0] * treasuryFee / ext_call.return_data[0] != treasuryFee:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 490 len 31]
                            if ext_code.size(wftmAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 617 len 64] = 0, address(treasuryAddress), Mask(224, 32, ext_call.return_data[0] * treasuryFee / 10000) >> 32
                            call wftmAddress with:
                               funct uint32(stor11)
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * treasuryFee / 10000, mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 649]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 728 len 22]
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        if not sub_70c0f1ed.length:
                            require ext_code.size(address(uniRouterAddress))
                            call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length
                        else:
                            mem[(2 * ceil32(return_data.size)) + 814] = address(sub_70c0f1ed.field_0)
                            idx = (2 * ceil32(return_data.size)) + 814
                            s = 0
                            while (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) + 814 > idx + 32:
                                mem[idx + 32] = sub_70c0f1ed[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(address(uniRouterAddress))
                            call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len 32 * sub_70c0f1ed.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(fUSDTAddress)
                        staticcall fUSDTAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sub_d6d300bfAddress))
                        call address(sub_d6d300bfAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0 >> 256, 0
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * callFee / ext_call.return_data[0] != callFee:
                        revert with 0, 'sSafeMath: multiplication overfloddres'
                    if ext_code.size(wftmAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, ext_call.return_data[0] * callFee / 10000) >> 32
                    mem[452 len 0] = 0
                    call wftmAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] * callFee / 10000) << 224, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        if not ext_call.return_data[0]:
                            if ext_code.size(wftmAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 617 len 64] = 0, address(treasuryAddress), 0
                            call wftmAddress with:
                               funct uint32(stor11)
                                 gas gas_remaining wei
                                args 0, mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                require ext_code.size(rewardTokenAddress)
                                staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + 600 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not sub_70c0f1ed.length:
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(fUSDTAddress)
                                    staticcall fUSDTAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    var118001 = 64
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 814] = address(sub_70c0f1ed.field_0)
                                    idx = (2 * ceil32(return_data.size)) + 814
                                    s = 0
                                    while (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) + 814 > idx + 32:
                                        mem[idx + 32] = sub_70c0f1ed[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len 32 * sub_70c0f1ed.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(fUSDTAddress)
                                    staticcall fUSDTAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 649]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 728 len 22]
                                require ext_code.size(rewardTokenAddress)
                                staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + 600 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not sub_70c0f1ed.length:
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 814] = address(sub_70c0f1ed.field_0)
                                    idx = (2 * ceil32(return_data.size)) + 814
                                    s = 0
                                    while (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) + 814 > idx + 32:
                                        mem[idx + 32] = sub_70c0f1ed[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len 32 * sub_70c0f1ed.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(fUSDTAddress)
                                staticcall fUSDTAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            require ext_call.return_data[0]
                            if ext_call.return_data[0] * treasuryFee / ext_call.return_data[0] != treasuryFee:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 490 len 31]
                            if ext_code.size(wftmAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 617 len 64] = 0, address(treasuryAddress), Mask(224, 32, ext_call.return_data[0] * treasuryFee / 10000) >> 32
                            call wftmAddress with:
                               funct uint32(stor11)
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * treasuryFee / 10000, mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 649]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 728 len 22]
                            require ext_code.size(rewardTokenAddress)
                            staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if block.timestamp + 600 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            if not sub_70c0f1ed.length:
                                require ext_code.size(address(uniRouterAddress))
                                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length
                            else:
                                mem[(2 * ceil32(return_data.size)) + 814] = address(sub_70c0f1ed.field_0)
                                idx = (2 * ceil32(return_data.size)) + 814
                                s = 0
                                while (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) + 814 > idx + 32:
                                    mem[idx + 32] = sub_70c0f1ed[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(address(uniRouterAddress))
                                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len 32 * sub_70c0f1ed.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(fUSDTAddress)
                            staticcall fUSDTAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        require ext_code.size(address(sub_d6d300bfAddress))
                        call address(sub_d6d300bfAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0 >> 256, 0
                    else:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                        if not ext_call.return_data[0]:
                            if ext_code.size(wftmAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 617 len 64] = 0, address(treasuryAddress), 0
                            call wftmAddress with:
                               funct uint32(stor11)
                                 gas gas_remaining wei
                                args 0, mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 649]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 728 len 22]
                            require ext_code.size(rewardTokenAddress)
                            staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if block.timestamp + 600 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            if not sub_70c0f1ed.length:
                                require ext_code.size(address(uniRouterAddress))
                                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length
                            else:
                                mem[(2 * ceil32(return_data.size)) + 814] = address(sub_70c0f1ed.field_0)
                                idx = (2 * ceil32(return_data.size)) + 814
                                s = 0
                                while (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) + 814 > idx + 32:
                                    mem[idx + 32] = sub_70c0f1ed[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(address(uniRouterAddress))
                                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len 32 * sub_70c0f1ed.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(fUSDTAddress)
                            staticcall fUSDTAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sub_d6d300bfAddress))
                            call address(sub_d6d300bfAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0 >> 256, 0
                        else:
                            require ext_call.return_data[0]
                            if ext_call.return_data[0] * treasuryFee / ext_call.return_data[0] != treasuryFee:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 490 len 31]
                            if ext_code.size(wftmAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 617 len 64] = 0, address(treasuryAddress), Mask(224, 32, ext_call.return_data[0] * treasuryFee / 10000) >> 32
                            call wftmAddress with:
                               funct uint32(stor11)
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * treasuryFee / 10000, mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 649]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            require ext_code.size(rewardTokenAddress)
                            staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if block.timestamp + 600 < block.timestamp:
                                revert with 0, 
                                            'SafeMath: addition overflow',
                                            mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not sub_70c0f1ed.length:
                                require ext_code.size(address(uniRouterAddress))
                                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            else:
                                mem[(2 * ceil32(return_data.size)) + 814] = address(sub_70c0f1ed.field_0)
                                idx = (2 * ceil32(return_data.size)) + 814
                                s = 0
                                while (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) + 814 > idx + 32:
                                    mem[idx + 32] = sub_70c0f1ed[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(address(uniRouterAddress))
                                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(fUSDTAddress)
                            staticcall fUSDTAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sub_d6d300bfAddress))
                            call address(sub_d6d300bfAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0 >> 256, 0, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if paused:
                    revert with 0, 
                                'Pausable: paused',
                                mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            require ext_call.return_data[0]
            if ext_call.return_data[0] * totalFee / ext_call.return_data[0] != totalFee:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if block.timestamp + 600 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_65108ea4.length:
                require ext_code.size(address(uniRouterAddress))
                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, uint32(ext_call.return_data[0] * totalFee / 10000), 0, 160, address(this.address), block.timestamp + 600, sub_65108ea4.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wftmAddress)
                staticcall wftmAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ext_code.size(wftmAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, 0
                    mem[452 len 0] = 0
                    call wftmAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, transfer(address arg1, uint256 arg2), msg.sender, 0) << 256, mem[452 len 4]
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
                    if not ext_call.return_data[0]:
                        if ext_code.size(wftmAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 617 len 64] = 0, address(treasuryAddress), 0
                        call wftmAddress with:
                           funct uint32(stor11)
                             gas gas_remaining wei
                            args 0, mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * treasuryFee / ext_call.return_data[0] != treasuryFee:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 490 len 31]
                        if ext_code.size(wftmAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 617 len 64] = 0, address(treasuryAddress), Mask(224, 32, ext_call.return_data[0] * treasuryFee / 10000) >> 32
                        call wftmAddress with:
                           funct uint32(stor11)
                             gas gas_remaining wei
                            args ext_call.return_data[0] * treasuryFee / 10000, mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 649]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 728 len 22]
                    require ext_code.size(rewardTokenAddress)
                    staticcall rewardTokenAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    if not sub_70c0f1ed.length:
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length
                    else:
                        mem[(2 * ceil32(return_data.size)) + 814] = address(sub_70c0f1ed.field_0)
                        idx = (2 * ceil32(return_data.size)) + 814
                        s = 0
                        while (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) + 814 > idx + 32:
                            mem[idx + 32] = sub_70c0f1ed[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len 32 * sub_70c0f1ed.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(fUSDTAddress)
                    staticcall fUSDTAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sub_d6d300bfAddress))
                    call address(sub_d6d300bfAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0 >> 256, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if paused:
                        revert with 0, 
                                    'Pausable: paused',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * callFee / ext_call.return_data[0] != callFee:
                        revert with 0, 'sSafeMath: multiplication overfloddres'
                    if ext_code.size(wftmAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, ext_call.return_data[0] * callFee / 10000) >> 32
                    call wftmAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] * callFee / 10000) << 224, mem[452 len 4]
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
                    if not ext_call.return_data[0]:
                        if ext_code.size(wftmAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 617 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), 0
                        mem[ceil32(return_data.size) + 709 len 4] = 0
                        call wftmAddress with:
                           funct uint32(stor11)
                             gas gas_remaining wei
                            args 0, mem[ceil32(return_data.size) + 681 len 4]
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * treasuryFee / ext_call.return_data[0] != treasuryFee:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 490 len 31]
                        if ext_code.size(wftmAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 617 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, ext_call.return_data[0] * treasuryFee / 10000) >> 32
                        mem[ceil32(return_data.size) + 709 len 4] = 0
                        call wftmAddress with:
                           funct uint32(stor11)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] * treasuryFee / 10000) << 224, mem[ceil32(return_data.size) + 681 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 649]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(rewardTokenAddress)
                    staticcall rewardTokenAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address), mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 
                                    'SafeMath: addition overflow',
                                    mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not sub_70c0f1ed.length:
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 814] = address(sub_70c0f1ed.field_0)
                        idx = (2 * ceil32(return_data.size)) + 814
                        s = 0
                        while (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) + 814 > idx + 32:
                            mem[idx + 32] = sub_70c0f1ed[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(fUSDTAddress)
                    staticcall fUSDTAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address), mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sub_d6d300bfAddress))
                    call address(sub_d6d300bfAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0 >> 256, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if paused:
                        revert with 0, 'Pausable: paused'
            else:
                mem[356] = address(sub_65108ea4.field_0)
                idx = 356
                s = 0
                while (32 * sub_65108ea4.length) + 356 > idx + 32:
                    mem[idx + 32] = sub_65108ea4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(address(uniRouterAddress))
                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, uint32(ext_call.return_data[0] * totalFee / 10000), 0, 160, address(this.address), block.timestamp + 600, sub_65108ea4.length, mem[356 len 32 * sub_65108ea4.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(wftmAddress)
                staticcall wftmAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if ext_code.size(wftmAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, 0
                    call wftmAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        if not ext_call.return_data[0]:
                            if ext_code.size(wftmAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 617 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), 0
                            mem[ceil32(return_data.size) + 681 len 0] = 0
                            call wftmAddress with:
                               funct uint32(stor11)
                                 gas gas_remaining wei
                                args Mask(480, -256, transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), 0) << 256, mem[ceil32(return_data.size) + 681 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                require ext_code.size(rewardTokenAddress)
                                staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + 600 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not sub_70c0f1ed.length:
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(fUSDTAddress)
                                    staticcall fUSDTAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    var118001 = 64
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 814] = address(sub_70c0f1ed.field_0)
                                    idx = (2 * ceil32(return_data.size)) + 814
                                    s = 0
                                    while (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) + 814 > idx + 32:
                                        mem[idx + 32] = sub_70c0f1ed[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len 32 * sub_70c0f1ed.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(fUSDTAddress)
                                    staticcall fUSDTAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 649]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 728 len 22]
                                require ext_code.size(rewardTokenAddress)
                                staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + 600 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not sub_70c0f1ed.length:
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 814] = address(sub_70c0f1ed.field_0)
                                    idx = (2 * ceil32(return_data.size)) + 814
                                    s = 0
                                    while (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) + 814 > idx + 32:
                                        mem[idx + 32] = sub_70c0f1ed[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len 32 * sub_70c0f1ed.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(fUSDTAddress)
                                staticcall fUSDTAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            require ext_call.return_data[0]
                            if ext_call.return_data[0] * treasuryFee / ext_call.return_data[0] != treasuryFee:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 490 len 31]
                            if ext_code.size(wftmAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 617 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, ext_call.return_data[0] * treasuryFee / 10000) >> 32
                            mem[ceil32(return_data.size) + 681 len 0] = 0
                            call wftmAddress with:
                               funct uint32(stor11)
                                 gas gas_remaining wei
                                args Mask(224, 32, ext_call.return_data[0] * treasuryFee / 10000) << 224, mem[ceil32(return_data.size) + 681 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                require ext_code.size(rewardTokenAddress)
                                staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + 600 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not sub_70c0f1ed.length:
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(fUSDTAddress)
                                    staticcall fUSDTAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    var120001 = 64
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 814] = address(sub_70c0f1ed.field_0)
                                    idx = (2 * ceil32(return_data.size)) + 814
                                    s = 0
                                    while (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) + 814 > idx + 32:
                                        mem[idx + 32] = sub_70c0f1ed[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len 32 * sub_70c0f1ed.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(fUSDTAddress)
                                    staticcall fUSDTAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 649]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 728 len 22]
                                require ext_code.size(rewardTokenAddress)
                                staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + 600 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not sub_70c0f1ed.length:
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 814] = address(sub_70c0f1ed.field_0)
                                    idx = (2 * ceil32(return_data.size)) + 814
                                    s = 0
                                    while (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) + 814 > idx + 32:
                                        mem[idx + 32] = sub_70c0f1ed[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len 32 * sub_70c0f1ed.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(fUSDTAddress)
                                staticcall fUSDTAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                        if not ext_call.return_data[0]:
                            if ext_code.size(wftmAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 617 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), 0
                            mem[ceil32(return_data.size) + 681 len 0] = 0
                            call wftmAddress with:
                               funct uint32(stor11)
                                 gas gas_remaining wei
                                args Mask(480, -256, transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), 0) << 256, mem[ceil32(return_data.size) + 681 len 4]
                        else:
                            require ext_call.return_data[0]
                            if ext_call.return_data[0] * treasuryFee / ext_call.return_data[0] != treasuryFee:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 490 len 31]
                            if ext_code.size(wftmAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 617 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, ext_call.return_data[0] * treasuryFee / 10000) >> 32
                            mem[ceil32(return_data.size) + 681 len 0] = 0
                            call wftmAddress with:
                               funct uint32(stor11)
                                 gas gas_remaining wei
                                args Mask(224, 32, ext_call.return_data[0] * treasuryFee / 10000) << 224, mem[ceil32(return_data.size) + 681 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 649]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 728 len 22]
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        if not sub_70c0f1ed.length:
                            require ext_code.size(address(uniRouterAddress))
                            call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length
                        else:
                            mem[(2 * ceil32(return_data.size)) + 814] = address(sub_70c0f1ed.field_0)
                            idx = (2 * ceil32(return_data.size)) + 814
                            s = 0
                            while (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) + 814 > idx + 32:
                                mem[idx + 32] = sub_70c0f1ed[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(address(uniRouterAddress))
                            call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len 32 * sub_70c0f1ed.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(fUSDTAddress)
                        staticcall fUSDTAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    require ext_code.size(address(sub_d6d300bfAddress))
                    call address(sub_d6d300bfAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0 >> 256, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if paused:
                        revert with 0, 'Pausable: paused'
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * callFee / ext_call.return_data[0] != callFee:
                        revert with 0, 'sSafeMath: multiplication overfloddres'
                    if ext_code.size(wftmAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, ext_call.return_data[0] * callFee / 10000) >> 32
                    mem[452 len 0] = 0
                    call wftmAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] * callFee / 10000) << 224, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        if not ext_call.return_data[0]:
                            if ext_code.size(wftmAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 617 len 64] = 0, address(treasuryAddress), 0
                            call wftmAddress with:
                               funct uint32(stor11)
                                 gas gas_remaining wei
                                args 0, mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                require ext_code.size(rewardTokenAddress)
                                staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + 600 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not sub_70c0f1ed.length:
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(fUSDTAddress)
                                    staticcall fUSDTAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    var120001 = 64
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 814] = address(sub_70c0f1ed.field_0)
                                    idx = (2 * ceil32(return_data.size)) + 814
                                    s = 0
                                    while (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) + 814 > idx + 32:
                                        mem[idx + 32] = sub_70c0f1ed[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len 32 * sub_70c0f1ed.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(fUSDTAddress)
                                    staticcall fUSDTAddress.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                            else:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 649]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 728 len 22]
                                require ext_code.size(rewardTokenAddress)
                                staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if block.timestamp + 600 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not sub_70c0f1ed.length:
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 814] = address(sub_70c0f1ed.field_0)
                                    idx = (2 * ceil32(return_data.size)) + 814
                                    s = 0
                                    while (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) + 814 > idx + 32:
                                        mem[idx + 32] = sub_70c0f1ed[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(address(uniRouterAddress))
                                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len 32 * sub_70c0f1ed.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(fUSDTAddress)
                                staticcall fUSDTAddress.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            require ext_code.size(address(sub_d6d300bfAddress))
                            call address(sub_d6d300bfAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0 >> 256, 0
                        else:
                            require ext_call.return_data[0]
                            if ext_call.return_data[0] * treasuryFee / ext_call.return_data[0] != treasuryFee:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 490 len 31]
                            if ext_code.size(wftmAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 617 len 64] = 0, address(treasuryAddress), Mask(224, 32, ext_call.return_data[0] * treasuryFee / 10000) >> 32
                            call wftmAddress with:
                               funct uint32(stor11)
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * treasuryFee / 10000, mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 649]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            require ext_code.size(rewardTokenAddress)
                            staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if block.timestamp + 600 < block.timestamp:
                                revert with 0, 
                                            'SafeMath: addition overflow',
                                            mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not sub_70c0f1ed.length:
                                require ext_code.size(address(uniRouterAddress))
                                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            else:
                                mem[(2 * ceil32(return_data.size)) + 814] = address(sub_70c0f1ed.field_0)
                                idx = (2 * ceil32(return_data.size)) + 814
                                s = 0
                                while (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) + 814 > idx + 32:
                                    mem[idx + 32] = sub_70c0f1ed[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(address(uniRouterAddress))
                                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(fUSDTAddress)
                            staticcall fUSDTAddress.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(sub_d6d300bfAddress))
                            call address(sub_d6d300bfAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0 >> 256, 0, mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                        if not ext_call.return_data[0]:
                            if ext_code.size(wftmAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 617 len 64] = 0, address(treasuryAddress), 0
                            call wftmAddress with:
                               funct uint32(stor11)
                                 gas gas_remaining wei
                                args 0, mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
                        else:
                            require ext_call.return_data[0]
                            if ext_call.return_data[0] * treasuryFee / ext_call.return_data[0] != treasuryFee:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 490 len 31]
                            if ext_code.size(wftmAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 617 len 64] = 0, address(treasuryAddress), Mask(224, 32, ext_call.return_data[0] * treasuryFee / 10000) >> 32
                            call wftmAddress with:
                               funct uint32(stor11)
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * treasuryFee / 10000, mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 649]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 728 len 22]
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        if not sub_70c0f1ed.length:
                            require ext_code.size(address(uniRouterAddress))
                            call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length
                        else:
                            mem[(2 * ceil32(return_data.size)) + 814] = address(sub_70c0f1ed.field_0)
                            idx = (2 * ceil32(return_data.size)) + 814
                            s = 0
                            while (2 * ceil32(return_data.size)) + (32 * sub_70c0f1ed.length) + 814 > idx + 32:
                                mem[idx + 32] = sub_70c0f1ed[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(address(uniRouterAddress))
                            call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, sub_70c0f1ed.length, mem[(2 * ceil32(return_data.size)) + 814 len 32 * sub_70c0f1ed.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(fUSDTAddress)
                        staticcall fUSDTAddress.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(sub_d6d300bfAddress))
                        call address(sub_d6d300bfAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0 >> 256, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if paused:
                        revert with 0, 
                                    'Pausable: paused',
                                    mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        ('iszero', ('stor', ('name', 'paused', 0)))
        require ext_code.size(address(sub_d6d300bfAddress))
        staticcall address(sub_d6d300bfAddress).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(address(sub_f007a12dAddress))
            call address(sub_f007a12dAddress).deposit(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        emit StratHarvest(msg.sender);
}



}
